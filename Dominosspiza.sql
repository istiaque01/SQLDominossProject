create database DominossPizza;
#istiaque ferdous databse

use DominossPizza;

#istiaqeu ferdous customer table
CREATE TABLE Customer (
    CID nvarchar(10) NOT NULL PRIMARY KEY,
    FirstName NVARCHAR(35) NOT NULL,
    LastName NVARCHAR(35) NOT NULL,
    Address NVARCHAR(50) NOT NULL,
    City NVARCHAR(30) NOT NULL,
    State CHAR(2) NOT NULL,
    ZipCode INT(9) NOT NULL,
    CellPhone NVARCHAR(15) NOT NULL,
    HomePhone NVARCHAR(15) NULL,
    email NVARCHAR(100) NOT NULL,
    password NVARCHAR(50) NOT NULL,
	UNIQUE KEY UQ_Customer (Email) #to make email unique
);#istiaque ferdous customer table 
CREATE INDEX index_email ON Customer (Email); #This will mmake Email an index on table Customer istiaque ferdous 

CREATE TABLE store (
    StoreNumber nvarchar(15) NOT NULL PRIMARY KEY,
    name nvarchar(15) not null,
   
    Address NVARCHAR(50) NOT NULL,
    City NVARCHAR(30) NOT NULL,
    State CHAR(2) NOT NULL,
    ZipCode INT(9) NOT NULL,
    StorePhoneNumber NVARCHAR(15) NOT NULL
);
#istiaque ferdous table store
CREATE TABLE Employee (
    EID nvarchar(15) NOT NULL PRIMARY KEY,
    FirstName NVARCHAR(35) NOT NULL,
    LastName NVARCHAR(35) NOT NULL,
    StoreNumber nvarchar(15) NOT NULL, foreign key (StoreNumber) references store(storeNumber)
);
#istiaqeu ferdous table employee
CREATE TABLE Appetizer (
    AppetizerID nvarchar(15) NOT NULL PRIMARY KEY,
    AppetizerName nvarchar(100) NOT NULL,
    Price DECIMAL(6 , 2 ) NOT NULL
);
#istiaqeu ferdous apitizer table
CREATE TABLE Pizza (
    PizzaID int(15) NOT NULL PRIMARY KEY,
    Pname nvarchar(100) NOT NULL,
    PizzaPrice DECIMAL(6 , 2 ) NOT NULL,
    PizzaSize VARCHAR(15) NOT NULL
);
 #istiaque ferdous pizza table
 CREATE TABLE orders (
    OrderNumber INT(15) NOT NULL PRIMARY KEY,
    OrderDate DATE NOT NULL,
    DeliveryDate VARCHAR(20) NULL,
    OrderStatus ENUM('placed', 'cancelled') NOT NULL,

    EID nvarchar(15) REFERENCES employee (EID),
    CID nvarchar(10) NOT NULL,
    AppetizerID NVARCHAR(15) NOT NULL,
    AppetizerQuantity INT(5) NOT NULL,
    PizzaID INT(15) NOT NULL,
    PizzaQuantity INT(5) NOT NULL,
    TotalPrice DECIMAL(6 , 2 ),
        
    FOREIGN KEY (CID)
        REFERENCES customer (CID),
    FOREIGN KEY (appetizerID)
        REFERENCES Appetizer (AppetizerID),
    FOREIGN KEY (PizzaID)
        REFERENCES Pizza (PizzaID)
);
#istiaque ferdous orders table 
