delimiter $
create trigger tr_MonitoraInsert_tb_denuncia
	after insert on tb_denuncia
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
					"cd_denuncia = ", new.cd_denuncia,
					", cd_passeio = ", new.cd_passeio,
                    ", cd_passeador = ", new.cd_passeador,
                    ", cd_cliente = ", new.cd_cliente,
                    ", cd_pet = ", new.cd_pet,
                    ", cd_tipo_denuncia = ", new.cd_tipo_denuncia,
                    ", ds_denuncia = ", new.ds_denuncia
                );
			end $
