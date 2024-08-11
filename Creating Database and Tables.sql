CREATE DATABASE Furaha_Ebooks;

USE Furaha_Ebooks;

CREATE TABLE Customers(
    Cust_ID INT(6) NOT NULL AUTO_INCREMENT KEY, 
    First_name VARCHAR (128),
    Last_name VARCHAR (128),
    Order_no SMALLINT,
    Location VARCHAR (128)
)
ALTER TABLE Customers
    ADD Contacts INT (10);



CREATE TABLE Orders(
    Order_no SMALLINT NOT NULL AUTO_INCREMENT KEY,
    Books VARCHAR(128),
    Location VARCHAR(128)
)
ALTER TABLE Orders
    ADD Status VARCHAR(10);
ALTER TABLE Orders
    ADD Date DATE NOT NULL;

DESCRIBE Orders;


CREATE TABLE Books (
    Author VARCHAR(128),
    Title VARCHAR(128),
    ISBN INT(13) NOT NULL PRIMARY KEY
)
ALTER TABLE Books   
    ADD Price INT(128);

ALTER TABLE Books
    DROP ISBN;
ALTER TABLE Books 
    ADD ISBN CHAR(13) PRIMARY KEY;