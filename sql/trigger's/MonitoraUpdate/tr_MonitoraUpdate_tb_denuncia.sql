delimiter $
create trigger tr_MonitoraUpdate_tb_denuncia
	before update on tb_denuncia
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
					"cd_denuncia = ", new.cd_denuncia,
					", cd_passeio = ", new.cd_passeio,
                    ", cd_passeador = ", new.cd_passeador,
                    ", cd_cliente = ", new.cd_cliente,
                    ", cd_pet = ", new.cd_pet,
                    ", cd_tipo_denuncia = ", new.cd_tipo_denuncia,
                    ", ds_denuncia = ", new.ds_denuncia,
					" ANTIGO: ",
                    "cd_denuncia = ", old.cd_denuncia,
					", cd_passeio = ", old.cd_passeio,
                    ", cd_passeador = ", old.cd_passeador,
                    ", cd_cliente = ", old.cd_cliente,
                    ", cd_pet = ", old.cd_pet,
                    ", cd_tipo_denuncia = ", old.cd_tipo_denuncia,
                    ", ds_denuncia = ", old.ds_denuncia
                );
			end $
