SELECT * FROM products;
/* Cau 1 */ 
SELECT * FROM products
JOIN categories ON categories.categoryID = products.productID
WHERE categories.categoryName LIKE '%e%';
/* Cau 2 */
SELECT * FROM products
WHERE dateAdded LIKE '2013%'
/* Cau 3 */
SELECT * FROM addresses JOIN customers
ON addresses.customerID = customers.customerID
WHERE customers.emailAddress LIKE '%@gmail.com'
/* Cau 4 */
SELECT * FROM `products` WHERE 
 discountPercent = 30 AND listPrice > 500
 ORDER BY listPrice DESC
/* Cau 5 */
SELECT listPrice,productName FROM products
WHERE listPrice > 300
ORDER BY listPrice DESC
LIMIT 2	
/* Cau 6 */
SELECT listPrice FROM products
JOIN orderItems ON orderItems.productID = products.productID
JOIN orders ON orders.orderID = orderItems.orderID
JOIN addresses ON addresses.customerID = orders.customerID
WHERE products.listPrice > 400 AND addresses.city = 'Paramus'