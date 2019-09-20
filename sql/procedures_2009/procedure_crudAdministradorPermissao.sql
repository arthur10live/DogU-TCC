delimiter $
create procedure crudAdministradorPermissao(in vlcd_permissao int, vlcd_administrador int)
begin
    INSERT INTO administrador_permissao VALUES (vlcd_permissao, vlcd_administrador, '0');
    UPDATE administrador_permissao set ic_permitir = '1' where cd_permissao = vlcd_permissao and cd_administrador = vlcd_administrador;
    select * from administrador_permissao where cd_permissao = vlcd_permissao and cd_administrador = vlcd_administrador;
    DELETE FROM administrador_permissao WHERE  cd_permissao = vlcd_permissao AND cd_administrador = vlcd_administrador;

END $
-- call crudAdministradorPermissao(cd_permissao, cd_administrador);