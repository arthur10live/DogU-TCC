delimiter $
create trigger tr_MonitoraUpdate_tb_nivel
	before update on tb_nivel
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
					"cd_nivel = ", new.cd_nivel,
					", ds_nivel = ", new.ds_nivel,
					" ANTIGO: ",
					"cd_nivel = ", old.cd_nivel,
					", ds_nivel = ", old.ds_nivel
                );
			end $
