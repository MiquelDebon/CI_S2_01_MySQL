-- IT ACADEMY N2-Ex1_Youtube
-- Author Miquel Debon Villagrasa

DROP DATABASE IF EXISTS c1_s1_n2_ex1_youtube;

CREATE DATABASE c1_s1_n2_ex1_youtube DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE c1_s1_n2_ex1_youtube;

CREATE TABLE users(
	id_user int(8) AUTO_INCREMENT,
    mail varchar(50) UNIQUE,
    name varchar(20) NOT NULL, 
    birthday DATE, 
    gender ENUM('M','F','O'),
    country varchar(50),
    cp int(5) ZEROFILL,
    PRIMARY KEY (id_user)
);

CREATE TABLE tag(
	id_tag int(8) AUTO_INCREMENT,
    name varchar(10),
    PRIMARY KEY (id_tag)
);

CREATE TABLE channels(
	id_channel int(10) AUTO_INCREMENT,
    user_id int(8) NOT NULL,
    name varchar(20) NOT NULL,
    creation_date DATE DEFAULT(NOW()),
    PRIMARY KEY (id_channel),
    FOREIGN KEY (user_id) REFERENCES users(id_user)
);

CREATE TABLE video(
	id_video int(10) AUTO_INCREMENT,
	title varchar(30) NOT NULL,
    description TEXT,
    file_name varchar(25), 
    video_length int(5), 
    thumbail varchar(20),
    likes_amount int(8),
    dislikes_amount int(8),
    state ENUM('PUBLIC','HIDDEN','PRIVATE'),
    channel_id int(8) NOT NULL,
    PRIMARY KEY (id_video),
    FOREIGN KEY (channel_id) REFERENCES channels (id_channel)
);

CREATE TABLE video_tag(
	id_relationship int(8) AUTO_INCREMENT,
    video_id int(8) NOT NULL,
    tag_id int(8) NOT NULL,
    PRIMARY KEY (id_relationship),
    FOREIGN KEY (video_id) REFERENCES video (id_video),
    FOREIGN KEY (tag_id) REFERENCES tag (id_tag)
);


CREATE TABLE subscription(
	id_subscription int(10) AUTO_INCREMENT,
    user_id int(8) NOT NULL,
    channel_id int(8) NOT NULL,
    stauts ENUM ('FOLLOW', 'UNFOLLOW') NOT NULL DEFAULT(NULL),
    action_date DATE DEFAULT(NOW()),
    PRIMARY KEY (id_subscription),
    FOREIGN KEY (user_id) REFERENCES users(id_user),
    FOREIGN KEY (channel_id) REFERENCES channels (id_channel)
);

CREATE TABLE video_like(
	id_like int(20) AUTO_INCREMENt,
    user_id int(8) NOT NULL, 
    video_id int(8) NOT NULL,
    action_date DATE DEFAULT(NOW()),
    stauts ENUM ('LiKE', 'UNLIKE') NOT NULL DEFAULT(NULL),
    PRIMARY KEY (id_like),
    FOREIGN KEY (user_id) REFERENCES users(id_user),
    FOREIGN KEY (video_id) REFERENCES video(id_video)
);

CREATE TABLE playlist(
	id_playlist int(8) AUTO_INCREMENT,
    user_id int(8) NOT NULL,
    name varchar(20), 
    creation_date DATE DEFAULT(NOW()),
    state ENUM('PUBLIC', 'PRIVATE'),
    PRIMARY KEY (id_playlist),
    FOREIGN KEY (user_id) REFERENCES users(id_user)
);

CREATE TABLE playlist_relationship(
	id_relation int(10) AUTO_INCREMENT,
	playlist_id int(8) NOT NULL,
    video_id int(10) NOT NULL,
    PRIMARY KEY (id_relation),
    FOREIGN KEY (playlist_id) REFERENCES playlist (id_playlist),
    FOREIGN KEY (video_id) REFERENCES video(id_video)
);

CREATE TABLE comments(
	id_comment int(10) AUTO_INCREMENT,
    user_id int(8) NOT NULL, 
    video_id int(8) NOT NULL, 
    text TEXT, 
    creation_date DATE DEFAULT(NOW()),
	PRIMARY KEY (id_comment),
    FOREIGN KEY (user_id) REFERENCES users (id_user),
    FOREIGN KEY (video_id) REFERENCES video (id_video)
);

CREATE TABLE liked_comment(
	id_action int(20) AUTO_INCREMENT,
    user_id int(10) NOT NULL, 
    comment_id int(10) NOT NULL, 
    action_date DATE DEFAULT(NOW()),
    PRIMARY KEY (id_action),
    FOREIGN KEY (user_id) REFERENCES users (id_user),
    FOREIGN KEY (comment_id) REFERENCES comments (id_comment)
);




