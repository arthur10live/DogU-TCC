delimiter $
create trigger tr_MonitoraUpdate_tb_pessoa
	before update on tb_pessoa
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
					", cd_cpf = ", new.cd_cpf,
                    ", cd_rg = ", new.cd_rg,
                    ", nm_pessoa = ", new.nm_pessoa,
                    ", dt_nascimento = ", new.dt_nascimento,
					" ANTIGO: ",
                    "cd_pessoa = ", old.cd_pessoa,
					", cd_cpf = ", old.cd_cpf,
                    ", cd_rg = ", old.cd_rg,
                    ", nm_pessoa = ", old.nm_pessoa,
                    ", dt_nascimento = ", old.dt_nascimento
                );
			end $
