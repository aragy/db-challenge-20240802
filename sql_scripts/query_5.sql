--Listar os Funcionarios que não estejam relacionados a um Pedido.
SELECT *
FROM staffs st
WHERE st.staff_id NOT IN (
    SELECT DISTINCT o.staff_id
    FROM orders o
    WHERE o.staff_id IS NOT NULL
);