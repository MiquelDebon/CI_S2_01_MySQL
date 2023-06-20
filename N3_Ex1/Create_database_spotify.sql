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
    premium boolean,
    PRIMARY KEY (id_user)
);

CREATE TABLE credit_cad(
    id_credit_cad int(8) AUTO_INCREMENT,
    number int(8) NOT NULL,
    expiration_date DATE NOT NULL,
    security_code int(8) NOT NULL,
    user_id int(8),
    PRIMARY KEY (id_credit_cad),
    FOREIGN KEY (user_id) REFERENCES user (id_user)
);

CREATE TABLE paypal(
    id_paypal int(8) AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    user_id int(8) NOT NULL,
    PRIMARY KEY (id_paypal),
    FOREIGN KEY (user_id) REFERENCES user (id_user)
);

CREATE TABLE payment(
    id_payment int(8) AUTO_INCREMENT,
    date DATE NOT NULL,
    total decimal(4.2) NOT NULL,
    user_id int(8) NOT NULL,
    payment_method ENUM ('cash','credit_card', 'paypal') NOT NULL,
    credit_card_id int (8),
    paypal_id int(8),
    PRIMARY KEY (id_payment),
    FOREIGN KEY (user_id) REFERENCES user (id_user),
    FOREIGN KEY (credit_card_id) REFERENCES credit_cad(id_credit_cad),
    FOREIGN KEY (paypal_id) REFERENCES paypal(id_paypal)
);

CREATE TABLE subscription(
    id_subscription int(10) AUTO_INCREMENT,
    subscription_date DATE DEFAULT(NOW()),
    subscription_renewal DATE,
    payment_id int(8) NOT NULL,
    user_id int(8) NOT NULL,
    PRIMARY KEY (id_subscription),
    FOREIGN KEY (user_id) REFERENCES user(id_user),
    FOREIGN KEY (payment_id) REFERENCES payment(id_payment)
);

CREATE TABLE playlist(
    id_playlist int(8) AUTO_INCREMENT,
    title varchar(30) NOT NULL,
    amount_songs int(5), 
    date DATE DEFAULT(NOW()),
    user_id int(8),
    state ENUM ('active', 'deleted') DEFAULT 'active',
    deleted_date DATE,
    PRIMARY KEY (id_playlist),
    FOREIGN KEY (user_id) REFERENCES user(id_user)
);

CREATE TABLE artist(
    id_artist int(10) AUTO_INCREMENT,
    name varchar(30) NOT NULL,
    image_direction varchar(50),
    PRIMARY KEY (id_artist)
);

CREATE TABLE album(
    id_album int(10) AUTO_INCREMENT,
    title varchar(30) NOT NULL,
    image_direction varchar(50),
    artist_id int(8),
    PRIMARY KEY (id_album),
    FOREIGN KEY (artist_id)REFERENCES artist (id_artist)
);

CREATE TABLE song(
    id_song int(8)  AUTO_INCREMENT,
    title  varchar(30) NOT NULL,
    length_minute int(4) NOT NULL,
    reproducciones int(8),
    album_id int(10) NOT NULL,
    PRIMARY KEY (id_song),
    FOREIGN KEY (album_id) REFERENCES album (id_album)
);

CREATE TABLE shared_song(
    id_shared_song int(10) AUTO_INCREMENT,
    playlist_id int(8) NOT NULL,
    song_id int(10) NOT NULL,
    user_id int(10) NOT NULL,
    PRIMARY KEY (id_shared_song),
    FOREIGN KEY (playlist_id) REFERENCES playlist (id_playlist),
    FOREIGN KEY (song_id) REFERENCES song (id_song),
    FOREIGN KEY (user_id) REFERENCES user (id_user)
);

CREATE TABLE user_following(
    id_user_following int(10) AUTO_INCREMENT,
    user_id int(8) NOT NULL, 
    artist_id int(8) NOT NULL,
    PRIMARY KEY (id_user_following),
    FOREIGN KEY (user_id) REFERENCES user (id_user),
    FOREIGN KEY (artist_id) REFERENCES artist (id_artist)
);

CREATE TABLE music_genre(
    id_genre int(4) AUTO_INCREMENT,
    name varchar(20) NOT NULL,
    PRIMARY KEY (id_genre)
);

CREATE TABLE artist_genre(
    id_artist_genre int(10) AUTO_INCREMENT,
    artist_id int(10) NOT NULL,
    genre_id int(10) NOT NULL,
    PRIMARY KEY (id_artist_genre),
    FOREIGN KEY (artist_id) REFERENCES artist(id_artist),
    FOREIGN KEY (genre_id) REFERENCES music_genre (id_genre)
);

CREATE TABLE favourite_song(
    id_favourite_song int(12) AUTO_INCREMENT,
    user_id int(8) NOT NULL,
    song_id int(8) NOT NULL,
    PRIMARY KEY (id_favourite_song),
    FOREIGN KEY (user_id) REFERENCES user (id_user),
    FOREIGN KEY (song_id) REFERENCES song (id_song)
);


CREATE TABLE favourite_artist(
    id_favourite_artist int(12) AUTO_INCREMENT,
    user_id int(8) NOT NULL,
    artist_id int(8) NOT NULL,
    PRIMARY KEY (id_favourite_artist),
    FOREIGN KEY (user_id) REFERENCES user (id_user),
    FOREIGN KEY (artist_id) REFERENCES artist (id_artist)
);











