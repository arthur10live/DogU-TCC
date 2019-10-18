delimiter $
create trigger tr_MonitoraInsert_tb_passeador
	after insert on tb_passeador
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
					"cd_passeador = ", new.cd_passeador,
					", cd_pessoa = ", new.cd_pessoa,
                    ", cd_nivel = ", new.cd_nivel,
                    ", qt_viagens = ", new.qt_viagens,
                    ", cd_login = ", new.cd_login
                );
			end $
