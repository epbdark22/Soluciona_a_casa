-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-05-2023 a las 16:46:52
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `solucions_a_casa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anunci`
--

CREATE TABLE `anunci` (
  `ID_anunci` int(11) NOT NULL,
  `ID_servei` int(11) NOT NULL,
  `ID_treballador` int(11) NOT NULL,
  `nom_anunci` varchar(256) NOT NULL,
  `descripcio_anunci` varchar(256) NOT NULL,
  `imatges_anunci` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `anunci`
--

INSERT INTO `anunci` (`ID_anunci`, `ID_servei`, `ID_treballador`, `nom_anunci`, `descripcio_anunci`, `imatges_anunci`) VALUES
(2, 2, 4, 'Soc masajista profesional amb experiencia', 'Estic molt format, tots els meus clients estan satisfets', 'img/masajista.jpg'),
(5, 1, 1, 'Pique t\'ajuda amb els endolls i aspiradora', 'Sóc tan bó que quasi em fa por ser tan bó jiji PD: 130iq', 'img/electricista.jpg\r\n'),
(8, 3, 8, 'Entrenador personal a domicili', 'He aconseguit retornar la confiança a més de 100 persones', 'img/Captura de pantalla 2023-03-29 092549.png'),
(12, 2, 13, 'Netejadora a domicili', 'Sóc una persona molt professional i seriosa', 'img/limpiadora.png'),
(19, 3, 12, 'sisinono sisisisisi nonononon', 'sklanfasfklnaf skflns dfs as ,fdasfa.f', 'img/masajista.jpg'),
(21, 2, 22, 'Toni t\'ensenya a progrmar', 'Sóc tan bó que quasi em fapor ser tan bó', 'img/fisio.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactar`
--

CREATE TABLE `contactar` (
  `id_contactar` int(11) NOT NULL,
  `nom_contactar` varchar(30) NOT NULL,
  `correu_contactar` varchar(50) NOT NULL,
  `telefon_contactar` int(20) NOT NULL,
  `asumpte_contactar` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactar`
--

INSERT INTO `contactar` (`id_contactar`, `nom_contactar`, `correu_contactar`, `telefon_contactar`, `asumpte_contactar`) VALUES
(1, 'toni', '', 0, ''),
(2, 'toni', '', 0, ''),
(3, 'matias', 'matias@matias.com', 696969, ' si'),
(4, 'matias', 'matias@matias.com', 696969, ' si'),
(5, 'matias', 'matias@matias.com', 696969, ' si'),
(6, 'Toni', 'toni@gmail.com', 360331, ' hola'),
(7, 'miau', 'miau@miau.com', 31231, 'miauuu'),
(8, 'ygk', 'hgkhbvvj,', 0, 'uykuyfyu\r\n\r\n'),
(9, 'ygk', 'hgkhbvvj,', 0, 'uykuyfyu\r\n\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserves`
--

CREATE TABLE `reserves` (
  `ID_reserva` int(11) NOT NULL,
  `ID_servei` int(11) NOT NULL,
  `ID_treballador` int(11) NOT NULL,
  `ID_usuari` int(11) NOT NULL,
  `nom_treballador` varchar(50) NOT NULL,
  `nom_usuari` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servei`
--

CREATE TABLE `servei` (
  `ID_servei` int(11) NOT NULL,
  `nom_servei` varchar(50) NOT NULL,
  `descripcio_servei` text NOT NULL,
  `img` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servei`
--

INSERT INTO `servei` (`ID_servei`, `nom_servei`, `descripcio_servei`, `img`) VALUES
(1, 'Obra', 'Paleta, reformes, electricistes', 'img/electricista.jpg'),
(2, 'Casa', 'Neteja, Cuina, perruqueria', 'img/limpiadora.png'),
(3, 'Salut', 'Molta salut', 'img/fisio.jpg'),
(4, '+18', 'Serveis per adults', 'img/kate.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `treballadors`
--

CREATE TABLE `treballadors` (
  `ID_treballador` int(11) NOT NULL,
  `nom_treballador` varchar(50) NOT NULL,
  `cognom_treballador` varchar(50) NOT NULL,
  `telefon_treballador` int(50) NOT NULL,
  `mail_treballador` varchar(50) NOT NULL,
  `direccio_treballador` varchar(50) NOT NULL,
  `pwd_treballador` varchar(50) NOT NULL,
  `puntuacio_treballador` int(11) NOT NULL,
  `DNI` varchar(50) NOT NULL,
  `iban` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `treballadors`
--

INSERT INTO `treballadors` (`ID_treballador`, `nom_treballador`, `cognom_treballador`, `telefon_treballador`, `mail_treballador`, `direccio_treballador`, `pwd_treballador`, `puntuacio_treballador`, `DNI`, `iban`) VALUES
(1, 'erik', 'pique', 65876658, 'pique@electricista.com', 'Av del mudo sin lengua homosexual', '1234', 2, '1212121', 'asddasd'),
(4, 'Matias', 'Bañeres', 328923, 'matias@matias.com', 'c//dddjkhbkj', '1234', 5, '222222', 'AD20392390109910019'),
(8, 'Toni ', 'Malaga', 3523252, 'tonimalaga@tonimalaga.com', 'c/sisinonoysi', '1234', 5, '3253252', 'AD340925832503295732593025'),
(9, 'toni', 'malaga', 1234, 'tonimalaga@dwadwa.com', '', '1234', 0, '', ''),
(10, 'Corinne', 'Be', 312321, 'cbendadda@tda.ad', '', '1234', 0, '', ''),
(12, 'Alex', 'Fonte', 999999, 'aramos@tda.ad', '', 'testtest', 0, '', ''),
(13, 'nurilles', 'periaguilles', 696988, 'nurilles@nurilles.gorda', 'tdaa', '1234', 0, '2341431', ''),
(15, 'Ekaterina ', 'Trusova', 376619189, 'katetrusova14@gmail.com', '', 'katetrus', 0, '', ''),
(21, 'Erik', 'Pique', 664773, 'erikpique.b@gmail.com', 'a', 'necx2002', 0, '1', ''),
(22, 'Toni', 'Málaga', 1234, 'miau@miau.com', 'Av gatuna', '1', 0, '123141', ''),
(23, 'aaa', 'a', 22, 'a@a.asas', '121', '111', 0, '213', ''),
(25, 'Toni', 'Malaga', 31321, 'aka@aka.com', 'hoaaa', '1234', 0, '1234567', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuaris`
--

CREATE TABLE `usuaris` (
  `ID_usuari` int(11) NOT NULL,
  `nom_usuari` varchar(50) NOT NULL,
  `cognom_usuari` varchar(25) NOT NULL,
  `telefon_usuari` varchar(25) NOT NULL,
  `mail_usuari` varchar(50) NOT NULL,
  `direccio_usuari` text NOT NULL,
  `pwd_usuari` varchar(20) NOT NULL,
  `punts_de_fidelitat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anunci`
--
ALTER TABLE `anunci`
  ADD PRIMARY KEY (`ID_anunci`),
  ADD KEY `ID_servei` (`ID_servei`,`ID_treballador`),
  ADD KEY `fk_treballador` (`ID_treballador`);

--
-- Indices de la tabla `contactar`
--
ALTER TABLE `contactar`
  ADD PRIMARY KEY (`id_contactar`);

--
-- Indices de la tabla `reserves`
--
ALTER TABLE `reserves`
  ADD PRIMARY KEY (`ID_reserva`),
  ADD KEY `fk_servei` (`ID_servei`),
  ADD KEY `fk_treballador` (`ID_treballador`),
  ADD KEY `fk_usuari` (`ID_usuari`);

--
-- Indices de la tabla `servei`
--
ALTER TABLE `servei`
  ADD PRIMARY KEY (`ID_servei`);

--
-- Indices de la tabla `treballadors`
--
ALTER TABLE `treballadors`
  ADD PRIMARY KEY (`ID_treballador`);

--
-- Indices de la tabla `usuaris`
--
ALTER TABLE `usuaris`
  ADD PRIMARY KEY (`ID_usuari`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anunci`
--
ALTER TABLE `anunci`
  MODIFY `ID_anunci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `contactar`
--
ALTER TABLE `contactar`
  MODIFY `id_contactar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `reserves`
--
ALTER TABLE `reserves`
  MODIFY `ID_reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servei`
--
ALTER TABLE `servei`
  MODIFY `ID_servei` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `treballadors`
--
ALTER TABLE `treballadors`
  MODIFY `ID_treballador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuaris`
--
ALTER TABLE `usuaris`
  MODIFY `ID_usuari` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anunci`
--
ALTER TABLE `anunci`
  ADD CONSTRAINT `fk_servei` FOREIGN KEY (`ID_servei`) REFERENCES `servei` (`ID_servei`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_treballador` FOREIGN KEY (`ID_treballador`) REFERENCES `treballadors` (`ID_treballador`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
