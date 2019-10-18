delimiter $
create trigger tr_MonitoraUpdate_tb_porte
	before update on tb_porte
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
					"cd_porte = ", new.cd_porte,
					", ds_porte = ", new.ds_porte,
					" ANTIGO: ",
					"cd_porte = ", old.cd_porte,
					", ds_porte = ", old.ds_porte
                );
			end $
