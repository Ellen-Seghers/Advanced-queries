/* 1) How many customers do we have? Result = 122 */
SELECT COUNT(*) FROM customers;

/* 2) What is the customer number of Mary Young? Result = 219 */
SELECT customerNumber
FROM customers
WHERE contactLastName = 'Young' and contactFirstName = 'Mary';

/* 3) What is the customer number of the person living at Magazinweg 7, Frankfurt 60528? Result = 247 */
SELECT customerNumber
FROM customers
WHERE addressLine1 = 'Magazinweg 7' and city = 'Frankfurt' and postalCode = '60528';

/* 4) If you sort the employees on their last name, what is the email of the first employee? Result = gbondur@classicmodelcars.com */
SELECT email
FROM employees
ORDER BY lastName
LIMIT 1;

/* 5) If you sort the employees on their last name, what is the email of the last employee? Result = gvanauf@classicmodelcars.com */ 
SELECT email
FROM employees
ORDER BY lastName DESC
LIMIT 1;

/* 6) What is first the product code of all the products from the line 'Trucks and Buses', sorted first by productscale, then by productname. Result = S50_1392 */
SELECT productCode
FROM products
WHERE productLine = 'Trucks and Buses'
ORDER BY productScale and productName
LIMIT 1;

/* 7) What is the email of the first employee, sorted on their last name that starts with a 't'? Result = lthompson@classicmodelcars.com */
SELECT email
FROM employees
WHERE lastName LIKE 't%'
ORDER BY lastName
LIMIT 1;

/* 8) Which customer (give customer number) payed by check on 2004-01-19? Result = 177 */
SELECT customerNumber
FROM payments
WHERE paymentDate = '2004-01-19' and checkNumber is NOT NULL;

/* 9) How many customers do we have living in the state Nevada or New York? Result = 7 */
SELECT COUNT(*) 
FROM customers
WHERE state = 'NV' or state = 'NY';

/* 10) How many customers do we have living in the state Nevada or New York or outside the united states? Result = 93 */
SELECT COUNT(*) 
FROM customers
WHERE state = 'NV' or state = 'NY' or country != 'USA';

/* 11) How many customers do we have with the following conditions (only 1 query needed): 
- Living in the state Nevada or New York OR 
- Living outside the USA or the customers and with a credit limit above 1000 dollar? Result = 70 */
SELECT COUNT(*) 
FROM customers
WHERE state = 'NV' or state = 'NY' or (country != 'USA' and creditLimit > 1000);

/* 12) How many customers don't have an assigned sales representative? Result = 22 */
SELECT COUNT(*)
FROM customers
WHERE salesRepEmployeeNumber is NULL;

/* 13) How many orders have a comment? Result = 80 */
SELECT COUNT(*)
FROM orders
WHERE comments is NOT NULL;

/* 14) How many orders do we have where the comment mentions the word "caution"? Result = 4 */
SELECT COUNT(*)
FROM orders
WHERE comments LIKE '%caution%';

/* 15) What is the average credit limit of our customers from the USA? (rounded) Result =  */
SELECT 


