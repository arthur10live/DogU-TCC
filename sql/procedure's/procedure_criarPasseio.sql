DELIMITER $
CREATE PROCEDURE `criarPasseio`(
	IN `vlcd_passeador` INT,
	IN `vlcd_status` CHAR(3),
	IN `vllat_passeador` FLOAT,
	IN `vllon_passeador` FLOAT
)
begin
    declare idpasseio int;
    
   select count(cd_passeio)+1 into idpasseio from tb_passeio;	
	insert tb_passeio(cd_passeio, cd_passeador, cd_status, lat_passeador, lon_passeador, dt_passeio) values (idpasseio, vlcd_passeador, vlcd_status, vllat_passeador, vllon_passeador, CURRENT_TIMESTAMP());
END $