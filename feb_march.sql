SELECT *
FROM Monthly_Expenses 
LIMIT 10;

SELECT *
FROM Monthly_Expenses
WHERE Details in ('Rent','Cook','Jeans')
ORDER BY Expenses DESC;


SELECT DISTINCT Details
FROM Monthly_Expenses;

SELECT Details, 
SUM(Expenses)
FROM Monthly_Expenses 
GROUP BY Details 
ORDER BY SUM(Expenses) DESC;

SELECT sum(Expenses)
FROM Monthly_Expenses;

SELECT strftime('%Y-%m',date) AS MONTH,
SUM(Expenses)
FROM Monthly_Expenses 
GROUP BY MONTH;
