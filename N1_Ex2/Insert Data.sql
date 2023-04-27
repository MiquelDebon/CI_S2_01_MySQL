-- IT ACADEMY N1-Ex2_Pizzeria
-- INSERT DATA 
-- BY Miquel Debon Villagrasa

INSERT INTO province (name) VALUES ("Barcelones");

INSERT INTO location (name, region_id) VALUES ("Barcelona", 1);

INSERT INTO client 
(name, surname, direction, cp, location_id, phone)
VALUES("Miquel", "Debon ","Passeig de Gracia", 08013, 1, 61882943);

INSERT INTO pizza_category (name) VALUES ("Margarita"),("4 Quesos");

