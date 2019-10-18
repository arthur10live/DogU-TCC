delimiter $
create trigger tr_MonitoraUpdate_tb_cidade
	before update on tb_cidade
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
					"cd_cidade = ", new.cd_cidade,
					", ds_cidade = ", new.ds_cidade,
                    ", sg_uf = ", new.sg_uf,
					" ANTIGO: ",
					"cd_cidade = ", old.cd_cidade,
					", ds_cidade = ", old.ds_cidade,
                    ", sg_uf = ", old.sg_uf
                );
			end $
