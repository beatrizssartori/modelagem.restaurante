-- CREATE DATABASE ghrancho;
-- USE ghrancho;

-- Create table Restaurante(
-- cnpj_restaurante varchar(14) primary key not null,
-- nome_restaurante varchar(50) not null,
-- end_rua_restaurante varchar(50) not null,
-- end_numero_restaurante int not null,
-- end_bairro_restaurante varchar(30) not null,
-- end_cidade_restaurante varchar(30) not null,
-- end_UF_restaurante varchar(2) not null,
-- end_CEP_restaurante varchar(9)
-- );

-- ALTER TABLE Restaurante ADD foreign key(status_funcionamento) references HorarioFuncionamento(status_funcionamento);
-- ALTER TABLE Restaurante ADD foreign key(telefone_restaurante) references Contato(telefone_restaurante);
-- ALTER TABLE Restaurante ADD foreign key(idWordpress) references Wordpress(idWordpress);

-- Create table HorarioFuncionamento(
-- idHorarioFuncionamento int auto_increment primary key not null,
-- status_funcionamento char not null CHECK (status_funcionamento = 'aberto' or status_funcionamento = 'fechado'),
-- horario_abertura datetime not null, 
-- horario_fechamento datetime not null
-- );

-- Create table Contato(
-- idContato int auto_increment primary key not null,
-- facebook varchar(50) not null,
-- instagram varchar(50) not null,
-- telefone_restaurante int not null
-- );

-- Create table CardapioDigital(
-- idCardapioDigital int auto_increment primary key not null,
-- item_cardapio varchar(50) not null,
-- categoria_item char not null CHECK (categoria_item in ('nachos', 'tacos', 'quesadillas', 'burritos', 'salsas', 'sobremesas', 'cervezas', 'refrescos')),
-- preco_item double not null,
-- qtde_item int not null,
-- pedido varchar(250),
-- preco_total_pedido double,
-- forma_pagamento char CHECK (forma_pagamento in ('debito', 'credito', 'dinheiro', 'pix')),
-- forma_retirada char CHECK (forma_retirada = 'retirada no balcao' or forma_retirada = 'consumir no local')
-- );

-- Create table CadastroCliente(
-- cpf_cliente varchar(14) primary key not null,
-- nome_cliente varchar(50) not null,
-- telefone_cliente int not null,
-- email_cliente varchar(250) not null
-- );

-- Create table Wordpress(
-- idWordpress int auto_increment primary key not null,
-- paginaSobreNos text not null,
-- paginaCardapioDigital text not null,
-- paginaContato text not null,
-- paginaCadastroCliente text not null
-- );

-- ALTER TABLE Wordpress ADD foreign key(idCardapioDigital) references CardapioDigital(idCardapioDigital);
-- ALTER TABLE Wordpress ADD foreign key(idContato) references Contato(idContato);
-- ALTER TABLE Wordpress ADD foreign key(idCadastroCliente) references CadastroCliente(idCadastroCliente);

-- Create table Administrador(
-- login_acesso varchar(50) primary key not null,
-- nome_administrador varchar(50) not null,
-- senha_administrador varchar(50) not null,
-- email_administrador varchar(250) not null
-- );

-- ALTER TABLE Administrador ADD foreign key(idWordpress) references Wordpress(idWordpress);
-- ALTER TABLE Administrador ADD foreign key(email_cliente) references CadastroCliente(email_cliente);

-- Create table NoticiaAdministrador(
-- idNoticia int auto_increment primary key not null,
-- titulo_noticia text not null,
-- horario_noticia datetime not null,
-- conteudo_noticia text not null
-- );

-- ALTER TABLE NoticiaAdministrador ADD foreign key(login_acesso) references Administrador(login_acesso);