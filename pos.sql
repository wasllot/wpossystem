-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2019 a las 20:47:38
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Eelctrodomésticos', '2019-01-30 16:56:41'),
(2, 'Computación', '2019-01-30 16:57:23'),
(3, 'Celulares', '2019-01-30 16:57:35'),
(4, 'Accesorios de teléfonos', '2019-01-30 16:57:57'),
(5, 'Televisores', '2019-01-30 17:00:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(13, 'Franco laya', 145422572, 'francoexample@example.com', '(444) 000-1112', 'example street', '1950-05-09', 55, '2019-01-30 16:24:44', '2019-01-30 21:24:44'),
(14, 'Reinaldo Tineo', 1020304, 'reinaldo@example.com', '(000) 000-0000', 'example street', '2011-11-11', 6, '2019-01-30 13:59:08', '2019-01-30 18:59:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(61, 3, '301', 'Iphone X 128GB ', 'vistas/img/productos/301/465.jpg', 12, 500, 2473.51, 18, '2019-04-08 21:52:04'),
(62, 5, '501', 'Samsung QN82Q6FNA 82 Pulgadas Q6FN QLED Smart 4K UHD TV', 'vistas/img/productos/501/232.jpg', 33, 2210, 3743.74, 12, '2019-04-08 21:18:12'),
(63, 3, '302', 'Samsung Galaxy S9 64GB', 'vistas/img/productos/302/118.jpg', 24, 370, 1830.4, 10, '2019-04-08 21:52:04'),
(64, 2, '201', 'CUK Stratos VR Ready Gamer PC', 'vistas/img/productos/201/205.jpg', 14, 1020, 2500, 0, '2019-04-06 17:12:33'),
(65, 1, '101', 'Apple iPad Pro ', 'vistas/img/productos/101/134.png', 29, 575, 1045.44, 21, '2019-04-08 21:24:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(2, 'Administrador', 'admin123', '$2a$07$asxx54ahjppf45sd87a5aunxs9bkpyGmGE/.vekdjFg83yRec789S', 'Administrador', 'vistas/img/usuarios/admin123/324.png', 1, '2019-09-07 20:48:14', '2019-09-08 01:48:14'),
(3, 'Vendedor', 'vendedor123', '$2a$07$asxx54ahjppf45sd87a5au5.7VFyYe8OhcuclH1FmEkVdrpavH75m', 'Vendedor', 'vistas/img/usuarios/vendedor123/215.png', 1, '2019-09-07 20:39:58', '2019-09-08 01:39:58'),
(4, 'Especial', 'especial123', '$2a$07$asxx54ahjppf45sd87a5aucTyim9FHwwbp0taMz3vxUotHFj.BhXa', 'Especial', 'vistas/img/usuarios/especial123/394.png', 1, '2019-09-07 20:40:47', '2019-09-08 01:40:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(37, 10001, 13, 1, '[{\"id\":\"65\",\"descripcion\":\"Apple iPad Pro \",\"cantidad\":\"20\",\"stock\":\"30\",\"precio\":\"798\",\"total\":\"15960\"}]', 1596, 15960, 17556, 'Efectivo', '2019-01-30 18:19:50'),
(38, 10002, 13, 1, '[{\"id\":\"61\",\"descripcion\":\"Iphone X 128GB \",\"cantidad\":\"15\",\"stock\":\"15\",\"precio\":\"700\",\"total\":\"10500\"},{\"id\":\"62\",\"descripcion\":\"Samsung QN82Q6FNA 82 Pulgadas Q6FN QLED Smart 4K UHD TV\",\"cantidad\":\"10\",\"stock\":\"35\",\"precio\":\"3094\",\"total\":\"30940\"}]', 6216, 41440, 47656, 'Efectivo', '2019-01-30 18:20:40'),
(39, 10003, 14, 1, '[{\"id\":\"65\",\"descripcion\":\"Apple iPad Pro \",\"cantidad\":\"1\",\"stock\":\"29\",\"precio\":\"798\",\"total\":\"798\"},{\"id\":\"62\",\"descripcion\":\"Samsung QN82Q6FNA 82 Pulgadas Q6FN QLED Smart 4K UHD TV\",\"cantidad\":\"2\",\"stock\":\"33\",\"precio\":\"3094\",\"total\":\"6188\"},{\"id\":\"61\",\"descripcion\":\"Iphone X 128GB \",\"cantidad\":\"3\",\"stock\":\"12\",\"precio\":\"700\",\"total\":\"2100\"}]', 908.6, 9086, 9994.6, 'TD-01212154541', '2019-01-30 18:59:08'),
(40, 10004, 13, 1, '[{\"id\":\"63\",\"descripcion\":\"Samsung Galaxy S9 64GB\",\"cantidad\":\"10\",\"stock\":\"24\",\"precio\":\"518\",\"total\":\"5180\"}]', 621.6, 5180, 5801.6, 'Efectivo', '2019-01-30 21:24:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
