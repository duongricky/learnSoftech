/* Cau 1 */
SELECT orderDate FROM orders JOIN orderItems
ON orders.orderID = orderItems.orderID
JOIN products ON orderItems.productID = products.productID
JOIN categories ON products.categoryID = categories.categoryID
ORDER BY orders.orderDate DESC LIMIT 0,1
/* Cau 2 */
UPDATE addresses JOIN
orders ON addresses.customerID = orders.customerID
JOIN orderItems
ON orders.orderID = orderItems.orderID
JOIN products
ON orderItems.productID = products.productID
SET addresses.city = 'Thanh Pho Da Nang'
WHERE products.productName = 'Gibson Les Paul'
	
/* Cau 3 */