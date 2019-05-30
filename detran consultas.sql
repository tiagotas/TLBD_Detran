-- RELATÓRIOS (QUERY) DO BANCO DE DADOS DO DETRAN

-- LISTAR TODAS AS CORES DE VEÍCULOS POR ORDEM ALFABÉTICA
SELECT * FROM cor ORDER BY nome ASC;


-- LISTAR TODOS OS VEÍCULOS
SELECT v.placa, 
	   c.nome AS cor_veiculo,
	   m.nome AS modelo_carro,
	   ma.nome AS marca,
	   p.nome AS proprietario
	   
FROM veiculo v

JOIN cor c ON (c.id = v.id_cor)
JOIN modelo m ON (m.id = v.id_modelo)
JOIN marca ma ON (ma.id = m.id_marca)
JOIN proprietario p ON (p.id = v.id_proprietario)


-- QUAIS AS MULTAS NO SISTEMA?
-- DE QUEM SÃO AS MULTAS?
-- QUAL É O VALOR DAS MULTAS?
SELECT m.lancamento,
       m.data_multa,
	   v.placa,
	   p.nome,
	   i.valor,
	   i.pontos
	   
FROM multa m

JOIN veiculo v ON (v.id = m.id_veiculo)
JOIN proprietario p ON (p.id = v.id_proprietario)
JOIN infracao i ON (i.id = m.id_infracao);


SELECT m.lancamento,
       m.data_multa,
	   v.placa,
	   p.nome,
	   i.valor,
	   i.pontos,
	   SUM(i.valor)
	   
FROM multa m

JOIN veiculo v ON (v.id = m.id_veiculo)
JOIN proprietario p ON (p.id = v.id_proprietario)
JOIN infracao i ON (i.id = m.id_infracao);

GROUP BY p.id;



























JOIN modelo m ON (m.id = v.id_modelo)
JOIN marca ma ON (ma.id = m.id_marca);
;