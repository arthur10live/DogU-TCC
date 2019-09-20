delimiter $
create procedure crudTbCidade(in vlds_cidade varchar(80), vlsg_uf char(2))
begin
    declare vlcd_cidade int;

    SELECT MAX(cd_cidade)+1 into vlcd_cidade FROM tb_cidade;
    INSERT INTO tb_cidade VALUES (vlcd_cidade, vlds_cidade, vlsg_uf);
    UPDATE tb_cidade set sg_uf = 'SP' where ds_cidade = vlds_cidade and sg_uf = vlsg_uf and cd_cidade = vlcd_cidade;
    select * from tb_cidade where ds_cidade = vlds_cidade and sg_uf = 'SP' and cd_cidade = vlcd_cidade;
    UPDATE tb_cidade set sg_uf = vlsg_uf where ds_cidade = vlds_cidade and sg_uf = 'SP' and cd_cidade = vlcd_cidade;
    DELETE FROM tb_cidade WHERE  ds_cidade = vlds_cidade AND sg_uf = vlsg_uf and cd_cidade = vlcd_cidade;

END $
-- call crudTbCidade(ds_cidade, sg_uf);