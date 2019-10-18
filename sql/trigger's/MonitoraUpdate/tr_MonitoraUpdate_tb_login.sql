delimiter $
create trigger tr_MonitoraUpdate_tb_login
	before update on tb_login
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
					"cd_login = ", new.cd_login,
					", cd_email = ", new.cd_email,
                    ", cd_senha = ", new.cd_senha,
					" ANTIGO: ",
					"cd_login = ", old.cd_login,
					", cd_email = ", old.cd_email,
                    ", cd_senha = ", old.cd_senha
                );
			end $
