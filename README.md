[![Autor](https://img.shields.io/badge/Autor-AlanBilly-blue.svg)](https://www.linkedin.com/in/alanbillyteixeirareis)
[![CoAutor](https://img.shields.io/badge/CoAutor-SteelFerreira-blue.svg)](https://www.linkedin.com/in/steelferreira)
[![Professor](https://img.shields.io/badge/Professor-AlexSouza-red.svg)](https://github.com/aasouzaconsult) 
![Assunto](https://img.shields.io/badge/Assunto-modelagem-yellow.svg)
<!-- Imagem redimensionada -->
<img src="https://digitalcollege.com.br/wp-content/webp-express/webp-images/uploads/2022/05/logo-digital.png.webp" alt="texto alt" width="300">

<!-- Imagem redimensionada -->
<img src="https://skyone.solutions/core/webp-express/webp-images/uploads/2020/09/8_skyone-banner-site-3_0000_layer-comp-1-1.jpg.webp" alt="texto alt" width="800">

# ERP_Desafio2
## Requisitos do cliente 💼
1. Preciso de um banco de dados para controlar as vendas diária dos produtos da minha empresa, também precisarei saber se meus vendedores tem dependentes para poder mandar brindes em ocasiões especiais.
2. Aqui trabalhamos tanto em loja própria, quanto em loja virtual.
3. Quais informações precisa contar na sua venda?
   - Data
   - Quantidade
   - Valor unitário e total
   - Clientes (nome, sexo, estado, idade)
5. Perguntas realizadas
   - Em relação aos vendedores, Eles recebem comissão? `R. Sim, recebem`
   - Em relação aos dependentes, alguma informação específica deseja ter? `R. Sim, o código da Escola que Ele estuda.`
   - Qual seria esse código? R. Código do INEP
   - Em relação aos produtos que vendem, alguma característica que desejam controlar? `R.Nosso produto tem uma classificação por tipo de produto, tipo A, B...`
   - Mais alguma necessidade que deseja nos informar? `R.Normalmente, nossos clientes tem uma classificação com base nas compras que já fizeram, se puderem adicionar...`

## Status
![Badge em Desenvolvimento](https://img.shields.io/static/v1?label=STATUS&message=EmDesenvolvimento&color=yellow&style=for-the-badge)

# Iniciando Desafio

## Projeto de Modelagem Lógica, Conceitual com Criação e inserção do Banco de Dados 📚💾

Neste projeto, vamos criar um banco de dados para controlar as vendas diárias dos produtos de uma empresa, bem como gerenciar informações sobre vendedores e seus dependentes. Além disso, também queremos classificar produtos e clientes com base em suas compras. Vamos explorar o processo de criação de um banco de dados relacional para gerenciar informações sobre `Vendas diarias`, `Vendedores`, `Dependentes dos vendedores` e `Produtos` . Seguiremos os passos desde a modelagem conceitual até a implementação do banco de dados.

## Sobre 
Este projeto visa demonstrar a modelagem conceitual, lógica e física de um banco de dados fictício. Através deste repositório, você encontrará informações sobre a história dos bancos de dados, suas funcionalidades, pré-requisitos e um exemplo de modelagem de tabela.
Neste projeto, estaremos criando um banco de dados para uma cliente fictícia. O sistema permitirá o gerenciamento de informações sobre Vendas, Vendedores, Produtos entre outro dados.

## História do Banco de Dados 📜
Os bancos de dados desempenham um papel crucial na organização e recuperação de informações. Sua história remonta aos primórdios da computação, quando sistemas primitivos de armazenamento de dados eram utilizados. Desde então, evoluíram significativamente e desempenham um papel vital em todas as esferas da tecnologia.Nosso projeto se baseia em conceitos modernos de bancos de dados relacionais.

## Funcionalidades 💡
- Armazenamento de dados estruturados.
- Recuperação eficiente de informações.
- Manutenção de integridade dos dados.
- Gerenciamento de transações.
- Controle de acesso e segurança dos dados.

## Breve descrição das tabelas 🧩

- **Tabela: Vendas** 📚
  - Armazena informações sobre as Vendas, incluindo data, código do cliente, código do vendedor ...

- **Tabela: Produtos** ✍️
  - Contém informações sobre os produtos...

- **Tabela: Vendedores** 👥
  - Armazena dados os Vendedores, como nome e código do Vendedor...

- **Tabela: Dependentes** 🙎
  - Registra as informações dos Dependentes, como nome, data de nascimento, sexo ...
## Pré-requisitos 🛠️
Antes de iniciar este projeto, você deve ter:

- Conhecimento básico em bancos de dados relacionais.
- Um sistema de gerenciamento de banco de dados (SGBD) instalado, como MySQL, PostgreSQL ou SQLite.
- Ferramenta para modelagem de banco de dados nesse foi usado o [brmodeloweb](https://app.brmodeloweb.com/#!/)


# 🏁 Começando 🚀

##  Modelagem de Dados
Modelagem de dados é o processo de criar uma representação visual, ou esquema, que define os sistemas de coleta e gerenciamento de informações de qualquer organização.

## Conceitual
A modelagem conceitual é a primeira etapa do processo de design de banco de dados, onde identificamos as entidades e suas relações de alto nível. Com base nas necessidades do cliente, podemos criar o seguinte modelo conceitual:

![](https://github.com/billyanalytics/ERP_Desafio2/blob/main/Imagem/ERP2%20-%20conceitual.png?raw=true)

## Lógica
A modelagem lógica envolve a conversão do modelo conceitual em tabelas e relacionamentos específicos para um SGBD. Abaixo, descrevemos as tabelas e seus campos:

![](https://github.com/billyanalytics/ERP_Desafio2/blob/main/Imagem/Modelo%20L%C3%B3gico%201.png?raw=true)

## Física
Todas as informações coletadas são convertidas em modelos relacionais e modelos de negócios. Durante a modelagem física, os objetos são definidos em um nível denominado nível de esquema. Um esquema é considerado um grupo de objetos que estão relacionados entre si em um banco de dados.
Um Sistema de Gerenciamento de Banco de Dados (SGBD) é um software que permite criar, modificar e gerenciar bancos de dados. Para este projeto, podemos utilizar o PostgreSQL como SGBD, que é um sistema de código aberto amplamente utilizado. Outros exemplos de SGBDs incluem MySQL, SQL Server e Oracle. Nesse Projeto Usamos o `PostgreSQL` 🐘.

- Criando Banco de Dados :computer:

```sql
CREATE DATABASE ERP_Desafio2;
```

- Criando as tabelas do banco de dados :pencil:
  
  - Produto
    ```sql
    CREATE TABLE produto ( 
           cdpro SERIAL PRIMARY KEY,
           nmpro VARCHAR(100) NOT NULL,
           tppro VARCHAR(3) NOT NULL,
           undpro VARCHAR(3) NOT NULL,
           slpro FLOAT NOT NULL DEFAULT '0.00',
           stpro CHAR(1) NOT NULL DEFAULT 'S');
    ```
    
  - Vendedores 
    ```sql
    CREATE TABLE vendedores ( 
          cdvdd SERIAL PRIMARY KEY,
          nmvdd VARCHAR(100) NOT NULL,
          sxvdd CHAR(1) NOT NULL,
          perccomissao FLOAT DEFAULT '0.00',
          matfunc VARCHAR(8) NOT NULL);
    ```
    
    - Dependentes
    ```sql
    CREATE TABLE dependentes (
           cddep SERIAL PRIMARY KEY ,
           nmdep VARCHAR(100) NOT NULL,
           dtnasc DATE,
           sxdep CHAR(1),
           inepescola VARCHAR(8) NOT NULL,
           cdvdd INT NOT NULL);
    ```
   - Item de Vendas
    ```sql
    CREATE TABLE itemvenda ( 
           cditeven SERIAL PRIMARY KEY,
           qtven FLOAT,
           vruven FLOAT,
           cdpro INT,
           cdven INT);
    ```
    
  - Vendas
    ```sql
    CREATE TABLE vendas ( 
           cdven SERIAL PRIMARY KEY ,
           dtven DATE,
           cdcli INT,
           agecli INT,
           clacli VARCHAR(10),
           sxcli VARCHAR(1),
           cidcli VARCHAR(50),
           estcli VARCHAR(2),
           paiscli VARCHAR(20),
           canal VARCHAR(10),
           stven VARCHAR(10),
           deleted CHAR(1) NOT NULL DEFAULT 'N',
           cdvdd INT,
           vrtven FLOAT);
    ```
 
 - Relacionamentos (`Foreign Keys`)
  
  - VENDA
  ```sql
  ALTER TABLE vendas ADD FOREIGN KEY(cdvdd) REFERENCES vendedores (cdvdd) ;
  ```
  - DEPENDENTE
  ```sql
  ALTER TABLE dependentes ADD FOREIGN KEY(cdvdd) REFERENCES vendedores (cdvdd) ;
  ```
  - ITEM DE VENDA
  ```sql
  ALTER TABLE itemvenda ADD FOREIGN KEY(cdpro) REFERENCES produto (cdpro) ;
  ALTER TABLE itemvenda ADD FOREIGN KEY(cdven) REFERENCES vendas (cdven) ;
  ```

- Alimentado o Banco de dados :cyclone:
  - Inserindo dados na tabela Produto
    ```sql
    INSERT INTO produto (cdpro, nmpro, tppro, undpro, slpro, stpro) VALUES ( 1,         'NOTEBOOK', 'ELE',  'UN', 1200.00, 'S');
    INSERT INTO produto (cdpro, nmpro, tppro, undpro, slpro, stpro) VALUES ( 2,       'SMARTPHONE', 'ELE',  'UN',  800.00, 'S');
    INSERT INTO produto (cdpro, nmpro, tppro, undpro, slpro, stpro) VALUES ( 3,           'TV LED', 'ELE',  'UN',  700.00, 'S');
    INSERT INTO produto (cdpro, nmpro, tppro, undpro, slpro, stpro) VALUES ( 4, 'MÁQUINA DE LAVAR', 'ELE',  'UN',  500.00, 'S');
    INSERT INTO produto (cdpro, nmpro, tppro, undpro, slpro, stpro) VALUES ( 5,        'GELADEIRA', 'ELE',  'UN',  900.00, 'S');
    INSERT INTO produto (cdpro, nmpro, tppro, undpro, slpro, stpro) VALUES ( 6,            'FOGÃO', 'ELE',  'UN',  450.00, 'S');
    INSERT INTO produto (cdpro, nmpro, tppro, undpro, slpro, stpro) VALUES ( 7,        'BICICLETA', 'ESP',  'UN',  300.00, 'S');
    INSERT INTO produto (cdpro, nmpro, tppro, undpro, slpro, stpro) VALUES ( 8,            'TÊNIS', 'ESP', 'PAR',   80.00, 'S');
    INSERT INTO produto (cdpro, nmpro, tppro, undpro, slpro, stpro) VALUES ( 9,            'LIVRO', 'LIV',  'UN',   20.00, 'S');
    INSERT INTO produto (cdpro, nmpro, tppro, undpro, slpro, stpro) VALUES (10,          'MOCHILA', 'ACE',  'UN',   50.00, 'S');
     ```
  - Inserindo dados na tabela Vendedores
    ```sql
    INSERT INTO vendedores (cdvdd, nmvdd, sxvdd, perccomissao, matfunc) VALUES (1,  'STEEL FEREIRA', 'M', 0.15, 101) ;
    INSERT INTO vendedores (cdvdd, nmvdd, sxvdd, perccomissao, matfunc) VALUES (2,    'ALLAN BILLY', 'M', 0.12, 102) ;
    INSERT INTO vendedores (cdvdd, nmvdd, sxvdd, perccomissao, matfunc) VALUES (3, 'NAIANA FREITAS', 'F', 0.14, 103) ;
    ```
  - Inserindo dados na tabela Dependentes
    ```sql
    INSERT INTO dependentes (cddep, cdvdd, nmdep, dtnasc, sxdep, inepescola) VALUES (1, 1,  'STELLA FERREIRA', '27-12-2018', 'F', '23276576');
    INSERT INTO dependentes (cddep, cdvdd, nmdep, dtnasc, sxdep, inepescola) VALUES (2, 1,     'YAN FERREIRA', '20-08-2021', 'M', '23276576');
    INSERT INTO dependentes (cddep, cdvdd, nmdep, dtnasc, sxdep, inepescola) VALUES (3, 2,       'LUCAS BILL', '03-03-2021', 'M', '23064552');
    ```
  - Inserindo dados na tabela Vendas
    ```sql
    INSERT INTO vendas (cdven, dtven, cdcli, agecli, clacli, sxcli, cidcli, estcli, paiscli, canal, stven, deleted, cdvdd, vrtven) VALUES(1, CURRENT_DATE, 1, 1, 'FISICA', 'M', 'FORTALEZA', 'CE', '01085',    'LOJA A',  'APROVADA', 'N', 2, 18800.00) ;
    INSERT INTO vendas (cdven, dtven, cdcli, agecli, clacli, sxcli, cidcli, estcli, paiscli, canal, stven, deleted, cdvdd, vrtven) VALUES(3, CURRENT_DATE, 1, 1, 'FISICA', 'M', 'FORTALEZA', 'CE', '01085',    'LOJA A', 'CANCELADA', 'N', 1, 24600.00) ;
    INSERT INTO vendas (cdven, dtven, cdcli, agecli, clacli, sxcli, cidcli, estcli, paiscli, canal, stven, deleted, cdvdd, vrtven) VALUES(2, CURRENT_DATE, 1, 1, 'FISICA', 'M', 'FORTALEZA', 'CE', '01085', 'ECOMMERCE',  'APROVADA', 'S', 1, 13110.00) ;
    ```
  - Inserinto dados na tabela de Item De Venda
    ```sql
    INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (1, 2.00, 5000.00, 1, 1) ;
    INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (2, 1.00, 6000.00, 4, 1) ;
    INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (3, 1.00, 2800.00, 5, 1) ;
    INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (4, 9.00,  390.00, 8, 2) ;
    INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (5, 2.00, 4800.00, 3, 2) ;
    INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (6, 3.00, 5000.00, 1, 3) ;
    ```
 - Consultando o banco de dados :skull_and_crossbones:
  - Produto
    ```sql
    SELECT * FROM Produto ;
    ```
    ![](https://github.com/billyanalytics/ERP_Desafio2/blob/main/Imagem/Produto.png?raw=true)

  - Dependentes
    ```sql
    SELECT * FROM Dependentes;
    ```
    ![](https://github.com/billyanalytics/ERP_Desafio2/blob/main/Imagem/Dependentes.png?raw=true)

 - itemvenda
    ```sql
    SELECT * FROM itemvenda;
    ```
    ![](https://github.com/billyanalytics/ERP_Desafio2/blob/main/Imagem/Vendas.png?raw=true)
   
  - Vendas
    ```sql
    SELECT * FROM Vendas;
    ```
    ![](https://github.com/billyanalytics/ERP_Desafio2/blob/main/Imagem/Vendas.png?raw=true)

  - Vendedores
    ```sql
    SELECT * FROM Vendedores;
    ```
    ![](https://github.com/billyanalytics/ERP_Desafio2/blob/main/Imagem/Vendedores.png?raw=true)

 - Relacionamento entre tabelas
    ```sql
    SELECT v.cdvdd AS "CODIGO VENDEDOR"
         , v.nmvdd AS "NOME VENDEDOR"
         , COALESCE(d.nmdep, 'SEM DEPENDENTES') AS "NOME DEPENDENTE"
      FROM vendedores v
      LEFT JOIN dependentes d ON v.cdvdd = d.cdvdd
     ORDER BY v.cdvdd ;
    ``` 
    ![](https://github.com/billyanalytics/ERP_Desafio2/blob/main/Imagem/relacionamento.png?raw=true)


## Dicionário de Dados
Segue o [dicionário](https://github.com/billyanalytics/ERP_Desafio2/blob/main/Document%C3%A7%C3%A3o/Documenta%C3%A7%C3%A3o.pdf) de dados do banco.

----

## 🎁 Expressões de gratidão

* Compartilhe com outras pessoas esse projeto 📢;
* Quer saber mais sobre o projeto? Entre em contato para tomarmos um :coffee:;
