use db_cprds2sv;
create table auditoria(
usuario varchar(70),
acao varchar(15),
data_acao date,
hora_acao time,
codigo int);

create table auditoria_salario(
usuario varchar(40),
data_auditoria date,
hora_auditoria time,
codigo integer,
salario_atual decimal(10,2),
salario_novo decimal(10,2));

select * from auditoria;

select * from auditoria_salario;
select * from tb_revendedor;
update tb_revendedor set vl_salario = '1001.00' where cd_revendedor = 60;

drop trigger tr_MonitoraUpdate_salario;
insert into tb_revendedor values 
(60,'Godofredo da Silva', 'e', '897564545612','1000,00');


desc tb_revendedor;
select user()