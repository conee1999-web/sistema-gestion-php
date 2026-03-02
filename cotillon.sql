-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2026 a las 17:17:19
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cotillon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `correo_admin` varchar(50) NOT NULL,
  `nom_admin` varchar(50) NOT NULL,
  `contra_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_agregado` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_pago` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `id_usuario`, `usuario`, `id_producto`, `nombre_producto`, `precio`, `cantidad`, `fecha_agregado`, `id_pago`) VALUES
(1, 0, 'cone', 52, 'Anteojos Led Recargables', '28000.00', 1, '2025-06-02 19:28:20', NULL),
(2, 0, 'cone', 52, 'Anteojos Led Recargables', '28000.00', 1, '2025-06-02 19:31:54', NULL),
(3, 0, 'cone', 51, 'Bengala de Humo ', '30000.00', 1, '2025-06-02 20:08:58', NULL),
(4, 0, 'cone', 52, 'Anteojos Led Recargables', '28000.00', 1, '2025-06-02 20:08:58', NULL),
(5, 0, 'cone', 56, 'Camino De Chispas', '65000.00', 1, '2025-06-02 21:53:59', NULL),
(8, 16, 'cone', 51, 'Bengala de Humo ', '30000.00', 7, '2025-06-03 14:31:16', NULL),
(9, 16, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-06-10 16:01:44', NULL),
(10, 0, 'cone', 55, 'Bengalas Para Tortas', '3900.00', 1, '2025-06-27 00:19:19', 5),
(11, 0, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-06-29 22:06:49', 10),
(12, 0, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-06-30 00:02:18', 12),
(13, 0, 'cone', 51, '', '30000.00', 1, '2025-07-01 20:13:35', 14),
(14, 0, 'cone', 51, '', '30000.00', 1, '2025-07-01 20:27:31', 16),
(15, 0, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-07-01 20:27:31', 16),
(16, 0, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-07-03 23:36:34', 18),
(17, 0, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-07-04 00:48:54', 20),
(18, 0, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-07-04 00:53:55', 22),
(19, 0, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 2, '2025-07-04 01:28:57', 29),
(20, 0, 'cone', 51, 'Bengala de Humo ', '30000.00', 2, '2025-07-04 01:28:57', 29),
(21, 0, 'cone', 54, 'Cañon De Aire Comprimido', '5000.00', 1, '2025-07-04 01:45:47', 31),
(22, 0, 'cone', 55, 'Bengalas Para Tortas', '3900.00', 1, '2025-07-04 01:45:47', 31),
(23, 0, 'cone', 51, '', '30000.00', 1, '2025-07-04 21:45:36', 33),
(24, 0, 'cone', 54, '', '5000.00', 1, '2025-07-04 21:45:36', 33),
(25, 0, 'cone', 56, '', '65000.00', 1, '2025-07-04 21:45:36', 33),
(26, 16, 'cone', 55, 'Bengalas Para Tortas', '3900.00', 1, '2025-07-04 22:10:39', 35),
(27, 16, 'cone', 54, 'Cañon De Aire Comprimido', '5000.00', 1, '2025-07-04 22:10:39', 35),
(28, 16, 'cone', 54, '', '5000.00', 1, '2025-07-06 17:03:41', 38),
(29, 16, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-07-07 20:32:50', 40),
(30, 16, 'cone', 53, '', '110700.00', 1, '2025-07-07 21:04:04', 42),
(31, 16, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 5, '2025-07-08 19:53:38', 44),
(32, 16, 'cone', 55, 'Bengalas Para Tortas', '3900.00', 3, '2025-07-08 20:42:45', 46),
(33, 16, 'cone', 51, 'Bengala de Humo ', '30000.00', 1, '2025-07-09 01:24:44', 48),
(34, 16, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-07-09 14:34:17', 50),
(35, 16, 'cone', 51, 'Bengala de Humo ', '30000.00', 1, '2025-07-09 14:34:17', 50),
(36, 16, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-07-10 21:03:44', 52),
(37, 16, 'cone', 54, 'Cañon De Aire Comprimido', '5000.00', 1, '2025-07-10 21:05:21', 54),
(38, 16, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-07-10 22:09:19', 56),
(39, 16, 'cone', 51, 'Bengala de Humo ', '30000.00', 28, '2025-07-10 22:13:23', 58),
(40, 16, 'cone', 51, 'Bengala de Humo ', '30000.00', 2, '2025-07-10 22:32:33', 60),
(41, 16, 'cone', 53, 'Consola Inalambrica Para Detonar Chispas', '110700.00', 1, '2025-07-10 22:44:00', 62),
(42, 16, 'cone', 51, 'Bengala de Humo ', '30000.00', 2, '2025-07-11 18:11:32', 64);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nom_cliente` varchar(50) NOT NULL,
  `usuario_cliente` varchar(50) NOT NULL,
  `contra_cliente` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nom_cliente`, `usuario_cliente`, `contra_cliente`, `correo`, `nivel`) VALUES
(16, '', 'cone', '42105620', 'conee1999@gmail.com', 2),
(20, 'juan', 'juan', '456', 'cone@gmail.com', 1),
(21, '', 'pepe', '258', 'conexx@gmail.com', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id_detallecarrito` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `precio_total` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `nom_producto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id_detallecarrito`, `id_cliente`, `id_producto`, `cantidad`, `precio`, `precio_total`, `estado`, `nom_producto`) VALUES
(86, 16, 53, 1, 110700, 110700, '', 'Consola Inalambrica Para Detonar Chispas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_pago` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha_pago` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id_pago`, `id_cliente`, `fecha_pago`) VALUES
(13, 16, '2025-07-01 17:13:35'),
(14, 0, '2025-07-01 17:13:35'),
(15, 16, '2025-07-01 17:27:31'),
(16, 0, '2025-07-01 17:27:31'),
(17, 16, '2025-07-03 20:36:34'),
(18, 0, '2025-07-03 20:36:34'),
(19, 16, '2025-07-03 21:48:54'),
(20, 0, '2025-07-03 21:48:54'),
(21, 16, '2025-07-03 21:53:55'),
(22, 0, '2025-07-03 21:53:55'),
(23, 16, '2025-07-03 22:06:58'),
(24, 16, '2025-07-03 22:12:34'),
(25, 16, '2025-07-03 22:13:06'),
(26, 16, '2025-07-03 22:16:54'),
(27, 16, '2025-07-03 22:24:26'),
(28, 16, '2025-07-03 22:28:57'),
(29, 0, '2025-07-03 22:28:57'),
(30, 16, '2025-07-03 22:45:47'),
(31, 0, '2025-07-03 22:45:47'),
(32, 16, '2025-07-04 18:45:36'),
(33, 0, '2025-07-04 18:45:36'),
(34, 16, '2025-07-04 19:10:39'),
(35, 16, '2025-07-04 19:10:39'),
(36, 16, '2025-07-06 14:00:06'),
(37, 16, '2025-07-06 14:03:41'),
(38, 16, '2025-07-06 14:03:41'),
(39, 16, '2025-07-07 17:32:49'),
(40, 16, '2025-07-07 17:32:50'),
(41, 16, '2025-07-07 18:04:04'),
(42, 16, '2025-07-07 18:04:04'),
(43, 16, '2025-07-08 16:53:37'),
(44, 16, '2025-07-08 16:53:38'),
(45, 16, '2025-07-08 17:42:45'),
(46, 16, '2025-07-08 17:42:45'),
(47, 16, '2025-07-08 22:24:43'),
(48, 16, '2025-07-08 22:24:44'),
(49, 16, '2025-07-09 11:34:17'),
(50, 16, '2025-07-09 11:34:17'),
(51, 16, '2025-07-10 18:03:44'),
(52, 16, '2025-07-10 18:03:44'),
(53, 16, '2025-07-10 18:05:21'),
(54, 16, '2025-07-10 18:05:21'),
(55, 16, '2025-07-10 19:09:19'),
(56, 16, '2025-07-10 19:09:19'),
(57, 16, '2025-07-10 19:13:23'),
(58, 16, '2025-07-10 19:13:23'),
(59, 16, '2025-07-10 19:32:33'),
(60, 16, '2025-07-10 19:32:33'),
(61, 16, '2025-07-10 19:44:00'),
(62, 16, '2025-07-10 19:44:00'),
(63, 16, '2025-07-11 15:11:32'),
(64, 16, '2025-07-11 15:11:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `direccion` text NOT NULL,
  `fecha_reserva` timestamp NOT NULL DEFAULT current_timestamp(),
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id_producto` int(11) NOT NULL,
  `nom_producto` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `precio` float(11,0) NOT NULL,
  `imagen` varchar(1000) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `reutilisable` varchar(50) NOT NULL,
  `servicio` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `repo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`id_producto`, `nom_producto`, `marca`, `precio`, `imagen`, `descripcion`, `reutilisable`, `servicio`, `cantidad`, `estado`, `repo`) VALUES
(51, 'Bengala de Humo ', 'Cienfuegos', 30000, 'Bengala de Humo x10.webp', 'Bengala de Humo por 10 u.', 'si', 'no', 1, '', 1),
(53, 'Consola Inalambrica Para Detonar Chispas', 'Cienfuegos', 110700, 'Consola Inalambrica Para Detonar Chispas.webp', 'Consola Inalambrica de 4 Lineas', 'no', 'no', 11, '', 1),
(54, 'Cañon De Aire Comprimido', 'Cienfuegos', 5000, 'Cañon De Aire Comprimido.webp', 'Cañon Lanza Confeti ', 'no', 'no', 5, '', 1),
(55, 'Bengalas Para Tortas', 'Cienfuegos', 3900, 'Bengalas Para Tortas.webp', 'Bengalas para Tortas 4 u. ', 'si', 'no', 0, '', 1),
(56, 'Camino De Chispas', 'Cienfuegos', 65000, 'Caminito De Chispas.jpeg', 'Camino De Chispas', 'si', 'si', 4, '', 1),
(57, 'Ronda De Chispas Frias', 'Cienfuegos', 70000, 'Circulo De chispas.jpeg', 'Ronda De Chispas Frias', 'si', 'si', 6, '', 1),
(58, 'Efectos Para Escenarios', 'Cienfuegos', 60000, 'Chipas Frias Para Esspectaculos.jpeg', 'El precio puede variar según la cantidad de Chispas', 'si', 'si', 5, '', 1),
(59, 'Robot Led Pixel', 'Cienfuegos', 850000, 'Robot Led Pixel.jpeg', 'Robot Led Pixel', 'si', 'si', 1, '', 1),
(60, 'Maquina Lanza Llamas ', 'Gbr', 130000, 'Maquina Lanza LLmas.webp', 'Maquina Lanza LLamas ', 'no', 'si', 1, '', 1),
(61, 'Valentin', 'ghj', 55, '', 'jjj', 'si', 'si', 6, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_ac`
--

CREATE TABLE `stock_ac` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stock_ac`
--

INSERT INTO `stock_ac` (`id`, `id_cliente`, `id_producto`, `cantidad`) VALUES
(0, 16, 53, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id_detallecarrito`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id_detallecarrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
