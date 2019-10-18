delimiter $
create trigger tr_MonitoraUpdate_tb_sos
	before update on tb_sos
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
					"cd_sos = ", new.cd_sos,
					", cd_passeio = ", new.cd_passeio,
                    ", cd_pet = ", new.cd_pet,
                    ", cd_cliente = ", new.cd_cliente,
                    ", dt_sos = ", new.dt_sos,
                    ", ds_sos = ", new.ds_sos,
                    ", ds_localizacao = ", new.ds_localizacao,
					" ANTIGO: ",
                    "cd_sos = ", old.cd_sos,
					", cd_passeio = ", old.cd_passeio,
                    ", cd_pet = ", old.cd_pet,
                    ", cd_cliente = ", old.cd_cliente,
                    ", dt_sos = ", old.dt_sos,
                    ", ds_sos = ", old.ds_sos,
                    ", ds_localizacao = ", old.ds_localizacao
                );
			end $
