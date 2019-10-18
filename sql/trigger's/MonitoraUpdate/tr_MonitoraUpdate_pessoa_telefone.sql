delimiter $
create trigger tr_MonitoraUpdate_pessoa_telefone
	before update on pessoa_telefone
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
					"cd_pessoa = ", new.cd_pessoa,
					", cd_telefone = ", new.cd_telefone,
					" ANTIGO: ",
					"cd_pessoa = ", old.cd_pessoa,
					", cd_telefone = ", old.cd_telefone
                );
			end $
