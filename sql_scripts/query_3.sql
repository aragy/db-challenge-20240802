--Listar os Produtos sem Estoque
SELECT p.*
FROM products p
JOIN stocks s ON p.product_id = s.product_id
WHERE s.quantity = 0;