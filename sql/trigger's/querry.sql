use `u765863036_dogu`;

create table tb_tipo_auditoria(
sg_tipo_auditoria char(3),
nm_tipo_auditoria varchar(30),
constraint pk_tipo_auditoria
	primary key (sg_tipo_auditoria));
insert into tb_tipo_auditoria values 
('INS','Insert'),
('UPD','Update');
select * from tb_tipo_auditoria;

create table tb_auditoria(
cd_auditoria int,
nm_usuario varchar(70),
sg_tipo_auditoria char(3),
dt_acao date,
hr_acao time,
ds_acao text,
constraint pk_auditoria
	primary key (cd_auditoria),
constraint fk_tipo_auditoria
	foreign key (sg_tipo_auditoria)
		references tb_tipo_auditoria(sg_tipo_auditoria));
insert into tb_auditoria values
(1,'TESTE','INS',curdate(),curtime(),'TESTE');
select user();
select max(cd_auditoria)+1 from tb_auditoria;
select * from tb_auditoria;
