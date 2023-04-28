-- IT ACADEMY N1-Ex2_Pizzeria
-- Queries
-- BY Miquel Debon Villagrasa

-- Llista quants productes de categoria 'Begudes' s'han venut en una determinada localitat.
SELECT location.name,product.category, COUNT(orders.id_order) 
FROM product
INNER JOIN product_order on product_order.product_id = product.id_product
INNER JOIN orders on product_order.order_id = orders.id_order
INNER JOIN client on orders.client_id = client.id_client
INNER JOIN location on client.location_id = location.id_location
WHERE product.category = 'Drink' and location.name = "Barcelona";

-- SELECT orders.id_order, location.name, product.name, product.category

-- Llista quantes comandes ha efectuat un determinat empleat/da.
SELECT  employee.id_employee as ID, employee.name as Name, orders.id_order as "Id.Order"
FROM employee
INNER JOIN orders on employee.id_employee = orders.employee_id
WHERE employee.name LIKE "%Fernando%"
ORDER BY orders.id_order;



