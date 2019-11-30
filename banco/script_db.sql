create table
	bairro (id serial not null,
	tx_nome varchar(50),
	cd_cidade int4 not null,
	primary key (id));

comment on
column bairro.tx_nome is 'Nome do bairro';

create table
	cidade (id serial not null,
	tx_nome varchar(50) not null,
	cd_estado int4 not null,
	primary key (id));

comment on
column cidade.tx_nome is 'Nome da cidade';

create table
	colecao (id serial not null,
	tx_nome varchar(50) not null,
	tx_descricao varchar(255),
	cd_setor int4 not null,
	dt_colecao date,
	primary key (id));

comment on
column colecao.tx_nome is 'Nome da coleção';

comment on
column colecao.tx_descricao is 'Descrição da coleção';

comment on
column colecao.dt_colecao is 'Data da coleção';

create table
	endereco (id serial not null,
	tx_rua varchar(60) not null,
	tx_numeroRua numeric(5,
	0),
	cd_bairro int4 not null,
	primary key (id));

comment on
column endereco.tx_rua is 'Nome da rua';

comment on
column endereco.tx_numeroRua is 'Numero da rua';

create table
	estado (id serial not null,
	tx_nome varchar(30) not null unique,
	tx_sigla char(2) not null unique,
	cd_pais int4 not null,
	primary key (id));

comment on
column estado.tx_nome is 'Nome do estado';

comment on
column estado.tx_sigla is 'Sigla do estado';

create table
	fabricante (id serial not null,
	tx_nome varchar(50),
	tx_biografia varchar(260) not null,
	primary key (id));

create table
	imagem (id serial not null,
	tx_link varchar(200) not null unique,
	cd_item int4 not null,
	primary key (id));

comment on
column imagem.tx_link is 'Link, url da imagem';

create table
	item (id serial not null,
	tx_nome varchar(50) not null,
	tx_origem varchar(20) not null,
	tx_descricao varchar(255),
	tp_exposicao timestamp(12),
	dt_fabricacao date,
	vl_valor numeric(19,
	3),
	fl_manutencao bool default 'false' not null,
	dt_cadastro date,
	cd_responsavel int4,
	cd_pais int4,
	cd_setor int4 not null,
	cd_fabricante int4 not null,
	cd_material int4 not null,
	cd_dono int4 not null,
	primary key (id));

comment on
column item.tx_nome is 'Nome do item';

comment on
column item.tx_origem is 'Origem do item';

comment on
column item.tx_descricao is 'Descrição do item';

comment on
column item.tp_exposicao is 'Tempo em que o item pode ficar em manutenção';

comment on
column item.dt_fabricacao is 'Data em que foi fabricado';

comment on
column item.vl_valor is 'Valor do item';

comment on
column item.fl_manutencao is 'Flag para validar se o item está em exibição';

comment on
column item.dt_cadastro is 'Data de cadastro do item';

create table
	item_colecao (cd_item int4 not null,
	cd_colecao int4 not null,
	primary key (cd_item,
	cd_colecao));

create table
	museu (id serial not null,
	tx_nome varchar(50) not null,
	tx_nomeSocial varchar(50),
	tx_cnpj varchar(15) not null,
	cd_endereco int4 not null,
	primary key (id));

comment on
column museu.tx_nome is 'Nome do museu';

comment on
column museu.tx_nomeSocial is 'Nome social do museu';

comment on
column museu.tx_cnpj is 'CNPJ do museu';

create table
	pais (id serial not null,
	tx_nome varchar(50) not null unique,
	primary key (id));

comment on
column pais.tx_nome is 'Nome da pessoa';

create table
	pessoa (id serial not null,
	tx_nome varchar(50),
	tx_cpf varchar(12) not null unique,
	dt_nascimento date not null,
	tx_telefone varchar(11),
	tx_sexo char(1),
	cd_tipoPessoa int4 not null,
	cd_complemento int4 not null,
	primary key (id));

comment on
column pessoa.tx_nome is 'Nome da pessoa';

