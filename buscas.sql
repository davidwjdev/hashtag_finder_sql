-- cria tabela de hashtags buscados
create table buscas (
  id_busca int not null auto_increment,
  squad int not null,
  hashtag varchar(250),
  data_hashtag date,
  hora_hashtag time,
  primary key (id_busca)
);

-- inserir dados na tabela
INSERT INTO hashtag_finder.buscas
(squad, hashtag, data_hashtag, hora_hashtag)
values
(1, 'natureza', '2021-06-14', '11:20:22'),
(1, 'pandemia', '2021-06-15', '14:53:24'),
(1, 'fome', '2021-06-16', '01:45:21'),
(1, 'nazareTedesco', '2021-06-17', '04:42:21'),
(1, 'sextou', '2021-06-18', '16:40:51');

-- altera dados da tabela
UPDATE hashtag_finder.buscas
SET hora_hashtag='14:20:21'
WHERE id_busca=4 and squad=1 and hashtag='nazareTedesco';

-- mostra dados da tabela
SELECT id_busca, squad, hashtag, data_hashtag, hora_hashtag
FROM hashtag_finder.buscas;

-- apaga registro da tabela
DELETE FROM hashtag_finder.buscas
WHERE id_busca=3 and squad=1 and hashtag='fome';
