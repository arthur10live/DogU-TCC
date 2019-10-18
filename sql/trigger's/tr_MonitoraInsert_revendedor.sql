delimiter $
create trigger tr_MonitoraInsert_revendedor
	after insert on tb_revendedor
		for each row 
			begin
				insert into auditoria set 
                codigo = new.cd_revendedor,
                usuario = user(),
                acao = 'Cadastrou',
                data_acao = curdate(),
                hora_acao = curtime();
			end $