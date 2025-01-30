create database bradesco 

use bradesco
 
 create table apolice (
 id_apolice int,
 numero_apolice varchar(20),
 valor decimal(10.2),
 data_inicio date,
 data_fim date,
 status varchar(30),
 tipo varchar(20),
 nome_cliente varchar(255), 
 cpf_cliente varchar(255),
 email_cliente varchar(255),
 primary key (id_apolice)
 )
 
 insert into apolice (id_apolice,numero_apolice,valor,data_inicio,data_fim,status,tipo,nome_cliente,cpf_cliente,email_cliente)
 values 
 (1,'123456789','1500.00','2025-01-01','2026-01-01','ativa','vida','joao silva','123.456.789-00','joao.silva@gmail.com'),
 (2,'987654321','2500.00','2025-02-01','2026-02-01','ativa','automovel','maria oliveira','987.654.321-00','maria.oliveira@gmail.com'),
 (3,'112233445','3000.00','2025-03-02','2026-03-01','expirada','saude','carlos souza','11.223.344-00','carlos.souza@gmail.com'),
 (4,'5566778899','3500.00','2025-04-01','2026-04-01','ativa','residenica','ana costa','556.778.991-00','ana.costa@gmail.com'),
 (5,'9988776655','4000.00','2025-05-01','2026-05-01','cancelada','vida','felipe santos','998.776.554-00','felipe.santos@gmail.com')
 
 create view apolices_ativas 
 as
 select
 id_apolice,
 numero_apolice,
 nome_cliente,
 valor,
 status from apolice