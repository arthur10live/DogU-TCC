delimiter $
create trigger tr_MonitoraInsert_tb_pet
	after insert on tb_pet
		for each row 
			begin
				DECLARE cd_auditoria_atual int;
                SELECT max(cd_auditoria)+1 into cd_auditoria_atual from tb_auditoria;
				insert into tb_auditoria set 
                cd_auditoria = cd_auditoria_atual,
                nm_usuario = user(),
                sg_tipo_auditoria = 'INS',
                dt_acao = curdate(),
                hr_acao = curtime(),
				ds_acao = concat(
					"cd_pet = ", new.cd_pet,
					", nm_pet = ", new.nm_pet,
                    ", cd_animal = ", new.cd_animal,
                    ", dt_nascimento = ", new.dt_nascimento
                );
			end $
