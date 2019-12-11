-- 1
SELECT * FROM product WHERE prices > 600 AND dateInput LIKE '%2014-02%';
-- 2
SELECT * FROM products
JOIN orderItems ON orderItems.productID = products.productID
JOIN orders ON orders.orderID = orderItems.orderID
JOIN customer ON orders.customerID = customer.customerID
WHERE customer.email = 'barryz@gmail.com';
