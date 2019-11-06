alter table
	video drop constraint video_item_fk;

alter table
	item drop constraint item_dono_fk;

alter table
	item_colecao drop constraint item_colecao_item_fk;

alter table
	item_colecao drop constraint item_colecao_colecao_fk;

alter table
	item drop constraint item_material_fk;

alter table
	museu drop constraint museu_endereco_fk;

alter table
	item drop constraint item_fabricante_fk;

alter table
	endereco drop constraint endereco_bairro_fk;

alter table
	pessoa drop constraint pessoa_complemento_fk;

alter table
	imagem drop constraint imagem_item_fk;

alter table
	colecao drop constraint colecao_setor_fk;

alter table
	item drop constraint item_setor_fk;

alter table
	setor drop constraint setor_museu_fk;

alter table
	item drop constraint item_pais_fk;

alter table
	estado drop constraint estado_pais_fk;

alter table
	item drop constraint item_responsavel_fk;

alter table
	pessoa drop constraint pessoa_tipo_pessoa_fk;

alter table
	usuario drop constraint usuario_pessoa_fk;

alter table
	bairro drop constraint barro_cidade_fk;

alter table
	cidade drop constraint cidade_estado_fk;

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
