delimiter $
create trigger tr_MonitoraUpdate_tb_tipo_endereco
	before update on tb_tipo_endereco
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
					"cd_tipo_endereco = ", new.cd_tipo_endereco,
					", ds_tipo_endereco = ", new.ds_tipo_endereco,
					" ANTIGO: ",
					"cd_tipo_endereco = ", old.cd_tipo_endereco,
					", ds_tipo_endereco = ", old.ds_tipo_endereco
                );
			end $
