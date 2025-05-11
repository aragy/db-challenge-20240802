--Listar todos Clientes que não tenham realizado uma compra;
SELECT * 
FROM customers customersWHERE c.custumer_id NOT IN (
        SELECT DISTINCT o.custumer_id
        FROM orders o
)