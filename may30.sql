create database may30;

use may30;

CREATE TABLE Details (
    id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(50),
    vilage VARCHAR(50),
    vehicle VARCHAR(50),
    birth_date YEAR
);

INSERT INTO Details (id, name, vilage, vehicle, birth_year) VALUES
(2001202010, 'Isuru', 'Kalubovitiyana', 'Car', '2001-10-27'),
(1203012054, 'Isuru', 'Morawaka', 'Bike', '2001-12-10'),
(2100304040, 'Isuru', 'Ruwankanda', 'Van', '2002-10-11');
