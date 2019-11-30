select i.tx_nome, i.dt_fabricacao,f.tx_nome  from item i
inner join fabricante f on i.cd_fabricante = f.id
where i.dt_cadastro >= '2018-01-01' and i.fl_manutencao
order by i.tx_nome desc



select p.id, p.tx_nome from visitante v
inner join pessoa p on v.pessoaid  = p.id
inner join endereco on endereco.id = p.cd_complemento
inner join bairro on bairro.id = endereco.cd_bairro
inner join cidade on cidade.id = bairro.cd_cidade
inner join estado on estado.id = cidade.cd_estado
where v.dt_visita between '2019-05-01' and '2019-06-30' and estado.id != 24
order by p.tx_nome asc




select t.id, t.tx_material, count(t.id) as qtde from tipomaterial t
inner join item i on t.id = i.cd_material
group by t.id, t.tx_material
having count(t.id) % 5 = 0
order by qtde



select c.tx_nome as nome, c.dt_colecao as fabricado, count(i.vl_valor) from colecao c
inner join item_colecao ic on c.id = ic.cd_colecao
right join item i on i.id in(ic.cd_item)
where c.tx_nome notnull
group by nome, fabricado




