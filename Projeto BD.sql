
-- Tabelas 

CREATE TABLE Autor (
Cod_autor VARCHAR(10) not null,
Telefone VARCHAR(10),
nome VARCHAR(30) not null,
CPF VARCHAR(11) not null,
PRIMARY KEY(Cod_autor,CPF) 
);

CREATE TABLE Aluno (
Cod_usuario VARCHAR(10) not null,
Endereco  VARCHAR(50) not null,
Telefone VARCHAR(10),
nome VARCHAR(50) not null,
CPF VARCHAR(11) not null,
curso VARCHAR(30), 
PRIMARY KEY(Cod_usuario,CPF)
);

CREATE TABLE Professor (
Cod_usuario VARCHAR(10) not null,
Endereco  VARCHAR(50) not null,
Telefone VARCHAR(10) not null,
nome VARCHAR(50) not null,
CPF VARCHAR(11) not null,
disciplina VARCHAR(20),
PRIMARY KEY(Cod_usuario,CPF)
);

CREATE TABLE Areadoconhecimento (
nome VARCHAR(10),
cod_area VARCHAR(10),
primary key(cod_area)
);

CREATE TABLE Livro (
Titulo VARCHAR(60),
autor VARCHAR(10),
Cod_livro VARCHAR(10),
edicao VARCHAR(10),
area VARCHAR(10),
PRIMARY KEY(cod_livro),
FOREIGN KEY(edicao) REFERENCES Editora (cod_editora),
FOREIGN KEY(autor) REFERENCES Autor (cod_autor),
FOREIGN KEY(area) REFERENCES Areadoconhecimento (cod_area)
);

CREATE TABLE Editora (
    Nome_editora VARCHAR(16),
    Cod_editora VARCHAR(10), 
    primary key(Cod_editora)

);

CREATE TABLE Locar (
usuario VARCHAR(10),
CPF_FK VARCHAR(10),
Exemplar VARCHAR(40),
FOREIGN KEY(usuario,CPF_FK) REFERENCES Aluno (Cod_usuario,CPF),
FOREIGN KEY(usuario,CPF_FK) REFERENCES Professor (Cod_usuario,CPF),
FOREIGN KEY(Exemplar) REFERENCES livro (Cod_livro)
);

--ALTER TABLE Exemplar ADD FOREIGN KEY(Cod_livro) REFERENCES Livro (Cod_livro); -- Adicionar coluna numa tabela já existente.


--Criando Banco
create Database Library;
/* VERIFICANDO AS TABELAS DO BANCO */

USE Library;
SHOW TABLES; -- Para ver as tabelas depois de criadas
ALTER TABLE Livro MODIFY Titulo varchar(60); --Alterar tamanho de um campo coluna, se necessário
-- Excluir a linha disciplina da tabale aluno antes de começar as inserções



/* DESCOBRINDO COMO É A ESTRUTURA DE UMA TABELA */
SET FOREIGN_KEY_CHECKS = 0; -- Caso de algum problema de referenciação, isso resolve por hora. Obs:. Esse erro ocorre ao tentar adicionar algo a tabela e seus requisito de referencia na chave estrangeira não estão cadastrados ainda. Após cadastrar tudo é só ativar novamente a verificação de chave trocando 0 por 1;
--Descrição de Tabelas
desc nomeDaTabela; -- Mostra a estrutura da tabela


-- Inserções de população do banco

-- alunos
insert into aluno values (01,'Rua Abacateiro','22923110','Joao',988638273,'Letras');
insert into aluno values (02,'Rua calma','222222','Maria',987738273,'Letras');
insert into aluno values (03,'Rua ouro branco','232546574','Joana',9999964,'Letras');
insert into aluno values (04,'Rua Cajueiro','3215480','Sabrina',98989898,'Letras');

insert into aluno values (05,'Rua Cajueiro','35393031','Gabriel',96389999,'Historia');
insert into aluno values (06,'Rua jaboticabeiro','35213030','Leandro',9889945,'Historia');
insert into aluno values (07,'Rua maria amelia','22528213','Kleber',97852433,'Historia');

insert into aluno values (08,'Rua Liberdade','3333325','Lívia',99953653,'Computação');
insert into aluno values (09,'Rua Cajueiro','3553325','Isabela',92353653,'Computação');
insert into aluno values (10,'Rua 15','3121325','Nayse',92553653,'Computação');
insert into aluno values (11,'Rua Duque de caxias','32352125','Leonardo',9555553,'Computação');
insert into aluno values (12,'Rua Samaritana','3133032','Danillo',922553653,'Computação');


insert into aluno values (16,'Rua Duque de caxias','32586456','Carlos',9555553,'Direito');
insert into aluno values (13,'Rua Samaritana','345154532','Mariana',93333653,'Direito');
insert into aluno values (14,'Rua Duque de caxias','32352125','Laura',9555553,'Direito');
insert into aluno values (15,'Rua Samaritana','352743032','Manoel',91113653,'Direito');




