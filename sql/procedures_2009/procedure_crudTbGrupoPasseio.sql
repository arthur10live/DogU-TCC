delimiter $
create procedure crudTbGrupoPasseio(in vlcd_passeio int, vlcd_cliente int, vlcd_pet int)
begin
    INSERT INTO tb_grupo_passeio VALUES (vlcd_passeio, vlcd_cliente, vlcd_pet);
    UPDATE tb_grupo_passeio set cd_pet = '1' where cd_cliente = vlcd_cliente and cd_pet = vlcd_pet and cd_passeio = vlcd_passeio;
    select * from tb_grupo_passeio where cd_cliente = vlcd_cliente and cd_pet = '1' and cd_passeio = vlcd_passeio;
    UPDATE tb_grupo_passeio set cd_pet = vlcd_pet where cd_cliente = vlcd_cliente and cd_pet = '1' and cd_passeio = vlcd_passeio;
    DELETE FROM tb_grupo_passeio WHERE  cd_cliente = vlcd_cliente AND cd_pet = vlcd_pet and cd_passeio = vlcd_passeio;

END $
-- call crudTbGrupoPasseio(cd_passeio, cd_cliente, cd_pet);