create table modelos(
id_modelo serial primary key,
marca varchar(50) not null,
ano_lancamento date not null
);

create table veiculos(
id_veiculo serial primary key,
id_modelo serial references modelos(id_modelo),
valor_veiculo float not null,
chassi char(17) not null unique,
placa char(7) not null unique,
condicao varchar(20) not null
);

create table clientes(
id_cliente serial primary key,
nome_cliente varchar(200) not null,
cpf_cliente char(11) not null unique,
telefone_cliente char(14) not null,
endereco_cliente varchar(200) not null
);

create table funcionarios(
id_funcionario serial primary key,
nome_funcionario varchar(200) not null,
telefone_funcionario char(14) not null,
cpf_funcionario char(11) not null unique,
salario_funcionario float not null,
cargo_funcionario varchar(200) not null
);

create table compras(
id_compra serial primary key,
id_modelo serial references modelos(id_modelo),
id_cliente serial references clientes(id_cliente),
id_funcionario serial references funcionarios(id_funcionario),
pagamento_compra varchar(20),
status_pagamento boolean
);

insert into modelos(marca, ano_lancamento)
values('toyota','20230321');
insert into modelos(marca, ano_lancamento)
values('honda','20240521');
insert into modelos(marca, ano_lancamento)
values('hyundai','20240521');

insert into veiculos(valor_veiculo, chassi, placa, condicao)
values('100000','12345678912345678','abc4352','novo');
insert into veiculos(valor_veiculo, chassi, placa, condicao)
values('80000','12345678912345867','cba4355','seminovo');
insert into veiculos(valor_veiculo, chassi, placa, condicao)
values('90000','12345678912345689','dfg4343','novo');

insert into clientes(nome_cliente, cpf_cliente, telefone_cliente, endereco_cliente)
values('Johnson', '12332124521', '82996972106', 'edificio rota do mar');
insert into clientes(nome_cliente, cpf_cliente, telefone_cliente, endereco_cliente)
values('Pastor', '12332124678', '82996982407', 'edificio rota do oceano');
insert into clientes(nome_cliente, cpf_cliente, telefone_cliente, endereco_cliente)
values('Thiago', '12332124987', '82996962305', 'edificio rota da praia');

insert into funcionarios(nome_funcionario, telefone_funcionario,
cpf_funcionario, salario_funcionario, cargo_funcionario)
values('Johnsonbaby','82997962304', '12346575440', '2000', 'Vendedor');
insert into funcionarios(nome_funcionario, telefone_funcionario,
cpf_funcionario, salario_funcionario, cargo_funcionario)
values('Thiaguinho','82996952323', '12346575557', '1000', 'recepcionista');
insert into funcionarios(nome_funcionario, telefone_funcionario,
cpf_funcionario, salario_funcionario, cargo_funcionario)
values('Johnsinho','82998942507', '12346757660', '6000', 'Gerente');

insert into compras(pagamento_compra, status_pagamento)
values('financiamento',true);
insert into compras(pagamento_compra, status_pagamento)
values('a vista',true);
insert into compras(pagamento_compra, status_pagamento)
values('cartao de credito',false);


