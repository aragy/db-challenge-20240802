--Listar os Produtos que não tenham sido comprados
SELECT * 
FROM products p
WHERE p.product_id NOT IN (
    SELECT DISTINCT oi.product_id
    FROM order_items oi
);