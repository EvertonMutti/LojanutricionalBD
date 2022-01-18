create database Lojanutri
default character set utf8
default collate utf8_general_ci;
use Lojanutri;
create table Nutricionista(
nutricionistaId integer not null auto_increment,
nome varchar(200) not null,
area_de_atuacao varchar(100) not null,
idade int(2) not null,
sexo enum('M', 'F') not null,
CPF bigint(11),
email varchar(200) not null,
primary key (nutricionistaId)
);
create table telefones_nutricionista(
nutricionistaId_telefone integer not null auto_increment,
id_nutricionista integer,
foreign key (id_nutricionista) references Nutricionista (nutricionistaId),
celular bigint(11),
primary key (nutricionistaId_telefone)
);
create table cliente(
clienteId integer not null auto_increment,
nutricionistaId_Nutricionista integer,
nome varchar(200) not null,
email varchar(200) not null,
cpf bigint(11),
idade int(2),
sexo enum('M', 'F'),
primary key (clienteId),
foreign key (nutricionistaId_Nutricionista) references Nutricionista (nutricionistaId)
);
create table paciente_dados(
paciete_dadosId integer not null auto_increment,
dadosId integer,
peso decimal(4,1),
altura decimal(3,2),
taxa_basal mediumint(4),
perc_massa_magra decimal(3,1),
perc_gordura decimal(3,1),
gordura_visceral smallint(2),
comorbidade varchar(100),
alergia_a_medicamentos varchar(100),
uso_medicamentos varchar(100),
uso_substancias varchar(100),
primary key (paciete_dadosId),
foreign key (dadosId) references cliente(clienteId)
);
create table meta_paciente(
metaId integer not null auto_increment,
pacienteId integer,
meta_perc_gordura decimal(3,1),
meta_perc_massa_muscular decimal(3,1),
foreign key (pacienteId) references paciente_dados(dadosId),
primary key(metaId)
);
create table telefones_clientes(
clienteId_telefone integer not null auto_increment,
id_cliente integer,
foreign key (id_cliente) references cliente (clienteId),
celular bigint(11),
primary key(clienteId_telefone)
);
create table historico_de_consulta(
historicoconsultaId integer not null auto_increment,
Idcliente integer,
data_de_consulta date not null,
observacao_descricao longtext,
primary key (historicoconsultaId),
foreign key(Idcliente) references cliente(clienteId)
);
create table vendedor(
vendedorID integer not null auto_increment,
nome varchar(200) not null,
idade int(2) not null,
sexo enum('M', 'F') not null,
email varchar(200) not null,
primary key (vendedorId)
);
create table telefones_vendedor(
vendedorId_telefone integer not null auto_increment,
id_vendedor integer,
foreign key (id_vendedor) references vendedor (vendedorID),
celular bigint(11),
primary key (vendedorId_telefone)
);
create table lote_produto(
lote_produtosId integer not null auto_increment,
fabricante varchar(200) not null,
data_chegada datetime not null,
data_fabricacao date not null,
data_vencimento date not null,
quantidade_recebida int not null,
quantidade_atual int not null,
primary key (lote_produtosId)
);
create table produtos(
codigoId integer not null auto_increment,
produtosId_lote integer,
nome varchar(200) not null,
categoria varchar(40) not null,
marca varchar(50) not null,
valor float not null,
primary key (codigoId),
FOREIGN KEY (produtosId_lote) REFERENCES lote_produto (lote_produtosId)
);
create table data_vendidos(
data_vendidosId integer not null auto_increment,
nutricionistaId_Nutricionista integer,
primary key (data_vendidosId),
Id_cliente integer,
vendedoresEstr integer,
data_venda date not null,
foreign key (Id_cliente) references cliente (clienteId),
foreign key (nutricionistaId_Nutricionista) references Nutricionista (nutricionistaId),
foreign key (vendedoresEstr) references vendedor (vendedorId)
);
create table produtos_vendidos(
produtos_vendidosId integer not null auto_increment,
data_vendidosID integer,
ID_codigo integer,
quantidade_vendida int,
primary key (produtos_vendidosId),
foreign key (data_vendidosID) references data_vendidos (data_vendidosId),
foreign key (ID_codigo) references produtos (codigoId)
);