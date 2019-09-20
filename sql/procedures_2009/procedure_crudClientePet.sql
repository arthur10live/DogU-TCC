delimiter $
create procedure crudClientePet(in vlcd_cliente int, vlcd_pet int)
begin
    INSERT INTO cliente_pet VALUES (vlcd_cliente, vlcd_pet);
    UPDATE cliente_pet set cd_pet = '1' where cd_cliente = vlcd_cliente and cd_pet = vlcd_pet;
    select * from cliente_pet where cd_cliente = vlcd_cliente and cd_pet = '1';
    UPDATE cliente_pet set cd_pet = vlcd_pet where cd_cliente = vlcd_cliente and cd_pet = '1';
    DELETE FROM cliente_pet WHERE  cd_cliente = vlcd_cliente AND cd_pet = vlcd_pet;

END $
-- call crudClientePet(cd_cliente, cd_pet);