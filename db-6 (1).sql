create schema JustTrying;
use JustTrying;

CREATE TABLE `admin`(
`admin_id` int NOT NULL,
`username` varchar(30) NOT NULL,
`password` varchar(50) NOT NULL,
PRIMARY KEY(`admin_id`)
);

CREATE TABLE `lost_item`(
`ID` int auto_increment NOT NULL,
`name` varchar(30) NOT NULL,
`description` varchar(100) NOT NULL,
`category` varchar(30) NOT NULL,
`location_lost` varchar(100) not null,
`date_lost` date not null,
`time_lost` time,
`image` blob,
PRIMARY KEY(`ID`)
);

CREATE TABLE `owner`(
`owner_id` int auto_increment NOT NULL,
`admin_id` int NOT NULL, 
`first_name` varchar(30) NOT NULL,
`last_name` varchar(30) NOT NULL,
`lost_item_id` int not null,
`lost_item` varchar(80) NOT NULL, # 
`email` varchar(50) NOT NULL,
`phone_no` varchar(10) NOT NULL,
`status` varchar(20) NOT NULL,
PRIMARY KEY (`owner_id`,`admin_id`),
UNIQUE(`owner_id`,`phone_no`),
FOREIGN KEY (`lost_item_id`) references `lost_item`(`ID`) on update cascade on delete cascade,
FOREIGN KEY (`admin_id`) references `admin`(`admin_id`) on update cascade on delete cascade
);

CREATE TABLE `owner_phno` (
    `owner_id` int not null,
    `phone_no` VARCHAR(10) unique,
    primary key(`owner_id`, `phone_no`),
    FOREIGN KEY (`owner_id`) REFERENCES `owner`(`owner_id`) on delete cascade on update cascade
);

create table `found_item` (
	`ID` int auto_increment not null,
    `name` varchar(20) not null,
    `description` varchar(100) not null,
    `category` varchar(10) not null,
    `location_found` varchar(100) not null,
    `date_found` date not null,
    `time_found` time,   
    `image` blob ,
    primary key(`ID`)
);

create table `finder` (
	`finder_id` int  auto_increment not null,
    `admin_id` int NOT NULL,
    `first_name` varchar(30) not null,
    `last_name` varchar(30) not null,
    `found_item_id` int not null,
    `found_item` varchar(80) not null,
    `email` varchar(50) not null,
    `phone_no` varchar(10) not null,
    `status` varchar(20) not null,
    primary key(`finder_id`,`admin_id`),
    unique(`finder_id`, `phone_no`),
    FOREIGN KEY (`found_item_id`) references `found_item`(`ID`) ON DELETE CASCADE on update cascade,
    FOREIGN KEY (`admin_id`) references `admin`(`admin_id`) on update cascade on delete cascade
);

CREATE TABLE `finder_phno` (
    `finder_id` int not null,
    `phone_no` int unique,
    primary key(finder_id, phone_no),
    FOREIGN KEY (finder_id) REFERENCES `finder`(`finder_id`) on delete cascade on update cascade
);

create table `ticket` (
	`ticket_id` int auto_increment not null,
    `owner_id` int NOT NULL,
    `subject` varchar(30) not null,
    `issue` varchar(100) not null,
    primary key(`ticket_id`,`owner_id`),
    foreign key (`owner_id`) references `owner`(`owner_id`) on delete cascade on update cascade
);


