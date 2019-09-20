delimiter $
create procedure crudTbAnimal(in vlcd_tipo_animal int, vlds_animal varchar(50))
begin
    declare vlcd_animal int;

    SELECT MAX(cd_animal)+1 into vlcd_animal FROM tb_animal;
    INSERT INTO tb_animal VALUES (vlcd_animal, vlcd_tipo_animal, vlds_animal);
    UPDATE tb_animal set ds_animal = '1' where cd_tipo_animal = vlcd_tipo_animal and ds_animal = vlds_animal and cd_animal = vlcd_animal;
    select * from tb_animal where cd_tipo_animal = vlcd_tipo_animal and ds_animal = '1' and cd_animal = vlcd_animal;
    UPDATE tb_animal set ds_animal = vlds_animal where cd_tipo_animal = vlcd_tipo_animal and ds_animal = '1' and cd_animal = vlcd_animal;
    DELETE FROM tb_animal WHERE  cd_tipo_animal = vlcd_tipo_animal AND ds_animal = vlds_animal and cd_animal = vlcd_animal;

END $
-- call crudTbAnimal(cd_tipo_animal, ds_animal);