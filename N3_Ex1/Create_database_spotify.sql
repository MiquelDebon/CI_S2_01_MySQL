-- IT Spotify Done by Miquel

DROP DATABASE IF EXISTS c1_s1_n2_ex1_spotify;

CREATE DATABASE c1_s1_n2_ex1_spotify DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE c1_s1_n2_ex1_spotify;

CREATE TABLE user(
	id_user int(8) AUTO_INCREMENT,
    name varchar(50) UNIQUE NOT NULL,
    mail varchar(50) UNIQUE, 
    password varchar(10) NOT NULL,
    birthday DATE,
    gender ENUM('M', 'F', 'O'), 
    country varchar(50),
    cp int (10) ZEROFILL,
    PRIMARY KEY (id_user)
);

CREATE TABLE subscription(
    id_subscription int(10),
    subscription_date DATE,
    subscription_renewal DATE,
    payment_method ENUM('cash','card','paypal'),
    user_id int(8),
    PRIMARY KEY (id_subscription),
    FOREIGN KEY (user_id) REFERENCES user(id_user)
);


