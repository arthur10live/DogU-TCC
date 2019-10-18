delimiter $
create procedure remPermissaoTodos(in vlcd_permissao INT)
begin
    UPDATE administrador_permissao SET ic_permitir=0 WHERE cd_permissao = vlcd_permissao;
END $
/* CALL remPermissaoTodos(cdPerm); */