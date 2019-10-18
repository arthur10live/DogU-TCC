delimiter $
create trigger tr_MonitoraUpdate_tb_permissao
	before update on tb_permissao
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
					"cd_permissao = ", new.cd_permissao,
					", ds_permissao = ", new.ds_permissao,
					" ANTIGO: ",
					"cd_permissao = ", old.cd_permissao,
					", ds_permissao = ", old.ds_permissao
                );
			end $
