delimiter $
create procedure crudTbBairro(in vlds_bairro varchar(50), vlcd_cidade int)
begin
    declare vlcd_bairro int;

    SELECT MAX(cd_bairro)+1 into vlcd_bairro FROM tb_bairro;
    INSERT INTO tb_bairro VALUES (vlcd_bairro, vlds_bairro, vlcd_cidade);
    UPDATE tb_bairro set cd_cidade = '1' where ds_bairro = vlds_bairro and cd_cidade = vlcd_cidade and cd_bairro = vlcd_bairro;
    select * from tb_bairro where ds_bairro = vlds_bairro and cd_cidade = '1' and cd_bairro = vlcd_bairro;
    UPDATE tb_bairro set cd_cidade = vlcd_cidade where ds_bairro = vlds_bairro and cd_cidade = '1' and cd_bairro = vlcd_bairro;
    DELETE FROM tb_bairro WHERE  ds_bairro = vlds_bairro AND cd_cidade = vlcd_cidade and cd_bairro = vlcd_bairro;

END $
-- call crudTbBairro(ds_bairro, cd_cidade);