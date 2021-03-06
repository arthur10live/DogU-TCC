delimiter $
create trigger tr_MonitoraUpdate_administrador_permissao
	before update on administrador_permissao
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
					", cd_administrador = ", new.cd_administrador,
                    ", ic_permitir = ", new.ic_permitir,
					" ANTIGO: ",
					"cd_permissao = ", old.cd_permissao,
					", cd_administrador = ", old.cd_administrador,
                    ", ic_permitir = ", old.ic_permitir
                );
			end $
