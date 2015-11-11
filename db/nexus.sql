-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11-Nov-2015 às 04:02
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
  `data_obito` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`cod_autor`, `nome`, `local_nasc`, `texto`, `data_nasc`, `data_obito`) VALUES
(1, 'Roy Ascott', 'Bath, Inglaterra', 's', '1934-10-26', NULL),
(2, 'dsad', 'asd', 'dsa', '2015-11-11', '2015-11-12');

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
  `título` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `img`
--

CREATE TABLE IF NOT EXISTS `img` (
  `cod_img` int(11) NOT NULL,
  `area_site` varchar(30) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cod_autor` int(11) DEFAULT NULL,
  `cod_obra` int(11) DEFAULT NULL
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
  MODIFY `cod_autor` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `cod_banner` int(11) NOT NULL AUTO_INCREMENT;
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
