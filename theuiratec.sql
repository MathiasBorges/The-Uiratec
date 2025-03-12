-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Dez-2023 às 16:51
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `theuiratec`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `denuncia`
--

CREATE TABLE `denuncia` (
  `id_denuncia` int(11) NOT NULL,
  `id_usuario_reporter` int(11) NOT NULL,
  `id_usuario_reported` int(11) NOT NULL,
  `fk_id_pensamento` int(11) NOT NULL,
  `texto_denuncia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `denuncia`
--

--dados de inserção removidos''
-- --------------------------------------------------------

--
-- Estrutura da tabela `pensamentos`
--

CREATE TABLE `pensamentos` (
  `id_pensamento` int(11) NOT NULL,
  `texto_pensamento` varchar(500) NOT NULL,
  `cor` varchar(7) NOT NULL,
  `tipo` int(2) NOT NULL,
  `fk_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pensamentos`
--

-- dados dde inserção removidos
-- --------------------------------------------------------

--
-- Estrutura da tabela `pensamentos_favoritos`
--

CREATE TABLE `pensamentos_favoritos` (
  `id_favorito` int(11) NOT NULL,
  `fk_id_usuario` int(11) NOT NULL,
  `fk_id_pensamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pensamentos_favoritos`
--

-- dados de inserção removidos

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(50) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `senha_usuario` varchar(18) NOT NULL,
  `tipo_usuario` int(10) NOT NULL,
  `rm_usuario` smallint(6) DEFAULT NULL,
  `curso_usuario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

-- dados de inserção removidos
--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `denuncia`
--
ALTER TABLE `denuncia`
  ADD PRIMARY KEY (`id_denuncia`);

--
-- Índices para tabela `pensamentos`
--
ALTER TABLE `pensamentos`
  ADD PRIMARY KEY (`id_pensamento`);

--
-- Índices para tabela `pensamentos_favoritos`
--
ALTER TABLE `pensamentos_favoritos`
  ADD PRIMARY KEY (`id_favorito`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `denuncia`
--
ALTER TABLE `denuncia`
  MODIFY `id_denuncia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pensamentos`
--
ALTER TABLE `pensamentos`
  MODIFY `id_pensamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `pensamentos_favoritos`
--
ALTER TABLE `pensamentos_favoritos`
  MODIFY `id_favorito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
