delimiter $
create procedure crudTbNivel(in vlds_nivel varchar(50))
begin
    declare vlcd_nivel int;

    SELECT MAX(cd_nivel)+1 into vlcd_nivel FROM tb_nivel;
    INSERT INTO tb_nivel VALUES (vlcd_nivel, vlds_nivel);
    UPDATE tb_nivel set ds_nivel = 'TESTE' where ds_nivel = vlds_nivel and cd_nivel = vlcd_nivel;
    select * from tb_nivel where ds_nivel = 'TESTE' and cd_nivel = vlcd_nivel;
    UPDATE tb_nivel set cd_senha = vlcd_senha where ds_nivel = 'TESTE' and cd_nivel = vlcd_nivel;
    DELETE FROM tb_nivel WHERE  ds_nivel = 'TESTE' AND cd_nivel = vlcd_nivel;

END $
-- call crudTbNivel(ds_nivel);