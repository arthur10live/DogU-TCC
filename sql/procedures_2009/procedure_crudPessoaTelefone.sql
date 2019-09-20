delimiter $
create procedure crudPessoaTelefone(in vlcd_pessoa int, vlcd_telefone int)
begin
    INSERT INTO pessoa_telefone VALUES (vlcd_pessoa, vlcd_telefone);
    UPDATE pessoa_telefone set cd_telefone = '1' where cd_pessoa = vlcd_pessoa and cd_telefone = vlcd_telefone;
    select * from pessoa_telefone where cd_pessoa = vlcd_pessoa and cd_telefone = '1';
    UPDATE pessoa_telefone set cd_telefone = vlcd_telefone where cd_pessoa = vlcd_pessoa and cd_telefone = '1';
    DELETE FROM pessoa_telefone WHERE  cd_pessoa = vlcd_pessoa AND cd_telefone = vlcd_telefone;

END $
-- call crudPessoaTelefone(cd_pessoa, cd_telefone);