CREATE TABLE car ( 
	car_id INTEGER,
       make VARCHAR(64) NOT NULL,
	model VARCHAR(256) NOT NULL,
	year DECIMAL(4, 0) NOT NULL,
	PRIMARY KEY(car_id)

);

CREATE TABLE part (
	part_id INTEGER,
	name VARCHAR(256) NOT NULL,
	description VARCHAR(1024),
	manufacturers_partum VARCHAR(256),
	PRICE DECIMAL(10, 2),
	PRIMARY KEY(part_id)
);

CREATE TABLE car_part (
	car_id INTEGER,
	part_id INTEGER,
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	FOREIGN KEY(part_id) REFERENCES part(part_id),
	PRIMARY KEY(car_id, part_id)

);

INSERT INTO car VALUES (0, 'HONDA', 'CIVIC',2005);
INSERT INTO car VALUES (1, 'TOYOTA', 'COROLLA', 2010);
INSERT INTO car VALUES (2, 'FORD', 'F-150', 2009);
INSERT INTO part VALUES (1, 'Brake Pads', 'Duralast ceramic brake pads', 'MKD621', 19.99);

INSERT INTO car_part VALUES (0, 0);
INSERT INTO car_part VALUES (0, 1);
INSERT INTO car_part VALUES (0, 2);


