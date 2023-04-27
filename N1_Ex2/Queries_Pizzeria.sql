-- IT ACADEMY N1-Ex2_Pizzeria
-- Queries
-- BY Miquel Debon Villagrasa

-- Llista quants productes de categoria 'Begudes' s'han venut en una determinada localitat.
SELECT * FROM product_order
LEFT JOIN product on product_order.product_id = product.id_product
LEFT JOIN orders on product_order.order_id = orders.id_order
LEFT JOIN client on orders.client_id = client.id_client
LEFT JOIN location on client.location_id = location.id_location
WHERE product.category = 'Drink' and location.name = "Barelona";