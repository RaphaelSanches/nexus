-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20-Nov-2015 às 06:02
-- Versão do servidor: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nexus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE IF NOT EXISTS `autor` (
  `cod_autor` int(4) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `local_nasc` varchar(30) NOT NULL,
  `texto` text NOT NULL,
  `data_nasc` date NOT NULL,
  `img_url` varchar(300) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`cod_autor`, `nome`, `local_nasc`, `texto`, `data_nasc`, `img_url`) VALUES
(1, 'Roy Ascott', 'Bath, Inglaterra', 'Roy Ascott nasceu em 26 de outubro de 1934 em Bath, Inglaterra. Trabalha com arte\n\ncibernética e telemática, concentrando-se sobre o impacto das redes digitais e de \n\ntelecomunicações na consciência humana. \n<br /><br />\nEstudou na City of Bath Boys'' School quando mais jovem, estudou artes na King''s \n\nCollege, e quando graduado, foi nomeado demonstrador de estúdio (1959-61). \n<br /><br />\nDesde a década de 1960, Roy Ascott tem sido um praticante de arte interativa, arte \n\neletrônica, arte cibernética e da arte telemática. Foi um dos primeiros artistas a lançar \n\num apelo para a participação total do espectador nas obras. No momento, Ascott é um \n\ndos mais destacados artistas e teóricos no domínio da telemática.', '1934-10-26', 'Roy.Ascott.jpg'),
(2, 'Antonio Muntadas', 'Barcelona, Espanha', 'Antoni Muntadas nasceu em 1942 na Barcelona. Vive em Nova York desde 1971. Ele\n\ntem trabalhado como professor na Universidade de San Diego Escola de Belas Artes \n\nde Bordeaux e Grenoble, Escola Nacional de Belas Artes de Paris, o Instituto de Arte \n\nde San Francisco, e da Universidade de São Paulo, entre outros.\n<br /><br />\nEm 2005 ele recebeu o Prêmio Nacional de Artes Plásticas de Espanha.\n<br /><br />\nSeu trabalho é baseado no uso de audiovisuais tecnológicos: vídeo, internet, \n\ncomputadores em relação aos fenômenos sociais e como uma resposta essencial para \n\na mídia de massa.', '1942-08-12', 'antonio-muntadas.jpg'),
(3, 'Gilbertto Prado', 'Santos, São Paulo', 'Gilbertto Prado nasceu em 16 de agosto de 1954 em Santos. É artista multimídia e \r\n\r\nprofessor brasileiro do Departamento de Artes Plásticas da ECA - USP. É coordenador \r\n\r\ndo Grupo Poéticas Digitais e trabalha com arte em rede e  instalações interativas. \r\n\r\nRealizou e participou de inúmeras exposições no Brasil e no exterior. \r\n<br /><br />\r\nInicia seus estudos na década de 1970 na Unicamp, onde estudou Engenharia e Artes \r\n\r\nplásticas. Por volta do mesmo período, inicia sua carreira artística com trabalhos \r\n\r\nligados ao movimento de arte postal (mail art), sendo um dos artistas presentes na \r\n\r\nseção dedicada a esse movimento na XVI Bienal Internacional de Arte de São Paulo \r\n\r\n(1981). Em 1985/86 organizou a exposição Welcomet Mr. Halley, Mostra Internacional \r\n\r\nde Arte Postal, no Centro de Convivência de Campinas e no Paço das Artes em São \r\n\r\nPaulo, que contou com a participação de 257 artistas de 31 países.', '1954-08-16', 'gilbertto-prado.jpg'),
(4, 'Jeffrey Shaw ', 'Melbourne, Austrália', 'Jeffrey Shaw nasceu em 1944 na cidade de Melbourne, Austrália. É conhecido como \r\n\r\num dos principais atuantes na media arts, principalmente na área de interactive arts. \r\n\r\nEm diversas de suas obras, Shaw propõe novas formas de utilização de uma mídia já \r\n\r\nconhecida, como o cinema. Formado em arquitetura e história da arte na Universidade \r\n\r\nde Melbourne. Shaw possui um longo histórico de influências acadêmicas.', '1944-07-27', 'jeffrey-shaw.jpg'),
(5, 'Michael Gleich', 'Münster, Alemanha', 'Michael Gleich nasceu em 1960, Oberhundem, Alemanha.  É um jornalista e escritor \r\n\r\nde ciência. Frequentou o Ginásio de Lennestadt e fez lá em 1979, o Ensino Médio. Ele \r\n\r\nentão estudou jornalismo, sociologia e história na Westfälische Wilhelms-Universität \r\n\r\nem Münster. \r\n\r\n<br /><br />\r\nEm 1984 ele foi co-fundador dos escritórios jornalistas, para a qual ele \r\n\r\nrelata ciência para GEO, Stern, Die Weltwoche, Nature, Brigitte ou a revista TIME. De \r\n\r\n1989 a 1992 trabalhou como editor para a mesma revista Nature, em Munique, a partir \r\n\r\nde 1993 como jornalista freelance.', '1960-01-13', 'Michael gleich.jpg'),
(6, 'Nam June Paik', 'Seul, Coréia do Sul', 'Nam June Paik nasceu em 20 de julho de 1932, Seul. Foi um artista sul-coreano. \r\n\r\nTrabalhou em diversos meios de arte, sendo frequentemente creditado pela \r\n\r\ndescoberta e criação do meio conhecido como videoarte.\r\n<br /><br />\r\nGraduou-se na Universidade de Tóquio, em história da arte e história da música. \r\n\r\nMudou-se naquele ano para a Alemanha para continuar seus estudos de história da \r\n\r\nmúsica na Universidade de Munique. \r\n<br /><br />\r\nEm 1996, foi homenageado no 11.º Festival Internacional de Arte Eletrônica \r\n\r\nVideobrasil, realizado em 1996 no Sesc Pompeia, em São Paulo. Na ocasião, além de \r\n\r\numa retrospectiva (intitulada "À Espera do Século 22: Uma Presença Virtual no \r\n\r\nVideobrasil 96"), o videoartista preparou uma reedição especial para uma de suas \r\n\r\nprincipais obras, "TV Moon". Ao final desse mesmo ano, Nam June Paik teve um \r\n\r\nderrame que o deixou parcialmente paralisado.\r\n<br /><br />\r\nNam June Paik ficou conhecido por declarações polêmicas. "A arte é pura fraude", \r\n\r\nafirmou certa vez. "Você só precisa fazer algo que ninguém tenha feito antes". A frase \r\n\r\nfoi dita a um jornal coreano. Em outra ocasião, em 1976, cunhou o termo "auto-estrada \r\n\r\nda informação" – antes da generalização da Internet.\r\n<br /><br />\r\nFaleceu em 2006, com 73 anos', '1932-07-20', 'Nam-June-Paik.jpg'),
(7, 'Waldemar Cordeiro', 'Roma, Itália', 'Waldemar Cordeiro nasceu em 1925 em Roma, Itália. Artista plástico, designer, \r\n\r\nilustrador, paisagista, urbanista, jornalista e crítico de arte. Nascido em Roma e filho \r\n\r\nde uma italiana e um brasileiro, é contudo registrado na Embaixada do Brasil, tendo \r\n\r\nportanto nacionalidade brasileira. Estudou no Liceu Tasso e na Accademia di Belle \r\n\r\nArti. No início da década de 1940, durante o regime fascista, convive com membros do \r\n\r\nPartido Comunista italiano. O vínculo com o comunismo é mantido ao longo de sua \r\n\r\nvida. \r\n<br /><br />\r\nCom as criações em que utiliza a linguagem do computador, exploradas a partir do \r\n\r\nfinal da década de 1960, ele realiza uma espécie de resgate em outra escala: "Volto \r\n\r\nao ponto de partida. A arte concreta o que fazia: digitalizava a imagem, números, \r\n\r\nsuperfícies com quantidades, relacionava essas quantidades, programava os quadros. \r\n\r\nA execução era artesanal apenas porque não havia indústria alguma que quisesse \r\n\r\nfazer isso e os artistas não tinham dinheiro para pagar [...] Os quadros concretos \r\n\r\npoderiam ter sido executados por uma tipografia, por uma indústria, por uma máquina, \r\n\r\nporque eles tinham na sua base um programa numérico - note bem - como a arte \r\n\r\ndigitalizada."', '1925-04-12', 'WALDEMAR CORDEIRO.jpg'),
(8, 'André Parente', 'Sabinópolis, Brasil', 'André Parente é Doutor em comunicação pela Universidade de Paris VIII, onde\r\n\r\nestudou entre 1982 e 1987 sob a orientação do filósofo Gilles Deleuze. Em 1987 \r\n\r\ningressou na UFRJ, onde criou o Núcleo de Tecnologia da Imagem (N-imagem).\r\n<br /><br />\r\nSeus cursos na ECO.Pós abordam uma reflexão sobre as novas tecnologias da \r\n\r\nimagem. Segundo o Prof. Andre Parente o modo como as imagens virtuais são \r\n\r\ngeradas pelas novas tecnologias de comunicação, pelas novas mídias e pela ciência \r\n\r\ncontemporânea, estão alterando as condições de experiência e produzindo novas \r\n\r\nformas de subjetividade. As imagens-máquina nos permitem pensar a comunicação \r\n\r\ncomo um campo estratégico para se compreender a cultura contemporânea.\r\n<br /><br />\r\nTem como principal foco de sua pesquisa a problematização do papel da imagem no \r\n\r\nexercício do pensamento, e a compreensão das tecnologias da imagem como formas \r\n\r\ninéditas de hibridação de campos diferenciados de saber.', '1957-03-28', 'andre-parente.jpg'),
(9, 'Kit G. e Sherrie R.', 'Santa Mônica, California', 'Desde 1975 Kit Galloway, nascido em 1948 e Sherrie Rabinowitz, nascida em 1950,\r\n\r\ntrabalham como um casal em questões de projetos de comunicação. São co-\r\n\r\nfundadores do Electronic Café International (ECI), um café e espaço para oficinas em \r\n\r\nSanta Bárbara, Califórnia. Até a morte de Sherrie (2013), o casal fez inúmeras obras \r\n\r\nde artes que se caracterizam como estética da comunicação, arte telemática e teatros \r\n\r\ndigitais.', '1948-11-23', 'KIT GALLOWAY AND SHERRIE RABINOWITZ.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor_x_obras`
--

CREATE TABLE IF NOT EXISTS `autor_x_obras` (
  `cod_autor` int(11) NOT NULL,
  `cod_obra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor_x_obras`
--

INSERT INTO `autor_x_obras` (`cod_autor`, `cod_obra`) VALUES
(2, 1),
(3, 2),
(6, 3),
(6, 4),
(7, 5),
(9, 6),
(8, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `cod_banner` int(11) NOT NULL,
  `image_url` varchar(80) NOT NULL,
  `link_url` varchar(80) NOT NULL,
  `posicao` int(11) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `titulo` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `banner`
--

INSERT INTO `banner` (`cod_banner`, `image_url`, `link_url`, `posicao`, `ativo`, `titulo`) VALUES
(4, 'banner/banner_1.jpg', 'experimento-individual.php?cod_obra=4', 1, 1, 'Global Visionary - Nam June Paik'),
(5, 'banner/banner_4.jpg', 'experimento-individual.php?cod_obra=3', 4, 1, 'A Televisão Experimental - Nam June Paik'),
(6, 'banner/banner_2.jpg', 'artista-individual.php?cod_autor=1', 2, 1, 'Roy Ascott: O Pré-cursor da Arte Telemática'),
(7, 'banner/banner_3.jpg', '#', 3, 1, 'The Web of Life - Michael Gleich e Jeffrey Shaw'),
(8, 'banner/banner_5.jpg', '#', 5, 1, 'The File Room - Antonio Muntadas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `img`
--

CREATE TABLE IF NOT EXISTS `img` (
  `cod_img` int(11) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `cod_obra` int(11) DEFAULT NULL,
  `destaque` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `img`
--

INSERT INTO `img` (`cod_img`, `img_url`, `cod_obra`, `destaque`) VALUES
(1, 'a303.jpg', 2, 1),
(2, 'SXIVDestaque.jpg', 1, 1),
(3, 'TVEDestaque.jpg', 3, 1),
(4, 'GVDestaque.jpg', 4, 1),
(5, 'BBDestaque.jpg', 5, 1),
(6, 'HSDestaque.jpg', 6, 1),
(7, 'CDestaque.jpg', 7, 1),
(8, 'A30_3.jpg', 2, 0),
(9, 'A30_2.jpg', 2, 0),
(10, 'A30_1.jpg', 2, 0),
(11, 'SXIV1.jpg', 1, 0),
(12, 'SXIV2.jpg', 1, 0),
(13, 'GB1.jpg', 4, 0),
(14, 'GB2.jpg', 4, 0),
(15, 'GB3.jpg', 4, 0),
(16, 'GB4.jpg', 4, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `obras`
--

CREATE TABLE IF NOT EXISTS `obras` (
  `cod_obra` int(4) NOT NULL,
  `nome` varchar(90) NOT NULL,
  `data` date NOT NULL,
  `texto` text NOT NULL,
  `destaque` tinyint(1) NOT NULL DEFAULT '0',
  `local` varchar(60) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `obras`
--

INSERT INTO `obras` (`cod_obra`, `nome`, `data`, `texto`, `destaque`, `local`) VALUES
(1, 'Stadium XIV', '2015-10-15', ' ‘Stadium XIV’ integra uma série, chamada “Media Architecture Installations”, cujos trabalhos incorporam a linguagem da arquitetura. A obra enfatiza a ideia do estádio como espaço de comunicação e questiona o papel do espectador por meio de uma inversão: se o público tradicionalmente senta-se na parte externa do estádio, nesta obra ele é projetado para o centro do campo, delimitada por uma “grade” de colunas que configura uma elipse.<br /><br >\nUma das obras em destaque é a "Stadium XIV", que compõe uma série intitulada "Media Architecture Installations". Com 13 m e 50 imagens diferentes projetadas num intervalo de seis segundos, a grande instalação dialoga com a linguagem arquitetônica e enfatiza a ideia do estádio como uma esfera de comunicação. Ali, o próprio papel do público é posto em questão.\n', 0, 'Pinacoteca do Estado Praça da Luz'),
(2, 'Acaso 30', '2015-10-08', 'Acaso30 é uma instalação interativa em lembrança aos mortos na chacina da baixada fluminense, no bairro de queimados entre uma noite de quinta-feira e uma madrugada de sexta, em março 2005 onde 30 pessoas foram eliminadas. A instalação é montada em um espaço semi-aberto, como se fosse uma praça, onde possa haver bastante circulação, mas com luz reduzida. No centro do espaço um grande e pesado tapete azul.<br /><br /> As séries de imagens assim como os locais da projeção são feitos de forma aleatória. Uma vez que uma pessoa suba no tapete dois eventos ocorrem: uma imagem de um corpo nu em agonia é projetada no chão e um vento forte e cortante é acionado por um ventilador desde uma parede frontal ao interator. O único ruído é o do vento direto sobre o espectador causando tensão e instabilidade. Quanto às imagens, à partir do momento que elas são projetadas em um local são geradas zonas de tensão que fazem com que as ações dos corpos reajam diretamente à aproximação e afastamento dos espectadores. Quando eles chegam junto aos corpos a situação se torna irreversível com a morte dos personagens e o esvanecimento das imagens. Tem-se um intervalo sem projeções e ações.', 1, 'Cinético Digital, Itaú Cultural, São Paulo'),
(3, 'A Televisão Experimental', '2015-11-15', 'O sul-coreano Nam June Paik entrou para o Fluxus no início dos anos sessenta e logo se destacou por suas performances, quebras estéticas e delírios eletrônicos. Mas foi com a “Exposition of Music-Electronic Television” realizada na cidade de Wuppertal na então Alemanha Ocidental - que o artista mudou definitivamente - a história da arte em sua relação com a eletrônica.<br /><br >\nA Televisão Experimental - como foi chamada por Paik - trazia 12 televisores ligados com imagens manipuladas de uma programação local, combinados com pianos, toca discos, gravadores e uma cabeça de boi pendurada na entrada, como uma espécie de ritual mântrico-eletrônico que trazia o espectador para sinestésicas elucidações dechumpianas.<br /><br >\nA exposição executada durante dez dias trazia ainda textos teóricos de Paik e inaugurava a possibilidade de arte com vídeo e anunciava elementos que jamais deixaram de se nutrir de seus princípios, como a arte digital por exemplo.', 0, 'Wuppertal, Alemanha'),
(4, 'Global Visionary', '2015-11-15', 'A mostra ocorre em sua sede central Smithsonian American Art Museum de Washington DC (EEUU) que, em 2009, adquiriu dos herdeiros do artista todo o conteúdo de seu arquivo.\nA mostra, em cartaz até 11 de agosto de 2013, inclui 67 grandes peças e 140 objetos do arquivo, desde velhos aparelhos de rádio e monitores de televisão até manuscritos.<br /><br >\nA exposição, no entanto, não está “presa” às paredes do museu. Nam June Paik: Global Visionary se expande na rede: há um perfil no Flickr com fotos da mostra, um canal de Youtube com vídeos sobre a montagem e desenvolvimento, um arquivo digital interativo da obra polimórfica do artista e suas muitas coleções – jogos, robôs, aparelhos de televisão, jaulas de pássaros, figurinhas de Elvis Presley e Beethoven. Além de tudo isso, se juntam perfis no Facebook e no Twitter (com hashtag #paik).<br /><br >\nUma das novidades interativas da mostra é o retorno à vida de Flait PaikBot, um dos robôs do artista. Os organizadores convidam a todos a fazer fotos em qualquer lugar do mundo do androide (pode-se baixar uma imagem em PDF) e enviá-las a @PaikBot. Uma seleção de imagens será alojada em Painklandia, um mural de Pinterest sobre as viagens de PaikBot.', 0, 'Smithsonian American Art Museum de Washington DC (EEUU)'),
(5, 'A mulher que não é B.B.', '2015-11-15', 'No Brasil, o primeiro artista a identificar a arte computacional com a arte contemporânea é Waldemar Cordeiro que cria obras de cunho “industrial” e “construtivo”. <br /><br >\nWaldemar Cordeiro, junto com outros artistas como Julio Plaza e Abraham Palatik, é considerado um precursor da arte computacional brasileira. Cordeiro foi um dos mentores da arte concreta e organizou o célebre evento Arteônica em 1971 – o primeiro evento de arte e tecnologia do Brasil em grande porte – realizado na FAAP, em São Paulo. Defendia que os artistas deviam ter um domínio das linguagens de programação para tirar um proveito completo da máquina.<br /><br >\nAcima, “A mulher que não é B.B. (Brigite Bardot)" reproduz graficamente, pontilhada com nuances do preto ao branco em um computador IBM 360, o rosto da pequena vietnamita, cuja foto correndo nua chocou o mundo dos anos 70. ', 0, 'FAAP, em São Paulo'),
(6, 'Hole in Space', '2015-11-15', 'Tão perto dos olhos - Entre as primeiras experimentações artísticas explorando o potencial sincrônico nas novas tecnologias da comunicação está “Hole in Space” de 1980. Kit Galloway e Sherry Rabinowitz  criaram uma interface em tempo real entre as cidades de Los Angeles e New York City (ambas nos Estados Unidos) que, como num “vácuo no espaço”, tornavam presentes as pessoas fisicamente distantes, em espaços públicos das duas cidades. As pessoas de cada um dos locais se viam através de um telão em tempo real.', 0, 'Cidades de Los Angeles e New York City'),
(7, 'CIRCULADÔ', '2015-11-15', 'O projeto previa a criação de um Zoetrop (dispositivo de animação do século 19) em grande escala, que seria manipulado através de uma interface circular em acrílico criada especialmente para a obra.<br /><br >\nA interação do visitante controla o giro do personagem em volta de seu próprio eixo, decidindo sua intensidade, direção de movimento e também o deslocamento 360 graus do som com auxílio de um sistema 5.1 surround. O trabalho foi executado com sensores analógicos de rotação para capturar o movimento do participante, programado no ambiente de programação ISADORA e projetado através das placas de vídeo TripleHeadTogo. ', 0, 'Festival ARTE.MOV em Porto Alegre');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`cod_autor`);

--
-- Indexes for table `autor_x_obras`
--
ALTER TABLE `autor_x_obras`
  ADD PRIMARY KEY (`cod_autor`,`cod_obra`),
  ADD KEY `cod_obra` (`cod_obra`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`cod_banner`),
  ADD UNIQUE KEY `posicao` (`posicao`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`cod_img`),
  ADD KEY `cod_obra` (`cod_obra`);

--
-- Indexes for table `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`cod_obra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `cod_autor` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `cod_banner` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `cod_img` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `obras`
--
ALTER TABLE `obras`
  MODIFY `cod_obra` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `autor_x_obras`
--
ALTER TABLE `autor_x_obras`
  ADD CONSTRAINT `autor_x_obras_ibfk_3` FOREIGN KEY (`cod_autor`) REFERENCES `autor` (`cod_autor`),
  ADD CONSTRAINT `autor_x_obras_ibfk_4` FOREIGN KEY (`cod_obra`) REFERENCES `obras` (`cod_obra`);

--
-- Limitadores para a tabela `img`
--
ALTER TABLE `img`
  ADD CONSTRAINT `img_ibfk_1` FOREIGN KEY (`cod_obra`) REFERENCES `obras` (`cod_obra`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
