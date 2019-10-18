delimiter $
create trigger tr_MonitoraUpdate_pessoa_endereco
	before update on pessoa_endereco
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
					", cd_endereco = ", new.cd_endereco,
                    ", cd_tipo_endereco = ", new.cd_tipo_endereco,
					" ANTIGO: ",
					"cd_pessoa = ", old.cd_pessoa,
					", cd_endereco = ", old.cd_endereco,
                    ", cd_tipo_endereco = ", old.cd_tipo_endereco
                );
			end $
