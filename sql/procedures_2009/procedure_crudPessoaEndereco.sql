delimiter $
create procedure crudPessoaEndereco(in vlcd_pessoa int, vlcd_endereco int)
begin
    INSERT INTO pessoa_endereco VALUES (vlcd_pessoa, vlcd_endereco, 1);
    UPDATE pessoa_endereco set cd_tipo_endereco = 2 where cd_pessoa = vlcd_pessoa and cd_endereco = vlcd_endereco;
    select * from pessoa_endereco where cd_pessoa = vlcd_pessoa and cd_endereco = vlcd_endereco;
    DELETE FROM pessoa_endereco WHERE  cd_pessoa = vlcd_pessoa AND cd_endereco = vlcd_endereco AND cd_tipo_endereco = '2';

END $
-- call crudPessoaEndereco(cd_pessoa, cd_endereco);