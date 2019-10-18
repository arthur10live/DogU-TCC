delimiter $
create trigger tr_MonitoraInsert_tb_situacao
	after insert on tb_situacao
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
					"cd_situacao = ", new.cd_situacao,
					", ds_sitaacao = ", new.ds_sitaacao
                );
			end $
