-- cria tabela equipe
create table equipe (
  id_equipe int not null auto_increment,
  squad int not null,
  nome varchar(250),
  descricao varchar(1000),
  github varchar(250),
  email varchar(250),
  linkedin varchar(250),
  imagem varchar(250),
  primary key (id_equipe)
);

-- insere dados na tabela
INSERT INTO hashtag_finder.equipe
(squad, nome, descricao, github, email, linkedin, imagem)
VALUES(1, 'David', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sollicitudin lacus sed semper pharetra. Aliquam erat volutpat. Morbi consectetur turpis et erat varius, id luctus neque pretium. Duis sed turpis eu est ultrices consequat vitae scelerisque purus. Integer pharetra nisl nec pulvinar efficitur. Pellentesque vitae libero sit amet nunc sollicitudin sodales et eget lectus. Etiam id felis vel libero porttitor dictum. In pretium libero nec lacinia consectetur. Cras posuere elementum mi vitae bibendum. Nulla fringilla at elit vitae posuere.', 'https://github.com/', 'email@email.com', 'https://www.linkedin.com/', 'https://www.google.com/1');

-- altera dados da tabela
UPDATE hashtag_finder.equipe
SET  imagem='https://www.google.com/2'
WHERE id_equipe=1;

-- mostra dados da tabela
SELECT id_equipe, squad, nome, descricao, github, email, linkedin, imagem
FROM hashtag_finder.equipe;

-- apaga dados da tabela
DELETE FROM hashtag_finder.equipe
WHERE id_equipe=1;
