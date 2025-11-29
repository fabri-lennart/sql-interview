/* FIRST CREATE THE SQL QUERY THAT INSERT OUR CSV INTO THE DATABASE */
CREATE TABLE transactions AS
SELECT * FROM read_csv_auto('/home/fabri/Projects/sql-interview/datasets/Superstore.csv');
/*  OBVIOUSLY YOU HAVE TO CHANGE OR EDIT THE PATH */

/* Q1: GROUP ALL THE SALES BY REGION AND CALCULATE THE TOTAL SALES  */
SELECT Region, sum(Sales)
FROM transactions
GROUP BY Region;

/* CALCULATE THE TOTAL SALES */`
SELECT sum(Sales)
FROM transactions
