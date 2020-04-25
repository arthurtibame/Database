# 1. 查詢所有食物表格中所有欄位的資料
SELECT * FROM food;

#2.	查詢所有食物名稱、到期日和價格
SELECT name, expiredate, price FROM food;

#3.	查詢所有食物名稱、到期日和價格，並將表頭重新命為'名稱'、'到期日'和'價格'
SELECT name '名稱', expiredate '到期日', price '價格' FROM food;

#4.	查詢所有食物的種類有哪些？(重覆的資料只顯示一次)
SELECT DISTINCT catalog FROM food;

#5.	查詢所有食物名稱和種類，並串接成一個字串，中間以空白隔開，並將表頭重新命為'Food name & catalog'
#--- WHERE子句

SELECT concat(name, catalog) AS 'Food name & catalog'
FROM food;

#6.	查詢所有食物價格超過400的食物名稱和價格
SELECT name, price FROM food
	WHERE price > 400;
    
#7.	查詢所有食物價格介於250~530之間的食物名稱和價格
SELECT name, price FROM food
	WHERE price >= 250 AND price <=530;

#8.	查詢所有食物價格不介於250~530之間的食物名稱和價格
SELECT name, price FROM food
	WHERE price < 250 OR price >530;

#9.	查詢所有食物種類為'點心'的食物名稱和價格
SELECT name, price, catalog FROM food
	WHERE catalog = '點心';

#10.	查詢所有食物種類為'點心'和'飲料'的食物名稱、價格和種類
SELECT name, price, catalog FROM food
	WHERE catalog = '點心' OR catalog = '飲料';

#11.	查詢所有食物產地為'TW'和'JP'的食物名稱和價格

    

