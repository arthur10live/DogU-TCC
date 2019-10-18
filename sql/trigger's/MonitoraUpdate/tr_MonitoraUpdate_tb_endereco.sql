delimiter $
create trigger tr_MonitoraUpdate_tb_endereco
	before update on tb_endereco
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
					"cd_endereco = ", new.cd_endereco,
					", ds_endereco = ", new.ds_endereco,
                    ", cd_cep = ", new.cd_cep,
                    ", ds_complemento = ", new.ds_complemento,
                    ", cd_bairro = ", new.cd_bairro,
					" ANTIGO: ",
                    "cd_endereco = ", old.cd_endereco,
					", ds_endereco = ", old.ds_endereco,
                    ", cd_cep = ", old.cd_cep,
                    ", ds_complemento = ", old.ds_complemento,
                    ", cd_bairro = ", old.cd_bairro
                );
			end $
