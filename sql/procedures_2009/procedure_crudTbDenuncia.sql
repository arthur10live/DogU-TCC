delimiter $
create procedure crudTbDenuncia(in vlcd_passeio int, vlcd_passeador int, vlcd_cliente int, vlcd_pet int, vlcd_tipo_denuncia int, vlds_denuncia mediumtext)
begin
    declare vlcd_denuncia int;

    SELECT MAX(cd_denuncia)+1 into vlcd_denuncia FROM tb_denuncia;
    INSERT INTO tb_denuncia VALUES (vlcd_denuncia, vlcd_passeio, vlcd_passeador, vlcd_cliente, vlcd_pet, vlcd_tipo_denuncia, vlds_denuncia);
    UPDATE tb_denuncia set cd_passeador = '1' 
        where cd_passeio = vlcd_passeio 
        and cd_passeador = vlcd_passeador 
        and cd_denuncia = vlcd_denuncia
        and cd_cliente = vlcd_cliente
        and cd_pet = vlcd_pet
        and cd_tipo_denuncia = vlcd_tipo_denuncia
        and ds_denuncia = vlds_denuncia;
    select * from tb_denuncia 
        where cd_passeio = vlcd_passeio 
        and cd_passeador = '1' 
        and cd_denuncia = vlcd_denuncia
        and cd_cliente = vlcd_cliente
        and cd_pet = vlcd_pet
        and cd_tipo_denuncia = vlcd_tipo_denuncia
        and ds_denuncia = vlds_denuncia;
    UPDATE tb_denuncia set cd_passeador = vlcd_passeador 
        where cd_passeio = vlcd_passeio 
        and cd_passeador = '1' 
        and cd_denuncia = vlcd_denuncia
        and cd_cliente = vlcd_cliente
        and cd_pet = vlcd_pet
        and cd_tipo_denuncia = vlcd_tipo_denuncia
        and ds_denuncia = vlds_denuncia;
    DELETE FROM tb_denuncia 
        WHERE  cd_passeio = vlcd_passeio 
        AND cd_passeador = vlcd_passeador 
        and cd_denuncia = vlcd_denuncia
        and cd_cliente = vlcd_cliente
        and cd_pet = vlcd_pet
        and cd_tipo_denuncia = vlcd_tipo_denuncia
        and ds_denuncia = vlds_denuncia;

END $
-- call crudTbDenuncia(cd_passeio, cd_passeador, cd_cliente, cd_pet, cd_tipo_denuncia, ds_denuncia);