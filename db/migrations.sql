CREATE DATABASE vehicle;

\c vehicle

CREATE TABLE cars (
	id SERIAL PRIMARY KEY,
	manufacturer VARCHAR(100),
	model VARCHAR(100),
	color VARCHAR(100),
	price VARCHAR(100),
	awd BOOLEAN
);