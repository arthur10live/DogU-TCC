delimiter $
create trigger tr_MonitoraUpdate_tb_passeador
	before update on tb_passeador
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
					"cd_passeador = ", new.cd_passeador,
					", cd_pessoa = ", new.cd_pessoa,
                    ", cd_nivel = ", new.cd_nivel,
                    ", qt_viagens = ", new.qt_viagens,
                    ", cd_login = ", new.cd_login,
					" ANTIGO: ",
                    "cd_passeador = ", old.cd_passeador,
					", cd_pessoa = ", old.cd_pessoa,
                    ", cd_nivel = ", old.cd_nivel,
                    ", qt_viagens = ", old.qt_viagens,
                    ", cd_login = ", old.cd_login
                );
			end $
