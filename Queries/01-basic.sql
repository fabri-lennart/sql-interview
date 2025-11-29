/* FIRST CREATE THE SQL QUERY THAT INSERT OUR CSV INTO THE DATABASE */
CREATE TABLE transactions AS
SELECT * FROM read_csv_auto('/home/fabri/Projects/sql-interview/datasets/Superstore.csv');
/*  OBVIOUSLY YOU HAVE TO CHANGE OR EDIT THE PATH */

/* Q1: GROUP ALL THE SALES BY REGION AND CALCULATE THE TOTAL SALES  */
SELECT Region, sum(Sales)
FROM transactions
GROUP BY Region;

/* CALCULATE THE TOTAL SALES */
SELECT sum(Sales)
FROM transactions

/* SEARCH FOR QUANTITY OF SALES OF A ESPECIFIC PRODUCT
IN THE STOCK (Avery 509) */
SELECT
  "Product Name",
  SUM(Quantity) AS total_quantity
FROM transactions
WHERE "Product Name" LIKE 'Avery 509%'
GROUP BY "Product Name";

/* ORDER THE CATEGORIES BY THE SALES IN DESCENDING ORDER (TOP TO DOWN)  */

SELECT Category, sum(Sales)
  FROM transactions
GROUP BY Category
ORDER BY sum(Sales) DESC;

/* FIND ALL PRODUCTS WHERE THE PRODUCT NAME STARTS WITH "Staples". */
SELECT "Product Name" FROM transactions
WHERE "Product Name" LIKE 'Staples%';

/* DISPLAY THE MAXIMUM SALES VALUE AND MINIMUM SALES VALUE. */
/* SALES BY YEAR OF ORDER DATE */

SELECT YEAR("Order Date") AS year, sum(Sales)
FROM transactions
GROUP BY year;

/* SHOW ALL THE PRODUCTS WHICH WERE SENT BY SECOND CLASS */

SELECT "Product Name", "Ship Mode", COUNT(Sales)
FROM transactions
WHERE "Ship Mode" LIKE 'Second Class'
GROUP BY "Product Name", "Ship Mode";
