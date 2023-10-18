use justtrying;
SET FOREIGN_KEY_CHECKS=0;

insert into `Admin` values
('1', 'Admin@PES', 'admin123');

insert into `lost_item`(`ID`,`name`,`description`,`category`,`location_lost`,`date_lost`,`time_lost`) values 
(1,'Titan watch','a black expensive Titan watch with time on it','jewellery','A-block','2023-01-01','01:30:56'),
(2,'Marks card','PES college 3rd sem CSE marks card','documents','B-block','2023-02-01','03:30:00'),
(3,'Apple Watch','a rose gold apple watch with a Troye Sivan lockscreen','electronic gadgets','C-block','2023-03-01','04:30:00'),
(4,'Expensive earring','blue cloud-like earrings with a purple stone','jewellery','Seminar Hall 5','2023-04-04','01:30:00');


insert into `owner` values
(1,1,'Sarayu','Thampan',1,'Titan watch','sarayu@gmail.com','0123456789','missing'),
(2,1,'Saujanya','Sankar',2,'Marks card','sau@gmail.com','1234567890','missing'),
(3,1,'Harirud','Thampan',3,'Apple watch','hari@gmail.com','1134567890','missing'),
(4,1,'Samyukta','B',4,'Expensive earring','samyu@gmail.com','1234567878','missing');

insert into `owner_phno` values
(1,'0123456789'),
(2,'1234567890'),
(3,'1134567890'),
(4,'1234567878');

INSERT INTO `found_item`(`ID`,`name`,`description`,`category`,`location_found`,`date_found`,`time_found`) VALUES 
(1,'Glasses','brown Lawrence and Mayo pair of glasses','accessory','C-block','2023-01-04','01:30:00'),
(2,'Fountain pen','Red parker pen, blue ink','stationery','D-block','2023-02-05','03:35:00'),
(3,'Body','looks like admin_idmy classmate but idk :/','persons','E-block','2023-10-06','01:00:00'),
(4,'Blue wallet','a navy blue Gucci purse with a nail cutter','jewellery','Seminar Hall 6','2023-04-05','06:30:00');

insert into `finder` values 
(1,1,'John', 'Doe', 1, 'lawrence and mayo glasses','john@gmail.com', '9876543210','not matched'),
(2,1,'Sara', 'Magnus',2, 'red parker pen', 'sara@gmail.com', '1234567890','not matched'),
(3,1,'Smaran', 'Jawa',3, 'body', 'smull@gmail.com', '2468135790','not matched'),
(4,1,'Lohith', 'Surya',4, 'Blue wallet', 'lohi@gmail.com', '3568135790','not matched');

insert into `finder_phno` values
(1,'987654321'),
(2,'123456789'),
(3,'246813579'),
(4,'356813579');

insert into `ticket` values
(1,2,'System related', 'Not a very efficient interface!'),
(1,4,'Lost Item Status', 'There seems to be someone other user trying to retrieve my lost item!');

select * from `admin`;
select * from `owner`;
select * from `finder`;
select * from `finder_phno`;
select * from `owner_phno`;
select * from `ticket`;

