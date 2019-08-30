-- Criar view que mostra o porte das raças. (2 Tabelas)		
CREATE VIEW vwPorteRacas AS
SELECT ta.ds_tipo_animal AS "RacasAnimais", p.ds_porte AS "Porte"
	FROM tb_tipo_animal AS ta, tb_porte AS p
		WHERE ta.cd_porte = p.cd_porte;
		
-- Criar view que mostra todos os Administradores com seu id, nome e cpf (2 tabelas)
CREATE VIEW vwAdministradorInfo AS 
SELECT a.cd_administrador, p.nm_pessoa, p.cd_cpf
	FROM tb_administrador AS a, tb_pessoa AS p
		WHERE a.cd_pessoa = p.cd_pessoa;

-- Criar  view que mostra todos os Passeadores com seu id, nome e cpf (2 tabelas)
CREATE VIEW vwPasseadorInfo AS 
SELECT pa.cd_passeador, pe.nm_pessoa, pe.cd_cpf
	FROM tb_passeador AS pa, tb_pessoa AS pe
		WHERE pa.cd_pessoa = pe.cd_pessoa;

-- Criar  view que mostra todos os Clientes com seu id, nome e cpf (2 tabelas)
CREATE VIEW vwClienteInfo AS 
SELECT c.cd_cliente, pe.nm_pessoa, pe.cd_cpf
	FROM tb_cliente AS c, tb_pessoa AS pe
		WHERE c.cd_pessoa = pe.cd_pessoa;
		
-- Criar view que mostra quais administradores tem a permissão total no sistema. (3 Tabelas)		
CREATE VIEW vwPermissaoTotal AS
SELECT a.cd_administrador, p.nm_pessoa
	FROM tb_pessoa AS p, tb_administrador AS a, administrador_permissao AS ap
		WHERE a.cd_pessoa = p.cd_pessoa
		AND a.cd_administrador = ap.cd_administrador
		AND ap.cd_permissao = 1
		AND ap.ic_permitir = 1; 

-- Criar view que mostra o id e nome dos Pets cadastrados com o nome de seus donos. (3 Tabelas)	
CREATE VIEW vwPetDono AS
SELECT p.cd_pet, p.nm_pet, pe.nm_pessoa
	FROM tb_pessoa AS pe, tb_cliente AS c, cliente_pet AS cp, tb_pet AS p
		WHERE pe.cd_pessoa = c.cd_pessoa
		AND cp.cd_cliente = c.cd_cliente
		AND cp.cd_pet = p.cd_pet;

-- Criar view que mostra todos os endereços que estão no Estado de São Paulo. (3 Tabelas)
CREATE VIEW vwEnderecosSP AS
SELECT e.cd_endereco, e.ds_endereco, e.cd_cep
	FROM tb_endereco AS e, tb_bairro AS b, tb_cidade AS c
		WHERE e.cd_bairro = b.cd_bairro
		AND b.cd_cidade = c.cd_cidade
		AND c.sg_uf = "SP";
		
-- Criar view que mostra o id e nome do pet com seu respectivo porte. (4 tabelas)
CREATE VIEW vwPetPorte AS
SELECT pe.cd_pet, pe.nm_pet, po.ds_porte
	FROM tb_pet AS pe, tb_animal AS a, tb_tipo_animal AS ta, tb_porte AS po
		WHERE pe.cd_animal = a.cd_animal
		AND a.cd_tipo_animal = ta.cd_tipo_animal
		AND ta.cd_porte = po.cd_porte;

-- Criar view que mostra os tipode de endereços que as pessoas mais usam. (4 Tabelas)
CREATE VIEW vwTipoEnderecosPessoas AS
SELECT p.cd_pessoa, p.nm_pessoa, te.ds_tipo_endereco
	FROM tb_endereco AS e, tb_tipo_endereco AS te, tb_pessoa AS p, pessoa_endereco AS pe 
		WHERE pe.cd_pessoa = p.cd_pessoa
		AND pe.cd_endereco = e.cd_endereco
		AND pe.cd_tipo_endereco = te.cd_tipo_endereco;

-- Criar view que mostra a cidade que mora todos os administradores. (6 Tabelas)
CREATE VIEW vwCidadeAdministradores AS 
SELECT ad.cd_administrador, p.nm_pessoa, c.ds_cidade
	FROM tb_administrador AS ad, tb_pessoa AS p, pessoa_endereco AS pe, tb_endereco AS e, tb_bairro AS b, tb_cidade AS c
		WHERE ad.cd_pessoa = p.cd_pessoa
		AND p.cd_pessoa = pe.cd_pessoa
		AND pe.cd_endereco = e.cd_endereco
		AND e.cd_bairro = b.cd_bairro
		AND b.cd_cidade = c.cd_cidade; 
		
-- Criar view que mostra a cidade que mora todos os passeadores. (6 Tabelas)
CREATE VIEW vwCidadePasseadores AS
SELECT pa.cd_passeador, p.nm_pessoa, c.ds_cidade
	FROM tb_passeador AS pa, tb_pessoa AS p, pessoa_endereco AS pe, tb_endereco AS e, tb_bairro AS b, tb_cidade AS c
		WHERE pa.cd_pessoa = p.cd_pessoa
		AND p.cd_pessoa = pe.cd_pessoa
		AND pe.cd_endereco = e.cd_endereco
		AND e.cd_bairro = b.cd_bairro
		AND b.cd_cidade = c.cd_cidade; 
		
-- Criar view que mostra a cidade que mora todos os clientes. (6 Tabelas)
CREATE VIEW vwCidadeClientes AS
SELECT cl.cd_cliente, p.nm_pessoa, c.ds_cidade
	FROM tb_cliente AS cl, tb_pessoa AS p, pessoa_endereco AS pe, tb_endereco AS e, tb_bairro AS b, tb_cidade AS c
		WHERE cl.cd_pessoa = p.cd_pessoa
		AND p.cd_pessoa = pe.cd_pessoa
		AND pe.cd_endereco = e.cd_endereco
		AND e.cd_bairro = b.cd_bairro
		AND b.cd_cidade = c.cd_cidade; 
