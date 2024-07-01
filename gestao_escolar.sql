-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/07/2024 às 02:29
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gestao_escolar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(200) DEFAULT NULL,
  `Email` varchar(200) NOT NULL,
  `Telefone` varchar(20) NOT NULL,
  `Endereco` varchar(200) NOT NULL,
  `Matricula` date NOT NULL,
  `Turno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`Id`, `Nome`, `Email`, `Telefone`, `Endereco`, `Matricula`, `Turno`) VALUES
(5, 'Maria', 'teste@escola.br', '443333333333', 'Rua 5', '2024-05-04', 'Manhã'),
(6, 'Ana', 'ana@escola.com', '4455555555', 'Rua sei lá', '2015-05-18', 'Tarde'),
(7, 'Joao ninguem', 'teste@escola.br', '443333333333', 'Rua Zero', '2023-11-14', 'Manhã'),
(9, 'fulano', 'chato@escola.pr', '5566666666', 'Rua sei lá', '2024-05-15', 'Tarde');

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno_turma`
--

CREATE TABLE `aluno_turma` (
  `Id` int(11) NOT NULL,
  `Id_turma` int(11) NOT NULL,
  `Id_aluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluno_turma`
--

INSERT INTO `aluno_turma` (`Id`, `Id_turma`, `Id_aluno`) VALUES
(30, 3, 9),
(33, 4, 5),
(34, 4, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(200) DEFAULT NULL,
  `Disciplina` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Endereco` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professor`
--

INSERT INTO `professor` (`Id`, `Nome`, `Disciplina`, `Email`, `Telefone`, `Endereco`) VALUES
(2, 'Fernanda', 'Filosofia', 'teste@escola.br', '4498456666', 'Rua 5'),
(7, 'Maria', 'Geografia', '23@escola.pr', '44333333344', 'Rua Zero'),
(10, 'Luiz', 'matematica', 'luiz.@escola.br', '4499999977', 'Rua zero');

-- --------------------------------------------------------

--
-- Estrutura para tabela `prof_turma`
--

CREATE TABLE `prof_turma` (
  `Id` int(11) NOT NULL,
  `Id_turma` int(11) NOT NULL,
  `Id_professor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `prof_turma`
--

INSERT INTO `prof_turma` (`Id`, `Id_turma`, `Id_professor`) VALUES
(3, 4, 7),
(4, 3, 2),
(5, 3, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `turma`
--

CREATE TABLE `turma` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(200) DEFAULT NULL,
  `Data_de_abertura` date DEFAULT NULL,
  `Data_de_encerramento` date DEFAULT NULL,
  `Turno` varchar(20) DEFAULT NULL,
  `Modalidade` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turma`
--

INSERT INTO `turma` (`Id`, `Nome`, `Data_de_abertura`, `Data_de_encerramento`, `Turno`, `Modalidade`) VALUES
(3, '7 ano', '2024-05-08', '2024-12-19', 'Noite', 'EAD'),
(4, '9 ano', '2024-06-04', '2024-05-28', 'Tarde', 'Semipresencial'),
(5, '8 ano', '2024-05-06', '2024-06-08', 'Manhã', 'Presencial');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `Id` int(20) NOT NULL,
  `Nome` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Senha` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`Id`, `Nome`, `Email`, `Senha`) VALUES
(1, 'Josileia', 'js@email.com', 1234),
(2, 'Fulana', 'fulana25@email.com', 5678);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `aluno_turma`
--
ALTER TABLE `aluno_turma`
  ADD PRIMARY KEY (`Id`,`Id_turma`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `prof_turma`
--
ALTER TABLE `prof_turma`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `aluno_turma`
--
ALTER TABLE `aluno_turma`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `prof_turma`
--
ALTER TABLE `prof_turma`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
