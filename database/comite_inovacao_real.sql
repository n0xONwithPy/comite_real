-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Mar-2023 às 20:53
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `comite_inovacao_real`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ideias_aprovadas`
--

CREATE TABLE `ideias_aprovadas` (
  `ID` int(11) NOT NULL DEFAULT 0 COMMENT 'Identificador Unico do Dado',
  `Data` datetime NOT NULL COMMENT 'Data de Armazenando dos Dados',
  `Resumo` varchar(255) NOT NULL COMMENT 'Descrição da Ideia',
  `Qnt_votos` int(11) NOT NULL COMMENT 'Quantidade de Votos',
  `AP_RP` int(1) NOT NULL COMMENT 'Status da Ideia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ideias_aprovadas`
--

INSERT INTO `ideias_aprovadas` (`ID`, `Data`, `Resumo`, `Qnt_votos`, `AP_RP`) VALUES
(9, '1997-01-01 00:00:00', 'Teste', 100, 1),
(10, '1997-02-01 00:00:00', 'Teste', 100, 1),
(9, '1997-01-01 00:00:00', 'Teste', 100, 1),
(10, '1997-02-01 00:00:00', 'Teste', 100, 1),
(12, '2023-03-09 00:00:00', 'Ideia 1', 12, 1),
(13, '2023-03-09 00:00:00', 'Ideia 2', 14, 1),
(9, '1997-01-01 00:00:00', 'Teste', 100, 1),
(10, '1997-02-01 00:00:00', 'Teste', 100, 1),
(12, '2023-03-09 00:00:00', 'Ideia 1', 12, 1),
(13, '2023-03-09 00:00:00', 'Ideia 2', 14, 1),
(9, '1997-01-01 00:00:00', 'Teste', 100, 1),
(10, '1997-02-01 00:00:00', 'Teste', 100, 1),
(12, '2023-03-09 00:00:00', 'Ideia 1', 12, 1),
(13, '2023-03-09 00:00:00', 'Ideia 2', 14, 1),
(17, '2023-03-09 00:00:00', 'Ideia 5', 12, 1),
(18, '2023-03-09 00:00:00', 'Ideia 6', 4, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ideias_comite`
--

CREATE TABLE `ideias_comite` (
  `ID` int(11) NOT NULL COMMENT 'Identificador Unico do Dado',
  `Data` datetime NOT NULL COMMENT 'Data de Armazenando dos Dados',
  `Resumo` varchar(255) NOT NULL COMMENT 'Descrição da Ideia',
  `Qnt_votos` int(11) NOT NULL COMMENT 'Quantidade de Votos',
  `AP_RP` int(1) NOT NULL COMMENT 'Status da Ideia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ideias_comite`
--

INSERT INTO `ideias_comite` (`ID`, `Data`, `Resumo`, `Qnt_votos`, `AP_RP`) VALUES
(13, '2023-03-10 00:00:00', 'Aqui passou o Update', 0, 1),
(14, '2023-03-10 00:00:00', 'Aqui passou o Update', 0, 1),
(15, '2023-03-10 00:00:00', 'Aqui passou o Update', 0, 1),
(16, '2023-03-10 00:00:00', 'Aqui passou o Update', 0, 1),
(17, '2023-03-10 00:00:00', 'Aqui passou o Update', 0, 1),
(18, '2023-03-10 00:00:00', 'Aqui passou o Update', 0, 1),
(19, '2023-03-10 00:00:00', 'Aqui passou o Update', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ideias_reprovadas`
--

CREATE TABLE `ideias_reprovadas` (
  `ID` int(11) NOT NULL DEFAULT 0 COMMENT 'Identificador Unico do Dado',
  `Data` datetime NOT NULL COMMENT 'Data de Armazenando dos Dados',
  `Resumo` varchar(255) NOT NULL COMMENT 'Descrição da Ideia',
  `Qnt_votos` int(11) NOT NULL COMMENT 'Quantidade de Votos',
  `AP_RP` int(1) NOT NULL COMMENT 'Status da Ideia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ideias_reprovadas`
--

INSERT INTO `ideias_reprovadas` (`ID`, `Data`, `Resumo`, `Qnt_votos`, `AP_RP`) VALUES
(11, '1997-02-01 00:00:00', 'Teste', 100, 0),
(11, '1997-02-01 00:00:00', 'Teste', 100, 0),
(14, '2023-03-09 00:00:00', 'Ideia 2', 14, 0),
(11, '1997-02-01 00:00:00', 'Teste', 100, 0),
(14, '2023-03-09 00:00:00', 'Ideia 2', 14, 0),
(15, '2023-03-09 00:00:00', 'Ideia 3', 12, 0),
(16, '2023-03-09 00:00:00', 'Ideia 4', 4, 0),
(11, '1997-02-01 00:00:00', 'Teste', 100, 0),
(14, '2023-03-09 00:00:00', 'Ideia 2', 14, 0),
(15, '2023-03-09 00:00:00', 'Ideia 3', 12, 0),
(16, '2023-03-09 00:00:00', 'Ideia 4', 4, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ideias_comite`
--
ALTER TABLE `ideias_comite`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ideias_comite`
--
ALTER TABLE `ideias_comite`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador Unico do Dado', AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
