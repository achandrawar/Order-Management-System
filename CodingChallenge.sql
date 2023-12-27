-- create database JDBC;-- 
create database order_management_system;
use order_management_system;
create table product(productId int PRIMARY KEY,productName varchar(20),
description varchar(50),price double,quantityInStock int,type varchar(20));
select * from product;

-- DELETE FROM product
-- WHERE productName = 'Headphones';

drop table product;


insert into product values(1,"Headphones","Wireless headphones with noise cancelling",2500,200,"electronics");
insert into product values(2,"Laptop"," Grey coloured 16GB Ram with core i5",75000,50,"electronics");
insert into product values(3,"T-Shirt","Full sleeves green cotton t-shirt",1000,50,"clothing");
insert into product values(4,"Powerbank","blue powerbak with 3000 Mah capacity",1500,20,"electronics");
insert into product values(5,"trousers","Black slim fit trousers with multi pockets",2000,30,"clothing");
insert into product values(6, "Digital Camera","High-resolution camera for photography", 20000, 15, "Electronics");
select * from product;

CREATE TABLE Electronics (
productId INT PRIMARY KEY REFERENCES product(productId),brand VARCHAR(255),warrantyPeriod INT,
FOREIGN KEY (productId) REFERENCES product(productId)
);
INSERT INTO Electronics values(1,"Boat",2);
INSERT INTO Electronics values(2,"Lenovo",3);
INSERT INTO Electronics values(4,"Samsung",2);
INSERT INTO Electronics values(6,"Nike",3);

  CREATE TABLE Clothing (productId INT PRIMARY KEY REFERENCES product(productId),size VARCHAR(10),color VARCHAR(50),
FOREIGN KEY (productId) REFERENCES product(productId));

INSERT INTO Clothing values(3, '40', 'Green');
INSERT INTO Clothing values(5, '38', 'Black');

CREATE TABLE User (userId INT PRIMARY KEY,username VARCHAR(255) UNIQUE,password VARCHAR(255),
role VARCHAR(20) CHECK (role IN ('Admin', 'User')));

INSERT INTO User values(1, 'admin1', 'admin_password1', 'Admin');
INSERT INTO User values(2, 'user1', 'user_password1', 'User');
INSERT INTO User values(3, 'admin2', 'admin_password2', 'Admin');
INSERT INTO User values(4, 'user2', 'user_password2', 'User');
INSERT INTO User values(5, 'admin3', 'admin_password3', 'Admin');
INSERT INTO User values(6, 'user3', 'user_password3', 'User');

select * from user;
 
 CREATE TABLE Orders1 (orderId INT PRIMARY KEY,order_date DATE,productId INT,userId INT,FOREIGN KEY (productId) REFERENCES Product(productId),
FOREIGN KEY (userId) REFERENCES User(userId));
    
INSERT INTO Orders1 VALUES(1, '2023-01-04', 1, 2);
INSERT INTO Orders1 VALUES(2, '2023-11-26', 2, 1);
INSERT INTO Orders1 VALUES(3, '2023-11-30', 3, 3);
INSERT INTO Orders1 VALUES(4, '2023-11-09', 4, 2);
INSERT INTO Orders1 VALUES(5, '2023-12-10', 5, 1);
INSERT INTO Orders1 VALUES(6, '2023-12-06', 1, 3);
   
select * from orders1; 


create table OrderTable(userId int  , productId int,
FOREIGN KEY (productId) REFERENCES Product(productId),
FOREIGN KEY (userId) REFERENCES User(userId));
-- drop table OrderTable;
select * from Ordertable;




