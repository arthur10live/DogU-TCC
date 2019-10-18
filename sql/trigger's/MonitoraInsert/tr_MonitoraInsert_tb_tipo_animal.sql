delimiter $
create trigger tr_MonitoraInsert_tb_tipo_animal
	after insert on tb_tipo_animal
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
					"cd_tipo_animal = ", new.cd_tipo_animal,
					", cd_porte = ", new.cd_porte,
                    ", ds_tipo_animal = ", new.ds_tipo_animal
                );
			end $
