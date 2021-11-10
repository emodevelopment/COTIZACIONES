-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2021 a las 17:28:57
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cotizaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agentes`
--

CREATE TABLE `agentes` (
  `id_agente` int(11) NOT NULL,
  `nom_agente` varchar(100) NOT NULL,
  `tel1_agente` varchar(50) NOT NULL,
  `tel2_agente` varchar(50) NOT NULL,
  `email_agente` varchar(100) NOT NULL,
  `fiscal_agente` int(11) NOT NULL,
  `banco_agente` varchar(100) NOT NULL,
  `cuenta_agente` varchar(100) NOT NULL,
  `esp_agente` varchar(50) NOT NULL,
  `cal_agente` varchar(50) NOT NULL,
  `estado_agente` int(11) NOT NULL,
  `date_addeda` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id_caja` int(11) NOT NULL,
  `apertura_caja` double NOT NULL,
  `cierre_caja` double NOT NULL,
  `fecha_caja` date NOT NULL,
  `estado_caja` int(11) NOT NULL,
  `users_caja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id_caja`, `apertura_caja`, `cierre_caja`, `fecha_caja`, `estado_caja`, `users_caja`) VALUES
(1, 200, 0, '2020-12-05', 1, 1),
(2, 200, 0, '2020-12-06', 1, 1),
(3, 200, 0, '2020-12-07', 1, 1),
(4, 200, 0, '2020-12-08', 1, 1),
(5, 200, 0, '2020-12-11', 1, 1),
(6, 200, 0, '2020-12-12', 1, 1),
(7, 200, 0, '2020-12-13', 1, 1),
(8, 200, 0, '2020-12-15', 1, 1),
(9, 200, 0, '2020-12-21', 1, 1),
(10, 200, 0, '2021-01-04', 1, 1),
(11, 200, 0, '2021-02-20', 1, 1),
(12, 200, 0, '2021-03-26', 1, 1),
(13, 200, 0, '2021-04-08', 1, 1),
(14, 200, 0, '2021-04-16', 1, 1),
(15, 200, 0, '2021-04-19', 1, 1),
(16, 200, 0, '2021-04-20', 1, 1),
(17, 200, 0, '2021-04-21', 1, 1),
(18, 100, 0, '2021-04-23', 1, 1),
(19, 100, 0, '2021-05-26', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_chica`
--

CREATE TABLE `caja_chica` (
  `id_caja` int(11) NOT NULL,
  `referencia_caja` varchar(255) NOT NULL,
  `monto_caja` double NOT NULL,
  `descripcion_caja` varchar(255) NOT NULL,
  `tipo_caja` tinyint(4) NOT NULL,
  `users_caja` int(11) NOT NULL,
  `date_added_caja` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(255) NOT NULL,
  `estado_cargo` varchar(11) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `fiscal_cliente` varchar(255) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `ciudad_cliente` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `status_cliente` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `fiscal_cliente`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `ciudad_cliente`, `status_cliente`, `date_added`) VALUES
(1, 'JORGE SALAZAR', '1094893467', '31010101010', 'abcd@abcd.com', 'ARMENIA QUINDIO', 'Armenia', 1, '2021-04-23 11:07:53'),
(3, 'EDWIN', '1094893467', '32020202020', 'ABC@ABAC.COM', 'ARMENIA', '', 1, '2021-10-22 08:20:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `id_comp` int(11) NOT NULL,
  `nombre_comp` varchar(100) NOT NULL,
  `serie_comp` varchar(100) NOT NULL,
  `desde_comp` int(11) NOT NULL,
  `hasta_comp` int(11) NOT NULL,
  `long_comp` int(11) NOT NULL,
  `actual_comp` int(11) NOT NULL,
  `vencimiento_comp` date NOT NULL,
  `estado_comp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comprobantes`
--

INSERT INTO `comprobantes` (`id_comp`, `nombre_comp`, `serie_comp`, `desde_comp`, `hasta_comp`, `long_comp`, `actual_comp`, `vencimiento_comp`, `estado_comp`) VALUES
(1, 'TICKET', 'TK', 1, 1000000, 6, 1, '2024-12-31', 1),
(2, 'FACTURA', 'FA21', 1, 10000, 6, 1, '2022-04-28', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratistas`
--

CREATE TABLE `contratistas` (
  `id_contra` int(11) NOT NULL,
  `nom_contra` varchar(100) NOT NULL,
  `tel1_contra` varchar(50) NOT NULL,
  `tel2_contra` varchar(50) NOT NULL,
  `empresa_contra` varchar(100) NOT NULL,
  `fiscal_contra` int(11) NOT NULL,
  `banco_contra` varchar(100) NOT NULL,
  `cuenta_contra` varchar(100) NOT NULL,
  `esp_contra` varchar(50) NOT NULL,
  `cal_contra` varchar(50) NOT NULL,
  `estado_contra` int(11) NOT NULL,
  `date_addedc` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos`
--

CREATE TABLE `creditos` (
  `id_credito` int(11) NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_credito` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `monto_credito` double NOT NULL,
  `saldo_credito` double NOT NULL,
  `estado_credito` tinyint(1) NOT NULL,
  `id_users_credito` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos_abonos`
--

CREATE TABLE `creditos_abonos` (
  `id_abono` int(11) NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_abono` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `monto_abono` double NOT NULL,
  `abono` double NOT NULL,
  `saldo_abono` double NOT NULL,
  `id_users_abono` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `concepto_abono` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creditos_abonos_prov`
--

CREATE TABLE `creditos_abonos_prov` (
  `id_abono` int(11) NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_abono` datetime NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `monto_abono` double NOT NULL,
  `abono` double NOT NULL,
  `saldo_abono` double NOT NULL,
  `id_users_abono` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `concepto_abono` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credito_proveedor`
--

CREATE TABLE `credito_proveedor` (
  `id_credito` int(11) NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_credito` datetime NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `monto_credito` double NOT NULL,
  `saldo_credito` double NOT NULL,
  `estado_credito` tinyint(1) NOT NULL,
  `id_users_credito` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
(1, 'US Dollar', '$', '2', ',', '.', 'USD'),
(2, 'Libra Esterlina', '&pound;', '2', ',', '.', 'GBP'),
(3, 'Euro', 'â‚¬', '2', '.', ',', 'EUR'),
(4, 'South African Rand', 'R', '2', '.', ',', 'ZAR'),
(5, 'Danish Krone', 'kr ', '2', '.', ',', 'DKK'),
(6, 'Israeli Shekel', 'NIS ', '2', ',', '.', 'ILS'),
(7, 'Swedish Krona', 'kr ', '2', '.', ',', 'SEK'),
(8, 'Kenyan Shilling', 'KSh ', '2', ',', '.', 'KES'),
(9, 'Canadian Dollar', 'C$', '2', ',', '.', 'CAD'),
(10, 'Philippine Peso', 'P ', '2', ',', '.', 'PHP'),
(11, 'Indian Rupee', 'Rs. ', '2', ',', '.', 'INR'),
(12, 'Australian Dollar', '$', '2', ',', '.', 'AUD'),
(13, 'Singapore Dollar', 'SGD ', '2', ',', '.', 'SGD'),
(14, 'Norske Kroner', 'kr ', '2', '.', ',', 'NOK'),
(15, 'New Zealand Dollar', '$', '2', ',', '.', 'NZD'),
(16, 'Vietnamese Dong', 'VND ', '0', '.', ',', 'VND'),
(17, 'Swiss Franc', 'CHF ', '2', '\'', '.', 'CHF'),
(18, 'Quetzal Guatemalteco', 'Q', '2', ',', '.', 'GTQ'),
(19, 'Malaysian Ringgit', 'RM', '2', ',', '.', 'MYR'),
(20, 'Real Brasile&ntilde;o', 'R$', '2', '.', ',', 'BRL'),
(21, 'Thai Baht', 'THB ', '2', ',', '.', 'THB'),
(22, 'Nigerian Naira', 'NGN ', '2', ',', '.', 'NGN'),
(23, 'Peso Argentino', '$', '2', '.', ',', 'ARS'),
(24, 'Bangladeshi Taka', 'Tk', '2', ',', '.', 'BDT'),
(25, 'United Arab Emirates Dirham', 'DH ', '2', ',', '.', 'AED'),
(26, 'Hong Kong Dollar', '$', '2', ',', '.', 'HKD'),
(27, 'Indonesian Rupiah', 'Rp', '2', ',', '.', 'IDR'),
(28, 'Peso Mexicano', '$', '2', ',', '.', 'MXN'),
(29, 'Egyptian Pound', '&pound;', '2', ',', '.', 'EGP'),
(30, 'Peso Colombiano', '$', '2', '.', ',', 'COP'),
(31, 'West African Franc', 'CFA ', '2', ',', '.', 'XOF'),
(32, 'Chinese Renminbi', 'RMB ', '2', ',', '.', 'CNY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_devolucion`
--

CREATE TABLE `detalle_devolucion` (
  `id_detalle` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `desc_venta` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_fact_compra`
--

CREATE TABLE `detalle_fact_compra` (
  `id_detalle` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio_costo` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_fact_cot`
--

CREATE TABLE `detalle_fact_cot` (
  `id_detalle` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `desc_venta` int(11) NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_fact_cot`
--

INSERT INTO `detalle_fact_cot` (`id_detalle`, `id_factura`, `numero_factura`, `id_producto`, `cantidad`, `desc_venta`, `precio_venta`) VALUES
(1, 1, 'COT-000001', 3, 1, 0, 794118),
(2, 2, 'COT-000002', 3, 1, 10, 7941),
(4, 3, 'COT-000003', 3, 2, 0, 7941),
(5, 4, 'COT-000004', 3, 2, 0, 791418);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_fact_ventas`
--

CREATE TABLE `detalle_fact_ventas` (
  `id_detalle` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `desc_venta` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_traslado`
--

CREATE TABLE `detalle_traslado` (
  `id_detalle_traslado` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  `num_transaccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diseño`
--

CREATE TABLE `diseño` (
  `id` int(11) NOT NULL,
  `nombre_diseño` varchar(255) NOT NULL,
  `descripcion_diseño` text NOT NULL,
  `estado_diseño` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresos`
--

CREATE TABLE `egresos` (
  `id_egreso` int(11) NOT NULL,
  `referencia_egreso` varchar(100) CHARACTER SET latin1 NOT NULL,
  `monto` double NOT NULL,
  `descripcion_egreso` text CHARACTER SET latin1 NOT NULL,
  `fecha_added` datetime NOT NULL,
  `users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_compras`
--

CREATE TABLE `facturas_compras` (
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(50) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` int(11) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(4) NOT NULL,
  `id_users_factura` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `ref_factura` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_cot`
--

CREATE TABLE `facturas_cot` (
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int(11) NOT NULL,
  `validez` double NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `print_img` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas_cot`
--

INSERT INTO `facturas_cot` (`id_factura`, `numero_factura`, `fecha_factura`, `id_cliente`, `id_vendedor`, `condiciones`, `monto_factura`, `estado_factura`, `id_users_factura`, `validez`, `id_sucursal`, `print_img`) VALUES
(1, 'COT-000001', '2021-10-12 09:12:55', 1, 1, '1', 945000.42, 1, 1, 1, 1, 1),
(2, 'COT-000002', '2021-10-12 13:50:49', 1, 1, '1', 8504.811, 1, 1, 1, 1, 1),
(3, 'COT-000003', '2021-10-19 09:32:46', 1, 2, '1', 18899.58, 1, 2, 1, 1, 1),
(4, 'COT-000004', '2021-11-06 08:15:11', 1, 1, '1', 1883574.84, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_ventas`
--

CREATE TABLE `facturas_ventas` (
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `id_users_factura` int(11) NOT NULL,
  `dinero_resibido_fac` double NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_comp_factura` int(11) NOT NULL,
  `num_trans_factura` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato`
--

CREATE TABLE `formato` (
  `id` int(11) NOT NULL,
  `nombre_formato` varchar(255) NOT NULL,
  `descripcion_formato` varchar(255) NOT NULL,
  `estado_formato` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_productos`
--

CREATE TABLE `historial_productos` (
  `id_historial` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `fecha_historial` datetime NOT NULL,
  `nota_historial` varchar(255) NOT NULL,
  `referencia_historial` varchar(100) NOT NULL,
  `cantidad_historial` double NOT NULL,
  `tipo_historial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestos`
--

CREATE TABLE `impuestos` (
  `id_imp` int(11) NOT NULL,
  `nombre_imp` varchar(100) NOT NULL,
  `valor_imp` double NOT NULL,
  `estado_imp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id_ingreso` int(11) NOT NULL,
  `id_consulta` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `monto` double NOT NULL,
  `fecha_added` datetime NOT NULL,
  `users` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kardex`
--

CREATE TABLE `kardex` (
  `id_kardex` int(11) NOT NULL,
  `fecha_kardex` date NOT NULL,
  `producto_kardex` int(11) NOT NULL,
  `cant_entrada` double NOT NULL,
  `costo_entrada` double NOT NULL,
  `total_entrada` double NOT NULL,
  `cant_salida` double NOT NULL,
  `costo_salida` double NOT NULL,
  `total_salida` double NOT NULL,
  `cant_saldo` double NOT NULL,
  `costo_saldo` double NOT NULL,
  `total_saldo` double NOT NULL,
  `added_kardex` datetime NOT NULL,
  `users_kardex` int(11) NOT NULL,
  `tipo_movimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `kardex`
--

INSERT INTO `kardex` (`id_kardex`, `fecha_kardex`, `producto_kardex`, `cant_entrada`, `costo_entrada`, `total_entrada`, `cant_salida`, `costo_salida`, `total_salida`, `cant_saldo`, `costo_saldo`, `total_saldo`, `added_kardex`, `users_kardex`, `tipo_movimiento`) VALUES
(1, '2021-04-23', 1, 0, 50, 0, 0, 0, 0, 0, 0, 0, '2021-04-23 11:38:49', 1, 5),
(2, '2021-10-12', 3, 0, 5000, 0, 0, 0, 0, 0, 0, 0, '2021-10-12 09:10:12', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas`
--

CREATE TABLE `lineas` (
  `id_linea` int(11) NOT NULL,
  `nombre_linea` varchar(255) NOT NULL,
  `descripcion_linea` text NOT NULL,
  `estado_linea` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lineas`
--

INSERT INTO `lineas` (`id_linea`, `nombre_linea`, `descripcion_linea`, `estado_linea`, `date_added`) VALUES
(1, '1022 - SERVICIOS', '', 1, '0000-00-00 00:00:00'),
(2, '1029-DOTACION', '', 1, '0000-00-00 00:00:00'),
(3, '1001-CERAMICA', '', 1, '0000-00-00 00:00:00'),
(4, '1005-CENEFAS Y TRENZAS', '', 1, '0000-00-00 00:00:00'),
(5, '1019-DESCONTINUADOS', '', 1, '0000-00-00 00:00:00'),
(6, '1009-MUEBLES DE MADERA', '', 1, '0000-00-00 00:00:00'),
(7, '1010-COCINAS', '', 1, '0000-00-00 00:00:00'),
(8, '1035-LAVAPLATOS', '', 1, '0000-00-00 00:00:00'),
(9, '1021-LISTELLOS - MOSAICOS', '', 1, '0000-00-00 00:00:00'),
(10, '1018-MATERIA PRIMA', '', 1, '0000-00-00 00:00:00'),
(11, '1006-PEGANTES - LECHADAS', '', 1, '0000-00-00 00:00:00'),
(12, '1015-TUBERIA', '', 1, '0000-00-00 00:00:00'),
(13, '1003-PORCELANA SANITARIA', '', 1, '0000-00-00 00:00:00'),
(14, '1011-WING', '', 1, '0000-00-00 00:00:00'),
(15, '1002-PORCELANATO', '', 1, '0000-00-00 00:00:00'),
(16, '1027-OBSEQUIOS', '', 1, '0000-00-00 00:00:00'),
(17, '1012-REPUESTOS', '', 1, '0000-00-00 00:00:00'),
(18, '1020-PRODUCTOS  MANTENIMIENTO', '', 1, '0000-00-00 00:00:00'),
(19, '1007-GRIFERIAS', '', 1, '0000-00-00 00:00:00'),
(20, '1008-COMPLEMENTOS', '', 1, '0000-00-00 00:00:00'),
(21, '1023-TEJAS', '', 1, '0000-00-00 00:00:00'),
(22, '1013-CEMENTO', '', 1, '0000-00-00 00:00:00'),
(23, '1014-ACERO', '', 1, '0000-00-00 00:00:00'),
(24, '1028-NO CONFORME', '', 1, '0000-00-00 00:00:00'),
(25, '1026-HERRAMIENTAS', '', 1, '0000-00-00 00:00:00'),
(26, '1031-PRODUCTOS KINGO', '', 1, '0000-00-00 00:00:00'),
(27, '1037-CRUCETA SEPARADOR PLASTICO', '', 1, '0000-00-00 00:00:00'),
(28, '1004-ACCESORIOS BAÑO', '', 1, '0000-00-00 00:00:00'),
(29, '1016-ACCESORIOS TUBERIA', '', 1, '0000-00-00 00:00:00'),
(30, '1017-EQUIPOS DE COMPUTO', '', 1, '0000-00-00 00:00:00'),
(31, '1030-MADERA LAMINADA', '', 1, '0000-00-00 00:00:00'),
(32, '1032-APLIQUES', '', 1, '0000-00-00 00:00:00'),
(33, '1033-LISTELOS DECORATIVOS DE CRISTAL', '', 1, '0000-00-00 00:00:00'),
(34, ' 1034-JUGETERIA', '', 1, '0000-00-00 00:00:00'),
(35, '1036-MADECANTO', '', 1, '0000-00-00 00:00:00'),
(36, '1038-REPUESTOS', '', 1, '0000-00-00 00:00:00'),
(37, '1039-LAMINAS MDP', '', 1, '0000-00-00 00:00:00'),
(38, '1099 -NO APLICA', '', 1, '0000-00-00 00:00:00'),
(39, '1040-EQUIPOS LABORATORIO', '', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `nombre_marca` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion_marca` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado_marca` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `nombre_marca`, `descripcion_marca`, `estado_marca`, `date_added`) VALUES
(1, '3001 - CELIMA', '', 1, '0000-00-00 00:00:00'),
(2, '3002 - LAZULI', '', 1, '2021-11-05 08:37:13'),
(3, '3003 - TREBOL', '', 1, '2021-11-05 09:00:29'),
(4, '3004 - ALFA', '', 1, '2021-11-05 09:16:25'),
(5, '3005 - EUROCERAMICA', '', 1, '2021-11-05 09:16:32'),
(6, '3007 - SENCO', '', 1, '2021-11-05 09:16:42'),
(7, '3008 - QUIMICAS QUIMBAYA', '', 1, '2021-11-05 09:16:50'),
(8, '3009 - GRICOL', '', 1, '2021-11-05 09:17:10'),
(9, '3010 - RIOPLAST', '', 1, '2021-11-05 09:17:16'),
(10, '3011 - MODUOFI', '', 1, '2021-11-05 09:17:23'),
(11, '3012 - SERECA', '', 1, '2021-11-05 09:17:29'),
(12, '3013 - HACEB', '', 1, '2021-11-05 09:17:39'),
(13, '3014 - GUINOVART', '', 1, '2021-11-05 09:17:47'),
(14, '3015 - RHINOX MULTIMARKET', '', 1, '2021-11-05 09:17:53'),
(15, '3016 - VULCANO', '', 1, '2021-11-05 09:18:01'),
(16, '3017 - TIGRE', '', 1, '2021-11-05 09:18:06'),
(17, '3018 - TEQUENDAMA', '', 1, '2021-11-05 09:18:13'),
(18, '3020 - DIAMANTE', '', 1, '2021-11-05 09:18:19'),
(19, '3021 - EMO', '', 1, '2021-11-05 09:18:24'),
(20, '3022 - ACEROS AREQUIPA', '', 1, '2021-11-05 09:18:30'),
(21, '3023 - SOCODA', '', 1, '2021-11-05 09:18:36'),
(22, '3024 - KINGO', '', 1, '2021-11-05 09:18:42'),
(23, '3025 - DOTACION', '', 1, '2021-11-05 09:18:48'),
(24, '3026 - IMPORTADOS METALICAS', '', 1, '2021-11-05 09:19:02'),
(25, '3027 - RIALT', '', 1, '2021-11-05 09:19:09'),
(26, '3028 - INCEFRA', '', 1, '2021-11-05 09:19:15'),
(27, '3029 - FIORI', '', 1, '2021-11-05 09:19:23'),
(28, '3030 - CEMENTO ATLAS', '', 1, '2021-11-05 09:19:29'),
(29, '3031 - PEGANTES HENKEL', '', 1, '2021-11-05 09:19:35'),
(30, '3032 - BERNECK', '', 1, '2021-11-05 09:19:41'),
(31, '3033 - FORTECEM', '', 1, '2021-11-05 09:19:47'),
(32, '3034 - TERNIUM', '', 1, '2021-11-05 09:19:52'),
(33, '3035 - EASY', '', 1, '2021-11-05 09:19:58'),
(34, '3036 - DIACO', '', 1, '2021-11-05 09:20:05'),
(35, '3037 - ACERIAS PAZ DE RIO', '', 1, '2021-11-05 09:20:12'),
(36, '3038 - TIANJIN', '', 1, '2021-11-05 09:20:19'),
(37, '3039 - FAJOBE', '', 1, '2021-11-05 09:20:24'),
(38, '3042 - CERAMICA ITALIA', '', 1, '2021-11-05 09:20:30'),
(39, '3043 - LUCCA', '', 1, '2021-11-05 09:20:37'),
(40, '3044 - SAN LORENZO', '', 1, '2021-11-05 09:20:43'),
(41, '3045 - MABE', '', 1, '2021-11-05 09:20:55'),
(42, '3046 - NORTH', '', 1, '2021-11-05 09:21:00'),
(43, '3047 - FORMIGRES', '', 1, '2021-11-05 09:21:06'),
(44, '3048 - PAMESA', '', 1, '2021-11-05 09:21:11'),
(45, '3049 - MORTEROS SECOS DE COLOMBIA', '', 1, '2021-11-05 09:21:17'),
(46, '3050 - PISOS Y PORCELANATO EXITO', '', 1, '2021-11-05 09:21:23'),
(47, '3051 - METAZA', '', 1, '2021-11-05 09:21:28'),
(48, '3052 - LUME', '', 1, '2021-11-05 09:21:34'),
(49, '3999 - NO APLICA', '', 1, '2021-11-05 09:21:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id_mesa` int(11) NOT NULL,
  `nombre_mesa` varchar(255) NOT NULL,
  `descripcion_mesa` text NOT NULL,
  `estado_mesa` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `status_mesa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `id_modulo` int(11) NOT NULL,
  `nombre_modulo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`id_modulo`, `nombre_modulo`) VALUES
(1, 'Inicio'),
(2, 'Productos'),
(3, 'Proveedores'),
(4, 'Clientes'),
(5, 'Reportes'),
(6, 'Configuracion'),
(7, 'Usuarios'),
(8, 'Permisos'),
(9, 'Categorias'),
(10, 'Ventas'),
(11, 'Compras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nombre_empresa` varchar(150) CHARACTER SET latin1 NOT NULL,
  `giro_empresa` text NOT NULL,
  `fiscal_empresa` varchar(25) NOT NULL,
  `direccion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ciudad` varchar(100) CHARACTER SET latin1 NOT NULL,
  `codigo_postal` varchar(100) CHARACTER SET latin1 NOT NULL,
  `estado` varchar(100) CHARACTER SET latin1 NOT NULL,
  `telefono` varchar(20) CHARACTER SET latin1 NOT NULL,
  `email` varchar(64) CHARACTER SET latin1 NOT NULL,
  `impuesto` int(2) NOT NULL,
  `nom_impuesto` varchar(50) NOT NULL,
  `moneda` varchar(6) CHARACTER SET latin1 NOT NULL,
  `logo_url` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `comp_id` int(11) NOT NULL,
  `doc_cliente` varchar(50) NOT NULL,
  `doc_proveedor` varchar(50) NOT NULL,
  `precio_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_empresa`, `giro_empresa`, `fiscal_empresa`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `impuesto`, `nom_impuesto`, `moneda`, `logo_url`, `cliente_id`, `comp_id`, `doc_cliente`, `doc_proveedor`, `precio_venta`) VALUES
(1, 'MATERIALES EMO S.A.S', 'Siempre a su servicio', '801002644-8', 'CRA 18 # 10-76', 'ARMENIA', '63004', 'QUINDIO', '6067454526', 'asesorvirtual@emo.com.co', 19, 'IVA', '$', '../../img/1634052331_5.png', 1, 1, 'NIT/CC', 'NIT', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `codigo_producto` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `id_uso_producto` int(11) NOT NULL,
  `id_linea_producto` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_med_producto` int(11) NOT NULL,
  `id_diseño_producto` int(11) NOT NULL,
  `inv_producto` tinyint(4) NOT NULL,
  `iva_producto` tinyint(4) NOT NULL,
  `estado_producto` tinyint(4) NOT NULL,
  `id_formato_producto` double NOT NULL,
  `origen_producto` varchar(255) NOT NULL,
  `moneda_producto` int(11) NOT NULL,
  `valor1_producto` double(10,0) NOT NULL,
  `peso_producto` double NOT NULL,
  `valor3_producto` double NOT NULL,
  `valor4_producto` double NOT NULL,
  `stock_producto` double NOT NULL,
  `stock_min_producto` double NOT NULL,
  `date_added` datetime NOT NULL,
  `image_path` varchar(300) NOT NULL,
  `id_imp_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `codigo_producto`, `nombre_producto`, `id_uso_producto`, `id_linea_producto`, `id_marca`, `id_med_producto`, `id_diseño_producto`, `inv_producto`, `iva_producto`, `estado_producto`, `id_formato_producto`, `origen_producto`, `moneda_producto`, `valor1_producto`, `peso_producto`, `valor3_producto`, `valor4_producto`, `stock_producto`, `stock_min_producto`, `date_added`, `image_path`, `id_imp_producto`) VALUES
(3, '987', 'PEGAFASIL GRIS X 25 KG', 0, 1, 0, 0, 1, 1, 1, 1, 5000, '0', 0, 791418, 0, 0, 0, 0, 1, '2021-10-12 09:10:12', '../../img/productos/1634051467_Captura de pantalla 2021-10-12 100919.png', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(255) NOT NULL,
  `fiscal_proveedor` varchar(100) NOT NULL,
  `web_proveedor` varchar(255) NOT NULL,
  `direccion_proveedor` text NOT NULL,
  `contacto_proveedor` varchar(255) NOT NULL,
  `email_proveedor` varchar(255) NOT NULL,
  `telefono_proveedor` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `estado_proveedor` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `nombre_proveedor`, `fiscal_proveedor`, `web_proveedor`, `direccion_proveedor`, `contacto_proveedor`, `email_proveedor`, `telefono_proveedor`, `date_added`, `estado_proveedor`) VALUES
(1, 'LA COLIMA', '69835623', 'colimagt.com', 'CIUDAD', 'EDWIN MACZ', 'edwingiovani2009@gmail.com', '+50245472055', '2021-04-23 11:38:08', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id_stock` int(11) NOT NULL,
  `id_producto_stock` int(11) NOT NULL,
  `id_sucursal_stock` int(11) NOT NULL,
  `cantidad_stock` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id_sucursal` int(11) NOT NULL,
  `codigo_sucursal` varchar(50) NOT NULL,
  `nombre_sucursal` varchar(255) NOT NULL,
  `direccion_sucursal` text NOT NULL,
  `limite_sucursal` double NOT NULL,
  `estado_sucursal` tinyint(4) NOT NULL,
  `fecha_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id_sucursal`, `codigo_sucursal`, `nombre_sucursal`, `direccion_sucursal`, `limite_sucursal`, `estado_sucursal`, `fecha_added`) VALUES
(1, '01', 'ARMENIA SALA 1', 'CRA 18 # 11-47', 100, 1, '2021-05-26 13:29:26'),
(2, '02', 'ARMENIA SALA 2', 'CARRERA 18 # 12-48', 100, 1, '2021-10-12 08:36:59'),
(3, '03', 'APARTADO', 'CALLE 93 # 99-35', 100, 1, '2021-10-19 08:37:52'),
(4, '04', 'BARRANCABERMEJA', 'CARRERA 17 # 47-44 BARRIO BUENOS AIRES', 100, 1, '2021-10-19 08:39:41'),
(5, '05', 'BARRANQUILLA', 'CALLE 30 # 23-38', 100, 1, '2021-10-19 08:40:12'),
(6, '06', 'BELLO', 'CARRERA 48 # 52-51 B/ PRADO', 100, 1, '2021-10-19 08:40:49'),
(7, '07', 'BOGOTA LA 80', 'AVENIDA CALLE 80 # 90-72', 100, 1, '2021-10-19 08:41:34'),
(8, '08', 'Bogotá Santa Luci­a 1', 'AV. CARACAS # 45A 51-57 SUR B/ SANTA LUCI­A', 100, 1, '2021-10-19 08:42:22'),
(9, '09', 'Bogotá Santa Luci­a 2', 'CRA 20 # 45A-58 SUR SANTA LUCI­A', 100, 1, '2021-10-19 08:42:49'),
(10, '10', 'Bucaramanga', 'Calle 61 # 17E-92 Barrio Ricaute', 100, 1, '2021-10-19 08:43:12'),
(11, '11', 'Buenaventura', 'CALLE 6 # 60-24 AV. SIMON BOLIVAR / BR EL CARMEN', 100, 1, '2021-10-19 08:43:41'),
(12, '12', 'BUGA', 'Carrera 18 #11-106', 100, 1, '2021-10-19 08:44:07'),
(13, '13', 'Cali - Alfonso lópez', 'Cra. 8ª # 72-24. Br Alfonso López', 100, 1, '2021-10-19 08:44:27'),
(14, '14', 'Cali - San Nicolás', 'Cra. 5a # 21-34 B/ San Nicolas', 100, 1, '2021-10-19 08:45:47'),
(15, '15', 'Cali 3', 'Carrera 8 # 70 53', 100, 1, '2021-10-19 08:46:09'),
(16, '16', 'Cartagena 1', 'Av Pedro de Heredia Sector Alcibia Cll 30 # 31-70', 100, 1, '2021-10-19 08:46:31'),
(17, '17', 'Cartagena 2', 'AV. PEDRO DE HEREDIA # 31-204', 100, 1, '2021-10-19 08:47:00'),
(18, '18', 'Cartago', 'Carrera 7 # 13 - 84 B/ Libertadores', 100, 1, '2021-10-19 08:47:28'),
(19, '19', 'Facatativá', 'CRA 1 # 8 A 178 LOCAL 1', 100, 1, '2021-10-19 08:48:42'),
(20, '20', 'Ibagué', 'CARRERA 5TA # 87-44 B/EL JARDIN', 100, 1, '2021-10-19 08:49:37'),
(21, '21', 'Ipiales', 'Carrera 5 # 16 - 05 Esquina', 100, 1, '2021-10-19 08:50:07'),
(22, '22', 'Itagui', 'Cra. 51A # 46 - 36', 100, 1, '2021-10-19 08:50:29'),
(23, '23', 'Manizales', 'Cra 18 # 23-42', 100, 1, '2021-10-19 08:50:46'),
(24, '24', 'Medellín Guayabal', 'Carrera 52 # 8B Sur 22', 100, 1, '2021-10-19 08:51:05'),
(25, '25', 'MEDELLIN MATURIN', 'Calle 46 # 55-54 Sector Faciolince', 100, 1, '2021-10-19 08:51:38'),
(26, '26', 'MEDELLIN SAN BENITO', 'Carrera 56C # 50-51 San Benito', 100, 1, '2021-10-19 08:52:03'),
(27, '27', 'Monterí­a 1', 'CALLE 37 # 4-23', 100, 1, '2021-10-19 08:52:34'),
(28, '28', 'Monterí­a 2', 'CALLE 41 # 15E - 24 LOCAL 22', 100, 1, '2021-10-19 08:53:15'),
(29, '29', 'Neiva', 'Calle 4 # 5-90', 100, 1, '2021-10-19 08:53:35'),
(30, '30', 'Palmira', 'CALLE 28 # 28 - 14', 100, 1, '2021-10-19 08:54:11'),
(31, '31', 'Pasto', 'CARRERA 20N #19B-14', 100, 1, '2021-10-19 08:54:41'),
(32, '32', 'Pereira 1', 'Carrera 7 # 33-45', 100, 1, '2021-10-19 08:55:02'),
(33, '33', 'Pereira 2', 'Calle 34 # 6-12', 100, 1, '2021-10-19 08:55:22'),
(34, '34', 'Popayán', 'Calle 4 # 15-31', 100, 1, '2021-10-19 08:55:45'),
(35, '35', 'Rionegro', 'Carrera 47 # 55-05', 100, 1, '2021-10-19 08:56:03'),
(36, '36', 'Sincelejo 1', 'Carrera 23 # 21-69 Centro', 100, 1, '2021-10-19 08:56:20'),
(37, '37', 'Sincelejo 2', 'Calle 28 # 23A-51', 100, 1, '2021-10-19 08:56:48'),
(38, '38', 'Tuluá 1', 'Calle 25 # 21-49 Centro', 100, 1, '2021-10-19 08:57:11'),
(39, '39', 'Tuluá 2', 'Calle 25 # 20-47 Centro', 100, 1, '2021-10-19 08:57:54'),
(40, '40', 'Tunja Avenida Norte', 'Cra 6 Av Norte # 64-51', 100, 1, '2021-10-19 08:58:20'),
(41, '41', 'Valledupar', 'Cra 16 # 21-57', 100, 1, '2021-10-19 08:58:39'),
(42, '42', 'Villavicencio', 'Carrera 38 # 25-47 Barrio 7 de Agosto', 100, 1, '2021-10-19 08:58:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_comandas`
--

CREATE TABLE `tmp_comandas` (
  `id_comanda` int(11) NOT NULL,
  `mesa_comanda` varchar(50) NOT NULL,
  `estado_comanda` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `num_pedido` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_compra`
--

CREATE TABLE `tmp_compra` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `costo_tmp` double DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tmp_compra`
--

INSERT INTO `tmp_compra` (`id_tmp`, `id_producto`, `cantidad_tmp`, `costo_tmp`, `session_id`) VALUES
(1, 1, 100, 50, '54169e5ae1dc10f288124b3bfb0eeef0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_cotizacion`
--

CREATE TABLE `tmp_cotizacion` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double DEFAULT NULL,
  `desc_tmp` int(11) NOT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_mesa`
--

CREATE TABLE `tmp_mesa` (
  `id_tmp` int(11) NOT NULL,
  `mesa_tmp` varchar(50) NOT NULL,
  `producto_tmp` int(11) NOT NULL,
  `cant_tmp` double NOT NULL,
  `precio_tmp` double NOT NULL,
  `desc_tmp` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `status_tmp` int(11) NOT NULL,
  `new_cant` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp_ventas`
--

CREATE TABLE `tmp_ventas` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double DEFAULT NULL,
  `desc_tmp` int(11) NOT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslados`
--

CREATE TABLE `traslados` (
  `id_traslado` int(11) NOT NULL,
  `referencia_traslado` varchar(50) NOT NULL,
  `origen_traslado` int(11) NOT NULL,
  `destino_traslado` int(11) NOT NULL,
  `monto_traslado` int(11) NOT NULL,
  `fecha_added` datetime NOT NULL,
  `id_users` int(11) NOT NULL,
  `num_transaccion` varchar(50) NOT NULL,
  `estado_traslado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `nombre_users` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `apellido_users` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_users` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `con_users` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `email_users` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `tipo_users` tinyint(4) NOT NULL,
  `cargo_users` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `sucursal_users` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `comision_users` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_users`, `nombre_users`, `apellido_users`, `usuario_users`, `con_users`, `email_users`, `tipo_users`, `cargo_users`, `sucursal_users`, `date_added`, `comision_users`) VALUES
(1, 'SUPER', 'ADMINISTRADOR', 'admin', '$2y$10$NpL4sn9rhZH5LDDsvGBDmelJMDM9wGejvY4nwxHspsGawRInEjKKm', 'soportetecnico@emo.com.co.com', 0, '1', 1, '2021-10-11 15:06:00', 0),
(2, 'PRUEBA', 'PRUEBA', 'PRUEBA', '$2y$10$UrnLOqCszx8udFBYHu49jueJ8.titWaavee034kVBB3EGplyjCz7m', 'prueba@prueba.com', 0, '3', 8, '2021-10-12 07:10:28', 0),
(3, 'JORGE', 'SALAZAR', 'JORGE.SALAZAR', '$2y$10$/OvnBnr/KKuZ7oeQaQRUk.95YKO8eWS4awM8sUTbAjmeQwMXhVkmK', 'soportetecnico@emo.com.co', 0, '3', 1, '2021-10-12 08:28:41', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_group`
--

CREATE TABLE `user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `permission` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_group`
--

INSERT INTO `user_group` (`user_group_id`, `name`, `permission`, `date_added`) VALUES
(1, 'Super Administrador', 'Inicio,1,1,1;Productos,1,1,1;Proveedores,1,1,1;Clientes,1,1,1;Reportes,1,1,1;Configuracion,1,1,1;Usuarios,1,1,1;Permisos,1,1,1;Categorias,1,1,1;Ventas,1,1,1;Compras,1,1,1;', '2017-08-09 10:22:15'),
(2, 'GERENTE', 'Inicio,1,0,0;Productos,1,0,0;Proveedores,1,0,0;Clientes,1,0,0;Reportes,1,0,0;Configuracion,1,0,0;Usuarios,1,0,0;Permisos,1,0,0;Categorias,1,0,0;Ventas,1,1,0;Compras,1,0,0;', '2017-08-09 11:31:34'),
(3, 'ASESOR', 'Inicio,0,0,0;Productos,0,0,0;Proveedores,0,0,0;Clientes,1,1,0;Reportes,0,0,0;Configuracion,0,0,0;Usuarios,0,0,0;Permisos,0,0,0;Categorias,0,0,0;Ventas,1,1,0;Compras,0,0,0;', '2017-09-15 22:44:50'),
(4, 'ADMINISTRADOR', 'Inicio,1,1,1;Productos,1,1,1;Proveedores,1,1,1;Clientes,1,1,1;Reportes,1,1,1;Configuracion,1,1,1;Usuarios,1,1,1;Permisos,1,1,1;Categorias,1,1,1;Ventas,1,1,1;Compras,1,1,1;', '2017-11-21 11:33:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uso`
--

CREATE TABLE `uso` (
  `Id` int(11) NOT NULL,
  `nombre_uso` varchar(255) NOT NULL,
  `descripcion_uso` text NOT NULL,
  `estado_uso` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `uso`
--

INSERT INTO `uso` (`Id`, `nombre_uso`, `descripcion_uso`, `estado_uso`, `date_added`) VALUES
(1, '2001 - PISO\r\n', '', 1, '2021-11-05 00:00:00'),
(2, '2002 - PARED\r\n', '', 1, '2021-11-05 14:10:53'),
(3, '2003 - FACHADAS\r\n', '', 1, '2021-11-05 14:31:15'),
(4, '2004 - SANITARIOS', '', 1, '2021-11-05 14:45:52'),
(5, '2005 - LAVAMANOS', '', 1, '2021-11-05 14:45:59'),
(6, '2006 - URINALES', '', 1, '2021-11-05 14:46:10'),
(7, '2008 - METALICOS', '', 1, '2021-11-05 14:46:16'),
(8, '2007 - PLASTICOS', '', 1, '2021-11-05 14:46:23'),
(9, '2010 - CENEFAS', '', 1, '2021-11-05 14:46:29'),
(10, '2012 - TRENZAS', '', 1, '2021-11-05 14:46:36'),
(11, '2017 - DUCHA', '', 1, '2021-11-05 14:46:42'),
(12, '2018 - LAVAPLATOS', '', 1, '2021-11-05 14:46:49'),
(13, '2047 - VALVULAS', '', 1, '2021-11-05 14:46:55'),
(14, '2019 - JACUZZI', '', 1, '2021-11-05 14:47:00'),
(15, '2020 - CABINA', '', 1, '2021-11-05 14:47:10'),
(16, '2022 - BAÑERAS', '', 1, '2021-11-05 14:47:16'),
(17, '2024 - LAVAMANOS DE CRISTAL', '', 1, '2021-11-05 14:47:22'),
(18, '2021 - SET DE BAÑO', '', 1, '2021-11-05 14:47:30'),
(19, '2023 - ESPEJOS', '', 1, '2021-11-05 14:47:37'),
(20, '2051 - LISTELOS DESCONTINUADOS', '', 1, '2021-11-05 14:47:47'),
(21, '2025 - COCINAS INTEGRALES', '', 1, '2021-11-05 14:47:54'),
(22, '2052 - VENTA PARA DOFI', '', 1, '2021-11-05 14:48:00'),
(23, '2009 - PORCELANA', '', 1, '2021-11-05 14:48:05'),
(24, '2013 - PEGANTES', '', 1, '2021-11-05 14:48:11'),
(25, '2014 - LECHADAS', '', 1, '2021-11-05 14:48:16'),
(26, '2016 - SANITARIA', '', 1, '2021-11-05 14:48:21'),
(27, '2026 - MUEBLES LAVAMANOS', '', 1, '2021-11-05 14:48:28'),
(28, '2027 - COMPLEMENTOS COCINA', '', 1, '2021-11-05 14:48:36'),
(29, '2031 - ESTRUCTURAL', '', 1, '2021-11-05 14:48:41'),
(30, '2030 - USO GENERAL', '', 1, '2021-11-05 14:48:46'),
(31, '2032 - BLANCO', '', 1, '2021-11-05 14:48:52'),
(32, '2054 - METALISTERIA', '', 1, '2021-11-05 14:48:58'),
(33, '2044 - PLATINAS', '', 1, '2021-11-05 14:49:04'),
(34, '2045 - VARILLAS', '', 1, '2021-11-05 14:49:09'),
(35, '2042 - ANGULOS', '', 1, '2021-11-05 14:49:18'),
(36, '2043 - LAMINAS', '', 1, '2021-11-05 14:49:23'),
(37, '2053 - PERFILERIA DRYWALL', '', 1, '2021-11-05 14:49:29'),
(38, '2011 - CENEFAS DE PISO', '', 1, '2021-11-05 14:49:35'),
(39, '2046 - ALAMBRE', '', 1, '2021-11-05 14:49:40'),
(40, '2015 - ADITIVOS', '', 1, '2021-11-05 14:49:46'),
(41, '2033 - ARRENDAMIENTOS', '', 1, '2021-11-05 14:49:51'),
(42, '2036 - INTERESES', '', 1, '2021-11-05 14:49:56'),
(43, '2035 - SOPORTE TECNICO', '', 1, '2021-11-05 14:50:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agentes`
--
ALTER TABLE `agentes`
  ADD PRIMARY KEY (`id_agente`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id_caja`);

--
-- Indices de la tabla `caja_chica`
--
ALTER TABLE `caja_chica`
  ADD PRIMARY KEY (`id_caja`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `codigo_producto` (`nombre_cliente`);

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`id_comp`);

--
-- Indices de la tabla `contratistas`
--
ALTER TABLE `contratistas`
  ADD PRIMARY KEY (`id_contra`);

--
-- Indices de la tabla `creditos`
--
ALTER TABLE `creditos`
  ADD PRIMARY KEY (`id_credito`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `creditos_abonos`
--
ALTER TABLE `creditos_abonos`
  ADD PRIMARY KEY (`id_abono`);

--
-- Indices de la tabla `creditos_abonos_prov`
--
ALTER TABLE `creditos_abonos_prov`
  ADD PRIMARY KEY (`id_abono`);

--
-- Indices de la tabla `credito_proveedor`
--
ALTER TABLE `credito_proveedor`
  ADD PRIMARY KEY (`id_credito`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_devolucion`
--
ALTER TABLE `detalle_devolucion`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `numero_factura` (`numero_factura`);

--
-- Indices de la tabla `detalle_fact_compra`
--
ALTER TABLE `detalle_fact_compra`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  ADD KEY `id_factura` (`id_factura`);

--
-- Indices de la tabla `detalle_fact_cot`
--
ALTER TABLE `detalle_fact_cot`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `numero_factura` (`numero_factura`);

--
-- Indices de la tabla `detalle_fact_ventas`
--
ALTER TABLE `detalle_fact_ventas`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `numero_factura` (`numero_factura`);

--
-- Indices de la tabla `detalle_traslado`
--
ALTER TABLE `detalle_traslado`
  ADD PRIMARY KEY (`id_detalle_traslado`),
  ADD KEY `id_traslado` (`id_traslado`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `diseño`
--
ALTER TABLE `diseño`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `egresos`
--
ALTER TABLE `egresos`
  ADD PRIMARY KEY (`id_egreso`),
  ADD KEY `users` (`users`);

--
-- Indices de la tabla `facturas_compras`
--
ALTER TABLE `facturas_compras`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`),
  ADD KEY `id_sucursal` (`id_sucursal`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_vendedor` (`id_vendedor`),
  ADD KEY `id_users_factura` (`id_users_factura`);

--
-- Indices de la tabla `facturas_cot`
--
ALTER TABLE `facturas_cot`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `facturas_ventas`
--
ALTER TABLE `facturas_ventas`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `formato`
--
ALTER TABLE `formato`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial_productos`
--
ALTER TABLE `historial_productos`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  ADD PRIMARY KEY (`id_imp`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id_ingreso`),
  ADD KEY `id_consulta` (`id_consulta`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `users` (`users`);

--
-- Indices de la tabla `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`id_kardex`);

--
-- Indices de la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD PRIMARY KEY (`id_linea`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id_modulo`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `id_marca` (`id_marca`),
  ADD UNIQUE KEY `id_formato_producto` (`id_formato_producto`),
  ADD UNIQUE KEY `id_uso_producto` (`id_uso_producto`),
  ADD KEY `id_cat_producto` (`id_linea_producto`),
  ADD KEY `id_med_producto` (`id_med_producto`),
  ADD KEY `id_proveedor` (`id_diseño_producto`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_stock`),
  ADD KEY `id_producto_stock` (`id_producto_stock`),
  ADD KEY `id_sucursal_stock` (`id_sucursal_stock`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `tmp_comandas`
--
ALTER TABLE `tmp_comandas`
  ADD PRIMARY KEY (`id_comanda`);

--
-- Indices de la tabla `tmp_compra`
--
ALTER TABLE `tmp_compra`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `tmp_cotizacion`
--
ALTER TABLE `tmp_cotizacion`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `tmp_mesa`
--
ALTER TABLE `tmp_mesa`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `tmp_ventas`
--
ALTER TABLE `tmp_ventas`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `traslados`
--
ALTER TABLE `traslados`
  ADD PRIMARY KEY (`id_traslado`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `user_name` (`usuario_users`),
  ADD UNIQUE KEY `user_email` (`email_users`);

--
-- Indices de la tabla `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`user_group_id`),
  ADD KEY `user_group_id` (`user_group_id`);

--
-- Indices de la tabla `uso`
--
ALTER TABLE `uso`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agentes`
--
ALTER TABLE `agentes`
  MODIFY `id_agente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id_caja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `caja_chica`
--
ALTER TABLE `caja_chica`
  MODIFY `id_caja` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `id_comp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `contratistas`
--
ALTER TABLE `contratistas`
  MODIFY `id_contra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `creditos`
--
ALTER TABLE `creditos`
  MODIFY `id_credito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `creditos_abonos`
--
ALTER TABLE `creditos_abonos`
  MODIFY `id_abono` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `creditos_abonos_prov`
--
ALTER TABLE `creditos_abonos_prov`
  MODIFY `id_abono` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `credito_proveedor`
--
ALTER TABLE `credito_proveedor`
  MODIFY `id_credito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `detalle_devolucion`
--
ALTER TABLE `detalle_devolucion`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_fact_compra`
--
ALTER TABLE `detalle_fact_compra`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_fact_cot`
--
ALTER TABLE `detalle_fact_cot`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalle_fact_ventas`
--
ALTER TABLE `detalle_fact_ventas`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_traslado`
--
ALTER TABLE `detalle_traslado`
  MODIFY `id_detalle_traslado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `diseño`
--
ALTER TABLE `diseño`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `egresos`
--
ALTER TABLE `egresos`
  MODIFY `id_egreso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturas_compras`
--
ALTER TABLE `facturas_compras`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturas_cot`
--
ALTER TABLE `facturas_cot`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `facturas_ventas`
--
ALTER TABLE `facturas_ventas`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formato`
--
ALTER TABLE `formato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_productos`
--
ALTER TABLE `historial_productos`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  MODIFY `id_imp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id_ingreso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `kardex`
--
ALTER TABLE `kardex`
  MODIFY `id_kardex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `lineas`
--
ALTER TABLE `lineas`
  MODIFY `id_linea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id_mesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id_modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id_sucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `tmp_comandas`
--
ALTER TABLE `tmp_comandas`
  MODIFY `id_comanda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tmp_compra`
--
ALTER TABLE `tmp_compra`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tmp_cotizacion`
--
ALTER TABLE `tmp_cotizacion`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tmp_mesa`
--
ALTER TABLE `tmp_mesa`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tmp_ventas`
--
ALTER TABLE `tmp_ventas`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `traslados`
--
ALTER TABLE `traslados`
  MODIFY `id_traslado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `uso`
--
ALTER TABLE `uso`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
