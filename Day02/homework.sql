/*1.	建立一資料表名為食物(food)，有編號、名稱、到期日、產地編號、價格、種類六個欄位，
	分別定義如下：
		id(char(5),PK), 
        name(varchar(30)), 
        expiredate(datetime), 
        placeid(char(2)), 
        price(int unsigned), 
        catalog(varchar(20))	
*/

CREATE DATABASE IF NOT EXISTS hw1;
CREATE TABLE IF NOT EXISTS hw1.food(
	id				CHAR(5)		PRIMARY KEY,
    name			VARCHAR(30)			   ,
    expiredate		DATETIME			   ,
    placeid			CHAR(2),
	price			INT,
    catelog			VARCHAR(20)
);

/*2.	建立一資料表名為產地(place)，有編號、名稱兩個欄位，分別定義如下：
	id(char(2),PK), 
    name(varchar(20))
*/
CREATE TABLE IF NOT EXISTS hw1.place(
	id				CHAR(2)		PRIMARY KEY,
    name			VARCHAR(20)	
);

/*3.	利用複製表格結構的方式複製food產生一個新的表格名為food1*/
CREATE TABLE IF NOT EXISTS food1 LIKE food;

/*4.	利用food1新增(test)、修改(test)、重新命名和刪除一個欄位*/
ALTER TABLE hw1.food1
	ADD test int FIRST;
	
ALTER TABLE hw1.food1 
	MODIFY test VARCHAR(10) AFTER catelog;

ALTER TABLE hw1.food1 
	RENAME COLUMN name TO re_name;

ALTER TABLE hw1.food1
	DROP COLUMN re_name;

/*5.	將food1重新命名為food2*/
RENAME TABLE hw1.food1 TO food2; 	

DROP TABLE hw1.food2;
DROP DATABASE hw1