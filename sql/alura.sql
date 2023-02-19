-- criando o esquema
create	schema clube_do_livro

-- criando as tabelas
create table livros (

id_livro int not null,
nome_livro varchar(100) not null,
autoria varchar(100) not null,
editora varchar(100) not null,
categoria varchar(100) not null,
preco decimal(5,2) not null,

primary key (id_livro)

);

create table estoque (

id_livro int not null,
qtd_estoque int not null,

primary key (id_livro)

);

create table vendas (

id_pedido int not null,
id_vendedor int not null,
id_livro int not null,
qtd_vendida int not null,
data_venda date not null,

primary key	(id_vendedor, id_pedido)

);

create table vendedores (

id_vendedor int not null,
nome_vendedor varchar(255) not null,

primary key (id_vendedor)

);

-- alterando para declarar as chaves estrangeiras
alter table estoque add constraint ce_estoque_livros
foreign key (id_livro)
references livros (id_livro)
on delete no action
on update no action;

alter table vendas add constraint ce_vendas_livros
foreign key (id_livro)
references livros (id_livro)
on delete no action
on update no action;

alter table vendas add constraint ce_vendas_vendedores
foreign key (id_vendedor)
references vendedores (id_vendedor)
on delete no action
on update no action;

-- desativando as chaves estrangeiras para inserir os dados
set foreign_key_checks = 0;

-- inserindo o primeiro livro
insert into livros values (
1,
"Percy Jackson e o Ladrão de Raios",
"Rick Riordan",
"Intrínseca",
"Aventura",
34.65);

-- o jeito mais fácil de inserir é colocar todos na mesma função
insert into livros values
(2,'A Volta ao Mundo em 80 Dias','Júlio Verne','Principis','Aventura',21.99),
(3,'O Cortiço','Aluísio de Azevedo','Panda Books','Romance',47.8),
(4,'Dom Casmurro','Machado de Assis','Via Leitura','Romance',19.90),
(5,'Memórias Póstumas de Brás Cubas','Machado de Assis','Antofágica','Romance',45),
(6,'Quincas Borba','Machado de Assis','L&PM Editores', 'Romance',48.5),
(7,'Ícaro','Gabriel Pedrosa','Ateliê','Poesia',36),
(8,'Os Lusíadas','Luís Vaz de Camões','Montecristo','Poesia',18.79),
(9,'Outros Jeitos de Usar a Boca','Rupi Kaur','Planeta','Poesia',34.8);

insert into vendedores values
(1,'Paula Rabelo'),
(2,'Juliana Macedo'),
(3,'Roberto Barros'),
(4,'Barbara Jales');

insert into vendas values
(1, 3, 7, 1, '2020-11-02'),
(2, 4, 8, 2, '2020-11-02'),
(3, 4, 4, 3, '2020-11-02'),
(4, 1, 7, 1, '2020-11-03'),
(5, 1, 6, 3, '2020-11-03'),
(6, 1, 9, 2, '2020-11-04'),
(7, 4, 1, 3, '2020-11-04'),
(8, 1, 5, 2, '2020-11-05'),
(9, 1, 2, 1, '2020-11-05'),
(10, 3, 8, 2, '2020-11-11'),
(11, 1, 1, 4, '2020-11-11'),
(12, 2, 10, 10, '2020-11-11'),
(13, 1, 12, 5, '2020-11-18'),
(14, 2, 4, 1, '2020-11-25'),
(15, 3, 13, 2,'2021-01-05'),
(16, 4, 13, 1, '2021-01-05'),
(17, 4, 4, 3, '2021-01-06'),
(18, 2, 12, 2, '2021-01-06');

insert into estoque values
(1,7),
(2,10),
(3,2),
(8,4),
(10,5),
(11,3),
(12,3);

-- inserindo valores fora de ordem
insert into livros
(categoria, autoria, nome_livro, editora, id_livro, preco)
values
('Biografia', 'Malala Yousafzai', 'Eu sou Malala', 'Companhia das Letras', 11, 22.32),
('Biografia', 'Michelle Obama', 'Minha história', 'Objetiva',12,57.90),
('Biografia', 'Anne Frank', 'Diário de Anne Frank', 'Pe Da Letra', 13, 34.90);

-- consultando os dados
select * from livros; # tabela completa
select nome_livro from livros; # coluna específica

-- criando um filtro de linhas
select * from livros
where categoria = "Biografia";

-- criando uma tabela que contém apenas os livros de romance com preço < 48 reais
select * from livros
where categoria = "Romance" and preco < 48;

-- criando uma tabela que contém todas as poesias que NÃO são de Camões nem de Pedrosa
select * from livros
where categoria = "Poesia" and not (autoria = "Luís Vaz de Camões" or autoria = "Gabriel Pedrosa");

-- fazendo a seleção distinta de dados (assim eles não se repetem)
select distinct id_livro from vendas
where id_vendedor = 1
order by id_livro;

-- removendo livro que não será mais vendido
delete from livros where id_livro = 8;

-- alterando todos os preços porque há um desconto novo de 10%
SET SQL_SAFE_UPDATES = 0;
update livros set preco = 0.9*preco;

-- unindo dados de duas tabelas distintas
select vendas.id_vendedor, vendedores.nome_vendedor, vendas.qtd_vendida
from vendas, vendedores
where vendas.id_vendedor = vendedores.id_vendedor;

-- o resultado acima traz uma tabela com mtos nomes iguais, pra alterar isso vamos somar tudo
select vendas.id_vendedor, vendedores.nome_vendedor, sum(vendas.qtd_vendida)
from vendas, vendedores
where vendas.id_vendedor = vendedores.id_vendedor
group by vendas.id_vendedor;

-- outra forma de fazer o último passo é usando as funções inner join e on
select vendas.id_vendedor, vendedores.nome_vendedor, sum(vendas.qtd_vendida)
from vendas inner join vendedores
on vendas.id_vendedor = vendedores.id_vendedor
group by vendas.id_vendedor;

-- a maior venda feita no Clube do Livro
SELECT MAX(QTD_VENDIDA) FROM VENDAS;

-- a maior venda por código de pessoa vendedora
SELECT MAX(QTD_VENDIDA) FROM VENDAS
GROUP BY(ID_VENDEDOR);

-- respondendo a pergunta: "será que todos os livros da base de dados foram vendidos?"
select livros.nome_livro, vendas.qtd_vendida
from livros left join vendas
on livros.id_livro = vendas.id_livro; # resposta é NÃO

