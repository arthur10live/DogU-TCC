delimiter $
create procedure crudTbCliente(in vlcd_pessoa int, vlcd_login int)
begin
    declare vlcd_cliente int;

    SELECT MAX(cd_cliente)+1 into vlcd_cliente FROM tb_cliente;
    INSERT INTO tb_cliente VALUES (vlcd_cliente, vlcd_pessoa, vlcd_login);
    UPDATE tb_cliente set cd_login = '1' where cd_pessoa = vlcd_pessoa and cd_login = vlcd_login;
    select * from tb_cliente where cd_pessoa = vlcd_pessoa and cd_login = '1';
    UPDATE tb_cliente set cd_login = vlcd_login where cd_pessoa = vlcd_pessoa and cd_login = '1';
    DELETE FROM tb_cliente WHERE  cd_pessoa = vlcd_pessoa AND cd_login = vlcd_login;

END $
-- call crudTbCliente(cd_pessoa, cd_login);