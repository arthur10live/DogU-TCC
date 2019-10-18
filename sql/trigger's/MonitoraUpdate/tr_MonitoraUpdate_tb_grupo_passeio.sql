delimiter $
create trigger tr_MonitoraUpdate_tb_grupo_passeio
	before update on tb_grupo_passeio
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
					"cd_passeio = ", new.cd_passeio,
					", cd_cliente = ", new.cd_cliente,
                    ", cd_pet = ", new.cd_pet,
					" ANTIGO: ",
					"cd_passeio = ", old.cd_passeio,
					", cd_cliente = ", old.cd_cliente,
                    ", cd_pet = ", old.cd_pet
                );
			end $