delimiter $
create trigger tr_MonitoraUpdate_tb_tipo_animal
	before update on tb_tipo_animal
		for each row 
			begin
				DECLARE cd_auditoria_atual int;
                SELECT max(cd_auditoria)+1 into cd_auditoria_atual from tb_auditoria;
				insert into tb_auditoria set 
                cd_auditoria = cd_auditoria_atual,
                nm_usuario = user(),
                sg_tipo_auditoria = 'UPD',
                dt_acao = curdate(),
                hr_acao = curtime(),
				ds_acao = concat(
					"NOVO: ",
					"cd_tipo_animal = ", new.cd_tipo_animal,
					", cd_porte = ", new.cd_porte,
                    ", ds_tipo_animal = ", new.ds_tipo_animal,
					" ANTIGO: ",
					"cd_tipo_animal = ", old.cd_tipo_animal,
					", cd_porte = ", old.cd_porte,
                    ", ds_tipo_animal = ", old.ds_tipo_animal
                );
			end $
