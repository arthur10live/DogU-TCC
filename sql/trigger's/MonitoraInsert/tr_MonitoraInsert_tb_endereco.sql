delimiter $
create trigger tr_MonitoraInsert_tb_endereco
	after insert on tb_endereco
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
					"cd_endereco = ", new.cd_endereco,
					", ds_endereco = ", new.ds_endereco,
                    ", cd_cep = ", new.cd_cep,
                    ", ds_complemento = ", new.ds_complemento,
                    ", cd_bairro = ", new.cd_bairro
                );
			end $
