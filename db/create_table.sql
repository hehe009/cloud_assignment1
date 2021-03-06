create table publishers (
	publisherID INT GENERATED BY DEFAULT AS IDENTITY,
	publisherName VARCHAR (30) NOT NULL,
	PRIMARY KEY (publisherID)
);

create table authors (
	authorID INT GENERATED BY DEFAULT AS IDENTITY,
	firstName VARCHAR (20) NOT NULL,
	lastName VARCHAR (30) NOT NULL,
	PRIMARY KEY (authorID)
);

create table titles (
	isbn VARCHAR (20) NOT NULL,
	title VARCHAR (100) NOT NULL,
	editionNumber INT NOT NULL,
	copyright VARCHAR (4) NOT NULL,
	publisherID INT NOT NULL,
	imageFile VARCHAR (20) NOT NULL,
	price real NOT NULL,
	PRIMARY KEY (isbn)
);

create table authorISBN (
	authorID INT NOT NULL,
	isbn VARCHAR (20) NOT NULL
);

create table customers (
	customerID INT GENERATED BY DEFAULT AS IDENTITY,
	username VARCHAR (30) NOT NULL,
	firstName VARCHAR (30) NOT NULL,
	lastName VARCHAR (30) NOT NULL,
	password VARCHAR (30) NOT NULL,
	email VARCHAR (30) NOT NULL,
	street VARCHAR (30),
	city VARCHAR (30),
	state VARCHAR (30),
	phone VARCHAR (15),
	creditcard VARCHAR (25),
	expiremm INT,
	expireyy INT,
	PRIMARY KEY (customerID)
	);