comment on
column pessoa.tx_cpf is 'CPF da pessoa';

comment on
column pessoa.dt_nascimento is 'Data de nascimento';

comment on
column pessoa.tx_telefone is 'Telefone da pessoa';

comment on
column pessoa.tx_sexo is 'Flag para o sexo da pessoa F ou M';

create table
	setor (id serial not null,
	tx_nome varchar(50) not null unique,
	tx_descricao varchar(255),
	nr_maxPessoas numeric(19,
	0) not null,
	cd_museu int4 not null,
	primary key (id));

comment on
column setor.tx_nome is 'Nome do setor';

comment on
column setor.tx_descricao is 'Descricao do setor';

comment on
column setor.nr_maxPessoas is 'Numero máximo de pessoas que podem entrar no setor';

create table
	tipoMaterial (id serial not null,
	tx_material varchar(100),
	primary key (id));

comment on
column tipoMaterial.tx_material is 'Tipo do material do item';

create table
	tipoPessoa (id serial not null,
	tipo varchar(15) not null unique,
	primary key (id));

comment on
column tipoPessoa.tipo is 'Tipo de pessoa.
Para validar se é funcionario, visitante, etc.';

create table
	usuario (id serial not null,
	tx_login varchar(20) not null unique,
	tx_senha varchar(20) not null,
	fl_ativo bool default 'true' not null,
	cd_pessoa int4 not null,
	primary key (id));

comment on
column usuario.tx_login is 'Login do usuario';

comment on
column usuario.tx_senha is 'Senha do usuario';

comment on
column usuario.fl_ativo is 'Flag para validar se o usuario está ativo';

create table
	video (id serial not null,
	tx_link varchar(200) not null unique,
	cd_item int4 not null,
	primary key (id));

comment on
column video.tx_link is 'Link do video';

create table
	Visitante (id serial not null,
	dt_visita date,
	pessoaid int4 not null,
	primary key (id));

comment on
column Visitante.dt_visita is 'Data de visita ao museu';

alter table
	endereco add constraint FKendereco538192 foreign key (cd_bairro) references bairro (id);

alter table
	Visitante add constraint FKVisitante776277 foreign key (pessoaid) references pessoa (id);

alter table
	video add constraint FKvideo893307 foreign key (cd_item) references item (id);

alter table
	item add constraint FKitem150895 foreign key (cd_dono) references pessoa (id);

alter table
	item_colecao add constraint FKitem_colec189670 foreign key (cd_colecao) references colecao (id);

alter table
	item_colecao add constraint FKitem_colec969352 foreign key (cd_item) references item (id);

alter table
	item add constraint FKitem762432 foreign key (cd_material) references tipoMaterial (id);

alter table
	museu add constraint FKmuseu165157 foreign key (cd_endereco) references endereco (id);

alter table
	item add constraint FKitem235442 foreign key (cd_fabricante) references fabricante (id);

alter table
	pessoa add constraint FKpessoa916393 foreign key (cd_complemento) references endereco (id);

alter table
	imagem add constraint FKimagem561566 foreign key (cd_item) references item (id);

alter table
	colecao add constraint FKcolecao717444 foreign key (cd_setor) references setor (id);

alter table
	item add constraint FKitem709999 foreign key (cd_setor) references setor (id);

alter table
	setor add constraint FKsetor755313 foreign key (cd_museu) references museu (id);

alter table
	item add constraint FKitem313911 foreign key (cd_pais) references pais (id);

alter table
	estado add constraint FKestado596102 foreign key (cd_pais) references pais (id);

alter table
	item add constraint FKitem223997 foreign key (cd_responsavel) references pessoa (id);

alter table
	pessoa add constraint FKpessoa206129 foreign key (cd_tipoPessoa) references tipoPessoa (id);

alter table
	usuario add constraint FKusuario265371 foreign key (cd_pessoa) references pessoa (id);

alter table
	bairro add constraint FKbairro278341 foreign key (cd_cidade) references cidade (id);

alter table
	cidade add constraint FKcidade486232 foreign key (cd_estado) references estado (id);