--Profesores 

insert into professor values (4556,'Rua Januario','994751751','Cleide',98153657475,'Matematica');
insert into professor values (0222,'Rua Padre Jefferson','815475187','Marcos',12153657471,'Portugues');
insert into professor values (0002,'Rua Azaleia','915475123','Paula',12122657111,'Historia');
insert into professor values (0442,'Rua Lions','815115173','Ana Julia',13322645171,'Arte');
insert into professor values (0212,'Rua Floracy','915505103','Otavio',19313677771,'Expressao Grafica');
insert into professor values (0122,'Rua Francisco Chagas','675444103','Ricardo',20310077571,'Biologia');
insert into professor values (0772,'Rua Chaves','666444103','Amaury',27810207111,'Fisica');
insert into professor values (05652,'Rua Domingos','667007543','Alvaro',31846247001,'Geografia');
insert into professor values (54302,'Rua Bispo','954541751','Iolanda',98153025775,'Computacao');
insert into professor values (05432,'Rua Padre Joao','800075187','Fatima',11155657471,'Letras');
insert into professor values (07872,'Rua Peixoto','154751123','Roque',00658757111,'Bioquimica');
insert into professor values (06542,'Rua Amelia Rosa','811154554','Nilson',13326547511,'Banco de dados');
insert into professor values (7892,'Rua Floriano','915058487','Antonio',19357771,'Filosofia');
insert into professor values (56452,'Rua Chikungunya','600144410','Ianna',00010077571,'Literatura');
insert into professor values (54042,'Rua Ferreira','666147103','Sonivaldo',27811666111,'Sociologia');
insert into professor values (65442,'Rua Sabados','667520543','Lucilia',31844444411,'Ingles');

--Editoras

insert into editora values ('Cultura',10);
insert into editora values ('Divertida',15);
insert into editora values ('Saraiva',50);
insert into editora values ('entrelinhas',25);
insert into editora values ('EduFAL',12);
insert into editora values ('Atlas',45);
insert into editora values ('Beta',42);
insert into editora values ('Insignia',7);
insert into editora values ('Larson',30);
insert into editora values ('Continental',22);



--Livros
INSERT INTO LIVRO VALUES('Cavaleiro Real',025,136,10,2);
INSERT INTO LIVRO VALUES('Alice no pais das maravilhas',025,120,10,2);
INSERT INTO LIVRO VALUES('SQL para leigos',026,11,22,4);
INSERT INTO LIVRO VALUES('Receitas Caseiras',027,19,15,4);
INSERT INTO LIVRO VALUES('Pessoas Efetivas',028,35,50,3);
INSERT INTO LIVRO VALUES('Habitos Saudáveis',030,56,42,3);
INSERT INTO LIVRO VALUES('A Casa Marrom',029,85,7,2);
INSERT INTO LIVRO VALUES('Estacio Querido',010,89,30,2);
INSERT INTO LIVRO VALUES('Pra sempre amigas',030,52,42,3);
INSERT INTO LIVRO VALUES('Copas Inesqueciveis',030,62,42,3);
INSERT INTO LIVRO VALUES('O poder da mente',030,95,15,3);


--Area do conhecimento
insert into areadoconhecimento values ('Literatura',2);
insert into areadoconhecimento values ('Matematica',1);
insert into areadoconhecimento values ('Humanas',3);
insert into areadoconhecimento values ('Tecnologia',4);

-- Autores 
         
INSERT INTO Autor VALUES(025,'9999999','Ana Claudia','11811613440');
INSERT INTO Autor VALUES(026,'1010101','João Nunes','1010105245');
INSERT INTO Autor VALUES(027,'1111111','Addison','11112354');
INSERT INTO Autor VALUES(028,'1212121','Celia Tavares ','189456455');
INSERT INTO Autor VALUES(029,'1213131','Eduardo Santos','125748795');
INSERT INTO Autor VALUES(030,'14141414','Hermes Macedo','1789465215');
INSERT INTO Autor VALUES(031,'15615151','Geraldo Francisco','25487568');
INSERT INTO Autor VALUES(010,'15615151','Leda Silva','156486');
INSERT INTO Autor VALUES(033,'15615151','Marco Alcantara','589525');
INSERT INTO Autor VALUES(015,'15615151','Clara Mafra','1524874546');
INSERT INTO Autor VALUES(022,'15615151','Vinicius moraes','1023505245');

--LOCAÇÕES
insert into locar values (1,  988638273, 136);
insert into locar values (15, 91113653, 11);
insert into locar values (2, 987738273, 120);
insert into locar values (04, 98989898, 52);

insert into locar values (07, 97852433, 89);
insert into locar values (13, 93333653, 11);
insert into locar values (12, 922553653, 35);
insert into locar values (5, 96389999, 62);
insert into locar values (6, 9889945, 29);



