--Agrupar a quantidade de vendas que uma determinada Marca por Loja.
SELECT s.store_name, b.brand_name, COUNT(oi.order_id) AS total_vendas
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN brands b ON p.brand_id = b.brand_id
JOIN orders o ON oi.order_id = o.order_id
JOIN stores s ON o.store_id = s.store_id
GROUP BY s.store_name, b.brand_name
ORDER BY s.store_name, b.brand_name