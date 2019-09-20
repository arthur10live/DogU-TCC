delimiter $
create procedure crudTbEndereco(in vlds_endereco varchar(120), vlcd_cep char(8), vlds_complemento varchar(70), vlcd_bairro int)
begin
    declare vlcd_endereco int;

    SELECT MAX(cd_endereco)+1 into vlcd_endereco FROM tb_endereco;
    INSERT INTO tb_endereco VALUES (vlcd_endereco, vlds_endereco, vlcd_cep, vlds_complemento, vlcd_bairro);
    UPDATE tb_endereco set cd_cep = '00000000' 
        where ds_endereco = vlds_endereco 
        and cd_cep = vlcd_cep 
        and cd_endereco = vlcd_endereco
        and ds_complemento = vlds_complemento
        and cd_bairro = vlcd_bairro;
    select * from tb_endereco 
        where ds_endereco = vlds_endereco 
        and cd_cep = '00000000' 
        and cd_endereco = vlcd_endereco
        and ds_complemento = vlds_complemento
        and cd_bairro = vlcd_bairro;
    UPDATE tb_endereco set cd_cep = vlcd_cep 
        where ds_endereco = vlds_endereco 
        and cd_cep = '00000000' 
        and cd_endereco = vlcd_endereco
        and ds_complemento = vlds_complemento
        and cd_bairro = vlcd_bairro;
    DELETE FROM tb_endereco 
        WHERE  ds_endereco = vlds_endereco 
        AND cd_cep = vlcd_cep 
        and cd_endereco = vlcd_endereco
        and ds_complemento = vlds_complemento
        and cd_bairro = vlcd_bairro;

END $
-- call crudTbEndereco(ds_endereco, cd_cep, ds_complemento, cd_bairro);