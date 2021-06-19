
-- cria tabela com os tweets retornados pela busca com hashtag
create table resultado_busca (
  id_resultado int not null auto_increment,
  id_busca int not null,
  usuario varchar(50),
  foto varchar(250),
  texto varchar(250),
  data_tweet date,
  hora_tweet time,
  primary key (id_resultado),
  foreign key (id_busca) references buscas (id_busca)
);

-- cria indice da tabela resultado_busca
CREATE INDEX resultado_busca
ON resultado_busca (id_resultado,id_busca,data_tweet,hora_tweet);

-- insere dados na tabela
INSERT INTO hashtag_finder.resultado_busca
(id_busca, usuario, foto, texto, data_tweet, hora_tweet)
VALUES(1, 'fulano', 'https://www.google.com/1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ex mauris. Suspendisse vitae ligula quis ante pellentesque porta at eget purus. Nulla vestibulum, turpis vitae fringilla maximus, magna ipsum feugiat quam, eu interdum dui felis duis.', '2021-06-01', '12:23:42'),
(1, 'ciclano', 'https://www.google.com/2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ex mauris. Suspendisse vitae ligula quis ante pellentesque porta at eget purus. Nulla vestibulum, turpis vitae fringilla maximus, magna ipsum feugiat quam, eu interdum dui felis duis.', '2021-06-09', '13:23:32'),
(2, 'beltrano', 'https://www.google.com/3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ex mauris. Suspendisse vitae ligula quis ante pellentesque porta at eget purus. Nulla vestibulum, turpis vitae fringilla maximus, magna ipsum feugiat quam, eu interdum dui felis duis.', '2021-06-07', '17:25:42'),
(5, 'fulano', 'https://www.google.com/4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ex mauris. Suspendisse vitae ligula quis ante pellentesque porta at eget purus. Nulla vestibulum, turpis vitae fringilla maximus, magna ipsum feugiat quam, eu interdum dui felis duis.', '2021-06-02', '11:43:22');

-- altera dados na tabela
UPDATE hashtag_finder.resultado_busca
SET texto='Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tincidunt justo id nunc tincidunt, vitae eleifend tortor aliquet. Integer consequat gravida est at laoreet. Ut congue dolor risus volutpat.' 
WHERE id_resultado=3 and usuario = 'beltrano';

-- mostra dados na tabela
SELECT id_resultado, id_busca, usuario, foto, texto, data_tweet, hora_tweet
FROM hashtag_finder.resultado_busca;

-- apaga dados da tabela
DELETE FROM hashtag_finder.resultado_busca
WHERE id_resultado=3;
