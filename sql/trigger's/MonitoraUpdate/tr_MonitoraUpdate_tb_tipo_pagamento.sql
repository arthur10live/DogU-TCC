delimiter $
create trigger tr_MonitoraUpdate_tb_tipo_pagamento
	before update on tb_tipo_pagamento
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
					"cd_tipo_pagamento = ", new.cd_tipo_pagamento,
					", ds_tipo_pagamento = ", new.ds_tipo_pagamento,
					" ANTIGO: ",
					"cd_tipo_pagamento = ", old.cd_tipo_pagamento,
					", ds_tipo_pagamento = ", old.ds_tipo_pagamento
                );
			end $
