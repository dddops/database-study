===================================================================================================================================================================================
-- 생성
-- 1
insert into  customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, city, country)
VALUES ('990', 'kimjaejin','rla', '재진', '01012312452', '91203', 'seoul' , 'Korea');

-- 2
INSERT into products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP)
VALUES	('S1200_2998', 'abc', 'Planes', '1:20', 'productVendor', 'productDescription', '123', '123', '123' );

-- 3
-- 새로 생성하려는 employees 상사번호인 reportsTo가 employeeNumber에 없는 번호면 등록이 안됨
INSERT into employees (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle);
VALUES ('4001', 'MMM', 'AAA', 'x20001', 'a@a.com', '1', '1414', 'VP');

-- 4
INSERT into offices (officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory)
VALUES ('8', 'MMM', '0101010', '1-2 Sesame.st', 's2', 'NY', 'USA', '10929', 'NA');

-- 5
INSERT into orders (orderNumber, orderDate, requiredDate, shippedDate, status, comments, customerNumber)
VALUES ('20012', '2004-04-14', '2004-04-24', '2004-04-29', 'shipped','wwwwwwwaaa','990');

-- 6
-- orderNumber, productCode가 FK
INSERT into orderdetails(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES ('20012', 'S1200_2998', '90', '49.00', '3');

-- 7
INSERT into payments(customerNumber, checkNumber, paymentDate, amount)
VALUES ('990', 'GQ29019', '2004-02-1', '2003');

-- 8
INSERT into productlines (productLine, textDescription)
VALUES ('aaa', 'dksksksk')

-- 9
INSERT into customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, city, country)
VALUES ('999','aaa','a','s','101','a','a','a');

-- 10
INSERT into products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP)
VALUES	('S1200_2998', 'abc', 'Planes', '1:20', 'productVendor', 'productDescription', '123', '123', '123' );

===================================================================================================================================================================================
-- 읽기
-- 1
SELECT * from customers;

-- 2
SELECT productName from products;

-- 3
SELECT lastName,firstName,jobTitle from  employees;

-- 4
SELECT city, addressLine1, addressLine2, state, country from  offices;

-- 5
SELECT * from orders ORDER BY orderDate DESC limit 10;

-- 6
SELECT * from orderdetails where orderNumber = '10100';

-- 7
SELECT * from payments where customerNumber = '103'

-- 8
SELECT productLine, textDescription from productlines

-- 9
SELECT * from customers where country = 'USA';

-- 10
SELECT * from products where buyPrice < 100;

===================================================================================================================================================================================
-- 쓰기
-- 1
UPDATE customers set city = 'busan' where customerName = 'kimjaejin';

-- 2
UPDATE products set buyPrice = 49 where productName = '1969 Harley Davidson Ultimate Chopper';

-- 3
UPDATE employees set jobTitle = 'Sales Manager (KR)' where employeeNumber = 4001;

-- 4
UPDATE offices set phone = 0100000 where officeCode = 8;

-- 5
UPDATE orders set status = 'cancelled' where orderNumber = 20012;

-- 6
UPDATE orderdetails set quantityOrdered = 200 where orderNumber = 10100;

-- 7
UPDATE payments set amount = 92999 where customerNumber = 990;

-- 8
UPDATE productlines set textDescription = 'idk' where productLine = aaa;

-- 9 이메일 없는데요?
UPDATE customers set phone = '3030300' where customerNumber = 999;

--10
UPDATE products set buyPrice = 1000 where productCode in ('S10_1678', 'S10_1949', 'S10_2016');

===================================================================================================================================================================================
-- 삭제
-- 1
DELETE FROM customers where customerNumber = 122;

-- 2
DELETE FROM products where productCode = 'S18_4600';

-- 3
DELETE FROM employees where employeeNumber = 4001;

-- 4
DELETE FROM offices where officeCode = 8;

-- 5
DELETE FROM orders where orderNumber = 10023;

-- 6
DELETE FROM orderdetails where orderNumber = 10109;

-- 7
DELETE FROM payments where customerNumber = 990;

-- 8
DELETE FROM productlines where productLine = 'aaa';

-- 9
DELETE FROM customers where country = 'a';

-- 10
DELETE FROM products where productLine = 'Trains';
