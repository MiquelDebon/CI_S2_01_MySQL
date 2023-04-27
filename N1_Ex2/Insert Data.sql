-- IT ACADEMY N1-Ex2_Pizzeria
-- INSERT DATA 
-- BY Miquel Debon Villagrasa

INSERT INTO province (name) VALUES ("Barcelones");

INSERT INTO location (name, region_id) VALUES 
	("Barcelona", 1),
    ("Sant Cugat", 1);

INSERT INTO pizzeria_shop (direction, cp, location_id) VALUES
	("Gran de Gracia", 8013, 1),
	("Pedralbes", 08020, 1),
	("ETSAV", 08410, 2);

INSERT INTO client 
(name, surname, direction, cp, location_id, phone) VALUES
("Miquel", "Debon ","Passeig de Gracia", 08013, 1, 61882943),
("Eduard", "Fernandez ","Teturan", 08011, 1, 61884943);


INSERT INTO employee(name, pizzeria_shop_id) VALUES
	("Manolo", 1),
	("Fernando", 1);

INSERT INTO pizza_category (name) VALUES ("Margarita"),("4 Quesos");

INSERT INTO product (name,category, price) VALUES 
	("Agua 1.0L", "Drink", 2.2),
	("Estrella", "Pizza", 3),
	("Fanta", "Drink", 2.4);
    
INSERT INTO orders (order_datatime, pickup_restaurant, employee_id, pizzeria_shop_id, client_id) VALUES
	(current_timestamp(), 'pickup', 1, 1, 1),
	(current_timestamp(), 'pickup', 2, 1, 2),
	(current_timestamp(), 'pickup', 1, 3, 1),
	(current_timestamp(), 'pickup', 2, 3, 1),
	(current_timestamp(), 'pickup', 1, 3, 2);
    
INSERT INTO product_order (order_id, product_id) VALUES
	(1,1), (1,2), (1,3), (2,1), (2,3), (4,1), (3,2), (5,2), (2,3);
    
    
    
    
    
    