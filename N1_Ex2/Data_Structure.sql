-- Author Miquel Debon Villagrasa
-- IT ACADEMY N1-Ex2


DROP DATABASE IF EXISTS c1_s1_n1_ex2_pizzeria;
CREATE DATABASE c1_s1_n1_ex2_pizzeria;
USE c1_s1_n1_ex2_pizzeria;


CREATE TABLE location(
	id_location int(8) NOT NULL AUTO_INCREMENT,
    name varchar(15) NOT NULL,
    PRIMARY KEY (id_location)
);

CREATE TABLE region(
	id_region int(8) NOT NULL AUTO_INCREMENT,
    name varchar(15) NOT NULL,
    PRIMARY KEY(id_region)
);

CREATE TABLE client(
	id_client int(6) NOT NULL AUTO_INCREMENT,
    name varchar(20) NOT NULL,
    surname varchar(20),
    direction varchar(50) NOT NULL,
    cp int(8) ZEROFILL NOT NULL,
    location_id int(8) NOT NULL, 
    region_id int(8) NOT NULL,
    phone varchar(15) NOT NULL, 
    PRIMARY KEY (id_client),
    FOREIGN KEY (location_id) REFERENCES location(id_location),
    FOREIGN KEY (region_id) REFERENCES region(id_region)
); 

CREATE TABLE pizzeria_shop(
	id_pizzeria int(8) NOT NULL AUTO_INCREMENT,
    direction varchar(50), 
    cp int(8) ZEROFILL,
    location varchar(30),
    province varchar(30),
    PRIMARY KEY (id_pizzeria)
);

CREATE TABLE employee(
	id_employee int(4) NOT NULL AUTO_INCREMENT,
    name varchar(25) NOT NULL,
    surname varchar(30), 
    NIF varchar(15), 
    phone varchar(25),
    section ENUM('cook', 'delivery'),
    PRIMARY KEY (id_employee)
);

CREATE TABLE orders(
	id_pizza_order int(10) NOT NULL AUTO_INCREMENT,
	order_datatime DATETIME ,
    pickup_restaurant ENUM('pickup', 'restaurant'),
    amount_pizza int(4),
    amount_hamburguers int(4),
    amount_drinks int(4),
    employee_id int(4) NOT NULL,
    employee_delivery_id int(8),
    pizzeria_shop_id int(4) NOT NULL,
    total_price int(4),
    PRIMARY KEY (id_pizza_order),
    FOREIGN KEY (employee_id) REFERENCES employee (id_employee),
    FOREIGN KEY (employee_delivery_id) REFERENCES employee (id_employee),
    FOREIGN KEY (pizzeria_shop_id) REFERENCES pizzeria_shop(id_pizzeria)
);

CREATE TABLE pizza_category(
	id_pizza_category int(4) NOT NULL AUTO_INCREMENT,
    name varchar(20) NOT NULL,
    PRIMARY KEY (id_pizza_category)
);

CREATE TABLE product(
	id_product int(4) NOT NULL AUTO_INCREMENT,
	name varchar(25) NOT NULL,
    pizza_category_id int(4),
    description varchar(200),
    image varchar(200),
    price float(3,2),
    PRIMARY KEY (id_product),
    FOREIGN KEY (pizza_category_id) REFERENCES pizza_category (id_pizza_category)
);






