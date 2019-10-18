delimiter $
create trigger tr_MonitoraUpdate_tb_pet
	before update on tb_pet
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
					"cd_pet = ", new.cd_pet,
					", nm_pet = ", new.nm_pet,
                    ", cd_animal = ", new.cd_animal,
                    ", dt_nascimento = ", new.dt_nascimento,
					" ANTIGO: ",
                    "cd_pet = ", old.cd_pet,
					", nm_pet = ", old.nm_pet,
                    ", cd_animal = ", old.cd_animal,
                    ", dt_nascimento = ", old.dt_nascimento
                );
			end $
