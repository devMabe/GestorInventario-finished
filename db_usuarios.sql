-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-09-2022 a las 16:17:47
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `serial` varchar(120) NOT NULL,
  `modelo` varchar(120) NOT NULL,
  `marca` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `nombre`, `serial`, `modelo`, `marca`) VALUES
(6, 'Camara', 'F37990211', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(7, 'Camara', 'F72918018', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(8, 'Camara', 'F52177762', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(9, 'Camara', 'F52177927', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(10, 'Camara', 'F52178020', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(11, 'Camara', 'F52177832', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(12, 'Camara', 'F72918354', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(14, 'Camara', 'F37990214', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(15, 'Camara', 'F37990164', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(16, 'Camara', 'F37990164', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(17, 'Camara', 'F37990164', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(22, 'Camara', 'F72918365', 'DS-2CE56D0T-IRMF C', 'Turbo 4 HD'),
(23, 'Samsung smart TV', '0DBDHCRRB04257Z', 'QB50R-B', 'Samsung'),
(24, 'Samsung smart TV', '0DBDHCRRB04253M', 'QB50R-B', 'Samsung'),
(25, 'Samsung smart TV', '0DBDHCRRB04265L', 'QB50R-B', 'Samsung'),
(26, 'Biometrico', 'CP9M222160001', 'SpeedFace-V4L', 'ZKTEco'),
(27, 'Biometrico', 'CP9M222160005', 'SpeedFace-V4L', 'ZKTEco'),
(28, 'Biometrico', 'CP9M222160006', 'SpeedFace-V4L', 'ZKTEco'),
(29, 'Biometrico', 'CP9M222160009', 'SpeedFace-V4L', 'ZKTEco'),
(30, 'Biometrico', 'CP9M222160011', 'SpeedFace-V4L', 'ZKTEco'),
(31, 'Biometrico', 'CP9M222160013', 'SpeedFace-V4L', 'ZKTEco'),
(32, 'Biometrico', 'CP9M222160017', 'SpeedFace-V4L', 'ZKTEco'),
(33, 'Biometrico', 'CP9M222160019', 'SpeedFace-V4L', 'ZKTEco'),
(34, 'Biometrico', 'CP9M222160020', 'SpeedFace-V4L', 'ZKTEco'),
(35, 'Biometrico', 'CP9M222160022', 'SpeedFace-V4L', 'ZKTEco'),
(36, 'Biometrico', 'CP9M222160023', 'SpeedFace-V4L', 'ZKTEco'),
(37, 'Biometrico', 'CP9M222160025', 'SpeedFace-V4L', 'ZKTEco'),
(38, 'Biometrico', 'CP9M222160025', 'SpeedFace-V4L', 'ZKTEco'),
(39, 'Biometrico', 'CP9M222160025', 'SpeedFace-V4L', 'ZKTEco'),
(42, 'Fortinet', 'FGT50E3U16040844', 'FG-50E', 'Fortinet'),
(43, 'Fortinet', 'FGT50E3U16040229', 'FG-50E', 'Fortinet'),
(44, 'Fortinet', 'FGT50E3U17025128', 'FG-50E', 'Fortinet'),
(45, 'prueba', 'prureba', 'prueba', 'pasdasdasd'),
(46, 'Ojala', 'Me ', 'MAL', 'Siga dejando'),
(47, 'era una prueba', 'si', 'jeje', 'si lo era');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `correo`, `password`) VALUES
(1, 'danielbelnuz18@gmail.com', 'cfa3049ff1ee286254343131afa8bfd4'),
(2, 'oliveroscamila55@gmail.com', 'bad255cd09e63f5aa212946d4ba24a5c'),
(5, 'redibut123@gmail.com', 'fcb21ddfb81561e23a84ca50784c1296'),
(6, 'dante@dante.com', '202cb962ac59075b964b07152d234b70'),
(7, 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
