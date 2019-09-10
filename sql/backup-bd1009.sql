-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 10-Set-2019 às 22:18
-- Versão do servidor: 10.2.25-MariaDB
-- versão do PHP: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u765863036_dogu`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador_permissao`
--

CREATE TABLE `administrador_permissao` (
  `cd_permissao` int(11) NOT NULL,
  `cd_administrador` int(11) NOT NULL,
  `ic_permitir` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `administrador_permissao`
--

INSERT INTO `administrador_permissao` (`cd_permissao`, `cd_administrador`, `ic_permitir`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(10, 1, 1),
(11, 1, 1),
(12, 1, 1),
(13, 1, 1),
(14, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_pet`
--

CREATE TABLE `cliente_pet` (
  `cd_cliente` int(11) NOT NULL,
  `cd_pet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cliente_pet`
--

INSERT INTO `cliente_pet` (`cd_cliente`, `cd_pet`) VALUES
(16, 31),
(17, 30),
(18, 29),
(19, 28),
(20, 27),
(21, 26),
(22, 25),
(23, 24),
(24, 23),
(25, 22),
(26, 21),
(27, 20),
(28, 19),
(29, 18),
(30, 17),
(31, 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_endereco`
--

CREATE TABLE `pessoa_endereco` (
  `cd_pessoa` int(11) NOT NULL,
  `cd_endereco` int(11) NOT NULL,
  `cd_tipo_endereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pessoa_endereco`
--

INSERT INTO `pessoa_endereco` (`cd_pessoa`, `cd_endereco`, `cd_tipo_endereco`) VALUES
(16, 85, 1),
(17, 84, 1),
(22, 79, 1),
(25, 76, 1),
(28, 73, 1),
(35, 66, 1),
(36, 65, 1),
(37, 64, 1),
(44, 57, 1),
(46, 55, 1),
(49, 52, 1),
(51, 50, 1),
(54, 47, 1),
(56, 45, 1),
(59, 42, 1),
(62, 39, 1),
(63, 38, 1),
(64, 37, 1),
(67, 34, 1),
(71, 30, 1),
(72, 29, 1),
(73, 28, 1),
(78, 23, 1),
(79, 22, 1),
(88, 13, 1),
(92, 9, 1),
(94, 7, 1),
(95, 6, 1),
(98, 3, 1),
(19, 82, 2),
(21, 80, 2),
(23, 78, 2),
(24, 77, 2),
(26, 75, 2),
(29, 72, 2),
(33, 68, 2),
(34, 67, 2),
(39, 62, 2),
(41, 60, 2),
(42, 59, 2),
(43, 58, 2),
(45, 56, 2),
(52, 49, 2),
(53, 48, 2),
(55, 46, 2),
(57, 44, 2),
(58, 43, 2),
(60, 41, 2),
(61, 40, 2),
(66, 35, 2),
(68, 33, 2),
(69, 32, 2),
(77, 24, 2),
(80, 21, 2),
(81, 20, 2),
(82, 19, 2),
(85, 16, 2),
(89, 12, 2),
(90, 11, 2),
(97, 4, 2),
(100, 1, 2),
(18, 83, 3),
(20, 81, 3),
(27, 74, 3),
(30, 71, 3),
(31, 70, 3),
(32, 69, 3),
(38, 63, 3),
(40, 61, 3),
(47, 54, 3),
(48, 53, 3),
(50, 51, 3),
(65, 36, 3),
(70, 31, 3),
(74, 27, 3),
(75, 26, 3),
(76, 25, 3),
(83, 18, 3),
(84, 17, 3),
(86, 15, 3),
(87, 14, 3),
(91, 10, 3),
(93, 8, 3),
(96, 5, 3),
(99, 2, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa_telefone`
--

CREATE TABLE `pessoa_telefone` (
  `cd_pessoa` int(11) NOT NULL,
  `cd_telefone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pessoa_telefone`
--

INSERT INTO `pessoa_telefone` (`cd_pessoa`, `cd_telefone`) VALUES
(16, 85),
(16, 185),
(17, 84),
(17, 184),
(18, 83),
(18, 183),
(19, 82),
(19, 182),
(20, 81),
(20, 181),
(21, 80),
(21, 180),
(22, 79),
(22, 179),
(23, 78),
(23, 178),
(24, 77),
(24, 177),
(25, 76),
(25, 176),
(26, 75),
(26, 175),
(27, 74),
(27, 174),
(28, 73),
(28, 173),
(29, 72),
(29, 172),
(30, 71),
(30, 171),
(31, 70),
(31, 170),
(32, 69),
(32, 169),
(33, 68),
(33, 168),
(34, 67),
(34, 167),
(35, 66),
(35, 166),
(36, 65),
(36, 165),
(37, 64),
(37, 164),
(38, 63),
(38, 163),
(39, 62),
(39, 162),
(40, 61),
(40, 161),
(41, 60),
(41, 160),
(42, 59),
(42, 159),
(43, 58),
(43, 158),
(44, 57),
(44, 157),
(45, 56),
(45, 156),
(46, 55),
(46, 155),
(47, 54),
(47, 154),
(48, 53),
(48, 153),
(49, 52),
(49, 152),
(50, 51),
(50, 151),
(51, 50),
(51, 150),
(52, 49),
(52, 149),
(53, 48),
(53, 148),
(54, 47),
(54, 147),
(55, 46),
(55, 146),
(56, 45),
(56, 145),
(57, 44),
(57, 144),
(58, 43),
(58, 143),
(59, 42),
(59, 142),
(60, 41),
(60, 141),
(61, 40),
(61, 140),
(62, 39),
(62, 139),
(63, 38),
(63, 138),
(64, 37),
(64, 137),
(65, 36),
(65, 136),
(66, 35),
(66, 135),
(67, 34),
(67, 134),
(68, 33),
(68, 133),
(69, 32),
(69, 132),
(70, 31),
(70, 131),
(71, 30),
(71, 130),
(72, 29),
(72, 129),
(73, 28),
(73, 128),
(74, 27),
(74, 127),
(75, 26),
(75, 126),
(76, 25),
(76, 125),
(77, 24),
(77, 124),
(78, 23),
(78, 123),
(79, 22),
(79, 122),
(80, 21),
(80, 121),
(81, 20),
(81, 120),
(82, 19),
(82, 119),
(83, 18),
(83, 118),
(84, 17),
(84, 117),
(85, 16),
(85, 116),
(86, 15),
(86, 115),
(87, 14),
(87, 114),
(88, 13),
(88, 113),
(89, 12),
(89, 112),
(90, 11),
(90, 111),
(91, 10),
(91, 110),
(92, 9),
(92, 109),
(93, 8),
(93, 108),
(94, 7),
(94, 107),
(95, 6),
(95, 106),
(96, 5),
(96, 105),
(97, 4),
(97, 104),
(98, 3),
(98, 103),
(99, 2),
(99, 102),
(100, 1),
(100, 101);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_administrador`
--

CREATE TABLE `tb_administrador` (
  `cd_administrador` int(11) NOT NULL,
  `cd_pessoa` int(11) DEFAULT NULL,
  `cd_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_administrador`
--

INSERT INTO `tb_administrador` (`cd_administrador`, `cd_pessoa`, `cd_login`) VALUES
(1, 20, 20),
(2, 19, 19),
(3, 18, 18),
(4, 17, 17),
(5, 16, 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_animal`
--

CREATE TABLE `tb_animal` (
  `cd_animal` int(11) NOT NULL,
  `cd_tipo_animal` int(11) DEFAULT NULL,
  `ds_animal` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_animal`
--

INSERT INTO `tb_animal` (`cd_animal`, `cd_tipo_animal`, `ds_animal`) VALUES
(1, 5, 'Cachorro'),
(2, 2, 'Cachorro'),
(3, 4, 'Cachorro'),
(4, 3, 'Cachorro'),
(5, 4, 'Cachorro'),
(6, 3, 'Cachorro'),
(7, 3, 'Cachorro'),
(8, 1, 'Cachorro'),
(9, 3, 'Cachorro'),
(10, 4, 'Cachorro'),
(11, 2, 'Cachorro'),
(12, 3, 'Cachorro'),
(13, 5, 'Cachorro'),
(14, 3, 'Cachorro'),
(15, 4, 'Cachorro'),
(16, 4, 'Cachorro'),
(17, 2, 'Cachorro'),
(18, 4, 'Cachorro'),
(19, 3, 'Cachorro'),
(20, 4, 'Cachorro'),
(21, 3, 'Cachorro'),
(22, 1, 'Cachorro'),
(23, 2, 'Cachorro'),
(24, 5, 'Cachorro'),
(25, 5, 'Cachorro'),
(26, 4, 'Cachorro'),
(27, 2, 'Cachorro'),
(28, 3, 'Cachorro'),
(29, 1, 'Cachorro'),
(30, 1, 'Cachorro'),
(31, 2, 'Cachorro'),
(32, 2, 'Cachorro'),
(33, 2, 'Cachorro'),
(34, 3, 'Cachorro'),
(35, 3, 'Cachorro'),
(36, 5, 'Cachorro'),
(37, 5, 'Cachorro'),
(38, 4, 'Cachorro'),
(39, 3, 'Cachorro'),
(40, 2, 'Cachorro'),
(41, 4, 'Cachorro'),
(42, 5, 'Cachorro'),
(43, 3, 'Cachorro'),
(44, 5, 'Cachorro'),
(45, 1, 'Cachorro'),
(46, 4, 'Cachorro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_bairro`
--

CREATE TABLE `tb_bairro` (
  `cd_bairro` int(11) NOT NULL,
  `ds_bairro` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cd_cidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_bairro`
--

INSERT INTO `tb_bairro` (`cd_bairro`, `ds_bairro`, `cd_cidade`) VALUES
(1, 'Stockholms län', 57),
(2, 'PR', 68),
(3, 'DE', 29),
(4, 'Oyo', 3),
(5, 'Wie', 83),
(6, 'LA', 12),
(7, 'WB', 72),
(8, 'Noord Brabant', 29),
(9, 'MH', 97),
(10, 'UP', 20),
(11, 'Emilia-Romagna', 50),
(12, 'North Island', 24),
(13, 'Cartago', 43),
(14, 'New South Wales', 14),
(15, 'Zeeland', 5),
(16, 'Oklahoma', 38),
(17, 'Vienna', 78),
(18, 'X', 94),
(19, 'I', 81),
(20, 'Midi-Pyrénées', 25),
(21, 'NT', 4),
(22, 'Lubuskie', 89),
(23, 'Andhra Pradesh', 67),
(24, 'BC', 51),
(25, 'N.', 16),
(26, 'Pennsylvania', 31),
(27, 'Biobío', 7),
(28, 'North Rhine-Westphalia', 38),
(29, 'AB', 50),
(30, 'Anambra', 43),
(31, 'QLD', 29),
(32, 'E', 2),
(33, 'Basilicata', 8),
(34, 'CH', 24),
(35, 'Utah', 61),
(36, 'BB', 36),
(37, 'C', 79),
(38, 'Massachusetts', 5),
(39, 'OS', 43),
(40, 'Mazowieckie', 26),
(41, 'Piemonte', 35),
(42, 'V', 54),
(43, 'VII', 71),
(44, 'IL', 8),
(45, 'Luik', 91),
(46, 'ON', 83),
(47, 'São Paulo', 28),
(48, 'WI', 18),
(49, 'MG', 74),
(50, 'PA', 97),
(51, 'Vienna', 17),
(52, 'Mer', 26),
(53, 'VT', 66),
(54, 'PIE', 56),
(55, 'North Island', 49),
(56, 'Styria', 70),
(57, 'YK', 34),
(58, 'Minas Gerais', 74),
(59, 'Kentucky', 87),
(60, 'L', 73),
(61, 'Utrecht', 90),
(62, 'Akwa Ibom', 77),
(63, 'PIE', 60),
(64, 'Hamburg', 26),
(65, 'HA', 11),
(66, 'Alberta', 85),
(67, 'UT', 92),
(68, 'H', 95),
(69, 'Kano', 21),
(70, 'Saskatchewan', 14),
(71, 'OR', 52),
(72, 'Metropolitana de Santiago', 77),
(73, 'MP', 68),
(74, 'SO', 40),
(75, 'Valparaíso', 83),
(76, 'British Columbia', 18),
(77, 'UP', 59),
(78, 'AB', 42),
(79, 'Saxony', 96),
(80, 'Vienna', 98),
(81, 'AB', 46),
(82, 'UMB', 63),
(83, 'Ulster', 47),
(84, 'LU', 81),
(85, 'PIE', 18),
(86, 'NT', 64),
(87, 'TOS', 43),
(88, 'F', 53),
(89, 'Borno', 28),
(90, 'Gävleborgs län', 20),
(91, 'HE', 45),
(92, 'LI', 86),
(93, 'Gaz', 22),
(94, 'PUG', 4),
(95, 'Renfrewshire', 40),
(96, 'North Island', 40),
(97, 'IL', 22),
(98, 'Alajuela', 43),
(99, 'Fl', 68),
(100, 'SP', 62);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cidade`
--

CREATE TABLE `tb_cidade` (
  `cd_cidade` int(11) NOT NULL,
  `ds_cidade` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sg_uf` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_cidade`
--

INSERT INTO `tb_cidade` (`cd_cidade`, `ds_cidade`, `sg_uf`) VALUES
(1, 'Saint-Pierre', 'RJ'),
(2, 'Panjim', 'PR'),
(3, 'Windermere', 'CE'),
(4, 'Emines', 'ES'),
(5, 'Hines Creek', 'MG'),
(6, 'Washington', 'RO'),
(7, 'Coventry', 'AL'),
(8, 'Roxburgh', 'SC'),
(9, 'Nivelles', 'RR'),
(10, 'Finspång', 'DF'),
(11, 'Mustafakemalpaşa', 'RS'),
(12, 'Dipignano', 'PA'),
(13, 'Corbara', 'SE'),
(14, 'Castelbaldo', 'AP'),
(15, 'Dallas', 'AP'),
(16, 'Sint-Pieters-Kapelle', 'AP'),
(17, 'Collecchio', 'PA'),
(18, 'Belfast', 'PB'),
(19, 'Merbes-le-Ch‰teau', 'PA'),
(20, 'Anklam', 'RR'),
(21, 'Leeds', 'MS'),
(22, 'Morrovalle', 'PB'),
(23, 'Logroño', 'SE'),
(24, 'Pınarbaşı', 'PI'),
(25, 'Quarona', 'MT'),
(26, 'Montpelier', 'PI'),
(27, 'Villafranca d\'Asti', 'MS'),
(28, 'Weyburn', 'PE'),
(29, 'Tielrode', 'RJ'),
(30, 'Buxton', 'AP'),
(31, 'Dieppe', 'PB'),
(32, 'Greenock', 'PA'),
(33, 'Kalgoorlie-Boulder', 'SP'),
(34, 'Erchie', 'MS'),
(35, 'Fraserburgh', 'RJ'),
(36, 'Neuville', 'AM'),
(37, 'Enkhuizen', 'GO'),
(38, 'Grey County', 'SP'),
(39, 'St. Thomas', 'AP'),
(40, 'Saint-Remy-Geest', 'MG'),
(41, 'Quedlinburg', 'RJ'),
(42, 'Radicofani', 'RO'),
(43, 'Terneuzen', 'SP'),
(44, 'Wyoming', 'SC'),
(45, 'Lauder', 'RN'),
(46, 'Haren', 'AL'),
(47, 'Pinneberg', 'SE'),
(48, 'Adelaide', 'BA'),
(49, 'Medea', 'AL'),
(50, 'Meix-le-Tige', 'PR'),
(51, 'Mansfield', 'GO'),
(52, 'Pembroke', 'RO'),
(53, 'Bragança', 'BA'),
(54, 'Bonefro', 'AL'),
(55, 'Unnao', 'AC'),
(56, 'Sevilla', 'PA'),
(57, 'Tourinne', 'AM'),
(58, 'Delhi', 'PB'),
(59, 'Dover', 'SC'),
(60, 'Leiden', 'AC'),
(61, 'Greenock', 'MT'),
(62, 'Fort William', 'SE'),
(63, 'Shimoga', 'SE'),
(64, 'Dion-Valmont', 'RJ'),
(65, 'San Lorenzo', 'AC'),
(66, 'Molenbeersel', 'SC'),
(67, 'Auckland', 'MG'),
(68, 'Vilna', 'RR'),
(69, 'Rodez', 'RO'),
(70, 'Fermont', 'SE'),
(71, 'Marsciano', 'AC'),
(72, 'Northumberland', 'RS'),
(73, 'Paraíso', 'ES'),
(74, 'Kimberly', 'PI'),
(75, 'Kemzeke', 'BA'),
(76, 'Memphis', 'AC'),
(77, 'Orsogna', 'ES'),
(78, 'Cobourg', 'PI'),
(79, 'Meux', 'AL'),
(80, 'Purral', 'PE'),
(81, 'Montes Claros', 'ES'),
(82, 'Concepción', 'AM'),
(83, 'Sefro', 'RR'),
(84, 'Judenburg', 'RS'),
(85, 'Saint-Oyen', 'PE'),
(86, 'Certaldo', 'PA'),
(87, 'Sousa', 'MS'),
(88, 'Laives/Leifers', 'MS'),
(89, 'Huntsville', 'AP'),
(90, 'Crieff', 'MS'),
(91, 'Husum', 'SP'),
(92, 'Santa Croce sull\'Arno', 'SE'),
(93, 'Viggianello', 'AP'),
(94, 'Oberhausen', 'AC'),
(95, 'Clare', 'SP'),
(96, 'La Cruz', 'RJ'),
(97, 'Colorado Springs', 'AP'),
(98, 'Aschersleben', 'AM'),
(99, 'Matagami', 'MA'),
(100, 'Grosseto', 'SE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `cd_cliente` int(11) NOT NULL,
  `cd_pessoa` int(11) DEFAULT NULL,
  `cd_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`cd_cliente`, `cd_pessoa`, `cd_login`) VALUES
(16, 76, 76),
(17, 77, 77),
(18, 78, 78),
(19, 79, 79),
(20, 80, 80),
(21, 81, 81),
(22, 82, 82),
(23, 83, 83),
(24, 84, 84),
(25, 85, 85),
(26, 86, 86),
(27, 87, 87),
(28, 88, 88),
(29, 89, 89),
(30, 90, 90),
(31, 91, 91),
(32, 92, 92),
(33, 93, 93),
(34, 94, 94),
(35, 95, 95),
(36, 96, 96),
(37, 97, 97),
(38, 98, 98),
(39, 99, 99),
(40, 100, 100),
(41, 101, 101),
(42, 102, 102),
(43, 103, 103),
(44, 105, 104);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_denuncia`
--

CREATE TABLE `tb_denuncia` (
  `cd_denuncia` int(11) NOT NULL,
  `cd_passeio` int(11) DEFAULT NULL,
  `cd_passeador` int(11) DEFAULT NULL,
  `cd_cliente` int(11) DEFAULT NULL,
  `cd_pet` int(11) DEFAULT NULL,
  `cd_tipo_denuncia` int(11) DEFAULT NULL,
  `ds_denuncia` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_endereco`
--

CREATE TABLE `tb_endereco` (
  `cd_endereco` int(11) NOT NULL,
  `ds_endereco` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cd_cep` char(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ds_complemento` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cd_bairro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_endereco`
--

INSERT INTO `tb_endereco` (`cd_endereco`, `ds_endereco`, `cd_cep`, `ds_complemento`, `cd_bairro`) VALUES
(1, '7881 Egestas. Av.', '11573210', NULL, 92),
(2, 'P.O. Box 263, 2132 Nibh. Avenue', '11620882', NULL, 10),
(3, '7926 Morbi Avenue', '11462708', NULL, 22),
(4, 'P.O. Box 697, 7867 Aliquet Road', '11648960', NULL, 24),
(5, '6714 Sed Rd.', '11731752', NULL, 78),
(6, 'P.O. Box 927, 2368 Gravida Avenue', '11792792', NULL, 98),
(7, '813-501 Ornare, Rd.', '11249377', NULL, 19),
(8, 'P.O. Box 455, 9461 In Road', '11122950', NULL, 100),
(9, '532-8684 Augue Ave', '11623859', NULL, 45),
(10, '3549 Ante, Avenue', '11283507', NULL, 17),
(11, '136 Nisl. Av.', '11248032', NULL, 76),
(12, '5633 Montes, Avenue', '11324136', NULL, 60),
(13, '9565 Turpis Ave', '11805989', NULL, 10),
(14, 'Ap #234-8343 Nisl. Av.', '11375930', NULL, 24),
(15, '280-4349 Quis St.', '11479959', NULL, 21),
(16, '251-3324 Integer Av.', '11539787', NULL, 100),
(17, 'Ap #602-2198 Eleifend St.', '11245007', NULL, 25),
(18, 'Ap #994-6884 Eu Rd.', '11670722', NULL, 7),
(19, 'P.O. Box 671, 3664 Aptent Avenue', '11814810', NULL, 19),
(20, '610-4255 Amet, St.', '11629093', NULL, 34),
(21, 'P.O. Box 451, 6796 Orci Ave', '11896322', NULL, 13),
(22, 'Ap #919-8584 Eu Street', '11626412', NULL, 80),
(23, '2954 Dolor Av.', '11239150', NULL, 31),
(24, '3677 Id St.', '11367781', NULL, 86),
(25, '9947 Nec St.', '11318058', NULL, 16),
(26, '7839 Arcu. Street', '11355614', NULL, 59),
(27, 'Ap #724-4119 Vivamus Ave', '11708821', NULL, 73),
(28, '395-1516 Penatibus St.', '11917483', NULL, 55),
(29, '3513 Facilisis Ave', '11143821', NULL, 64),
(30, '107-8838 Nec Av.', '11573609', NULL, 7),
(31, 'Ap #550-3060 Justo. Rd.', '11636252', NULL, 41),
(32, 'Ap #851-3010 Vel, St.', '11584879', NULL, 38),
(33, 'P.O. Box 407, 6739 Felis, St.', '11349470', NULL, 66),
(34, '9488 Mauris Av.', '11532264', NULL, 33),
(35, '208-3139 Sapien, Av.', '11191609', NULL, 96),
(36, 'P.O. Box 990, 6329 Pharetra. St.', '11239718', NULL, 96),
(37, 'Ap #534-9137 Eget, Rd.', '11282627', NULL, 11),
(38, '341-4387 Ac, Av.', '11785129', NULL, 100),
(39, 'P.O. Box 110, 4936 Lorem Rd.', '11650187', NULL, 73),
(40, 'P.O. Box 854, 9152 Id, Street', '11505179', NULL, 33),
(41, '637-2664 Donec Rd.', '11237665', NULL, 33),
(42, 'P.O. Box 922, 6593 Nisl Rd.', '11364560', NULL, 41),
(43, '962-7840 Erat. Street', '11554858', NULL, 25),
(44, '9903 Sit Street', '11947880', NULL, 43),
(45, 'Ap #344-9685 Nulla Street', '11149397', NULL, 89),
(46, '674-4223 Nullam Ave', '11084912', NULL, 62),
(47, 'P.O. Box 441, 6515 Placerat Street', '11551375', NULL, 91),
(48, 'P.O. Box 100, 4108 Lectus, Ave', '11860201', NULL, 70),
(49, 'P.O. Box 749, 7048 Non Rd.', '11343366', NULL, 19),
(50, '213-1949 Euismod Street', '11609454', NULL, 54),
(51, 'Ap #808-2133 Cursus, Street', '11559159', NULL, 67),
(52, 'Ap #233-4027 Pellentesque Rd.', '11490912', NULL, 32),
(53, 'P.O. Box 873, 6667 Amet, Rd.', '11523838', NULL, 47),
(54, 'P.O. Box 272, 6059 Scelerisque Road', '11717090', NULL, 94),
(55, '979-1489 Eget Rd.', '11259990', NULL, 63),
(56, '5361 Amet, Avenue', '11742529', NULL, 81),
(57, 'P.O. Box 787, 9215 Magna. Avenue', '11934481', NULL, 9),
(58, '2707 At Rd.', '11607714', NULL, 34),
(59, 'P.O. Box 827, 2165 Ut St.', '11026259', NULL, 17),
(60, 'Ap #562-7314 Est, Av.', '11405896', NULL, 80),
(61, 'Ap #216-2877 Nonummy Avenue', '11391374', NULL, 65),
(62, 'P.O. Box 636, 364 Libero. Ave', '11612941', NULL, 14),
(63, 'P.O. Box 182, 1300 Mollis. Ave', '11599825', NULL, 95),
(64, '1462 Nunc St.', '11638759', NULL, 41),
(65, 'Ap #993-2501 Mollis St.', '11333285', NULL, 3),
(66, 'Ap #203-1379 Cursus. St.', '11809957', NULL, 5),
(67, 'P.O. Box 426, 9111 Mauris Ave', '11743643', NULL, 91),
(68, 'P.O. Box 959, 6063 Risus. Ave', '11768297', NULL, 54),
(69, '113-7270 Sed Rd.', '11140951', NULL, 86),
(70, 'Ap #660-1348 Cras St.', '11611925', NULL, 31),
(71, 'Ap #865-3428 Lectus Rd.', '11889130', NULL, 40),
(72, 'Ap #729-8495 Tristique Street', '11262428', NULL, 1),
(73, 'Ap #650-1278 Morbi Av.', '11571608', NULL, 3),
(74, '463-4193 Neque. St.', '11552295', NULL, 9),
(75, 'P.O. Box 891, 4883 Erat. St.', '11859829', NULL, 4),
(76, '262-1496 Nibh Rd.', '11331628', NULL, 61),
(77, 'P.O. Box 611, 622 Ipsum Ave', '11057564', NULL, 74),
(78, 'Ap #794-7489 Augue Av.', '11364887', NULL, 7),
(79, '2024 Nibh. Ave', '11945963', NULL, 97),
(80, 'P.O. Box 834, 5032 Ligula. St.', '11517818', NULL, 19),
(81, 'Ap #134-8447 Nec Rd.', '11157221', NULL, 43),
(82, 'P.O. Box 466, 8189 Risus. St.', '11413029', NULL, 25),
(83, 'Ap #602-1953 Laoreet Road', '11752555', NULL, 85),
(84, '5551 Enim. St.', '11056558', NULL, 45),
(85, 'P.O. Box 158, 3615 Amet St.', '11291308', NULL, 42),
(86, 'P.O. Box 532, 7472 Ac Rd.', '11871515', NULL, 50),
(87, 'Ap #815-1193 Purus, Road', '11598738', NULL, 30),
(88, '1086 Libero. Ave', '11658697', NULL, 32),
(89, '847-9963 Urna Road', '11106710', NULL, 5),
(90, '7068 Montes, Av.', '11001606', NULL, 9),
(91, '221-3267 Nam Street', '11421595', NULL, 68),
(92, 'P.O. Box 618, 5252 Auctor Avenue', '11398709', NULL, 13),
(93, '801-5465 Montes, Road', '11200939', NULL, 58),
(94, '519-8748 Dui. Rd.', '11812088', NULL, 12),
(95, 'Ap #358-3340 Sed Av.', '11042990', NULL, 2),
(96, 'P.O. Box 306, 1292 Phasellus Street', '11877740', NULL, 9),
(97, '2975 Fermentum Ave', '11539956', NULL, 41),
(98, '136-1704 Ipsum Av.', '11992556', NULL, 21),
(99, 'Ap #715-5175 Venenatis Av.', '11967884', NULL, 47),
(100, '753-2628 Donec Road', '11523765', NULL, 96);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_grupo_passeio`
--

CREATE TABLE `tb_grupo_passeio` (
  `cd_passeio` int(11) NOT NULL,
  `cd_cliente` int(11) NOT NULL,
  `cd_pet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_login`
--

CREATE TABLE `tb_login` (
  `cd_login` int(11) NOT NULL,
  `cd_email` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cd_senha` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_login`
--

INSERT INTO `tb_login` (`cd_login`, `cd_email`, `cd_senha`) VALUES
(1, 'nisi.Mauris@Pellentesque.com', '7ecd26d99f660d7bbae6c0995b7a2c04'),
(2, 'rutrum@MaurisnullaInteger.com', '89f56109574f87b9d5803a5a7f90486d'),
(3, 'felis.ullamcorper.viverra@liberoProinsed.org', 'b17f3266322ac86a5796618dafe6f6f6'),
(4, 'eget.venenatis@Nullaeuneque.co.uk', '8ad8b18c72ca1d937a977b5f3c1d1087'),
(5, 'neque.venenatis.lacus@euismod.ca', '45ebe82807a11c5caa1a6bbce2f4c71f'),
(6, 'imperdiet.ornare@nuncinterdumfeugiat.com', '9ceb4cbb34c9348b95bebc273a132f3f'),
(7, 'condimentum.eget@a.edu', '61d5d91683c7e86f72b6e8e5e4d91401'),
(8, 'odio.Etiam.ligula@ornaretortor.org', '6a5834415eefe641a588a3e7abbbb765'),
(9, 'nulla@in.ca', '434d26c6844c3bba7b3905fe7bd97bf9'),
(10, 'sed@ametrisus.com', 'c5bb2d9a03c870fa43b4b9bce14234d6'),
(11, 'eleifend.egestas@ante.co.uk', '607001dded3cb7f2b120c9737f02d7cc'),
(12, 'viverra.Maecenas@Duis.net', '2306a363d8db4d828b077cf831e82471'),
(13, 'neque@litoratorquentper.com', 'ff9ed78d57ccd11ab75ce7c8967ff0ea'),
(14, 'lorem@quamCurabitur.co.uk', 'b92c485fd9afdb35e4166108356fe96f'),
(15, 'tempor@variusultrices.com', '665ca38615720e05d427fdd08e1ada2f'),
(16, 'Phasellus.vitae.mauris@nullaIn.ca', '666613c9b068b0b10b6c052ffef4af34'),
(17, 'justo@Suspendissealiquetmolestie.org', '233c107662549e8de9868d0b88b12d37'),
(18, 'molestie.orci.tincidunt@perinceptos.ca', '02a26e063a87557099ffdb11728178c0'),
(19, 'scelerisque.mollis.Phasellus@facilisis.edu', '51d4d5a0b58edc3e1b6980c66a3c6590'),
(20, 'arthur.costa32@etec.sp.gov.br', '81dc9bdb52d04dc20036dbd8313ed055'),
(21, 'Curabitur@eleifendnon.co.uk', 'cddc093258c8cd7d80f6841a5ce31593'),
(22, 'libero.et@Infaucibus.co.uk', 'abb76edf4c8e505c707480b6a0736845'),
(23, 'magna.Suspendisse@ac.co.uk', '9a542566b6928398ba2a87390d9d895b'),
(24, 'gravida.nunc.sed@eratvolutpatNulla.net', '24910afe40cafc14efdd736fd6aba20c'),
(25, 'Donec.consectetuer.mauris@sagittis.ca', '7fb952563be84697c8d0891b2fd5b274'),
(26, 'ridiculus@ut.edu', '96ae86051eafb5df47fe4c5a4b9f465b'),
(27, 'Cras.convallis@Intincidunt.org', 'aef08e1aaf821b2d46814c3d377d86f7'),
(28, 'molestie@ligula.org', 'e37cc5e386892466bffccc464a4a45c2'),
(29, 'pede@lectusantedictum.co.uk', '0cd65ffc3abaefa3392a71ebca9df8df'),
(30, 'volutpat@Praesent.com', '1193795eb27a8a0d094bf0defc183560'),
(31, 'Quisque.imperdiet.erat@Phasellusfermentum.org', '0feb7694cb7fcded6ebd9774bb7490d5'),
(32, 'est@nibhenim.edu', '1b8101b4135064f9ccd55e1d632dc27e'),
(33, 'est.mauris.rhoncus@turpisIncondimentum.org', '9f1dff5c7b08eaa994b39b76b3d4af84'),
(34, 'fringilla.est@sitametlorem.org', 'f206f6617b33e3aecc6a66b48ba9bd5d'),
(35, 'eget.magna@etrutrumeu.org', '16bf94e165c1f9032e64d97b59c77c2b'),
(36, 'ac@pedenec.org', '4fce36c6a7a18a043e9a0e2fe8c9bf2c'),
(37, 'ante@ametconsectetueradipiscing.com', '073f61ed0d145e9cf74c2adf3cace885'),
(38, 'eu@elementumduiquis.net', '6c72c512a3e6bcf7bbf4307483723e00'),
(39, 'est.mollis@Etiambibendum.org', '165f4ea616d8360cff2c97bfdbef638f'),
(40, 'Aliquam.rutrum@dapibusligula.ca', '9162a488a0d27f257ee172b3ef7e4215'),
(41, 'quam.Curabitur@vel.edu', 'd56f2b62c1bfdf636a72528277425d00'),
(42, 'ipsum.leo.elementum@semmolestie.edu', 'a1ade07bdc5fd11fe181205649d8d84e'),
(43, 'et.rutrum@pharetra.org', '61ebff2a3774b82559be4d0bd6717fb6'),
(44, 'amet.massa@atpedeCras.edu', '36bb7f1f4ea3cf7a0f03ef86a682166d'),
(45, 'imperdiet.ullamcorper.Duis@ornareplaceratorci.edu', '76b93a1e9e30cec6e688eb66a5b8d43e'),
(46, 'sodales@sapiengravidanon.edu', 'd76dcb3a0b3e7676ee1ca5f0d2ea5894'),
(47, 'placerat.Cras.dictum@enim.com', '0bc302add7d3835e44680664839fabee'),
(48, 'molestie@volutpatNulladignissim.ca', '554226305d5450ed7241f409a0e20d1d'),
(49, 'In.lorem@sapienmolestie.ca', '0e7a5108b7334371114958d588a16300'),
(50, 'mattis.Integer.eu@PraesentluctusCurabitur.ca', '2a21f449b54fff8e9356dfb350be583f'),
(51, 'facilisis.facilisis.magna@dictum.net', 'a697225681ffc7cf6ca260704ec1567b'),
(52, 'ullamcorper.Duis@orcisemeget.co.uk', '63d90018f172aa48859b8d49d8916f56'),
(53, 'orci@turpisegestas.co.uk', '94d130eba16dc696d3a408795f0ac7be'),
(54, 'nec.ante@egestasblandit.co.uk', '8f9d7c9b4e475698c1414f408036fc57'),
(55, 'Nulla.interdum.Curabitur@rhoncusNullamvelit.edu', '1b2bd3d6020a2ae604a0f6f3bbb04271'),
(56, 'vehicula.aliquet.libero@egestasSed.net', '21bc34cc6b8c50568f916209836d9dc2'),
(57, 'mus.Proin@dolordapibus.co.uk', '7b9e755199573c8abdb988e7b421d808'),
(58, 'lorem.fringilla.ornare@dolordolortempus.org', '9800e3da87e3503dceb1e9157422ed57'),
(59, 'elit.Nulla@nibh.com', '2f6ed25f12321dc93eb2bb43837decf4'),
(60, 'mauris.blandit.mattis@nequepellentesquemassa.net', 'e6e180c6347679b2e7399fb6cf9df350'),
(61, 'varius@convallisestvitae.org', '3b9656a7abe52f15e3016a499623ba6c'),
(62, 'neque@DonecfringillaDonec.org', 'dcf27e81fc0bbb663c6c7356ef3e96aa'),
(63, 'malesuada.vel@at.net', '5719e5bba40fb834de2fba476c95e9a1'),
(64, 'vulputate@diamDuismi.edu', 'b8da5e6f4f9644a2bd75e7f5291e9c61'),
(65, 'non.massa@eratinconsectetuer.org', '672ffb3615b55774e6a796d79c3c8f1a'),
(66, 'interdum@lorem.co.uk', '62b14efc595d49a3fe91f3b04da17d01'),
(67, 'aliquet@Donecfeugiatmetus.co.uk', 'cbc7480c2d2caf3c018dfcdf6e8b0c70'),
(68, 'neque.In@in.com', '14d75494762dbec6988611cfd327a1db'),
(69, 'arcu.et.pede@euaccumsansed.com', '00fbe3f16c9d801bb9d6eb299c70f0bd'),
(70, 'dolor@molestiepharetranibh.edu', '0139766c1fb71bfd22cacecef70165d6'),
(71, 'pharetra@necurna.com', '774d4f77661a43e4e99cde2a50b22aea'),
(72, 'purus@CrasinterdumNunc.ca', '2f7580e57abaae69d3c1dd292ad0fca5'),
(73, 'vitae.posuere@duinec.org', 'fb24b325bbf7601b34e3808aab12cd8f'),
(74, 'non.dapibus@non.org', 'e62142f65266bc7a340e010d6ba1d936'),
(75, 'a.nunc.In@vestibulumlorem.com', '899d53f28a57573b2db9a83916e9045c'),
(76, 'elementum@Integer.org', 'd52d86bfbb1c0beb738a50497af6e5ea'),
(77, 'Duis@pharetraut.ca', '81563b132b39d707e4835de7a8fbfa0b'),
(78, 'egestas.a@tinciduntorci.co.uk', '23c7b56f67c89cc2755ad5afaa0126c8'),
(79, 'tempor@ac.co.uk', '54948cda745dfafe676f6835532a29bd'),
(80, 'ad@loremegetmollis.ca', '6640e89d28beb640fa10ae4a44d5a62e'),
(81, 'Fusce@sitametdapibus.com', '95a1b0a39f420221f37d1a9037b6e618'),
(82, 'a.dui@sodalesnisimagna.org', '3917366f381e52a5ae7749fa7514ecca'),
(83, 'Sed.nec@vitae.net', '77a8f5ab87f77eb86a93c3e038eef212'),
(84, 'dictum.eu.placerat@sem.com', '1ea8b6c263398110d2565036d4d8b906'),
(85, 'erat.volutpat.Nulla@in.org', '70ea005c8a433cd1c23318d97ca4bced'),
(86, 'non@amet.net', '19de1f5364b859801d81dff64b38d4c8'),
(87, 'laoreet.lectus@ipsumprimisin.com', '6c58db2faaa65ce2610ce8127a3fbef3'),
(88, 'nunc@tristique.com', '342923c32e75759831c546829db86980'),
(89, 'felis.adipiscing.fringilla@tempusscelerisquelorem.co.uk', '2d1c4a01390517f01c565c146e884aaf'),
(90, 'faucibus.orci.luctus@mollisDuis.net', 'a2a204c74946b53a74ce58ea4481c822'),
(91, 'orci.consectetuer.euismod@justoPraesent.net', '47153e31a9414cdeb33fc4f8344a787d'),
(92, 'ridiculus.mus.Proin@tellusnon.com', '001832909eba695496950df3fc35f5ef'),
(93, 'id.mollis@convallis.edu', 'adbd2367c8989f00c852daf09f0ed012'),
(94, 'parturient@turpisNullaaliquet.edu', 'df2d90b6004316eb8959e1b24daf5379'),
(95, 'libero.et@loremtristique.net', 'd1a751830c66aebdf654c564f5cd8cce'),
(96, 'Vivamus@Duisac.org', '1b111a9bba4d6f50250ea9e9dabe7144'),
(97, 'gravida@Donecdignissimmagna.com', 'a4e0ccb864094d59c635f9aa0e0b07d5'),
(98, 'amet.consectetuer.adipiscing@interdum.com', '62102630a1caf964b10b17efad534add'),
(99, 'quis.accumsan.convallis@velfaucibusid.edu', '71d48bb2a40ccfc1f6df9dd3ffeb8113'),
(100, 'sapien.imperdiet.ornare@nislelementumpurus.org', '826cf4d3488c93589d43f75b9e49be76'),
(101, 'atabon@gmail.com', 'f3b2cb3a442a9131b75898b7aaf4d4dc'),
(102, 'b@b.com', '698dc19d489c4e4db73e28a713eab07b'),
(103, 'algumemail@live.com', '0c7d2830d586c7a2946b484e68eb2754'),
(104, 'alaagumemail@live.com', '0c7d2830d586c7a2946b484e68eb2754');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_nivel`
--

CREATE TABLE `tb_nivel` (
  `cd_nivel` int(11) NOT NULL,
  `ds_nivel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_nivel`
--

INSERT INTO `tb_nivel` (`cd_nivel`, `ds_nivel`) VALUES
(1, 'Passeador Iniciante'),
(2, 'Passeador Ativo'),
(3, 'Passeador Experiente'),
(4, 'Passeador Sênior'),
(5, 'Passeador Alpha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_passeador`
--

CREATE TABLE `tb_passeador` (
  `cd_passeador` int(11) NOT NULL,
  `cd_pessoa` int(11) DEFAULT NULL,
  `cd_nivel` int(11) DEFAULT NULL,
  `qt_viagens` int(11) DEFAULT NULL,
  `cd_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_passeador`
--

INSERT INTO `tb_passeador` (`cd_passeador`, `cd_pessoa`, `cd_nivel`, `qt_viagens`, `cd_login`) VALUES
(1, 21, 2, 180, 21),
(2, 22, 5, 66, 22),
(3, 23, 3, 176, 23),
(4, 24, 1, 172, 24),
(5, 25, 4, 142, 25),
(6, 26, 2, 77, 26),
(7, 27, 5, 176, 27),
(8, 28, 4, 116, 28),
(9, 29, 2, 164, 29),
(10, 30, 1, 35, 30),
(11, 31, 3, 151, 31),
(12, 32, 1, 46, 32),
(13, 33, 2, 50, 33),
(14, 34, 1, 37, 34),
(15, 35, 4, 126, 35),
(16, 36, 2, 225, 36),
(17, 37, 5, 224, 37),
(18, 38, 3, 25, 38),
(19, 39, 3, 163, 39),
(20, 40, 3, 10, 40),
(21, 41, 1, 184, 41),
(22, 42, 5, 203, 42),
(23, 43, 4, 91, 43),
(24, 44, 5, 86, 44),
(25, 45, 5, 217, 45),
(26, 46, 3, 157, 46),
(27, 47, 3, 144, 47),
(28, 48, 4, 49, 48),
(29, 49, 3, 60, 49),
(30, 50, 4, 135, 50),
(31, 51, 4, 164, 51),
(32, 52, 2, 121, 52),
(33, 53, 1, 1, 53),
(34, 54, 1, 215, 54),
(35, 55, 5, 64, 55),
(36, 56, 5, 163, 56),
(37, 57, 1, 140, 57),
(38, 58, 5, 49, 58),
(39, 59, 1, 246, 59),
(40, 60, 5, 30, 60);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_passeio`
--

CREATE TABLE `tb_passeio` (
  `cd_passeio` int(11) NOT NULL,
  `cd_passeador` int(11) DEFAULT NULL,
  `ds_trajeto` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_permissao`
--

CREATE TABLE `tb_permissao` (
  `cd_permissao` int(11) NOT NULL,
  `ds_permissao` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_permissao`
--

INSERT INTO `tb_permissao` (`cd_permissao`, `ds_permissao`) VALUES
(1, 'PERMISSÃO TOTAL'),
(2, 'ADICIONAR CLIENTE'),
(3, 'ALTERAR CLIENTE'),
(4, 'BUSCAR CLIENTE'),
(5, 'ADICIONAR PASSEADOR'),
(6, 'ALTERAR PASSEADOR'),
(7, 'BUSCAR PASSEADOR'),
(8, 'ADICIONAR PET'),
(9, 'ALTERAR PET'),
(10, 'BUSCAR PET'),
(11, 'ADICIONAR ADMINISTRADOR'),
(12, 'ADICIONAR PERMISSÃO'),
(13, 'ALTERAR PERMISSÃO'),
(14, 'GERENCIAR PERMISSÃO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pessoa`
--

CREATE TABLE `tb_pessoa` (
  `cd_pessoa` int(11) NOT NULL,
  `cd_cpf` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cd_rg` char(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nm_pessoa` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_pessoa`
--

INSERT INTO `tb_pessoa` (`cd_pessoa`, `cd_cpf`, `cd_rg`, `nm_pessoa`, `dt_nascimento`) VALUES
(16, '50197256491', '58135945', 'Drew', NULL),
(17, '50126288674', '58508012', 'Lavinia', NULL),
(18, '50196788311', '58495306', 'Quintessa', NULL),
(19, '50144475844', '58525984', 'Cruz', NULL),
(20, '50199365881', '581352580', 'ARTHUR HENRIQUE CORREA COSTA', '2002-07-06'),
(21, '50172601501', '58088268', 'Basil', NULL),
(22, '50116306435', '58272767', 'Mufutau', NULL),
(23, '50152063394', '58636805', 'Elizabeth', NULL),
(24, '50113792537', '58324913', 'Fuller', NULL),
(25, '50135454812', '58164507', 'Rhona', NULL),
(26, '50124319218', '58888064', 'Zeph', NULL),
(27, '50102756689', '58200583', 'Daniel', NULL),
(28, '50167795993', '58477297', 'Irene', NULL),
(29, '50118698988', '58718194', 'Colleen', NULL),
(30, '50108803085', '58839971', 'Sasha', NULL),
(31, '50170288801', '58762989', 'Leroy', NULL),
(32, '50173877799', '58084183', 'Kiayada', NULL),
(33, '50119379953', '58066126', 'Wallace', NULL),
(34, '50139307525', '58561667', 'Geoffrey', NULL),
(35, '50109899447', '58828316', 'Owen', NULL),
(36, '50187178995', '58645990', 'Vance', NULL),
(37, '50176627171', '58815761', 'Marshall', NULL),
(38, '50114121963', '58294883', 'Chanda', NULL),
(39, '50180722276', '58170424', 'Nash', NULL),
(40, '50132008862', '58749114', 'Elvis', NULL),
(41, '50149488136', '58935736', 'Branden', NULL),
(42, '50169632409', '58171777', 'Len', NULL),
(43, '50190600465', '58010550', 'Quinn', NULL),
(44, '50165054539', '58366174', 'Isaiah', NULL),
(45, '50183149947', '58017350', 'Ferris', NULL),
(46, '50123789002', '58755153', 'Quinn', NULL),
(47, '50121496431', '58242651', 'Alec', NULL),
(48, '50175333110', '58818584', 'Candace', NULL),
(49, '50194471685', '58948528', 'Avram', NULL),
(50, '50128173076', '58109644', 'Justin', NULL),
(51, '50128581762', '58706890', 'Octavia', NULL),
(52, '50190506331', '58319141', 'Lucius', NULL),
(53, '50166833086', '58869485', 'Branden', NULL),
(54, '50195941544', '58998927', 'Brett', NULL),
(55, '50102260402', '58641226', 'Demetrius', NULL),
(56, '50158390825', '58909967', 'Ava', NULL),
(57, '50173534236', '58178004', 'Rajah', NULL),
(58, '50123957533', '58901405', 'Sean', NULL),
(59, '50151984761', '58954111', 'Thomas', NULL),
(60, '50182276549', '58975483', 'Omar', NULL),
(61, '50138286184', '58406460', 'Ezra', NULL),
(62, '50139875952', '58266226', 'Nomlanga', NULL),
(63, '50150810788', '58466720', 'Bradley', NULL),
(64, '50181347964', '58604018', 'Abraham', NULL),
(65, '50182607908', '58670098', 'Jordan', NULL),
(66, '50145016927', '58079975', 'Nomlanga', NULL),
(67, '50131880446', '58060617', 'Pamela', NULL),
(68, '50167089340', '58148772', 'Tobias', NULL),
(69, '50130031830', '58688579', 'Paki', NULL),
(70, '50165390473', '58922307', 'Dahlia', NULL),
(71, '50145003622', '58808233', 'Noelle', NULL),
(72, '50104950422', '58632530', 'Ivan', NULL),
(73, '50143174572', '58520647', 'Valentine', NULL),
(74, '50183595971', '58971008', 'Stephanie', NULL),
(75, '50175652855', '58350469', 'Alden', NULL),
(76, '50176666548', '58104709', 'Bradley', NULL),
(77, '50169730395', '58011621', 'Shay', NULL),
(78, '50125030094', '58929464', 'Noelle', NULL),
(79, '50109603590', '58824781', 'Desirae', NULL),
(80, '50149377099', '58094168', 'Amena', NULL),
(81, '50182517133', '58714657', 'Shana', NULL),
(82, '50159927872', '58298984', 'Carissa', NULL),
(83, '50132257399', '58735067', 'Savannah', NULL),
(84, '50124268315', '58173574', 'Aimee', NULL),
(85, '50150273531', '58862244', 'Aquila', NULL),
(86, '50120327944', '58534416', 'Emmanuel', NULL),
(87, '50135656278', '58550285', 'Kerry', NULL),
(88, '50188950192', '58837069', 'Reed', NULL),
(89, '50131769705', '58107092', 'Breanna', NULL),
(90, '50179172603', '58188294', 'Quentin', NULL),
(91, '50114421200', '58741117', 'Shannon', NULL),
(92, '50194616018', '58512844', 'Griffin', NULL),
(93, '50135361516', '58533408', 'Fay', NULL),
(94, '50169277363', '58105275', 'Heather', NULL),
(95, '50176724282', '58319916', 'Grady', NULL),
(96, '50119527313', '58266392', 'Giselle', NULL),
(97, '50153276238', '58890570', 'Nevada', NULL),
(98, '50162922325', '58212190', 'Gay', NULL),
(99, '50195193403', '58352017', 'Hanae', NULL),
(100, '50107034130', '58645782', 'Yvette', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pet`
--

CREATE TABLE `tb_pet` (
  `cd_pet` int(11) NOT NULL,
  `nm_pet` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cd_animal` int(11) DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_pet`
--

INSERT INTO `tb_pet` (`cd_pet`, `nm_pet`, `cd_animal`, `dt_nascimento`) VALUES
(16, 'Frances', 31, '2016-12-11'),
(17, 'Ethan', 30, '2018-02-14'),
(18, 'Hyatt', 29, '2017-05-12'),
(19, 'Gregory', 28, '2018-05-06'),
(20, 'Berk', 27, '2015-09-22'),
(21, 'Hu', 26, '2018-01-13'),
(22, 'Kareem', 25, '2018-08-01'),
(23, 'Charles', 24, '2017-12-30'),
(24, 'Mallory', 23, '2017-06-04'),
(25, 'Dillon', 22, '2018-06-15'),
(26, 'Tanisha', 21, '2018-05-24'),
(27, 'Neve', 20, '2016-05-18'),
(28, 'Daniel', 19, '2017-08-28'),
(29, 'Lawrence', 18, '2017-09-17'),
(30, 'Kenyon', 17, '2017-10-04'),
(31, 'Hedy', 16, '2017-05-02'),
(32, 'Wyatt', 15, '2015-08-16'),
(33, 'Suki', 14, '2018-07-12'),
(34, 'Linus', 13, '2017-05-03'),
(35, 'Matthew', 12, '2016-04-02'),
(36, 'Morgan', 11, '2018-04-15'),
(37, 'Josephine', 10, '2016-03-13'),
(38, 'Jordan', 9, '2017-02-27'),
(39, 'Buckminster', 8, '2017-07-01'),
(40, 'Iris', 7, '2017-06-27'),
(41, 'Sopoline', 6, '2018-03-06'),
(42, 'Amal', 5, '2017-08-16'),
(43, 'Vivien', 4, '2017-06-07'),
(44, 'Veda', 3, '2017-12-31'),
(45, 'Ria', 2, '2018-07-04'),
(46, 'Jack', 1, '2017-10-29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_porte`
--

CREATE TABLE `tb_porte` (
  `cd_porte` int(11) NOT NULL,
  `ds_porte` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_porte`
--

INSERT INTO `tb_porte` (`cd_porte`, `ds_porte`) VALUES
(1, 'Mini'),
(2, 'Pequeno'),
(3, 'Médio'),
(4, 'Grande'),
(5, 'Extra Grande');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_situacao`
--

CREATE TABLE `tb_situacao` (
  `cd_situacao` int(11) NOT NULL,
  `ds_sitaacao` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_sos`
--

CREATE TABLE `tb_sos` (
  `cd_sos` int(11) NOT NULL,
  `cd_passeio` int(11) DEFAULT NULL,
  `cd_pet` int(11) DEFAULT NULL,
  `cd_cliente` int(11) DEFAULT NULL,
  `dt_sos` datetime DEFAULT NULL,
  `ds_sos` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ds_localizacao` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_telefone`
--

CREATE TABLE `tb_telefone` (
  `cd_telefone` int(11) NOT NULL,
  `ds_telefone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cd_tipo_telefone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_telefone`
--

INSERT INTO `tb_telefone` (`cd_telefone`, `ds_telefone`, `cd_tipo_telefone`) VALUES
(1, '13331867539', 4),
(2, '13331613403', 3),
(3, '13330665744', 2),
(4, '13331280234', 2),
(5, '13333832463', 1),
(6, '13332856532', 3),
(7, '13332494945', 1),
(8, '13333430681', 4),
(9, '13333527894', 3),
(10, '13330406363', 1),
(11, '13333871895', 2),
(12, '13332316961', 3),
(13, '13330793756', 1),
(14, '13330462678', 2),
(15, '13330868598', 4),
(16, '13333012713', 1),
(17, '13333747556', 3),
(18, '13332259063', 2),
(19, '13330996014', 2),
(20, '13330236871', 3),
(21, '13333896031', 2),
(22, '13333890361', 2),
(23, '13333917378', 2),
(24, '13330571249', 2),
(25, '13330506165', 4),
(26, '13330479186', 1),
(27, '13331724487', 1),
(28, '13331411379', 2),
(29, '13333856923', 1),
(30, '13331048893', 3),
(31, '13331547194', 3),
(32, '13331341588', 2),
(33, '13331286146', 4),
(34, '13333664072', 2),
(35, '13332081124', 3),
(36, '13330920025', 2),
(37, '13332262506', 3),
(38, '13330627519', 3),
(39, '13333225694', 3),
(40, '13330658935', 2),
(41, '13333176635', 4),
(42, '13333266410', 2),
(43, '13333624286', 2),
(44, '13330563191', 1),
(45, '13330205678', 1),
(46, '13332970916', 2),
(47, '13332101234', 1),
(48, '13333702129', 3),
(49, '13333617891', 2),
(50, '13332307603', 3),
(51, '13330257376', 1),
(52, '13332108037', 3),
(53, '13331198452', 3),
(54, '13333223681', 3),
(55, '13330775332', 3),
(56, '13333524879', 2),
(57, '13333171047', 1),
(58, '13330307455', 4),
(59, '13331862915', 1),
(60, '13331867037', 1),
(61, '13332460140', 3),
(62, '13333706079', 4),
(63, '13330005773', 2),
(64, '13332493889', 3),
(65, '13332499078', 1),
(66, '13333128644', 1),
(67, '13330821935', 4),
(68, '13330857113', 1),
(69, '13330618007', 2),
(70, '13331152186', 1),
(71, '13332060459', 2),
(72, '13332217712', 4),
(73, '13330078068', 1),
(74, '13330372971', 1),
(75, '13333345112', 3),
(76, '13332532577', 2),
(77, '13332080219', 3),
(78, '13331706256', 1),
(79, '13330442420', 3),
(80, '13331285197', 4),
(81, '13331925441', 4),
(82, '13333656261', 3),
(83, '13332868280', 2),
(84, '13332303305', 2),
(85, '13330814270', 1),
(86, '13333194798', 3),
(87, '13331557828', 4),
(88, '13331033678', 3),
(89, '13333711510', 1),
(90, '13333064472', 2),
(91, '13330875560', 2),
(92, '13333626371', 3),
(93, '13333892838', 1),
(94, '13332777187', 2),
(95, '13332547371', 1),
(96, '13332315128', 1),
(97, '13330195823', 4),
(98, '13331451295', 4),
(99, '13333247838', 2),
(100, '13333004918', 3),
(101, '13333452540', 4),
(102, '13333974281', 3),
(103, '13330806663', 1),
(104, '13330385221', 1),
(105, '13332836094', 4),
(106, '13333048093', 2),
(107, '13330243151', 4),
(108, '13332312681', 3),
(109, '13330102820', 3),
(110, '13331109102', 3),
(111, '13331850547', 3),
(112, '13330228823', 4),
(113, '13332488115', 1),
(114, '13332839022', 2),
(115, '13332863932', 3),
(116, '13333127843', 4),
(117, '13333251941', 4),
(118, '13332460880', 4),
(119, '13333798803', 3),
(120, '13331958286', 2),
(121, '13331355169', 3),
(122, '13330794022', 4),
(123, '13333196268', 3),
(124, '13330652098', 4),
(125, '13330443120', 1),
(126, '13332610040', 3),
(127, '13330609776', 2),
(128, '13332256118', 1),
(129, '13333686628', 4),
(130, '13331617685', 1),
(131, '13332366606', 1),
(132, '13331633443', 4),
(133, '13331958549', 3),
(134, '13330893347', 2),
(135, '13330057339', 1),
(136, '13332627754', 1),
(137, '13330886938', 2),
(138, '13333869015', 1),
(139, '13332501801', 3),
(140, '13332528451', 1),
(141, '13332520099', 2),
(142, '13331316929', 2),
(143, '13332188067', 2),
(144, '13332636551', 1),
(145, '13333205320', 1),
(146, '13332315215', 2),
(147, '13333776828', 4),
(148, '13331610795', 3),
(149, '13332908146', 3),
(150, '13330955957', 2),
(151, '13331718855', 4),
(152, '13331887703', 1),
(153, '13333696006', 3),
(154, '13332563092', 1),
(155, '13331929193', 2),
(156, '13332187178', 4),
(157, '13331697860', 3),
(158, '13331814420', 4),
(159, '13330870508', 4),
(160, '13331073316', 4),
(161, '13332423682', 1),
(162, '13331132109', 4),
(163, '13332966293', 3),
(164, '13331150585', 3),
(165, '13330322901', 1),
(166, '13333315647', 4),
(167, '13333987819', 4),
(168, '13331533262', 4),
(169, '13333235898', 1),
(170, '13331765279', 1),
(171, '13331180287', 2),
(172, '13332064910', 3),
(173, '13333690984', 4),
(174, '13331942704', 2),
(175, '13333954264', 4),
(176, '13331257941', 1),
(177, '13333599931', 2),
(178, '13331419567', 3),
(179, '13331364091', 3),
(180, '13330620962', 2),
(181, '13331403082', 1),
(182, '13333823076', 3),
(183, '13332999491', 2),
(184, '13331072963', 1),
(185, '13330946918', 3),
(186, '13330775265', 1),
(187, '13330642973', 1),
(188, '13331289074', 3),
(189, '13331113153', 2),
(190, '13331072547', 3),
(191, '13332627692', 1),
(192, '13332121159', 3),
(193, '13330185145', 4),
(194, '13332343270', 1),
(195, '13332968170', 1),
(196, '13333840454', 1),
(197, '13330123869', 4),
(198, '13331632297', 1),
(199, '13330116961', 2),
(200, '13331639639', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipo_animal`
--

CREATE TABLE `tb_tipo_animal` (
  `cd_tipo_animal` int(11) NOT NULL,
  `cd_porte` int(11) DEFAULT NULL,
  `ds_tipo_animal` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_tipo_animal`
--

INSERT INTO `tb_tipo_animal` (`cd_tipo_animal`, `cd_porte`, `ds_tipo_animal`) VALUES
(1, 5, 'Akita'),
(2, 2, 'Basset hound'),
(3, 5, 'Beagle'),
(4, 3, 'Bichon frisé'),
(5, 5, 'Boiadeiro australiano '),
(6, 1, 'Border collie '),
(7, 4, 'Boston terrier '),
(8, 3, 'Boxer'),
(9, 4, 'Buldogue francês'),
(10, 3, 'Buldogue inglês'),
(11, 3, 'Bull terrier'),
(12, 1, 'Cane corso'),
(13, 1, 'Cavalier king charles spaniel'),
(14, 4, 'Chihuahua'),
(15, 4, 'Chow chow'),
(16, 1, 'Cocker spaniel inglês'),
(17, 5, 'Dachshund'),
(18, 3, 'Dálmata'),
(19, 2, 'Doberman'),
(20, 4, 'Dogo argentino'),
(21, 3, 'Dogue alemão'),
(22, 1, 'Fila brasileiro '),
(23, 1, 'Golden retriever'),
(24, 2, 'Husky siberiano'),
(25, 3, 'Jack russell terrier'),
(26, 3, 'Labrador retriever'),
(27, 2, 'Lhasa apso'),
(28, 4, 'Lulu da pomerânia'),
(29, 1, 'Maltês'),
(30, 2, 'Mastiff inglês'),
(31, 3, 'Mastim tibetano'),
(32, 5, 'Pastor alemão'),
(33, 5, 'Pastor australiano'),
(34, 1, 'Pastor de Shetland'),
(35, 4, 'Pequinês'),
(36, 2, 'Pinscher'),
(37, 3, 'Poodle'),
(38, 3, 'Pug'),
(39, 5, 'Rottweiler'),
(40, 4, 'Schnauzer'),
(41, 4, 'Shar-pei'),
(42, 5, 'Shiba'),
(43, 1, 'Shih tzu'),
(44, 5, 'Staffordshire bull terrier'),
(45, 5, 'Weimaraner'),
(46, 3, 'Yorkshire');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipo_denuncia`
--

CREATE TABLE `tb_tipo_denuncia` (
  `cd_tipo_denuncia` int(11) NOT NULL,
  `ds_tipo_denuncia` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipo_endereco`
--

CREATE TABLE `tb_tipo_endereco` (
  `cd_tipo_endereco` int(11) NOT NULL,
  `ds_tipo_endereco` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_tipo_endereco`
--

INSERT INTO `tb_tipo_endereco` (`cd_tipo_endereco`, `ds_tipo_endereco`) VALUES
(1, 'Residencial'),
(2, 'Trabalho'),
(3, 'Veterinário');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipo_pagamento`
--

CREATE TABLE `tb_tipo_pagamento` (
  `cd_tipo_pagamento` int(11) NOT NULL,
  `ds_tipo_pagamento` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_tipo_pagamento`
--

INSERT INTO `tb_tipo_pagamento` (`cd_tipo_pagamento`, `ds_tipo_pagamento`) VALUES
(1, 'Dinheiro'),
(2, 'Cartão Crédito [ONLINE]'),
(3, 'Cartão Crédito [PASSEADOR]'),
(4, 'Cartão Débito [ONLINE]'),
(5, 'Cartão Débito [PASSEADOR]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipo_telefone`
--

CREATE TABLE `tb_tipo_telefone` (
  `cd_tipo_telefone` int(11) NOT NULL,
  `ds_tipo_telefone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_tipo_telefone`
--

INSERT INTO `tb_tipo_telefone` (`cd_tipo_telefone`, `ds_tipo_telefone`) VALUES
(1, 'Residencial'),
(2, 'Trabalho'),
(3, 'Veterinário'),
(4, 'Celular');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_uf`
--

CREATE TABLE `tb_uf` (
  `sg_uf` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ds_uf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_uf`
--

INSERT INTO `tb_uf` (`sg_uf`, `ds_uf`) VALUES
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador_permissao`
--
ALTER TABLE `administrador_permissao`
  ADD PRIMARY KEY (`cd_permissao`,`cd_administrador`),
  ADD KEY `pk_permissao_administrador` (`cd_administrador`);

--
-- Indexes for table `cliente_pet`
--
ALTER TABLE `cliente_pet`
  ADD PRIMARY KEY (`cd_cliente`,`cd_pet`),
  ADD KEY `fk_cliente_pet` (`cd_pet`);

--
-- Indexes for table `pessoa_endereco`
--
ALTER TABLE `pessoa_endereco`
  ADD PRIMARY KEY (`cd_pessoa`,`cd_endereco`),
  ADD KEY `pk_pessoa_endereco` (`cd_endereco`),
  ADD KEY `pk_pessoa_tipo_endereco` (`cd_tipo_endereco`);

--
-- Indexes for table `pessoa_telefone`
--
ALTER TABLE `pessoa_telefone`
  ADD PRIMARY KEY (`cd_pessoa`,`cd_telefone`),
  ADD KEY `fk_pessoa_telefone` (`cd_telefone`);

--
-- Indexes for table `tb_administrador`
--
ALTER TABLE `tb_administrador`
  ADD PRIMARY KEY (`cd_administrador`),
  ADD KEY `fk_administrador_login` (`cd_login`),
  ADD KEY `pk_administrador_pessoa` (`cd_pessoa`);

--
-- Indexes for table `tb_animal`
--
ALTER TABLE `tb_animal`
  ADD PRIMARY KEY (`cd_animal`),
  ADD KEY `fk_animal_tipo` (`cd_tipo_animal`);

--
-- Indexes for table `tb_bairro`
--
ALTER TABLE `tb_bairro`
  ADD PRIMARY KEY (`cd_bairro`),
  ADD KEY `fk_bairro_cidade` (`cd_cidade`);

--
-- Indexes for table `tb_cidade`
--
ALTER TABLE `tb_cidade`
  ADD PRIMARY KEY (`cd_cidade`),
  ADD KEY `fk_cidade_uf` (`sg_uf`);

--
-- Indexes for table `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`cd_cliente`),
  ADD KEY `fk_cliente_pessoa` (`cd_pessoa`),
  ADD KEY `fk_cliente_login` (`cd_login`);

--
-- Indexes for table `tb_denuncia`
--
ALTER TABLE `tb_denuncia`
  ADD PRIMARY KEY (`cd_denuncia`),
  ADD KEY `fk_denuncia_passeio` (`cd_passeio`),
  ADD KEY `fk_denuncia_passeador` (`cd_passeador`),
  ADD KEY `fk_denuncia_cliente` (`cd_cliente`),
  ADD KEY `fk_denuncia_pet` (`cd_pet`),
  ADD KEY `fk_denuncia_tipo` (`cd_tipo_denuncia`);

--
-- Indexes for table `tb_endereco`
--
ALTER TABLE `tb_endereco`
  ADD PRIMARY KEY (`cd_endereco`),
  ADD KEY `fk_endereco_bairro` (`cd_bairro`);

--
-- Indexes for table `tb_grupo_passeio`
--
ALTER TABLE `tb_grupo_passeio`
  ADD PRIMARY KEY (`cd_passeio`,`cd_cliente`,`cd_pet`),
  ADD KEY `fk_grupo_cliente` (`cd_cliente`),
  ADD KEY `fk_grupo_pet` (`cd_pet`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`cd_login`);

--
-- Indexes for table `tb_nivel`
--
ALTER TABLE `tb_nivel`
  ADD PRIMARY KEY (`cd_nivel`);

--
-- Indexes for table `tb_passeador`
--
ALTER TABLE `tb_passeador`
  ADD PRIMARY KEY (`cd_passeador`),
  ADD KEY `fk_passeador_pessoa` (`cd_pessoa`),
  ADD KEY `fk_passeador_nivel` (`cd_nivel`),
  ADD KEY `fk_passeador_login` (`cd_login`);

--
-- Indexes for table `tb_passeio`
--
ALTER TABLE `tb_passeio`
  ADD PRIMARY KEY (`cd_passeio`),
  ADD KEY `fk_passeio_passeador` (`cd_passeador`);

--
-- Indexes for table `tb_permissao`
--
ALTER TABLE `tb_permissao`
  ADD PRIMARY KEY (`cd_permissao`);

--
-- Indexes for table `tb_pessoa`
--
ALTER TABLE `tb_pessoa`
  ADD PRIMARY KEY (`cd_pessoa`);

--
-- Indexes for table `tb_pet`
--
ALTER TABLE `tb_pet`
  ADD PRIMARY KEY (`cd_pet`),
  ADD KEY `fk_pet_animal` (`cd_animal`);

--
-- Indexes for table `tb_porte`
--
ALTER TABLE `tb_porte`
  ADD PRIMARY KEY (`cd_porte`);

--
-- Indexes for table `tb_situacao`
--
ALTER TABLE `tb_situacao`
  ADD PRIMARY KEY (`cd_situacao`);

--
-- Indexes for table `tb_sos`
--
ALTER TABLE `tb_sos`
  ADD PRIMARY KEY (`cd_sos`),
  ADD KEY `fk_sos_passeio` (`cd_passeio`),
  ADD KEY `fk_sos_pet` (`cd_pet`),
  ADD KEY `fk_sos_cliente` (`cd_cliente`);

--
-- Indexes for table `tb_telefone`
--
ALTER TABLE `tb_telefone`
  ADD PRIMARY KEY (`cd_telefone`),
  ADD KEY `fk_telefone_tipo` (`cd_tipo_telefone`);

--
-- Indexes for table `tb_tipo_animal`
--
ALTER TABLE `tb_tipo_animal`
  ADD PRIMARY KEY (`cd_tipo_animal`),
  ADD KEY `fk_tipo_animal_porte` (`cd_porte`);

--
-- Indexes for table `tb_tipo_denuncia`
--
ALTER TABLE `tb_tipo_denuncia`
  ADD PRIMARY KEY (`cd_tipo_denuncia`);

--
-- Indexes for table `tb_tipo_endereco`
--
ALTER TABLE `tb_tipo_endereco`
  ADD PRIMARY KEY (`cd_tipo_endereco`);

--
-- Indexes for table `tb_tipo_pagamento`
--
ALTER TABLE `tb_tipo_pagamento`
  ADD PRIMARY KEY (`cd_tipo_pagamento`);

--
-- Indexes for table `tb_tipo_telefone`
--
ALTER TABLE `tb_tipo_telefone`
  ADD PRIMARY KEY (`cd_tipo_telefone`);

--
-- Indexes for table `tb_uf`
--
ALTER TABLE `tb_uf`
  ADD PRIMARY KEY (`sg_uf`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_administrador`
--
ALTER TABLE `tb_administrador`
  MODIFY `cd_administrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `cd_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tb_permissao`
--
ALTER TABLE `tb_permissao`
  MODIFY `cd_permissao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_pessoa`
--
ALTER TABLE `tb_pessoa`
  MODIFY `cd_pessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `administrador_permissao`
--
ALTER TABLE `administrador_permissao`
  ADD CONSTRAINT `pk_administrador_permissao` FOREIGN KEY (`cd_permissao`) REFERENCES `tb_permissao` (`cd_permissao`),
  ADD CONSTRAINT `pk_permissao_administrador` FOREIGN KEY (`cd_administrador`) REFERENCES `tb_administrador` (`cd_administrador`);

--
-- Limitadores para a tabela `cliente_pet`
--
ALTER TABLE `cliente_pet`
  ADD CONSTRAINT `fk_cliente_pet` FOREIGN KEY (`cd_pet`) REFERENCES `tb_pet` (`cd_pet`),
  ADD CONSTRAINT `fk_pet_cliente` FOREIGN KEY (`cd_cliente`) REFERENCES `tb_cliente` (`cd_cliente`);

--
-- Limitadores para a tabela `pessoa_endereco`
--
ALTER TABLE `pessoa_endereco`
  ADD CONSTRAINT `pk_endereco_pessoa` FOREIGN KEY (`cd_pessoa`) REFERENCES `tb_pessoa` (`cd_pessoa`),
  ADD CONSTRAINT `pk_pessoa_endereco` FOREIGN KEY (`cd_endereco`) REFERENCES `tb_endereco` (`cd_endereco`),
  ADD CONSTRAINT `pk_pessoa_tipo_endereco` FOREIGN KEY (`cd_tipo_endereco`) REFERENCES `tb_tipo_endereco` (`cd_tipo_endereco`);

--
-- Limitadores para a tabela `pessoa_telefone`
--
ALTER TABLE `pessoa_telefone`
  ADD CONSTRAINT `fk_pessoa_telefone` FOREIGN KEY (`cd_telefone`) REFERENCES `tb_telefone` (`cd_telefone`),
  ADD CONSTRAINT `fk_telefone_pessoa` FOREIGN KEY (`cd_pessoa`) REFERENCES `tb_pessoa` (`cd_pessoa`);

--
-- Limitadores para a tabela `tb_administrador`
--
ALTER TABLE `tb_administrador`
  ADD CONSTRAINT `fk_administrador_login` FOREIGN KEY (`cd_login`) REFERENCES `tb_login` (`cd_login`),
  ADD CONSTRAINT `pk_administrador_pessoa` FOREIGN KEY (`cd_pessoa`) REFERENCES `tb_pessoa` (`cd_pessoa`);

--
-- Limitadores para a tabela `tb_animal`
--
ALTER TABLE `tb_animal`
  ADD CONSTRAINT `fk_animal_tipo` FOREIGN KEY (`cd_tipo_animal`) REFERENCES `tb_tipo_animal` (`cd_tipo_animal`);

--
-- Limitadores para a tabela `tb_bairro`
--
ALTER TABLE `tb_bairro`
  ADD CONSTRAINT `fk_bairro_cidade` FOREIGN KEY (`cd_cidade`) REFERENCES `tb_cidade` (`cd_cidade`);

--
-- Limitadores para a tabela `tb_cidade`
--
ALTER TABLE `tb_cidade`
  ADD CONSTRAINT `fk_cidade_uf` FOREIGN KEY (`sg_uf`) REFERENCES `tb_uf` (`sg_uf`);

--
-- Limitadores para a tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD CONSTRAINT `fk_cliente_login` FOREIGN KEY (`cd_login`) REFERENCES `tb_login` (`cd_login`),
  ADD CONSTRAINT `fk_cliente_pessoa` FOREIGN KEY (`cd_pessoa`) REFERENCES `tb_pessoa` (`cd_pessoa`);

--
-- Limitadores para a tabela `tb_denuncia`
--
ALTER TABLE `tb_denuncia`
  ADD CONSTRAINT `fk_denuncia_cliente` FOREIGN KEY (`cd_cliente`) REFERENCES `tb_cliente` (`cd_cliente`),
  ADD CONSTRAINT `fk_denuncia_passeador` FOREIGN KEY (`cd_passeador`) REFERENCES `tb_passeador` (`cd_passeador`),
  ADD CONSTRAINT `fk_denuncia_passeio` FOREIGN KEY (`cd_passeio`) REFERENCES `tb_passeio` (`cd_passeio`),
  ADD CONSTRAINT `fk_denuncia_pet` FOREIGN KEY (`cd_pet`) REFERENCES `tb_pet` (`cd_pet`),
  ADD CONSTRAINT `fk_denuncia_tipo` FOREIGN KEY (`cd_tipo_denuncia`) REFERENCES `tb_tipo_denuncia` (`cd_tipo_denuncia`);

--
-- Limitadores para a tabela `tb_endereco`
--
ALTER TABLE `tb_endereco`
  ADD CONSTRAINT `fk_endereco_bairro` FOREIGN KEY (`cd_bairro`) REFERENCES `tb_bairro` (`cd_bairro`);

--
-- Limitadores para a tabela `tb_grupo_passeio`
--
ALTER TABLE `tb_grupo_passeio`
  ADD CONSTRAINT `fk_grupo_cliente` FOREIGN KEY (`cd_cliente`) REFERENCES `tb_cliente` (`cd_cliente`),
  ADD CONSTRAINT `fk_grupo_passeio` FOREIGN KEY (`cd_passeio`) REFERENCES `tb_passeio` (`cd_passeio`),
  ADD CONSTRAINT `fk_grupo_pet` FOREIGN KEY (`cd_pet`) REFERENCES `tb_pet` (`cd_pet`);

--
-- Limitadores para a tabela `tb_passeador`
--
ALTER TABLE `tb_passeador`
  ADD CONSTRAINT `fk_passeador_login` FOREIGN KEY (`cd_login`) REFERENCES `tb_login` (`cd_login`),
  ADD CONSTRAINT `fk_passeador_nivel` FOREIGN KEY (`cd_nivel`) REFERENCES `tb_nivel` (`cd_nivel`),
  ADD CONSTRAINT `fk_passeador_pessoa` FOREIGN KEY (`cd_pessoa`) REFERENCES `tb_pessoa` (`cd_pessoa`);

--
-- Limitadores para a tabela `tb_passeio`
--
ALTER TABLE `tb_passeio`
  ADD CONSTRAINT `fk_passeio_passeador` FOREIGN KEY (`cd_passeador`) REFERENCES `tb_passeador` (`cd_passeador`);

--
-- Limitadores para a tabela `tb_pet`
--
ALTER TABLE `tb_pet`
  ADD CONSTRAINT `fk_pet_animal` FOREIGN KEY (`cd_animal`) REFERENCES `tb_animal` (`cd_animal`);

--
-- Limitadores para a tabela `tb_sos`
--
ALTER TABLE `tb_sos`
  ADD CONSTRAINT `fk_sos_cliente` FOREIGN KEY (`cd_cliente`) REFERENCES `tb_cliente` (`cd_cliente`),
  ADD CONSTRAINT `fk_sos_passeio` FOREIGN KEY (`cd_passeio`) REFERENCES `tb_passeio` (`cd_passeio`),
  ADD CONSTRAINT `fk_sos_pet` FOREIGN KEY (`cd_pet`) REFERENCES `tb_pet` (`cd_pet`);

--
-- Limitadores para a tabela `tb_telefone`
--
ALTER TABLE `tb_telefone`
  ADD CONSTRAINT `fk_telefone_tipo` FOREIGN KEY (`cd_tipo_telefone`) REFERENCES `tb_tipo_telefone` (`cd_tipo_telefone`);

--
-- Limitadores para a tabela `tb_tipo_animal`
--
ALTER TABLE `tb_tipo_animal`
  ADD CONSTRAINT `fk_tipo_animal_porte` FOREIGN KEY (`cd_porte`) REFERENCES `tb_porte` (`cd_porte`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
