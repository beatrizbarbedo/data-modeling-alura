# Criando o Modelo Lógico

> Com base no modelo conceitual construído no primeiro curso da formação, podemos construir o modelo lógico.

### Tópicos 📝

1. [O que é Modelo Lógico?](https://github.com/beatrizbarbedo/data-modeling-alura/blob/main/modelo-conceitual/README.md#o-que-%C3%A9-modelo-conceitual-)
2. [Transformando em Tabelas](https://github.com/beatrizbarbedo/data-modeling-alura/tree/main/modelo-conceitual#entrevista-com-o-cliente-)
3. [Resultado Final](https://github.com/beatrizbarbedo/data-modeling-alura/tree/main/modelo-conceitual#an%C3%A1lise-da-entrevista-)

### Antes de começar, você precisa:

1. Baixar o [BrModelo](https://sourceforge.net/projects/brmodelo/)
2. Compreender o que são entidades e atributos
3. Compreender o que é grau de relacionamento e cardialidade
4. Possuir um modelo conceitual do sistema

## O que é Modelo Lógico? 🎲
O modelo lógico de dados é criado a partir das descrições dos dados representadas em um modelo conceitual. Ele descreve como os dados serão armazenados no banco de dados, identificando as entidades, os atributos, as chaves primárias e estrangeiras e os seus relacionamentos.

## Transformando em Tabelas 📊
Com base no [modelo conceitual]() construído anteriormente, iremos utilzar a ferramenta [BrModelo](https://sourceforge.net/projects/brmodelo/) para criar o modelo lógico. Neste modelo, os dados são armazenados em tabelas (entidades) que contém atributos, chaves primárias e chaves estrangeiras. 

> As chaves primárias são aquelas que definem uma tabela, enquanto as estrangeiras são aquelas que demonstram o relacionamento entre duas ou mais tabelas. 

## Resultados 💻
Após transformar nosso modelo conceitual em lógico, teremos algo parecido com isso:

![Lógico_1](https://user-images.githubusercontent.com/83524503/219523669-91788aa1-ac91-439b-b41b-abde54971177.png)

Note que as chaves primárias das tabelas estão representadas em preto (cod_cliente, cod_pedido, cod_livro, cod_editora), enquanto as chaves estrangeiras são verdes. Há também situações em que as chaves são ao mesmo tempo primárias e estrangeiras, como acontece na entidade "item pedido". Isso ocorre porque essa entidade não possui uma chave primária única, assim, a chave estrangeira acaba atuando como as duas coisas. 
