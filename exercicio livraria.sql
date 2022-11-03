CREATE DATABASE LIVRARIA;

CREATE TABLE LIVROS(
    LIVRO VARCHAR(100),
    AUTOR VARCHAR(100),
    SEXO CHAR(1),
    PAGINAS INT(),
    EDITORA VARCHAR(100),
    VALOR DECIMAL(11,2),
    ESTADO_EDITORA CHAR(2),
    ANO_PUBLICACAO INT(4)
);
	
INSERT INTO LIVROS(LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, ESTADO_EDITORA, ANO_PUBLICACAO) VALUES
('Cavaleiro Real',         'Ana Claudia',            'F', 465, 'Atlas',         49.9,         'RJ', 2009),
('SQL para leigos',        'João Nunes',            'M', 450, 'Addison',     98,         'SP', 2018),
('Receitas Caseiras',    'Celia Tavares',        'F', 210, 'Atlas',         45,         'RJ', 2008),
('Pessoas Efetivas',        'Eduardo Santos',        'M', 390, 'Beta',         78.99,     'RJ', 2018),
('Habitos Saudáveis',    'Eduardo Santos',        'M', 630, 'Beta',         150.98,     'RJ', 2019),
('A Casa Marrom',        'Hermes Macedo',        'M', 250, 'Bubba',         60,         'MG', 2016),
('Estacio Querido',        'Geraldo Francisco',    'M', 310, 'Insignia',     100,         'ES', 2015),
('Pra sempre amigas',    'Leda Silva',            'F', 510, 'Insignia',     78.98,     'ES', 2011),
('Copas Inesqueciveis',    'Marco Alcantara',        'M', 200, 'Larson',         130.98,     'RS', 2018),
('O poder da mente',        'Clara Mafra',            'F', 120, 'Continental', 56.58,     'SP', 2017);

/* 1 – Trazer todos os dados. */
SELECT LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, ESTADO_EDITORA, ANO_PUBLICACAO FROM LIVROS
/* 2 – Trazer o nome do livro e o nome da editora */
SELECT LIVRO, EDITORA FROM LIVROS
/* 3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino. */
SELECT LIVRO, ESTADO_EDITORA FROM LIVROS where sexo='m'
/* 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino. */
SELECT LIVRO, PAGINAS FROM LIVROS where sexo='f'
/* 5 – Trazer os valores dos livros das editoras de São Paulo. */
SELECT LIVRO, valor FROM LIVROS where estado_editora='SP'
/* 6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio). */
SELECT LIVRO, paginas, autor, valor, estado_editora FROM LIVROS where (estado_editora='SP' or estado_editora='RJ') and sexo='m'
