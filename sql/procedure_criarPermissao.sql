delimiter $
create procedure criarPermissao(in vlds_permissao text)
begin
    declare numadm INT;
    declare idPermissao INT;
    declare contador INT;

    insert tb_permissao(ds_permissao) values (vlds_permissao);
    SELECT cd_permissao into idPermissao FROM tb_permissao where ds_permissao = vlds_permissao;
    SELECT COUNT(*) into numadm FROM tb_administrador;
    set contador = 1; 
    while contador <= numadm do
        insert administrador_permissao(cd_permissao, cd_administrador, ic_permitir) values (idPermissao, contador, 0);
        set contador = contador + 1;
    end while;
END $
/* CALL criarPermissao(dsPermissao); */