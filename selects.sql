-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados

-- 1)
SELECT 
    p.id,
    p.status,
    p.cliente_id,
    pr.id,
    pr.nome,
    pr.tipo,
    pr.preco,
    pr.pts_de_lealdade
FROM
    pedidos p
JOIN
    produtos_pedidos pp ON p.id = pp.pedido_id
JOIN
    produtos pr ON pp.produto_id = pr.id;

-- 2)
SELECT
    pedido_id 
FROM 
    produtos_pedidos
WHERE
    produto_id = 6;

-- 3)
SELECT
   c.nome gostam_de_fritas
FROM 
    clientes c
JOIN
    pedidos pe ON c.id = pe.cliente_id
JOIN
    produtos_pedidos pp ON pe.id = pp.pedido_id 
WHERE
    produto_id = 6;

-- 4)
SELECT
    SUM(pr.preco)
FROM
    pedidos p
JOIN
    produtos_pedidos pp ON p.id = pp.pedido_id
JOIN
    produtos pr ON 	pp.produto_id = pr.id
JOIN 
    clientes c ON p.cliente_id = c.id
WHERE 
    c.nome = 'Laura';

-- 5)
SELECT
 	p.nome,
 	COUNT(produto_id)
FROM 
    produtos_pedidos pp
JOIN
    produtos p ON pp.produto_id = p.id
GROUP BY
    p.nome
ORDER BY
    p.nome;

