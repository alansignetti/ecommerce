-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-10-2021 a las 02:08:52
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Naked'),
(2, 'Sport'),
(3, 'Cross');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(62);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 2, 2, 5),
(2, 1, 4, 1),
(3, 1, 4, 3),
(4, 1, 1, 3),
(5, 3, 4, 3),
(7, 2, 4, 3),
(13, 62, 7, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(1, 'Yamaha MT-125', 'https://www.mundomotero.com/wp-content/uploads/2019/01/Yamaha-MT-125-2020.jpg', 'https://www.mundomotero.com/wp-content/uploads/2019/01/Yamaha-MT-125-2020.jpg;https://www.mundomotero.com/wp-content/uploads/2019/01/Yamaha-MT-125-2020-3.jpg;https://www.mundomotero.com/wp-content/uploads/2019/01/Yamaha-MT-125-2020-6.jpg', 'La nueva Yamaha MT-125 2021, es una moto naked 125 deportiva para los motoristas más jóvenes que dispongan del carnet de moto A1. Con aspecto de «moto grande», la MT-125 sorprende por su diseño, tecnología y apariencia', 4899, 0, 'Yamaha MT-125 2021', 1),
(2, 'Honda CB500F', 'https://www.mundomotero.com/wp-content/uploads/2020/09/Honda_CB500F_2022_09.jpg', 'https://www.mundomotero.com/wp-content/uploads/2020/09/Honda_CB500F_2022_09.jpg;https://www.mundomotero.com/wp-content/uploads/2020/09/Honda_CB500F_2022_07.jpg;https://www.mundomotero.com/wp-content/uploads/2020/09/Honda_CB500F_2022_02.jpg', 'La Honda CB500F 2022 ha recibido mejoras para seguir siendo unas de las motos naked A2 referencia del segmento. Nuevo diseño más agresivo y actualización general para la mini Streetfighter de Honda', 6250, 0, 'Honda CB500F 2022', 1),
(3, 'Suzuki GSX-S950', 'https://www.mundomotero.com/wp-content/uploads/2021/06/Suzuki_GSX-S950_05.jpg', 'https://www.mundomotero.com/wp-content/uploads/2021/06/Suzuki_GSX-S950_05.jpg;https://www.mundomotero.com/wp-content/uploads/2021/06/Suzuki_GSX-S950_02.jpg;https://www.mundomotero.com/wp-content/uploads/2021/06/Suzuki_GSX-S950_07.jpg', 'La Suzuki GSX-S950 es la última incorporación al catálogo de modelos de la marca japonesa, una naked deportiva limitable para el A2 que mantiene la esencia deportiva pero con mayor polivalencia de uso', 10815, 0, 'Suzuki GSX-S950', 1),
(4, 'KTM 890 Duke', 'https://www.mundomotero.com/wp-content/uploads/2021/01/KTM-890-DUKE-2021-9.jpg', 'https://www.mundomotero.com/wp-content/uploads/2021/01/KTM-890-DUKE-2021-9.jpg;https://www.mundomotero.com/wp-content/uploads/2021/01/KTM-890-DUKE-2021-11.jpg;https://www.mundomotero.com/wp-content/uploads/2021/01/KTM-890-DUKE-2021-7.jpg', 'KTM desvelaba la nueva 890 Duke 2021, la moto naked de media cilindrada con todo el ADN deportivo de la marca austriaca y con el diseño habitual de Mattighofen', 10500, 0, 'KTM 890 Duke 2021', 1),
(5, 'Yamaha MT09', 'https://www.mundomotero.com/wp-content/uploads/2020/04/Yamaha-MT09-2021.jpg', 'https://www.mundomotero.com/wp-content/uploads/2020/04/Yamaha-MT09-2021.jpg;https://www.mundomotero.com/wp-content/uploads/2020/04/Yamaha-MT09-2021-2.jpg;https://www.mundomotero.com/wp-content/uploads/2020/04/Yamaha-MT09-2021-1.jpg', 'La nueva Yamaha MT09 2021 se actualiza para seguir siendo una de las motos naked referencia del segmento. Nueva y agresiva estética, nuevos acabados y una tecnología mejorada, entre algunas de sus muchas novedades', 9900, 0, 'Yamaha MT09 2021', 1),
(6, 'Honda CBR1000RR-R', 'https://www.mundomotero.com/wp-content/uploads/2019/11/Honda-CBR1000RR-R-2020-4.jpg', 'https://www.mundomotero.com/wp-content/uploads/2019/11/Honda-CBR1000RR-R-2020-4.jpg;https://www.mundomotero.com/wp-content/uploads/2019/11/Honda-CBR1000RR-R-2020-3.jpg;https://www.mundomotero.com/wp-content/uploads/2019/11/Honda-CBR1000RR-R-2020-6.jpg', 'La nueva Honda CBR1000RR-R es la última incorporación al catálogo de motos de la marca japonesa dentro del segmento de las motos deportivas y con una clara orientación a un uso en circuito y a la competición.', 24500, 0, 'Honda CBR1000RR-R / SP', 2),
(7, 'Yamaha R7', 'https://www.mundomotero.com/wp-content/uploads/2021/05/Yamaha-R7.jpg', 'https://www.mundomotero.com/wp-content/uploads/2021/05/Yamaha-R7.jpg;https://www.mundomotero.com/wp-content/uploads/2021/05/Yamaha-R7-2.jpg;https://www.mundomotero.com/wp-content/uploads/2021/05/Yamaha-R7-4.jpg', 'La nueva Yamaha R7 llega al segmento de las motos deportivas de media cilindrada para volver a conquistar a los motoristas que quieren una estética agresiva y componentes de calidad', 9400, 976, 'Yamaha R7', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_has_products_products1_idx` (`product_id`),
  ADD KEY `fk_orders_has_products_orders1_idx` (`order_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`cat_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `description` (`description`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
