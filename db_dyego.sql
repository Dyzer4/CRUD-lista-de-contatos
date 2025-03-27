-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/03/2025 às 01:25
-- Versão do servidor: 8.0.40
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_dyego`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_contatos`
--

CREATE TABLE `tb_contatos` (
  `idContato` int NOT NULL,
  `primeiro_nome` varchar(50) NOT NULL,
  `ultimo_nome` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `idEstado` varchar(30) NOT NULL,
  `id_ddd` int NOT NULL,
  `celular` varchar(9) NOT NULL,
  `email` varchar(60) NOT NULL,
  `id_mes` int NOT NULL,
  `cpf` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_ddd`
--

CREATE TABLE `tb_ddd` (
  `id_ddd` int NOT NULL,
  `ddd` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tb_ddd`
--

INSERT INTO `tb_ddd` (`id_ddd`, `ddd`) VALUES
(1, '11'),
(2, '12'),
(3, '13'),
(4, '15'),
(5, '16'),
(6, '17'),
(7, '18'),
(8, '19'),
(9, '21'),
(10, '24'),
(11, '27'),
(12, '28'),
(13, '31'),
(14, '32'),
(15, '33'),
(16, '34'),
(17, '35'),
(18, '37'),
(19, '38'),
(20, '41'),
(21, '42'),
(22, '43'),
(23, '44'),
(24, '45'),
(25, '46'),
(26, '47'),
(27, '48'),
(28, '49'),
(29, '51'),
(30, '53'),
(31, '54'),
(32, '55'),
(33, '61'),
(34, '62'),
(35, '63'),
(36, '64'),
(37, '65'),
(38, '66'),
(39, '67'),
(40, '68'),
(41, '69'),
(42, '71'),
(43, '73'),
(44, '74'),
(45, '75'),
(46, '77'),
(47, '79'),
(48, '81'),
(49, '82'),
(50, '83'),
(51, '84'),
(52, '85'),
(53, '86'),
(54, '87'),
(55, '88'),
(56, '89'),
(57, '91'),
(58, '92'),
(59, '93'),
(60, '94'),
(61, '95'),
(62, '96'),
(63, '97'),
(64, '98'),
(65, '99');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_estados`
--

CREATE TABLE `tb_estados` (
  `idEstado` varchar(2) NOT NULL,
  `nome_estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tb_estados`
--

INSERT INTO `tb_estados` (`idEstado`, `nome_estado`) VALUES
('AC', 'Acre'),
('AL', 'Alagoas'),
('AM', 'Amazonas'),
('AP', 'Amapá'),
('BA', 'Bahia'),
('CE', 'Ceará'),
('DF', 'Distrito Federal'),
('ES', 'Espírito Santo'),
('GO', 'Goiás'),
('MA', 'Maranhão'),
('MG', 'Minas Gerais'),
('MS', 'Mato Grosso do Sul'),
('MT', 'Mato Grosso'),
('PA', 'Pará'),
('PB', 'Paraíba'),
('PE', 'Pernambuco'),
('PI', 'Piauí'),
('PR', 'Paraná'),
('RJ', 'Rio de Janeiro'),
('RN', 'Rio Grande do Norte'),
('RO', 'Rondônia'),
('RR', 'Roraima'),
('RS', 'Rio Grande do Sul'),
('SC', 'Santa Catarina'),
('SE', 'Sergipe'),
('SP', 'São Paulo'),
('TO', 'Tocantins');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_login`
--

CREATE TABLE `tb_login` (
  `id_user` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_password` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tb_login`
--

INSERT INTO `tb_login` (`id_user`, `username`, `user_password`) VALUES
(1, 'dyegoroque', '123123123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_mes`
--

CREATE TABLE `tb_mes` (
  `id_mes` int NOT NULL,
  `nome_mes` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tb_mes`
--

INSERT INTO `tb_mes` (`id_mes`, `nome_mes`) VALUES
(1, 'Janeiro'),
(2, 'Fevereiro'),
(3, 'Março'),
(4, 'Abril'),
(5, 'Maio'),
(6, 'Junho'),
(7, 'Julho'),
(8, 'Agosto'),
(9, 'Setembro'),
(10, 'Outubro'),
(11, 'Novembro'),
(12, 'Dezembro');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_contatos`
--
ALTER TABLE `tb_contatos`
  ADD PRIMARY KEY (`idContato`),
  ADD KEY `idEstado` (`idEstado`),
  ADD KEY `id_ddd` (`id_ddd`),
  ADD KEY `id_mes` (`id_mes`);

--
-- Índices de tabela `tb_ddd`
--
ALTER TABLE `tb_ddd`
  ADD PRIMARY KEY (`id_ddd`);

--
-- Índices de tabela `tb_estados`
--
ALTER TABLE `tb_estados`
  ADD PRIMARY KEY (`idEstado`);

--
-- Índices de tabela `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id_user`);

--
-- Índices de tabela `tb_mes`
--
ALTER TABLE `tb_mes`
  ADD PRIMARY KEY (`id_mes`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_contatos`
--
ALTER TABLE `tb_contatos`
  MODIFY `idContato` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_ddd`
--
ALTER TABLE `tb_ddd`
  MODIFY `id_ddd` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de tabela `tb_mes`
--
ALTER TABLE `tb_mes`
  MODIFY `id_mes` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_contatos`
--
ALTER TABLE `tb_contatos`
  ADD CONSTRAINT `tb_contatos_ibfk_1` FOREIGN KEY (`idEstado`) REFERENCES `tb_estados` (`idEstado`),
  ADD CONSTRAINT `tb_contatos_ibfk_2` FOREIGN KEY (`id_ddd`) REFERENCES `tb_ddd` (`id_ddd`),
  ADD CONSTRAINT `tb_contatos_ibfk_3` FOREIGN KEY (`id_mes`) REFERENCES `tb_mes` (`id_mes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
