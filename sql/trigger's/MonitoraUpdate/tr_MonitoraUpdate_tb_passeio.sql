delimiter $
create trigger tr_MonitoraUpdate_tb_passeio
	before update on tb_passeio
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
					"cd_administradorcd_passeio = ", new.cd_passeio,
					", cd_passeador = ", new.cd_passeador,
                    ", ds_trajeto = ", new.ds_trajeto,
					" ANTIGO: ",
					"cd_administradorcd_passeio = ", old.cd_passeio,
					", cd_passeador = ", old.cd_passeador,
                    ", ds_trajeto = ", old.ds_trajeto
                );
			end $
