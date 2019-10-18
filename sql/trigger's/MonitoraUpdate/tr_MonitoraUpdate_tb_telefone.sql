delimiter $
create trigger tr_MonitoraUpdate_tb_telefone
	before update on tb_telefone
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
					"cd_telefone = ", new.cd_telefone,
					", ds_telefone = ", new.ds_telefone,
                    ", cd_tipo_telefone = ", new.cd_tipo_telefone,
					" ANTIGO: ",
					"cd_telefone = ", old.cd_telefone,
					", ds_telefone = ", old.ds_telefone,
                    ", cd_tipo_telefone = ", old.cd_tipo_telefone
                );
			end $
