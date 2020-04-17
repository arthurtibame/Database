CREATE DATABASE IF NOT EXISTS hw1;
CREATE TABLE IF NOT EXISTS hw1.food(
	id				CHAR(5)		PRIMARY KEY,
    name			VARCHAR(30)			   ,
    expiredate		DATETIME			   ,
    placeid			CHAR(2),
	price			INT,
    catelog			VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS hw1.place(
	id				CHAR(2)		PRIMARY KEY,
    name			VARCHAR(20)	,
);

CREATE TABLE food1 LIKE food;
ALTER TABLE food1
	DROP name;
    
#ALTER TABLE food1
	
