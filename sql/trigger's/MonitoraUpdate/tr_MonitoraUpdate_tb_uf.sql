delimiter $
create trigger tr_MonitoraUpdate_tb_uf
	before update on tb_uf
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
					"sg_uf = ", new.sg_uf,
					", ds_uf = ", new.ds_uf,
					" ANTIGO: ",
					"sg_uf = ", old.sg_uf,
					", ds_uf = ", old.ds_uf
                );
			end $
