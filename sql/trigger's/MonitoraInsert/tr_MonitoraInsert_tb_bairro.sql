delimiter $
create trigger tr_MonitoraInsert_tb_bairro
	after insert on tb_bairro
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
					"cd_bairro = ", new.cd_bairro,
					", ds_bairro = ", new.ds_bairro,
                    ", cd_cidade = ", new.cd_cidade
                );
			end $
