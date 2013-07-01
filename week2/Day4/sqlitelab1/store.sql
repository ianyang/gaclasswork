SELECT name FROM products WHERE on_sale = 'f';
SELECT name FROM products WHERE PRICE <= 20;
SELECT name, max(price) FROM products;
SELECT name, MAX(price) FROM products WHERE price < ( SELECT MAX(price) FROM products);
SELECT name, min(price) FROM products;
SELECT name, price FROM products ORDER BY price DESC;
SELECT avg(price) FROM products;
SELECT sum(price) FROM products;
SELECT sum(price) FROM products WHERE price <= 20;
SELECT id FROM users WHERE name = 'Markus';
SELECT name FROM users WHERE name LIKE "R%";
SELECT COUNT(wishlists.user_id) FROM wishlists, products WHERE products.id = "Teddy BEAR";
SELECT COUNT(wishlists.id) FROM wishlists, users WHERE users.name = "Ian Yang";
SELECT products.name, COUNT(products.name) FROM wishlists, products GROUP BY products.name;






SELECT
    users.name
  , joined_table.name
FROM (
  SELECT
      products.name
    , wishlists.user_id
  FROM 
      products
    , wishlists
  WHERE 
    products.id = wishlists.product_id
) AS joined_table, users WHERE user_id = users.id;