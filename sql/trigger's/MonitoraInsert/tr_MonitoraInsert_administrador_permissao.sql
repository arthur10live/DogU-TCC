delimiter $
create trigger tr_MonitoraInsert_administrador_permissao
	after insert on administrador_permissao
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
					"cd_permissao = ", new.cd_permissao,
					", cd_administrador = ", new.cd_administrador,
                    ", ic_permitir = ", new.ic_permitir
                );
			end $
