delimiter $
create procedure permTotal(in vlcd_administrador INT)
begin
    UPDATE administrador_permissao SET ic_permitir=1 WHERE cd_administrador = vlcd_administrador;
END $
/* CALL permTotal(cdADM); */