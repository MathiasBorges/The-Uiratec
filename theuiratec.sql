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

INSERT INTO `denuncia` (`id_denuncia`, `id_usuario_reporter`, `id_usuario_reported`, `fk_id_pensamento`, `texto_denuncia`) VALUES
(1, 4, 1, 1, 'Nao sou gringo'),
(2, 3, 1, 1, 'cara, para meu'),
(3, 9, 9, 32, 'kkkrlh gostei nao'),
(4, 9, 8, 33, 'cu');

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

INSERT INTO `pensamentos` (`id_pensamento`, `texto_pensamento`, `cor`, `tipo`, `fk_id_usuario`) VALUES
(1, 'Hello, World!', '#B7C1ED', 1, 1),
(2, 'O sistema educacional é falho. Nós, estudantes, deveremos gerir tal situação-problema.', '#B7C1ED', 1, 2),
(3, 'PHP é mais velho que JAVA \'O\'', '#B7C1ED', 4, 2),
(4, 'O maior prazer da vida é fazer o que as pessoas dizem que você não é capaz.', '#7dd76f', 1, 1),
(5, 'Mim ser alguém, você ser outra.<br />\r\nEu sabo demais', '#91939C', 2, 1),
(6, 'Chat GPT veio para melhorar a vida das pessoas ou acabar com elas?', '#B7C1ED', 4, 1),
(7, 'que raiva a sala não parou de falar na prova, não conseguia me concentrar direito, pessoal não tem o mínimo educação e consideração pelo próximo', '#91939C', 2, 3),
(8, 'Gente só avisando que o jogo de CS do 3 DS contra o 2 ADM vai acontecer as 2 horas no Lab 1', '#FF8181', 1, 3),
(9, 'Gente alguém consegui anotar o que Paulo falou na aula de DS?  o que ele disse que era para entregar mesmo ?', '#FF8181', 4, 3),
(10, 'Passei a semana de TI toda sem ver nenhuma apresentação, pois fiquei apresentando...  :(', '#91939C', 4, 4),
(11, 'Gabgab will return', '#FF8181', 2, 4),
(12, 'Essa segunda fase do provão Paulista foi dificil eim!!', '#7dd76f', 1, 4),
(13, 'Provão Paulista é mais fácil que o ENEM', '#B7C1ED', 1, 2),
(14, 'Aula prática de carnes de ontem foi perfeita! :3', '#FF8181', 5, 5),
(15, 'Eu amei o passeio pro Hopi Hari!! Obrigado Etec!!', '#FF8181', 1, 5),
(18, 'Muitas pessoas reclamam da prova mas foram fazer. Bem ironico', '#7dd76f', 2, 5),
(19, 'Esse último bimestre da ETEC, tenho certeza que todo mundo ta \"i\'m still standin\'\" da vida.', '#7dd76f', 1, 1),
(24, 'Para muitos administração não passa de um curso para quem não sabia o que queria, mas vai além, através da Administração podemos nos permitir ousar e criar, como já dizia Peter Drucker “A melhor maneira de prever o futuro é criá-lo”', '#91939C', 1, 6),
(25, 'Administração, é a arte de criar novos caminhos que levam a humanidade a excelência de suas realizações <br />\r\nAdm por amor', '#FF8181', 3, 6),
(26, 'Falam tanto de Adm e ds, mas, e o currículo de nutrição, vai ter oq?? Uma receita??', '#B7C1ED', 2, 6),
(27, 'Estou apaixonada pela disciplina que aprendemos o ciclo da vida, tenho conhecido todas as fases do ser humano e as suas necessidades.', '#7dd76f', 5, 7),
(28, 'Diretamente de uma etequiana, boa sorte a todos que prestarão o vestibulinho!! Se concentrem e acalme-se, pois tudo vai dar certo.', '#B7C1ED', 1, 7),
(29, 'A comida de hoje estava horrível kkk', '#91939C', 2, 5),
(30, 'O almoço da etec nessa semana ficou muito bom! Espero que continue assim...', '#FF8181', 2, 7),
(31, 'Adorei a mímica dos professores no show de talentos :)', '#FF8181', 1, 5),
(32, 'Bom dia!', '#91939C', 2, 9),
(33, 'Essa ultima semana de aula para o terceiro está sendo a melhor coisa! Nunca mais irei acordar para ir para a escola e nem pedir lição de casa emprestada dos outros. Tchau amigos chatos e implicantes e professores. \"ASMEI\" a etec (soquenão)', '#B7C1ED', 2, 8),
(34, 'ds amassa demais adm slk, quando eu fiz o curso percebi que na vdd eu era de forma nata um garoto de programa!!!!! bjs lindos', '#7dd76f', 3, 9),
(35, 'A melhor coisa que fiz com a minha vida foi fazer 2 cursos ao mesmo tempo na etec. Imagina fazer ADM e DS ao mesmo tempo, soquenão! Dormi nos 2 cursos mais que em casa slc!', '#91939C', 3, 8),
(38, 'QUERO BOLO, ESSE BOLO DA ETEC MIL CONTO AFF AFF', '#FF8181', 1, 4),
(43, 'Gostaria de um MB hoje', '#B7C1ED', 1, 4);

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

INSERT INTO `pensamentos_favoritos` (`id_favorito`, `fk_id_usuario`, `fk_id_pensamento`) VALUES
(1, 2, 1),
(2, 4, 2),
(3, 3, 2),
(4, 3, 6),
(5, 3, 3),
(6, 5, 7),
(7, 5, 11),
(8, 1, 13),
(9, 1, 2),
(10, 1, 3),
(11, 1, 11),
(12, 1, 5),
(13, 1, 15),
(15, 2, 19),
(16, 5, 1),
(17, 5, 28),
(18, 7, 31),
(19, 8, 28),
(20, 8, 4),
(21, 8, 2),
(22, 9, 32),
(23, 9, 33),
(24, 8, 24),
(25, 4, 33),
(26, 4, 29),
(27, 4, 11);

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

INSERT INTO `usuarios` (`id_usuario`, `nome_usuario`, `email_usuario`, `senha_usuario`, `tipo_usuario`, `rm_usuario`, `curso_usuario`) VALUES
(1, 'Dudu Monteiro', 'eduardo.silva1088@etec.sp.gov.br', 'senhalinda', 0, 5874, 'Desenvolvimento de Sistemas'),
(2, 'Mathias B Marques', 'mathias.marques01@etec.sp.gov.br', 'mathiasAlfa', 0, 3477, 'Desenvolvimento de Sistemas'),
(3, 'Nicolas Silva', 'nicolas.silva10@etec.sp.gov.br', '11092002', 0, 2720, 'Desenvolvimento de Sistemas'),
(4, 'MarcosHenrique', 'marcos.lima@etec.sp.gov.br', '12345678', 0, 3500, 'Desenvolvimento de Sistemas'),
(5, 'SelenaCausso', 'selena.silva@etec.sp.gov.br', '12345678', 0, 2244, 'Nutrição'),
(6, 'Steffany Cristina', 'steffany.jesus@etec.sp.gov.br', '12345678', 0, 4875, 'Administração'),
(7, 'Cintya Silva Nascimento', 'cintya.silva.@etec.sp.gov.br', 'Silva9820', 0, 9820, 'Nutrição'),
(8, 'Jonatas', 'jonatas.vilar216@etec.sp.gov.br', '123456789', 0, 2222, 'Administração'),
(9, 'Leonardo', 'leonardo.andrade70@etec.sp.gov.br', '77777777', 0, 2962, 'Administração');

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
