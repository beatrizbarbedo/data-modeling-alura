# Criando o modelo físico

> O modelo físico de um banco de dados é a implementação do modelo lógico em um SGBD específico.

### Tópicos 📝

1. [O que é Modelo Lógico?](https://github.com/beatrizbarbedo/data-modeling-alura/tree/main/modelo-l%C3%B3gico#o-que-%C3%A9-modelo-l%C3%B3gico-)
2. [Transformando em Tabelas](https://github.com/beatrizbarbedo/data-modeling-alura/tree/main/modelo-l%C3%B3gico#transformando-em-tabelas-)
3. [Resultado Final](https://github.com/beatrizbarbedo/data-modeling-alura/tree/main/modelo-l%C3%B3gico#resultados-)

### Antes de começar, você precisa:

1. Baixar o [SQL Power Architect](https://bestofbi.com/architect-download/)
2. Compreender o que são entidades e atributos
3. Compreender o que é grau de relacionamento e cardialidade
4. Possuir um modelo lógico do sistema

## O que é Modelo Físico? 🎲
O modelo físico de um banco de dados é a implementação do modelo lógico em um SGBD específico. Ele define como as tabelas serão armazenadas em disco, os tipos de dados usados, as restrições de integridade, as chaves primárias, chaves estrangeiras, índices, entre outros detalhes relacionados ao desempenho e eficiência do banco de dados. O modelo físico também pode envolver a definição de partições de tabelas, distribuição de dados em diferentes servidores e outras configurações para suportar as necessidades específicas de uma aplicação. 

## Criação do Modelo Físico 🧮
Para criar o modelo físico iremos utilizar o [SQL Power Architect](https://bestofbi.com/architect-download/). Após abrir a ferramenta, iremos encontrar um projeto em branco:

![image](https://user-images.githubusercontent.com/83524503/219526922-de77feab-e760-4674-b925-3d4467598426.png)

Para começarmos a criar nossas tabelas, basta selecionar o icone no canto direito (ou apertar a tecla T) e clicar em qualquer lugar da tela em branco.

![image](https://user-images.githubusercontent.com/83524503/219527071-7d96df61-eb0e-442f-9d94-af5e048651dd.png)

Feito isso, iremos nos deparar com uma janela para inserir os dados iniciais da tabela: 

![image](https://user-images.githubusercontent.com/83524503/219527228-f8d1ab27-6bf8-4348-a785-6c8f3edffc4c.png)

onde:
- **Logical Table Name**: título da tabela no modelo lógico
- **Physical Table Name**: título da tabela no modelo físico (sem acentos)
- **Primary Key Name**: nome da chave primária da tabela (deixar vazio quando não houver)
- **Remarks**: notas e comentários que podem ajudar as pessoas a entenderem sua tabela

Após criar a tabela, começaremos a incluir as colunas. Para isso, basta selecionar a tabela desejada e clicar no ícone indicado abaixo (ou na tecla C).

![image](https://user-images.githubusercontent.com/83524503/219528446-99e2350d-0483-4fb1-a042-b8fd23e47788.png)

Com isso, irá abrir uma nova janela onde iremos inserir as informações da coluna.

![image](https://user-images.githubusercontent.com/83524503/219528535-a4a7ecbc-7d35-4fb2-b1de-8a28c1b93f80.png)

onde:
- **Logical Name**: nome da coluna no modelo lógico
- **Physical Table Name**: nome da coluna no modelo físico (sem acentos)
- **Type**: tipo de dado que ela contém

> Não esqueça de marcar "is primary key" se coluna se tratar de uma chave primária!!!!!

Depois de inserir todas as tabelas e colunas, precisamos colocar suas relações. Para isso iremos usar estas duas ferramentas indicadas pelos ícones:

![image](https://user-images.githubusercontent.com/83524503/219529192-c1648723-b26e-4633-9374-a8338826bd10.png)

onde:
1. **New Non-Identifying Relationship**: usada quando a chave primária (PK) de uma tabela é a chave estrangeira (FK) de outra.
2. **New Identifying Relationship**: usada quando a chave primária de uma tabela funciona como chave primaria ***e*** estrangeira (PFK) de outra.

Por fim, precisaremos apenas inserir as cardialidades das relações. Para isso, basta dar dois cliques na relação e preencher a tabela abaixo com as informações corretas.

![image](https://user-images.githubusercontent.com/83524503/219529701-3c2accf8-b6bf-4719-90d9-33b4e65162cb.png)

## Resultados 💻
Após inserir todas as tabelas e colunas com suas devidas chaves e relações, obtivemos o seguinte modelo lógico:

![Untitled](https://user-images.githubusercontent.com/83524503/219529845-a6c3ecee-563f-4a4e-ad8e-3f7fc43ba7bd.png)

Note que neste tipo de modelo, a cardialiade está sendo mostrada na própria "linha" de relacionamento. Onde:

- 1 = |
- 0 = círculo
- n = tridente
