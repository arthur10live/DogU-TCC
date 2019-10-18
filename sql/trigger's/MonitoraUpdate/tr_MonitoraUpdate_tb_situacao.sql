delimiter $
create trigger tr_MonitoraUpdate_tb_situacao
	before update on tb_situacao
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
					"cd_situacao = ", new.cd_situacao,
					", ds_sitaacao = ", new.ds_sitaacao,
					" ANTIGO: ",
					"cd_situacao = ", old.cd_situacao,
					", ds_sitaacao = ", old.ds_sitaacao
                );
			end $
