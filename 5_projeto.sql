
-- cria tabela projeto
create table projeto (
  id_projeto int not null auto_increment,
  squad int not null,
  sobre varchar(1000),
  primary key (id_projeto)
);

-- insere dados na tabela
INSERT INTO hashtag_finder.projeto
(squad, sobre)
VALUES(1, 'Donec ultrices magna sed erat hendrerit malesuada. Phasellus nec volutpat tortor. Maecenas nec nisi mollis, dignissim libero nec, efficitur diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras id massa finibus, consequat nisi dictum, rutrum metus. Nam sed mi finibus nunc porttitor lacinia. Vestibulum vehicula vel sem in mollis. Vivamus feugiat velit a metus varius, ut tempor nibh convallis. Sed sagittis diam non vehicula lobortis. Ut ut metus id nunc sagittis commodo volutpat nec odio. Fusce vestibulum massa sollicitudin odio lobortis varius. Donec aliquet pulvinar nulla at ullamcorper. Aliquam eget tellus sodales, tempus tellus sed, feugiat lorem. Etiam ullamcorper rutrum lorem, at dictum mauris sagittis eget. Aenean pretium arcu erat.');

-- altera dados na tabela
UPDATE hashtag_finder.projeto
SET sobre='Vestibulum dapibus vitae felis in tristique. Etiam luctus placerat tellus eget ullamcorper. Aliquam tincidunt, neque ac auctor congue, tellus tortor volutpat ante, sed maximus odio lorem a justo. Phasellus imperdiet ullamcorper lorem vitae finibus. Duis risus magna, condimentum sit amet facilisis sed, ultricies non urna. In mollis dui ante, in vehicula ante sodales vel. Donec ut laoreet libero. Suspendisse sed nunc arcu. Ut vel ultrices dui, non sollicitudin tortor. Maecenas maximus varius sodales. Aenean volutpat viverra lectus id facilisis. Ut at libero ut dolor molestie maximus. Nulla luctus libero nec laoreet pulvinar. Morbi sit amet lorem tempus, sagittis sapien vitae, rutrum nisi. Fusce at blandit nisi, sit amet aliquam ex.'
WHERE id_projeto=1;

-- mostra dados da tabela
SELECT id_projeto, squad, sobre
FROM hashtag_finder.projeto;

-- apaga dados da tabela
DELETE FROM hashtag_finder.projeto
WHERE id_projeto=1;

