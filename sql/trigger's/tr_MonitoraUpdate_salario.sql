delimiter $
create trigger tr_MonitoraUpdate_salario
	before update on tb_revendedor
		for each row 
			begin
				insert into auditoria_salario set 
                usuario  = user(),
				data_auditoria = curdate(),
				hora_auditoria = curtime(),
				codigo = new.cd_revendedor,
				salario_atual = old.vl_salario,
				salario_novo = new.vl_salario;
			end $