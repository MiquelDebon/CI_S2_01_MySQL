-- Optica queries 
-- Autor: Miquel Debon Villagrasa

use c1_s1_n1_ex1_optica;

-- Llista el total de factures d'un client/a en un període determinat.
select c.name as NombreCliente, p.id_product, b.name as Marca , p.price as Precio, s.date
from client  c
left join sale s on c.id_client = s.client_id
left join product p on s.product_id = p.id_product
left join brand b on p.brand_id = b.id_brand
where c.name like "%miquel%" and s.date between "1991-01-01" and "2023-04-26" 
order by s.date desc;

-- Llista els diferents models d'ulleres que ha venut un empleat/da durant un any.
select distinct e.name as "Nombre Empleado", p.id_product, s.date as "Fecha venta"
from employee e
left join sale s on e.id_employee = s.employee_id
left join product p on s.product_id = p.id_product
where e.name like "%jose%" and s.date between "2023-01-01" and "2024-01-01";

-- Llista els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica.
select distinct sup.id_supplier as ID, sup.name as Nombre, sup.direction as Region
from supplier sup 
inner join brand on sup.id_supplier = brand.supplier_id
inner join product on brand.id_brand = product.brand_id
inner join sale on product.id_product = sale.product_id
order by ID;

select distinct sup.id_supplier as ID, sup.name as Nombre, sup.direction as Region
from supplier sup 
where sup.id_supplier IN(
		select brand.supplier_id from brand where brand.id_brand in (
			select product.brand_id from product where product.id_product in(
				select sale.product_id from sale
            )
        )
)
order by ID;






