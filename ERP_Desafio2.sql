-- Criando Banco de Dados :computer:

CREATE DATABASE ERP_Desafio2;

--Criando as tabelas do banco de dados :pencil:
 
-- Produtos
CREATE TABLE produto ( 
           cdpro SERIAL PRIMARY KEY,
           nmpro VARCHAR(100) NOT NULL,
           tppro VARCHAR(3) NOT NULL,
           undpro VARCHAR(3) NOT NULL,
           slpro FLOAT NOT NULL DEFAULT '0.00',
           stpro CHAR(1) NOT NULL DEFAULT 'S');

-- Vendedores
 CREATE TABLE vendedores ( 
          cdvdd SERIAL PRIMARY KEY,
          nmvdd VARCHAR(100) NOT NULL,
          sxvdd CHAR(1) NOT NULL,
          perccomissao FLOAT DEFAULT '0.00',
          matfunc VARCHAR(8) NOT NULL);
-- Dependentes
CREATE TABLE dependentes (
           cddep SERIAL PRIMARY KEY ,
           nmdep VARCHAR(100) NOT NULL,
           dtnasc DATE,
           sxdep CHAR(1),
           inepescola VARCHAR(8) NOT NULL,
           cdvdd INT NOT NULL);
 
-- Item de Vendas
 CREATE TABLE itemvenda ( 
           cditeven SERIAL PRIMARY KEY,
           qtven FLOAT,
           vruven FLOAT,
           cdpro INT,
           cdven INT);

--Vendas
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

-- Relacionamentos (`Foreign Keys`)

-- VENDA
ALTER TABLE vendas ADD FOREIGN KEY(cdvdd) REFERENCES vendedores (cdvdd) ;

-- DEPENDENTE
ALTER TABLE dependentes ADD FOREIGN KEY(cdvdd) REFERENCES vendedores (cdvdd) ;

-- ITEM DE VENDA
ALTER TABLE itemvenda ADD FOREIGN KEY(cdpro) REFERENCES produto (cdpro) ;
ALTER TABLE itemvenda ADD FOREIGN KEY(cdven) REFERENCES vendas (cdven) ;


- Alimentado o Banco de dados :cyclone:

-- Inserindo dados na tabela Vendedores
INSERT INTO vendedores (cdvdd, nmvdd, sxvdd, perccomissao, matfunc) VALUES (1,  'STEEL FEREIRA', 'M', 0.15, 101) ;
INSERT INTO vendedores (cdvdd, nmvdd, sxvdd, perccomissao, matfunc) VALUES (2,    'ALAN BILLY', 'M', 0.12, 102) ;
INSERT INTO vendedores (cdvdd, nmvdd, sxvdd, perccomissao, matfunc) VALUES (3, 'NAIANA FREITAS', 'F', 0.14, 103) ;

-- Inserindo dados na tabela Produto
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

-- Inserindo dados na tabela Dependentes
INSERT INTO dependentes (cddep, cdvdd, nmdep, dtnasc, sxdep, inepescola) VALUES (1, 1,  'STELLA FERREIRA', '27-12-2018', 'F', '23276576');
INSERT INTO dependentes (cddep, cdvdd, nmdep, dtnasc, sxdep, inepescola) VALUES (2, 1,     'YAN FERREIRA', '20-08-2021', 'M', '23276576');
INSERT INTO dependentes (cddep, cdvdd, nmdep, dtnasc, sxdep, inepescola) VALUES (3, 2,       'LUCAS BILL', '03-03-2021', 'M', '23064552');

-- Inserindo dados na tabela Vendas
INSERT INTO vendas (cdven, dtven, cdcli, agecli, clacli, sxcli, cidcli, estcli, paiscli, canal, stven, deleted, cdvdd, vrtven) VALUES(1, CURRENT_DATE, 1, 1, 'FISICA', 'M', 'FORTALEZA', 'CE', '01085',    'LOJA A',  'APROVADA', 'N', 2, 18800.00) ;
INSERT INTO vendas (cdven, dtven, cdcli, agecli, clacli, sxcli, cidcli, estcli, paiscli, canal, stven, deleted, cdvdd, vrtven) VALUES(3, CURRENT_DATE, 1, 1, 'FISICA', 'M', 'FORTALEZA', 'CE', '01085',    'LOJA A', 'CANCELADA', 'N', 1, 24600.00) ;
INSERT INTO vendas (cdven, dtven, cdcli, agecli, clacli, sxcli, cidcli, estcli, paiscli, canal, stven, deleted, cdvdd, vrtven) VALUES(2, CURRENT_DATE, 1, 1, 'FISICA', 'M', 'FORTALEZA', 'CE', '01085', 'ECOMMERCE',  'APROVADA', 'S', 1, 13110.00) ;

-- Inserindo dados na tabela Vendas
INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (1, 2.00, 5000.00, 1, 1) ;
INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (2, 1.00, 6000.00, 4, 1) ;
INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (3, 1.00, 2800.00, 5, 1) ;
INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (4, 9.00,  390.00, 8, 2) ;
INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (5, 2.00, 4800.00, 3, 2) ;
INSERT INTO itemvenda (cditeven, qtven, vruven, cdpro, cdven) VALUES (6, 3.00, 5000.00, 1, 3) ;

-- Seleção de dados
select *
from dependentes

-- Relacionamento entre tabelas

SELECT v.cdvdd AS "CODIGO VENDEDOR"
         , v.nmvdd AS "NOME VENDEDOR"
         , COALESCE(d.nmdep, 'SEM DEPENDENTES') AS "NOME DEPENDENTE"
      FROM vendedores v
      LEFT JOIN dependentes d ON v.cdvdd = d.cdvdd
      ORDER BY v.cdvdd ;