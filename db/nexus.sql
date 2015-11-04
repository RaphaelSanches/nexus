-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04-Nov-2015 às 04:17
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
-- Estrutura da tabela `obras`
--

CREATE TABLE IF NOT EXISTS `obras` (
  `cod_obra` int(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `texto` text NOT NULL,
  `cod_autor` int(4) NOT NULL,
  `destaque` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `obras`
--

INSERT INTO `obras` (`cod_obra`, `nome`, `data`, `texto`, `cod_autor`, `destaque`) VALUES
(1, 'ewq', '2015-10-15', 'wqe', 1, 0),
(2, 'wqerere', '2015-10-08', 'qweqweqwe', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`cod_autor`);

--
-- Indexes for table `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`cod_obra`),
  ADD KEY `cod_autor` (`cod_autor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `cod_autor` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `obras`
--
ALTER TABLE `obras`
  MODIFY `cod_obra` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `obras`
--
ALTER TABLE `obras`
  ADD CONSTRAINT `obras_ibfk_1` FOREIGN KEY (`cod_autor`) REFERENCES `autor` (`cod_autor`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
