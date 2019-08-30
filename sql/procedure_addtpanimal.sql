delimiter $
create procedure addtpanimal(vlds_tipo_animal varchar(50), vlcd_porte int)
begin
    declare idtpanimal int;
    
    select count(cd_tipo_animal)+1 into idtpanimal from tb_tipo_animal;	
    INSERT tb_tipo_animal (cd_tipo_animal, ds_tipo_animal, cd_porte) VALUES (idtpanimal, vlds_tipo_animal, vlcd_porte);
END $
-- call addtpanimal("Raça do animal", "porte");