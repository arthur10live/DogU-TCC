delimiter $
create procedure crudTbAdministrador(in vlcd_pessoa int, vlcd_login int)
begin
    declare vlcd_administrador int;

    SELECT MAX(cd_administrador)+1 into vlcd_administrador FROM tb_administrador;
    INSERT INTO tb_administrador VALUES (vlcd_administrador, vlcd_pessoa, vlcd_login);
    UPDATE tb_administrador set cd_login = '1' where cd_pessoa = vlcd_pessoa and cd_login = vlcd_login;
    select * from tb_administrador where cd_pessoa = vlcd_pessoa and cd_login = '1';
    UPDATE tb_administrador set cd_login = vlcd_login where cd_pessoa = vlcd_pessoa and cd_login = '1';
    DELETE FROM tb_administrador WHERE  cd_pessoa = vlcd_pessoa AND cd_login = vlcd_login;

END $
-- call crudTbAdministrador(cd_pessoa, cd_login);