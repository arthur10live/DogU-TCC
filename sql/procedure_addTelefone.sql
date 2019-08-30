delimiter $
create procedure addTelefone(vlcd_tipo_telefone int, vlds_telefone char(11), vlcd_pessoa int)
begin
    declare idtelefone int;
    
    select count(cd_telefone)+1 into idtelefone from tb_telefone;	
    INSERT tb_telefone (cd_telefone, ds_telefone, cd_tipo_telefone) VALUES (idtelefone, vlds_telefone, vlcd_tipo_telefone);
	insert pessoa_telefone(cd_pessoa, cd_telefone) values (vlcd_pessoa, idtelefone);	
END $
-- call addTelefone("tipo telefone", "telefone", "cdPessoa");