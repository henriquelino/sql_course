# Seção 2
## Aula 19
### Criando banco de dados
`CREATE DATABASE <nome_do_banco>`

### Conectando-se ao banco
`USE <nome_do_banco>`

### Criando tabela
```sql
CREATE TABLE <nome_da_tabela>(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)
);
```

### Verificando tabela
**Apenas no mySQL**
`SHOW TABLES`


### Descobrindo estrutura das tabelas
`DESC <nome_da_tabela>`

## Aula 20
### `CHAR` e `VARCHAR`
Textos pequenos

Tendo CHAR(10) e VARCHAR(10), e o dado sendo `joao`, VARCHAR irá ocupar 4 bytes, e CHAR irá ocupar 10 bytes
#### CHAR
Tamanho fixo, ideal quando o tamanho de todos os textos é igual.

Não gasta tempo variando o tamanho igual o VARCHAR, é mais performático para inserts

Ex: [M]asculino ou [F]eminino, unidade federativa (SP, MA, PA, BA...)
#### VARCHAR
O tamanho varia, consome menos espaço pois se adequa ao tamanho dos dados, porém é mais lento por ter de se adequar ao fazer o insert
### `TEXT`
Textos extensos
### `BLOB`
Documentos e fotos


## Aula 21
### ENUM
**Existe apenas no mySQL, para outros bancos é necessário `Constraints`**

Vem de `ENUM`eração
Utilizado quando queremos limitar os dados em uma coluna, como um combo-box, onde há apenas valores pré-definidos

### `FLOAT` e `INT`
Usados para numeros
#### FLOAT
Para numeros decimais, `FLOAT(10, 3)` são 10 casas no total, sendo 3 delas depois da vírgula (9999999,999)
#### INT
*Para dados que não precisam de cálculos, pode-se utilizar `VARCHAR`, por exemplo um CNPJ*

Para numeros inteiros, sendo o maior contendo 11 dígitos

Para cada banco o INT possui um range específico


# Seção 3
## Aula 23
### Tipos Nulos e Inteiros
#### Inserindo dados na tabela
1. Sintaxe básica, omitindo nome das colunas:
Os valores devem ser na ordem das colunas do banco!
```sql
INSERT INTO <nome_da_tabela> VALUES('JOAO', 'M', 'JOAO@GMAIL.COM', 988638273, '22923110', 'MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');
INSERT INTO <nome_da_tabela> VALUES('CELIA', 'F', 'CELIA@GMAIL.COM', 541521456, '25078869', 'RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');
INSERT INTO <nome_da_tabela> VALUES('JORGE', 'M', NULL, 885755896, '58748895', 'OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');
```
2. Mencionando o nome das colunas:
Pode alterar a ordem das colunas ou até omitir colunas
```sql
INSERT INTO <nome_da_tabela>(NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES('LILIAN', 'F', 'MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ', '947785696', 887774856);
```
3. Insert compacto:
Pode-se mencionar as colunas igual o método 2
**SÓ FUNCIONA NO MYSQL**
```sql
INSERT INTO <nome_da_tabela> VALUES
	('ANA', 'F', 'ANA@GLOBO.COM', 85548962, '548556985', 'PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
	('CARLA', 'F', 'CARLA@TERATI.COM.BR', 7745828, '66587458', 'SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');
```
## Aula 24
#### Select
Seleção, projeção e junção
```sql
SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;
SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;
SELECT EMAIL, SEXO, ENDERECO, NOME FROM CLIENTE;
SELECT * FROM CLIENTE; -- EVITAR USAR *
```

