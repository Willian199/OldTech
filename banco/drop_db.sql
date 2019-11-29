alter table
	Visitante drop constraint FKVisitante776277;

alter table
	video drop constraint FKvideo893307;

alter table
	item drop constraint FKitem150895;

alter table
	item_colecao drop constraint FKitem_colec189670;

alter table
	item_colecao drop constraint FKitem_colec969352;

alter table
	item drop constraint FKitem762432;

alter table
	museu drop constraint FKmuseu165157;

alter table
	item drop constraint FKitem235442;

alter table
	endereco drop constraint FKendereco343795;

alter table
	pessoa drop constraint FKpessoa916393;

alter table
	imagem drop constraint FKimagem561566;

alter table
	colecao drop constraint FKcolecao717444;

alter table
	item drop constraint FKitem709999;

alter table
	setor drop constraint FKsetor755313;

alter table
	item drop constraint FKitem313911;

alter table
	estado drop constraint FKestado596102;

alter table
	item drop constraint FKitem223997;

alter table
	pessoa drop constraint FKpessoa206129;

alter table
	usuario drop constraint FKusuario265371;

alter table
	bairro drop constraint FKbairro278341;

alter table
	cidade drop constraint FKcidade486232;

drop table
	if exists bairro cascade;

drop table
	if exists cidade cascade;

drop table
	if exists colecao cascade;

drop table
	if exists endereco cascade;

drop table
	if exists estado cascade;

drop table
	if exists fabricante cascade;

drop table
	if exists imagem cascade;

drop table
	if exists item cascade;

drop table
	if exists item_colecao cascade;

drop table
	if exists museu cascade;

drop table
	if exists pais cascade;

drop table
	if exists pessoa cascade;

drop table
	if exists setor cascade;

drop table
	if exists tipoMaterial cascade;

drop table
	if exists tipoPessoa cascade;

drop table
	if exists usuario cascade;

drop table
	if exists video cascade;

drop table
	if exists Visitante cascade;
