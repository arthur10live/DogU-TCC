delimiter $
create procedure criarAdministrador(vlcd_cpf CHAR(11), vlcd_rg char(9), vlnm_pessoa varchar(70), vlcd_email VARCHAR(80), vlcd_senha varchar(80), vldt_nascimento DATE)
begin
    declare idpessoa int;
    declare idadministrador int;
    declare idlogin int;
    
	insert tb_pessoa(cd_cpf, cd_rg, nm_pessoa, dt_nascimento) values (vlcd_cpf, vlcd_rg, vlnm_pessoa, vldt_nascimento);
	select cd_pessoa into idpessoa from tb_pessoa where cd_cpf = vlcd_cpf and cd_rg = vlcd_rg;
	insert tb_login(cd_email, cd_senha) values (vlcd_email, MD5(vlcd_senha));
	select cd_login into idlogin from tb_login where cd_email = vlcd_email and cd_senha = MD5(vlcd_senha);
    select count(cd_administrador)+1 into idadministrador from tb_administrador;	
	insert tb_administrador(cd_administrador, cd_pessoa, cd_login) values (idadministrador, idpessoa, idlogin);
    call setarPermissoes(idadministrador);
END $
-- call criarAdministrador("CPF", "RG", "NOME", "EMAIL", "SENHA", "DATA DE NASCIMENTO (ANO-MES-DIA)");