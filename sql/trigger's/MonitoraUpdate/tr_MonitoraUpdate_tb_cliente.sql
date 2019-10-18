delimiter $
create trigger tr_MonitoraUpdate_tb_cliente
	before update on tb_cliente
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
					"cd_cliente = ", new.cd_cliente,
					", cd_pessoa = ", new.cd_pessoa,
                    ", cd_login = ", new.cd_login,
					" ANTIGO: ",
					"cd_cliente = ", old.cd_cliente,
					", cd_pessoa = ", old.cd_pessoa,
                    ", cd_login = ", old.cd_login
                );
			end $
