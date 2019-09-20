delimiter $
create procedure crudTbLogin(in vlcd_email varchar(80), vlcd_senha varchar(80))
begin
    declare vlcd_login int;

    SELECT MAX(cd_login)+1 into vlcd_login FROM tb_login;
    INSERT INTO tb_login VALUES (vlcd_login, vlcd_email, vlcd_senha);
    UPDATE tb_login set cd_senha = '1' where cd_email = vlcd_email and cd_senha = vlcd_senha and cd_login = vlcd_login;
    select * from tb_login where cd_email = vlcd_email and cd_senha = '1' and cd_login = vlcd_login;
    UPDATE tb_login set cd_senha = vlcd_senha where cd_email = vlcd_email and cd_senha = '1' and cd_login = vlcd_login;
    DELETE FROM tb_login WHERE  cd_email = vlcd_email AND cd_senha = vlcd_senha and cd_login = vlcd_login;

END $
-- call crudTbLogin(cd_email, cd_senha);