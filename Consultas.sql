-- ------- Seleções ----------
Select * from aluno;
Select * from professor;
Select * from livro;
Select * from autor;
select nome,endereco,curso from aluno;
select nome,endereco,disciplina from professor;
select nome,endereco,curso from aluno where curso = 'Computação'; --Alunos do curso de Computação

SELECT endereco, COUNT(*) FROM aluno
GROUP BY endereco; -- Contagem por rua

SELECT nome, endereco FROM aluno
GROUP BY endereco;

-- Livro e editora
SELECT livro.titulo, editora.nome_editora
  FROM livro
 INNER JOIN editora ON edicao = cod_editora; -- Consultando livros e sua editora

select livro.titulo , areadoconhecimento.nome from livro inner join areadoconhecimento on area = cod_area; -- Consltando livros por area de conhecimento

select aluno.nome, livro.titulo from locar inner join livro on cod_livro = exemplar inner join aluno on usuario = cod_usuario and cpf_fk = cpf ; -- Consultando os livros que cada aluno locou

select aluno.nome, livro.titulo, areadoconhecimento.nome from locar inner join livro on cod_livro = exemplar inner join aluno on usuario = cod_usuario and cpf_fk= cpf inner join areadoconhecimento on area = cod_area; --Livro locado, usuario e area do conhecimento.
select aluno.nome, livro.titulo from locar inner join aluno on usuario = cod_usuario and cpf_fk=cpf inner join livro on exemplar = cod_livro and area=3; --Locações por area do conhecimento.


update aluno set telefone = '99050281' where nome = 'Lívia'; -- Atualizando o numero de telefone de um aluno
select * from aluno where nome = 'Lívia'; -- para ver a atualização.
-- Deletando linhas da tabelas

delete * from aluno;  -- Apagar todos dados salvos na table (Perigoso isso kkkkk)
DELETE FROM livro
WHERE titulo = 'Cavaleiro real' and cod_livro = 136;

DELETE  FROM professor
WHERE Endereco = 'Rua Chikungunya' or  disciplina = 'biologia';
