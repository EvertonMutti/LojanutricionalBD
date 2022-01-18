insert into nutricionista
values
(DEFAULT,'Glaucia','esporte de alto
rendimento','34','F','99999999999','GlauciaPolidancer@gmail.com'),
(DEFAULT,'Everton Gostoso','emagrecimento', '20', 'M','99999999999',
'evertoncastro19@gmail.com'),
(DEFAULT,'Beacu', 'tradicional','22', 'F','99999999999',
'beatrizpequena@gmail.com'),
(DEFAULT,'Joaquim','atletas', '18', 'M','99999999999', 'joaquimfadejojo@gmail.com'),
(DEFAULT,'Thalita','tradicional', '36', 'F','99999999999',
'tamoesperandoo10@gmail.com');

insert into telefones_Nutricionista
values
(DEFAULT, '1', '99999999999'),
(DEFAULT, '1', '99999999998'),
(DEFAULT, '2', '99999999998'),
(DEFAULT, '3', '99999999998'),
(DEFAULT, '4', '99999999998'),
(DEFAULT, '5', '99999999998');

insert into cliente
values
(DEFAULT,'1','dolores','gordofredosilva@gmail.com','99999999999','32','F'),
(DEFAULT,'2','germinaldo','gordofredosilva@gmail.com','99999999999','52','M'),
(DEFAULT,'3','geraldão','gordofredosilva@gmail.com','99999999999','12','M'),
(DEFAULT,'5','florinda','gordofredosilva@gmail.com','99999999999','25','F'),
(DEFAULT,'4','gordofredo','gordofredosilva@gmail.com','99999999999','34','M');

insert into paciente_dados
values
(DEFAULT,'1','80.7','1.32','1500','35.5','25.5','12','Nenhuma','dipirona','Multivitaminico'
,'nenhuma'),
(DEFAULT,'2','55.7','1.32','1400','35.5','25.5','12','Nenhuma','dipirona','Multivitaminico,
Whey protein','nenhuma'),
(DEFAULT,'3','85.7','1.32','1580','35.5','25.5','12','Nenhuma','dipirona','Multivitaminico'
,'nenhuma'),
(DEFAULT,'5','200.7','1.32','1850','35.5','25.5','12','Nenhuma','dipirona','Multivitaminic
o, Termogênico','nenhuma'),
(DEFAULT,'4','120.7','1.32','1900','35.5','25.5','12','Nenhuma','dipirona','Multivitaminic
o','nenhuma');

insert into meta_paciente
values
(DEFAULT,'1','24.0','36.2'),
(DEFAULT,'2','24.0','36.2'),
(DEFAULT,'3','24.0','36.2'),
(DEFAULT,'5','24.0','36.2'),
(DEFAULT,'4','24.0','36.2');

select*from telefones_clientes;
desc telefones_clientes;
insert into telefones_clientes
values
(DEFAULT, '1', '99999999999'),
(DEFAULT, '1', '99999999998'),
(DEFAULT, '2', '99999999998'),
(DEFAULT, '3', '99999999998'),
(DEFAULT, '4', '99999999998'),
(DEFAULT, '5', '99999999998');

insert into historico_de_consulta
values
(DEFAULT,'3','2021-12-15', 'AH, você está morrendo aos poucos, vá emagrecer'),
(DEFAULT,'2','2021-11-11', 'Coma mais, para ganhar mais massa muscular'),
(DEFAULT,'1','2021-01-05', 'Mudança de horario e alimentação'),
(DEFAULT,'5','2021-04-12', 'COMENTÁRIO EXCLUSIVO SÓ PARA OS DESENVOLVEDORES DO BANCO, PARA LIBERAR, Dê NOTA 10'),
(DEFAULT,'2','2021-08-30', 'faça mais refeições liquidas durante a tarde');

insert into lote_produto
values
(DEFAULT,'canaltech', '2021-06-01 14:06:05', '2020-05-06', '2022-03-06', '15', '12'),
(DEFAULT,'Popeye', '2021-11-15 14:06:05', '2020-01-05', '2024-11-24', '65', '1'),
(DEFAULT,'Growth', '2021-12-21 14:06:05', '2020-02-03', '2025-08-18', '45','12'),
(DEFAULT,'Stronda', '2021-06-26 14:06:05', '2020-03-15', '2026-04-12', '15','32'),
(DEFAULT,'Mamba', '2021-05-24 14:06:05', '2020-04-16', '2027-12-07', '25','19');

insert into produtos
values
(DEFAULT,'2','Espinafre', 'hypercalorico', 'hyperPopeye', '999.00'),
(DEFAULT,'2','Seca tudo', 'termogênico', 'OliviaPalito', '85.00'),
(DEFAULT,'3','creatina', 'suplemento para treino', 'Brutos', '60.00'),
(DEFAULT,'3','Synthol', 'termogênico', 'OliviaPalito', '55.00'),
(DEFAULT,'4','BCCA(120caps)', 'suplemento para treino', 'Brutos', '35.00');

insert into vendedor
values
(DEFAULT,'Glaucia','34','F','GlauciaPolidancer@gmail.com'),
(DEFAULT,'Everton Gostoso', '20', 'M', 'evertoncastro19@gmail.com'),
(DEFAULT,'Beacu', '22', 'F', 'beatrizpequena@gmail.com'),
(DEFAULT,'Joaquim', '18', 'M', 'joaquimfadejojo@gmail.com'),
(DEFAULT,'Thalita', '36', 'F', 'tamoesperandoo10@gmail.com');

insert into telefones_vendedor
values
(DEFAULT,'5', '99999999999'),
(DEFAULT,'1', '99999999998'),
(DEFAULT,'2', '99999999998'),
(DEFAULT,'3', '99999999998'),
(DEFAULT,'4', '99999999998'),
(DEFAULT,'5', '99999999998');

insert into data_vendidos
values
(DEFAULT,'1','1','1','2021-06-30'),
(DEFAULT,'2','2','2','2021-07-01'),
(DEFAULT,'3','3','3','2021-07-01'),
(DEFAULT,'4','4','4','2021-07-01'),
(DEFAULT,'5','5','5','2021-07-01');

insert into produtos_vendidos
values
(DEFAULT,'1','1','50'),
(DEFAULT,'2','2','40'),
(DEFAULT,'3','3','30'),
(DEFAULT,'4','4','20'),
(DEFAULT,'5','5','10');