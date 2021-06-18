-- cria a tabela login
create table login (
  id_login int not null auto_increment,
  squad int not null,
  email varchar(250),
  senha char(100),
  primary key (id_login)
);

-- insere dados na tabela
INSERT INTO hashtag_finder.login
(squad, email, senha)
VALUES(1, 'email@email.com', '289160db0d9f39f9ae1754c4ec9c16f90b50e32e09c5fb5481ae642b3d3d1a36');

-- altera dados na tabela
UPDATE hashtag_finder.login
SET senha='4add8b07ff3334f492403890a0fb510d7e8d9b6a181b809f233cf5bd07357540'
WHERE id_login=1 and email = 'email@email.com';

-- mostra os dados da tabela
SELECT id_login, squad, email, senha
FROM hashtag_finder.login;

-- apaga dados da tabela
DELETE FROM hashtag_finder.login
WHERE id_login=1;


