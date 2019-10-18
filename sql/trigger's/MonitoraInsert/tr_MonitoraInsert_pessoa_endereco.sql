delimiter $
create trigger tr_MonitoraInsert_pessoa_endereco
	after insert on pessoa_endereco
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
					"cd_pessoa = ", new.cd_pessoa,
					", cd_endereco = ", new.cd_endereco,
                    ", cd_tipo_endereco = ", new.cd_tipo_endereco
                );
			end $
