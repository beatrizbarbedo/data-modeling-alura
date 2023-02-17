# Criando o Modelo Conceitual

> O primeiro curso da formação nos ensina a transformar a ideia do cliente em um diagrama conceitual. 

### Tópicos 📝

1. [O que é Modelo Conceitual?](https://github.com/beatrizbarbedo/data-modeling-alura/blob/main/modelo-conceitual/README.md#o-que-%C3%A9-modelo-conceitual-)
2. [Entrevista com o Cliente](https://github.com/beatrizbarbedo/data-modeling-alura/tree/main/modelo-conceitual#entrevista-com-o-cliente-)
3. [Resultados](https://github.com/beatrizbarbedo/data-modeling-alura/blob/main/modelo-conceitual/README.md#resultados-)

### Antes de começar, você precisa:

1. Baixar o [BrModelo](https://sourceforge.net/projects/brmodelo/)
2. Compreender o que são entidades e atributos
3. Compreender o que é grau de relacionamento e cardialidade

## O que é Modelo Conceitual? 🎲
Um modelo conceitual é uma representação visual e abstrata de um sistema, processo ou situação, que permite aos seus usuários compreender e comunicar os elementos importantes e as relações entre eles de maneira clara e objetiva. Em modelagem de dados, o modelo conceitual é o primeiro estágio de desenvolvimento de um sistema de informação, e tem como objetivo definir o que deve ser modelado, o que não deve ser modelado, e como os dados serão representados. Além disso, este modelo serve como uma base para a construção de modelos lógicos e físicos mais detalhados, que são utilizados para implementar o sistema de informação.

## Entrevista com o Cliente 👩🏻‍💼
A entrevista com os clientes é crucial para identificar as regras de negócio e definir os pontos-chave do projeto, pois fornece todo o direcionamento necessário para estruturar os próximos passos.

Analisando a [entrevista](https://github.com/beatrizbarbedo/data-modeling-alura/tree/main/modelo-conceitual#entrevista-com-o-cliente-) realizada com o cliente do nosso projeto, pode-se observar que "cliente" e "editora" são entidades fortes, enquanto "pedido", "livros" e "estoque" são entidades fracas e, assim, dependem das demais. É importante lembrar que cada entidade possui atributos próprios e é necessário que os mesmos estejam representados no diagrama.

## Resultados 🔨
Para a gerar o modelo conceitual, iremos usar a ferramenta [BrModelo](https://sourceforge.net/projects/brmodelo/). Seguindo as informações adquiridas na entrevista, poderemos criar um diagrama que representa o sistema como um todo: 

![Untitled](https://user-images.githubusercontent.com/83524503/219479638-8931958a-ccb3-488f-b7eb-01a8b9cedaf1.png)

Repare que há atributos que estão destacados em **preto**. Estes se tratam de chaves primárias que conectam uma entidade a outra e serão de extrema importância para continuarmos criando o modelo lógico e, posteriormente, o modelo físico.
