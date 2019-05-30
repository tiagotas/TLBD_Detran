-- Quais cores de carro existem no sistema?
SELECT nome FROM cor ORDER BY nome ASC;

-- Quais veículos tem no db junto com o nome do proprietario
SELECT v.placa, p.nome, p.cpf 
FROM veiculo v
JOIN proprietario p ON (p.id = v.id_proprietario);

-- De quem são as multas no sistema?
SELECT m.lancamento,
       m.data_multa,
       m.hora,
       p.nome,
	   v.placa	
FROM multa m
JOIN veiculo v ON (v.id = m.id_veiculo)
JOIN proprietario p ON (p.id = v.id_proprietario);


