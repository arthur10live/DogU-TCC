delimiter $
create trigger tr_Update_Passeio_Time
	before update on tb_passeio
		for each row 
			begin
				UPDATE tb_passeio SET cd_status = 'CAN' WHERE dt_passeio <= DATE_SUB(NOW(), INTERVAL 15 SECOND) AND cd_status = 'ONL';
			end $
