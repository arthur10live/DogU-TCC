delimiter $
create procedure setarPermissoes(in vlcd_administrador INT)
begin
    declare numperms INT;
    declare contador INT;

    set contador = 1; 
    SELECT COUNT(*) into numperms FROM tb_permissao;
    while contador <= numperms do
        insert administrador_permissao(cd_permissao, cd_administrador, ic_permitir) values (contador, vlcd_administrador, 0);
        set contador = contador + 1;
    end while;
END $
/* CALL setarPermissoes(cdADM); */