delimiter $
create procedure remPermissoes(in vlcd_administrador INT)
begin
    UPDATE administrador_permissao SET ic_permitir=0 WHERE cd_administrador = vlcd_administrador;
END $
/* CALL remPermissoes(cdADM); */