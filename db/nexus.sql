-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15-Nov-2015 às 16:20
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
  `data_nasc` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`cod_autor`, `nome`, `local_nasc`, `texto`, `data_nasc`) VALUES
(1, 'Roy Ascott', 'Bath, Inglaterra', 'Roy Ascott nasceu em 26 de outubro de 1934 em Bath, Inglaterra. Trabalha com arte\n\ncibernética e telemática, concentrando-se sobre o impacto das redes digitais e de \n\ntelecomunicações na consciência humana. \n<br /><br />\nEstudou na City of Bath Boys'' School quando mais jovem, estudou artes na King''s \n\nCollege, e quando graduado, foi nomeado demonstrador de estúdio (1959-61). \n<br /><br />\nDesde a década de 1960, Roy Ascott tem sido um praticante de arte interativa, arte \n\neletrônica, arte cibernética e da arte telemática. Foi um dos primeiros artistas a lançar \n\num apelo para a participação total do espectador nas obras. No momento, Ascott é um \n\ndos mais destacados artistas e teóricos no domínio da telemática.', '1934-10-26'),
(2, 'Antonio Muntadas', 'Barcelona, Espanha', 'Antoni Muntadas nasceu em 1942 na Barcelona. Vive em Nova York desde 1971. Ele\n\ntem trabalhado como professor na Universidade de San Diego Escola de Belas Artes \n\nde Bordeaux e Grenoble, Escola Nacional de Belas Artes de Paris, o Instituto de Arte \n\nde San Francisco, e da Universidade de São Paulo, entre outros.\n<br /><br />\nEm 2005 ele recebeu o Prêmio Nacional de Artes Plásticas de Espanha.\n<br /><br />\nSeu trabalho é baseado no uso de audiovisuais tecnológicos: vídeo, internet, \n\ncomputadores em relação aos fenômenos sociais e como uma resposta essencial para \n\na mídia de massa.', '1942-08-12'),
(3, 'Gilbertto Prado', 'Santos, São Paulo', 'Gilbertto Prado nasceu em 16 de agosto de 1954 em Santos. É artista multimídia e \r\n\r\nprofessor brasileiro do Departamento de Artes Plásticas da ECA - USP. É coordenador \r\n\r\ndo Grupo Poéticas Digitais e trabalha com arte em rede e  instalações interativas. \r\n\r\nRealizou e participou de inúmeras exposições no Brasil e no exterior. \r\n<br /><br />\r\nInicia seus estudos na década de 1970 na Unicamp, onde estudou Engenharia e Artes \r\n\r\nplásticas. Por volta do mesmo período, inicia sua carreira artística com trabalhos \r\n\r\nligados ao movimento de arte postal (mail art), sendo um dos artistas presentes na \r\n\r\nseção dedicada a esse movimento na XVI Bienal Internacional de Arte de São Paulo \r\n\r\n(1981). Em 1985/86 organizou a exposição Welcomet Mr. Halley, Mostra Internacional \r\n\r\nde Arte Postal, no Centro de Convivência de Campinas e no Paço das Artes em São \r\n\r\nPaulo, que contou com a participação de 257 artistas de 31 países.', '1954-08-16'),
(4, 'Jeffrey Shaw ', 'Melbourne, Austrália', 'Jeffrey Shaw nasceu em 1944 na cidade de Melbourne, Austrália. É conhecido como \r\n\r\num dos principais atuantes na media arts, principalmente na área de interactive arts. \r\n\r\nEm diversas de suas obras, Shaw propõe novas formas de utilização de uma mídia já \r\n\r\nconhecida, como o cinema. Formado em arquitetura e história da arte na Universidade \r\n\r\nde Melbourne. Shaw possui um longo histórico de influências acadêmicas.', '1944-07-27'),
(5, 'Michael Gleich', 'Münster, Alemanha', 'Michael Gleich nasceu em 1960, Oberhundem, Alemanha.  É um jornalista e escritor \r\n\r\nde ciência. Frequentou o Ginásio de Lennestadt e fez lá em 1979, o Ensino Médio. Ele \r\n\r\nentão estudou jornalismo, sociologia e história na Westfälische Wilhelms-Universität \r\n\r\nem Münster. \r\n\r\n<br /><br />\r\nEm 1984 ele foi co-fundador dos escritórios jornalistas, para a qual ele \r\n\r\nrelata ciência para GEO, Stern, Die Weltwoche, Nature, Brigitte ou a revista TIME. De \r\n\r\n1989 a 1992 trabalhou como editor para a mesma revista Nature, em Munique, a partir \r\n\r\nde 1993 como jornalista freelance.', '1960-01-13'),
(6, 'Nam June Paik', 'Seul, Coréia do Sul', 'Nam June Paik nasceu em 20 de julho de 1932, Seul. Foi um artista sul-coreano. \r\n\r\nTrabalhou em diversos meios de arte, sendo frequentemente creditado pela \r\n\r\ndescoberta e criação do meio conhecido como videoarte.\r\n<br /><br />\r\nGraduou-se na Universidade de Tóquio, em história da arte e história da música. \r\n\r\nMudou-se naquele ano para a Alemanha para continuar seus estudos de história da \r\n\r\nmúsica na Universidade de Munique. \r\n<br /><br />\r\nEm 1996, foi homenageado no 11.º Festival Internacional de Arte Eletrônica \r\n\r\nVideobrasil, realizado em 1996 no Sesc Pompeia, em São Paulo. Na ocasião, além de \r\n\r\numa retrospectiva (intitulada "À Espera do Século 22: Uma Presença Virtual no \r\n\r\nVideobrasil 96"), o videoartista preparou uma reedição especial para uma de suas \r\n\r\nprincipais obras, "TV Moon". Ao final desse mesmo ano, Nam June Paik teve um \r\n\r\nderrame que o deixou parcialmente paralisado.\r\n<br /><br />\r\nNam June Paik ficou conhecido por declarações polêmicas. "A arte é pura fraude", \r\n\r\nafirmou certa vez. "Você só precisa fazer algo que ninguém tenha feito antes". A frase \r\n\r\nfoi dita a um jornal coreano. Em outra ocasião, em 1976, cunhou o termo "auto-estrada \r\n\r\nda informação" – antes da generalização da Internet.\r\n<br /><br />\r\nFaleceu em 2006, com 73 anos', '1932-07-20'),
(7, 'Waldemar Cordeiro', 'Roma, Itália', 'Waldemar Cordeiro nasceu em 1925 em Roma, Itália. Artista plástico, designer, \r\n\r\nilustrador, paisagista, urbanista, jornalista e crítico de arte. Nascido em Roma e filho \r\n\r\nde uma italiana e um brasileiro, é contudo registrado na Embaixada do Brasil, tendo \r\n\r\nportanto nacionalidade brasileira. Estudou no Liceu Tasso e na Accademia di Belle \r\n\r\nArti. No início da década de 1940, durante o regime fascista, convive com membros do \r\n\r\nPartido Comunista italiano. O vínculo com o comunismo é mantido ao longo de sua \r\n\r\nvida. \r\n<br /><br />\r\nCom as criações em que utiliza a linguagem do computador, exploradas a partir do \r\n\r\nfinal da década de 1960, ele realiza uma espécie de resgate em outra escala: "Volto \r\n\r\nao ponto de partida. A arte concreta o que fazia: digitalizava a imagem, números, \r\n\r\nsuperfícies com quantidades, relacionava essas quantidades, programava os quadros. \r\n\r\nA execução era artesanal apenas porque não havia indústria alguma que quisesse \r\n\r\nfazer isso e os artistas não tinham dinheiro para pagar [...] Os quadros concretos \r\n\r\npoderiam ter sido executados por uma tipografia, por uma indústria, por uma máquina, \r\n\r\nporque eles tinham na sua base um programa numérico - note bem - como a arte \r\n\r\ndigitalizada."', '1925-04-12'),
(8, 'André Parente', 'Sabinópolis, Brasil', 'André Parente é Doutor em comunicação pela Universidade de Paris VIII, onde\r\n\r\nestudou entre 1982 e 1987 sob a orientação do filósofo Gilles Deleuze. Em 1987 \r\n\r\ningressou na UFRJ, onde criou o Núcleo de Tecnologia da Imagem (N-imagem).\r\n<br /><br />\r\nSeus cursos na ECO.Pós abordam uma reflexão sobre as novas tecnologias da \r\n\r\nimagem. Segundo o Prof. Andre Parente o modo como as imagens virtuais são \r\n\r\ngeradas pelas novas tecnologias de comunicação, pelas novas mídias e pela ciência \r\n\r\ncontemporânea, estão alterando as condições de experiência e produzindo novas \r\n\r\nformas de subjetividade. As imagens-máquina nos permitem pensar a comunicação \r\n\r\ncomo um campo estratégico para se compreender a cultura contemporânea.\r\n<br /><br />\r\nTem como principal foco de sua pesquisa a problematização do papel da imagem no \r\n\r\nexercício do pensamento, e a compreensão das tecnologias da imagem como formas \r\n\r\ninéditas de hibridação de campos diferenciados de saber.', '1957-03-28'),
(9, 'Kit G. e Sherrie R.', 'Santa Mônica, California', 'Desde 1975 Kit Galloway, nascido em 1948 e Sherrie Rabinowitz, nascida em 1950,\r\n\r\ntrabalham como um casal em questões de projetos de comunicação. São co-\r\n\r\nfundadores do Electronic Café International (ECI), um café e espaço para oficinas em \r\n\r\nSanta Bárbara, Califórnia. Até a morte de Sherrie (2013), o casal fez inúmeras obras \r\n\r\nde artes que se caracterizam como estética da comunicação, arte telemática e teatros \r\n\r\ndigitais.', '1948-11-23');

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
(1, 1),
(1, 2);

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
(4, 'banner/banner_1.jpg', '#', 1, 1, 'Global Visionary - Nam June Paik'),
(5, 'banner/banner_4.jpg', '#', 4, 1, 'A Televisão Experimental - Nam June Paik'),
(6, 'banner/banner_2.jpg', '#', 2, 1, 'Roy Ascott: O Pré-cursor da Arte Telemática'),
(7, 'banner/banner_3.jpg', '#', 3, 1, 'The Web of Life - Michael Gleich e Jeffrey Shaw'),
(8, 'banner/banner_5.jpg', '#', 5, 1, 'The File Room - Antonio Muntadas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `img`
--

CREATE TABLE IF NOT EXISTS `img` (
  `cod_img` int(11) NOT NULL,
  `area_site` varchar(30) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cod_autor` int(11) DEFAULT NULL,
  `cod_obra` int(11) DEFAULT NULL,
  `destaque` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `obras`
--

CREATE TABLE IF NOT EXISTS `obras` (
  `cod_obra` int(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `texto` text NOT NULL,
  `destaque` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `obras`
--

INSERT INTO `obras` (`cod_obra`, `nome`, `data`, `texto`, `destaque`) VALUES
(1, 'ewq', '2015-10-15', 'wqe', 0),
(2, 'wqerere', '2015-10-08', 'qweqweqwe', 1);

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
  ADD KEY `cod_autor` (`cod_autor`),
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
  MODIFY `cod_img` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `obras`
--
ALTER TABLE `obras`
  MODIFY `cod_obra` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `autor_x_obras`
--
ALTER TABLE `autor_x_obras`
  ADD CONSTRAINT `autor_x_obras_ibfk_2` FOREIGN KEY (`cod_obra`) REFERENCES `obras` (`cod_obra`),
  ADD CONSTRAINT `autor_x_obras_ibfk_3` FOREIGN KEY (`cod_autor`) REFERENCES `autor` (`cod_autor`);

--
-- Limitadores para a tabela `img`
--
ALTER TABLE `img`
  ADD CONSTRAINT `img_ibfk_1` FOREIGN KEY (`cod_autor`) REFERENCES `autor` (`cod_autor`),
  ADD CONSTRAINT `img_ibfk_2` FOREIGN KEY (`cod_obra`) REFERENCES `obras` (`cod_obra`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
