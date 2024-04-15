-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-04-2024 a las 08:38:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `telefono` varchar(15) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `direccion`, `correo_electronico`, `dni`, `edad`, `fecha_creacion`, `telefono`, `activo`) VALUES
(1, 'Emma', 'Smith', '123 Main St', 'emma.smith@example.com', '12345678A', 28, '2024-04-13 03:39:16', '123-456-7890', 1),
(2, 'Noah', 'Johnson', '456 Elm St', 'noah.johnson@example.com', '23456789B', 35, '2024-04-13 03:39:16', '234-567-8901', 1),
(3, 'Olivia', 'Williams', '789 Oak St', 'olivia.williams@example.com', '34567890C', 42, '2024-04-13 03:39:16', '345-678-9012', 1),
(4, 'Liam', 'Jones', '101 Pine St', 'liam.jones@example.com', '45678901D', 31, '2024-04-13 03:39:16', '456-789-0123', 1),
(5, 'Ava', 'Brown', '222 Cedar St', 'ava.brown@example.com', '56789012E', 26, '2024-04-13 03:39:16', '567-890-1234', 1),
(6, 'William', 'Davis', '333 Maple St', 'william.davis@example.com', '67890123F', 39, '2024-04-13 03:39:16', '678-901-2345', 1),
(7, 'Sophia', 'Miller', '444 Birch St', 'sophia.miller@example.com', '78901234G', 36, '2024-04-13 03:39:16', '789-012-3456', 1),
(8, 'James', 'Wilson', '555 Walnut St', 'james.wilson@example.com', '89012345H', 29, '2024-04-13 03:39:16', '890-123-4567', 1),
(9, 'Isabella', 'Moore', '666 Cherry St', 'isabella.moore@example.com', '90123456I', 33, '2024-04-13 03:39:16', '901-234-5678', 1),
(10, 'Benjamin', 'Taylor', '777 Spruce St', 'benjamin.taylor@example.com', '01234567J', 45, '2024-04-13 03:39:16', '012-345-6789', 1),
(11, 'Charlotte', 'Anderson', '888 Elm St', 'charlotte.anderson@example.com', '12345678K', 27, '2024-04-13 03:39:16', '123-456-7890', 1),
(12, 'Mason', 'Thomas', '999 Oak St', 'mason.thomas@example.com', '23456789L', 38, '2024-04-13 03:39:16', '234-567-8901', 1),
(13, 'Amelia', 'Jackson', '111 Pine St', 'amelia.jackson@example.com', '34567890M', 30, '2024-04-13 03:39:16', '345-678-9012', 1),
(14, 'Evelyn', 'White', '222 Cedar St', 'evelyn.white@example.com', '45678901N', 25, '2024-04-13 03:39:16', '456-789-0123', 1),
(15, 'Logan', 'Harris', '333 Maple St', 'logan.harris@example.com', '56789012O', 41, '2024-04-13 03:39:16', '567-890-1234', 1),
(16, 'Lucas', 'Martin', '444 Birch St', 'lucas.martin@example.com', '67890123P', 34, '2024-04-13 03:39:16', '678-901-2345', 1),
(17, 'Harper', 'Thompson', '555 Walnut St', 'harper.thompson@example.com', '78901234Q', 28, '2024-04-13 03:39:16', '789-012-3456', 1),
(18, 'Eleanor', 'Garcia', '666 Cherry St', 'eleanor.garcia@example.com', '89012345R', 32, '2024-04-13 03:39:16', '890-123-4567', 1),
(19, 'Elijah', 'Martinez', '777 Spruce St', 'elijah.martinez@example.com', '90123456S', 44, '2024-04-13 03:39:16', '901-234-5678', 1),
(20, 'Alexander', 'Robinson', '888 Elm St', 'alexander.robinson@example.com', '01234567T', 29, '2024-04-13 03:39:16', '012-345-6789', 1),
(21, 'Penelope', 'Clark', '999 Oak St', 'penelope.clark@example.com', '12345678U', 37, '2024-04-13 03:39:16', '123-456-7890', 1),
(22, 'Daniel', 'Rodriguez', '111 Pine St', 'daniel.rodriguez@example.com', '23456789V', 26, '2024-04-13 03:39:16', '234-567-8901', 1),
(23, 'Elizabeth', 'Lewis', '222 Cedar St', 'elizabeth.lewis@example.com', '34567890W', 40, '2024-04-13 03:39:16', '345-678-9012', 1),
(24, 'Michael', 'Lee', '333 Maple St', 'michael.lee@example.com', '45678901X', 31, '2024-04-13 03:39:16', '456-789-0123', 1),
(25, 'Avery', 'Walker', '444 Birch St', 'avery.walker@example.com', '56789012Y', 35, '2024-04-13 03:39:16', '567-890-1234', 1),
(26, 'Abigail', 'Hall', '555 Walnut St', 'abigail.hall@example.com', '67890123Z', 27, '2024-04-13 03:39:16', '678-901-2345', 1),
(27, 'Henry', 'Young', '666 Cherry St', 'henry.young@example.com', '78901234AA', 33, '2024-04-13 03:39:16', '789-012-3456', 1),
(28, 'Alexander', 'Scott', '777 Spruce St', 'alexander.scott@example.com', '89012345AB', 43, '2024-04-13 03:39:16', '890-123-4567', 1),
(29, 'Sofia', 'King', '888 Elm St', 'sofia.king@example.com', '90123456AC', 28, '2024-04-13 03:39:16', '901-234-5678', 1),
(30, 'Jackson', 'Green', '999 Oak St', 'jackson.green@example.com', '01234567AD', 36, '2024-04-13 03:39:16', '012-345-6789', 1),
(31, 'Madison', 'Adams', '111 Pine St', 'madison.adams@example.com', '12345678AE', 31, '2024-04-13 03:39:16', '123-456-7890', 1),
(32, 'Sebastian', 'Baker', '222 Cedar St', 'sebastian.baker@example.com', '23456789AF', 39, '2024-04-13 03:39:16', '234-567-8901', 1),
(33, 'Scarlett', 'Allen', '333 Maple St', 'scarlett.allen@example.com', '34567890AG', 29, '2024-04-13 03:42:30', '345-678-9012', 1),
(34, 'Matthew', 'Bennett', '444 Birch St', 'matthew.bennett@example.com', '45678901AH', 42, '2024-04-13 03:42:30', '456-789-0123', 1),
(35, 'Luna', 'Nelson', '555 Walnut St', 'luna.nelson@example.com', '56789012AI', 26, '2024-04-13 03:42:30', '567-890-1234', 1),
(36, 'Wyatt', 'Carter', '666 Cherry St', 'wyatt.carter@example.com', '67890123AJ', 34, '2024-04-13 03:42:30', '678-901-2345', 1),
(37, 'Mia', 'Morris', '777 Spruce St', 'mia.morris@example.com', '78901234AK', 30, '2024-04-13 03:42:30', '789-012-3456', 1),
(38, 'Ethan', 'James', '888 Elm St', 'ethan.james@example.com', '89012345AL', 37, '2024-04-13 03:42:30', '890-123-4567', 1),
(39, 'Harper', 'Hill', '999 Oak St', 'harper.hill@example.com', '90123456AM', 28, '2024-04-13 03:42:30', '901-234-5678', 1),
(40, 'Oliver', 'Powell', '123 Main St', 'oliver.powell@example.com', '23456789CA', 28, '2024-04-13 03:42:30', '123-456-7890', 1),
(41, 'Charlotte', 'Long', '456 Elm St', 'charlotte.long@example.com', '34567890CB', 35, '2024-04-13 03:42:30', '234-567-8901', 1),
(42, 'Elijah', 'Flores', '789 Oak St', 'elijah.flores@example.com', '45678901CC', 42, '2024-04-13 03:42:30', '345-678-9012', 1),
(43, 'Ava', 'Butler', '101 Pine St', 'ava.butler@example.com', '56789012CD', 31, '2024-04-13 03:42:30', '456-789-0123', 1),
(44, 'Theodore', 'Nguyen', '222 Cedar St', 'theodore.nguyen@example.com', '67890123CE', 26, '2024-04-13 03:42:30', '567-890-1234', 1),
(45, 'Hazel', 'Hayes', '333 Maple St', 'hazel.hayes@example.com', '78901234CF', 39, '2024-04-13 03:42:30', '678-901-2345', 1),
(46, 'Lucas', 'Howard', '444 Birch St', 'lucas.howard@example.com', '89012345CG', 36, '2024-04-13 03:42:30', '789-012-3456', 1),
(47, 'Amelia', 'Barnes', '555 Walnut St', 'amelia.barnes@example.com', '90123456CH', 29, '2024-04-13 03:42:30', '890-123-4567', 1),
(48, 'Logan', 'Evans', '666 Cherry St', 'logan.evans@example.com', '01234567CI', 33, '2024-04-13 03:42:30', '901-234-5678', 1),
(49, 'Evelyn', 'Rogers', '777 Spruce St', 'evelyn.rogers@example.com', '12345678CJ', 45, '2024-04-13 03:42:30', '012-345-6789', 1),
(50, 'Liam', 'Hill', '888 Elm St', 'liam.hill@example.com', '23456789CK', 27, '2024-04-13 03:42:30', '123-456-7890', 1),
(51, 'Avery', 'Alexander', '999 Oak St', 'avery.alexander@example.com', '34567890CL', 38, '2024-04-13 03:42:30', '234-567-8901', 1),
(52, 'Emma', 'Stewart', '111 Pine St', 'emma.stewart@example.com', '45678901CM', 30, '2024-04-13 03:42:30', '345-678-9012', 1),
(53, 'Oliver', 'Cook', '222 Cedar St', 'oliver.cook@example.com', '56789012CN', 25, '2024-04-13 03:42:30', '456-789-0123', 1),
(54, 'Charlotte', 'Morris', '333 Maple St', 'charlotte.morris@example.com', '67890123CO', 41, '2024-04-13 03:42:30', '567-890-1234', 1),
(55, 'Elijah', 'Gonzalez', '444 Birch St', 'elijah.gonzalez@example.com', '78901234CP', 34, '2024-04-13 03:42:30', '678-901-2345', 1),
(56, 'Ava', 'Reed', '555 Walnut St', 'ava.reed@example.com', '89012345CQ', 28, '2024-04-13 03:42:30', '789-012-3456', 1),
(57, 'Theodore', 'Lee', '666 Cherry St', 'theodore.lee@example.com', '90123456CR', 32, '2024-04-13 03:42:30', '890-123-4567', 1),
(58, 'Hazel', 'White', '777 Spruce St', 'hazel.white@example.com', '01234567CS', 44, '2024-04-13 03:42:30', '901-234-5678', 1),
(59, 'Lucas', 'King', '888 Elm St', 'lucas.king@example.com', '12345678CT', 29, '2024-04-13 03:42:30', '012-345-6789', 1),
(60, 'Amelia', 'Martinez', '999 Oak St', 'amelia.martinez@example.com', '23456789CU', 37, '2024-04-13 03:42:30', '123-456-7890', 1),
(61, 'Logan', 'Hernandez', '111 Pine St', 'logan.hernandez@example.com', '34567890CV', 26, '2024-04-13 03:42:30', '234-567-8901', 1),
(62, 'Evelyn', 'Young', '222 Cedar St', 'evelyn.young@example.com', '45678901CW', 40, '2024-04-13 03:42:30', '345-678-9012', 1),
(63, 'Liam', 'Garcia', '333 Maple St', 'liam.garcia@example.com', '56789012CX', 31, '2024-04-13 03:42:30', '456-789-0123', 1),
(64, 'Avery', 'Wright', '444 Birch St', 'avery.wright@example.com', '67890123CY', 35, '2024-04-13 03:42:30', '567-890-1234', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
