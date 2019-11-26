DELIMITER $
CREATE PROCEDURE `atualizarPasseio`(
	IN `vlcd_passeador` INT
)
begin
   UPDATE tb_passeio SET cd_status = 'CAN' WHERE dt_passeio <= DATE_SUB(NOW(), INTERVAL 1 MINUTE) AND cd_status = 'ONL'; 
	UPDATE tb_passeio SET dt_passeio=CURRENT_TIMESTAMP() WHERE  cd_passeador=vlcd_passeador AND dt_passeio >= DATE_SUB(NOW(), INTERVAL 40 SECOND);
END $