# +===================================================================
# | Generado el 26-05-2021 a las 02:05:22 PM
# | Servidor: miscelaneashaddai.tienda-jes.com
# | MySQL Version: 5.5.5-10.4.18-MariaDB-cll-lve
# | PHP Version: 7.0.33
# | Base de datos: 'u147309006_miscelanea'
# | Tablas: agentes;  caja;  caja_chica;  cargo;  clientes;  comprobantes;  contratistas;  credito_proveedor;  creditos;  creditos_abonos;  creditos_abonos_prov;  currencies;  detalle_devolucion;  detalle_fact_compra;  detalle_fact_cot;  detalle_fact_ventas;  detalle_traslado;  egresos;  facturas_compras;  facturas_cot;  facturas_ventas;  historial_productos;  impuestos;  ingresos;  kardex;  lineas;  mesas;  modulos;  perfil;  productos;  proveedores;  stock;  sucursales;  tmp_comandas;  tmp_compra;  tmp_cotizacion;  tmp_mesa;  tmp_ventas;  traslados;  user_group;  users
# +-------------------------------------------------------------------
# Si tienen tablas con relacion y no estan en orden dara problemas al recuperar datos. Para evitarlo:
SET FOREIGN_KEY_CHECKS=0;
SET time_zone = '+00:00';
SET sql_mode = '';

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE DATABASE IF NOT EXISTS `u147309006_miscelanea`;

USE `u147309006_miscelanea`;
# | Vaciado de tabla 'agentes'
# +-------------------------------------
DROP TABLE IF EXISTS `agentes`;

# | Estructura de la tabla 'agentes'
# +-------------------------------------
CREATE TABLE `agentes` (
  `id_agente` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_addeda` datetime NOT NULL,
  PRIMARY KEY (`id_agente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'agentes'
# +-------------------------------------

# | Vaciado de tabla 'caja'
# +-------------------------------------
DROP TABLE IF EXISTS `caja`;

# | Estructura de la tabla 'caja'
# +-------------------------------------
CREATE TABLE `caja` (
  `id_caja` int(11) NOT NULL AUTO_INCREMENT,
  `apertura_caja` double NOT NULL,
  `cierre_caja` double NOT NULL,
  `fecha_caja` date NOT NULL,
  `estado_caja` int(11) NOT NULL,
  `users_caja` int(11) NOT NULL,
  PRIMARY KEY (`id_caja`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'caja'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `caja` (`id_caja`, `apertura_caja`, `cierre_caja`, `fecha_caja`, `estado_caja`, `users_caja`) VALUES 
      ('1', '200', '0', '2020-12-05', '1', '1'), 
      ('2', '200', '0', '2020-12-06', '1', '1'), 
      ('3', '200', '0', '2020-12-07', '1', '1'), 
      ('4', '200', '0', '2020-12-08', '1', '1'), 
      ('5', '200', '0', '2020-12-11', '1', '1'), 
      ('6', '200', '0', '2020-12-12', '1', '1'), 
      ('7', '200', '0', '2020-12-13', '1', '1'), 
      ('8', '200', '0', '2020-12-15', '1', '1'), 
      ('9', '200', '0', '2020-12-21', '1', '1'), 
      ('10', '200', '0', '2021-01-04', '1', '1'), 
      ('11', '200', '0', '2021-02-20', '1', '1'), 
      ('12', '200', '0', '2021-03-26', '1', '1'), 
      ('13', '200', '0', '2021-04-08', '1', '1'), 
      ('14', '200', '0', '2021-04-16', '1', '1'), 
      ('15', '200', '0', '2021-04-19', '1', '1'), 
      ('16', '200', '0', '2021-04-20', '1', '1'), 
      ('17', '200', '0', '2021-04-21', '1', '1'), 
      ('18', '100', '0', '2021-04-23', '1', '1'), 
      ('19', '100', '0', '2021-05-26', '1', '1');
COMMIT;

# | Vaciado de tabla 'caja_chica'
# +-------------------------------------
DROP TABLE IF EXISTS `caja_chica`;

# | Estructura de la tabla 'caja_chica'
# +-------------------------------------
CREATE TABLE `caja_chica` (
  `id_caja` int(11) NOT NULL AUTO_INCREMENT,
  `referencia_caja` varchar(255) NOT NULL,
  `monto_caja` double NOT NULL,
  `descripcion_caja` varchar(255) NOT NULL,
  `tipo_caja` tinyint(4) NOT NULL,
  `users_caja` int(11) NOT NULL,
  `date_added_caja` datetime NOT NULL,
  PRIMARY KEY (`id_caja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'caja_chica'
# +-------------------------------------

# | Vaciado de tabla 'cargo'
# +-------------------------------------
DROP TABLE IF EXISTS `cargo`;

# | Estructura de la tabla 'cargo'
# +-------------------------------------
CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cargo` varchar(255) NOT NULL,
  `estado_cargo` varchar(11) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'cargo'
# +-------------------------------------

# | Vaciado de tabla 'clientes'
# +-------------------------------------
DROP TABLE IF EXISTS `clientes`;

# | Estructura de la tabla 'clientes'
# +-------------------------------------
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(255) NOT NULL,
  `fiscal_cliente` varchar(255) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `status_cliente` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `codigo_producto` (`nombre_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'clientes'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `clientes` (`id_cliente`, `nombre_cliente`, `fiscal_cliente`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `status_cliente`, `date_added`) VALUES 
      ('1', 'CLIENTE GENERICO', '1111111111', '1111111111', 'abcd@abcd.com', 'ARMENIA QUINDIO', '1', '2021-04-23 11:07:53');
COMMIT;

# | Vaciado de tabla 'comprobantes'
# +-------------------------------------
DROP TABLE IF EXISTS `comprobantes`;

# | Estructura de la tabla 'comprobantes'
# +-------------------------------------
CREATE TABLE `comprobantes` (
  `id_comp` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_comp` varchar(100) NOT NULL,
  `serie_comp` varchar(100) NOT NULL,
  `desde_comp` int(11) NOT NULL,
  `hasta_comp` int(11) NOT NULL,
  `long_comp` int(11) NOT NULL,
  `actual_comp` int(11) NOT NULL,
  `vencimiento_comp` date NOT NULL,
  `estado_comp` int(11) NOT NULL,
  PRIMARY KEY (`id_comp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'comprobantes'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `comprobantes` (`id_comp`, `nombre_comp`, `serie_comp`, `desde_comp`, `hasta_comp`, `long_comp`, `actual_comp`, `vencimiento_comp`, `estado_comp`) VALUES 
      ('1', 'TICKET', 'TK', '1', '1000000', '6', '1', '2024-12-31', '1'), 
      ('2', 'FACTURA', 'FA21', '1', '10000', '6', '1', '2022-04-28', '1');
COMMIT;

# | Vaciado de tabla 'contratistas'
# +-------------------------------------
DROP TABLE IF EXISTS `contratistas`;

# | Estructura de la tabla 'contratistas'
# +-------------------------------------
CREATE TABLE `contratistas` (
  `id_contra` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_addedc` datetime NOT NULL,
  PRIMARY KEY (`id_contra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'contratistas'
# +-------------------------------------

# | Vaciado de tabla 'credito_proveedor'
# +-------------------------------------
DROP TABLE IF EXISTS `credito_proveedor`;

# | Estructura de la tabla 'credito_proveedor'
# +-------------------------------------
CREATE TABLE `credito_proveedor` (
  `id_credito` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_credito` datetime NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `monto_credito` double NOT NULL,
  `saldo_credito` double NOT NULL,
  `estado_credito` tinyint(1) NOT NULL,
  `id_users_credito` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  PRIMARY KEY (`id_credito`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'credito_proveedor'
# +-------------------------------------

# | Vaciado de tabla 'creditos'
# +-------------------------------------
DROP TABLE IF EXISTS `creditos`;

# | Estructura de la tabla 'creditos'
# +-------------------------------------
CREATE TABLE `creditos` (
  `id_credito` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_credito` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `monto_credito` double NOT NULL,
  `saldo_credito` double NOT NULL,
  `estado_credito` tinyint(1) NOT NULL,
  `id_users_credito` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  PRIMARY KEY (`id_credito`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'creditos'
# +-------------------------------------

# | Vaciado de tabla 'creditos_abonos'
# +-------------------------------------
DROP TABLE IF EXISTS `creditos_abonos`;

# | Estructura de la tabla 'creditos_abonos'
# +-------------------------------------
CREATE TABLE `creditos_abonos` (
  `id_abono` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_abono` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `monto_abono` double NOT NULL,
  `abono` double NOT NULL,
  `saldo_abono` double NOT NULL,
  `id_users_abono` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `concepto_abono` varchar(255) NOT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'creditos_abonos'
# +-------------------------------------

# | Vaciado de tabla 'creditos_abonos_prov'
# +-------------------------------------
DROP TABLE IF EXISTS `creditos_abonos_prov`;

# | Estructura de la tabla 'creditos_abonos_prov'
# +-------------------------------------
CREATE TABLE `creditos_abonos_prov` (
  `id_abono` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(20) NOT NULL,
  `fecha_abono` datetime NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `monto_abono` double NOT NULL,
  `abono` double NOT NULL,
  `saldo_abono` double NOT NULL,
  `id_users_abono` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `concepto_abono` varchar(255) NOT NULL,
  PRIMARY KEY (`id_abono`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'creditos_abonos_prov'
# +-------------------------------------

# | Vaciado de tabla 'currencies'
# +-------------------------------------
DROP TABLE IF EXISTS `currencies`;

# | Estructura de la tabla 'currencies'
# +-------------------------------------
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'currencies'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES 
      ('1', 'US Dollar', '$', '2', ',', '.', 'USD'), 
      ('2', 'Libra Esterlina', '&pound;', '2', ',', '.', 'GBP'), 
      ('3', 'Euro', 'â‚¬', '2', '.', ',', 'EUR'), 
      ('4', 'South African Rand', 'R', '2', '.', ',', 'ZAR'), 
      ('5', 'Danish Krone', 'kr ', '2', '.', ',', 'DKK'), 
      ('6', 'Israeli Shekel', 'NIS ', '2', ',', '.', 'ILS'), 
      ('7', 'Swedish Krona', 'kr ', '2', '.', ',', 'SEK'), 
      ('8', 'Kenyan Shilling', 'KSh ', '2', ',', '.', 'KES'), 
      ('9', 'Canadian Dollar', 'C$', '2', ',', '.', 'CAD'), 
      ('10', 'Philippine Peso', 'P ', '2', ',', '.', 'PHP'), 
      ('11', 'Indian Rupee', 'Rs. ', '2', ',', '.', 'INR'), 
      ('12', 'Australian Dollar', '$', '2', ',', '.', 'AUD'), 
      ('13', 'Singapore Dollar', 'SGD ', '2', ',', '.', 'SGD'), 
      ('14', 'Norske Kroner', 'kr ', '2', '.', ',', 'NOK'), 
      ('15', 'New Zealand Dollar', '$', '2', ',', '.', 'NZD'), 
      ('16', 'Vietnamese Dong', 'VND ', '0', '.', ',', 'VND'), 
      ('17', 'Swiss Franc', 'CHF ', '2', '\'', '.', 'CHF'), 
      ('18', 'Quetzal Guatemalteco', 'Q', '2', ',', '.', 'GTQ'), 
      ('19', 'Malaysian Ringgit', 'RM', '2', ',', '.', 'MYR'), 
      ('20', 'Real Brasile&ntilde;o', 'R$', '2', '.', ',', 'BRL'), 
      ('21', 'Thai Baht', 'THB ', '2', ',', '.', 'THB'), 
      ('22', 'Nigerian Naira', 'NGN ', '2', ',', '.', 'NGN'), 
      ('23', 'Peso Argentino', '$', '2', '.', ',', 'ARS'), 
      ('24', 'Bangladeshi Taka', 'Tk', '2', ',', '.', 'BDT'), 
      ('25', 'United Arab Emirates Dirham', 'DH ', '2', ',', '.', 'AED'), 
      ('26', 'Hong Kong Dollar', '$', '2', ',', '.', 'HKD'), 
      ('27', 'Indonesian Rupiah', 'Rp', '2', ',', '.', 'IDR'), 
      ('28', 'Peso Mexicano', '$', '2', ',', '.', 'MXN'), 
      ('29', 'Egyptian Pound', '&pound;', '2', ',', '.', 'EGP'), 
      ('30', 'Peso Colombiano', '$', '2', '.', ',', 'COP'), 
      ('31', 'West African Franc', 'CFA ', '2', ',', '.', 'XOF'), 
      ('32', 'Chinese Renminbi', 'RMB ', '2', ',', '.', 'CNY');
COMMIT;

# | Vaciado de tabla 'detalle_devolucion'
# +-------------------------------------
DROP TABLE IF EXISTS `detalle_devolucion`;

# | Estructura de la tabla 'detalle_devolucion'
# +-------------------------------------
CREATE TABLE `detalle_devolucion` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `desc_venta` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  KEY `id_factura` (`id_factura`),
  KEY `numero_factura` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'detalle_devolucion'
# +-------------------------------------

# | Vaciado de tabla 'detalle_fact_compra'
# +-------------------------------------
DROP TABLE IF EXISTS `detalle_fact_compra`;

# | Estructura de la tabla 'detalle_fact_compra'
# +-------------------------------------
CREATE TABLE `detalle_fact_compra` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio_costo` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  KEY `id_factura` (`id_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'detalle_fact_compra'
# +-------------------------------------

# | Vaciado de tabla 'detalle_fact_cot'
# +-------------------------------------
DROP TABLE IF EXISTS `detalle_fact_cot`;

# | Estructura de la tabla 'detalle_fact_cot'
# +-------------------------------------
CREATE TABLE `detalle_fact_cot` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `desc_venta` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  KEY `id_factura` (`id_factura`),
  KEY `numero_factura` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'detalle_fact_cot'
# +-------------------------------------

# | Vaciado de tabla 'detalle_fact_ventas'
# +-------------------------------------
DROP TABLE IF EXISTS `detalle_fact_ventas`;

# | Estructura de la tabla 'detalle_fact_ventas'
# +-------------------------------------
CREATE TABLE `detalle_fact_ventas` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(25) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `desc_venta` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  `importe_venta` double NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `numero_cotizacion` (`numero_factura`,`id_producto`),
  KEY `id_factura` (`id_factura`),
  KEY `numero_factura` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'detalle_fact_ventas'
# +-------------------------------------

# | Vaciado de tabla 'detalle_traslado'
# +-------------------------------------
DROP TABLE IF EXISTS `detalle_traslado`;

# | Estructura de la tabla 'detalle_traslado'
# +-------------------------------------
CREATE TABLE `detalle_traslado` (
  `id_detalle_traslado` int(11) NOT NULL AUTO_INCREMENT,
  `id_traslado` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  `num_transaccion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_detalle_traslado`),
  KEY `id_traslado` (`id_traslado`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'detalle_traslado'
# +-------------------------------------

# | Vaciado de tabla 'egresos'
# +-------------------------------------
DROP TABLE IF EXISTS `egresos`;

# | Estructura de la tabla 'egresos'
# +-------------------------------------
CREATE TABLE `egresos` (
  `id_egreso` int(11) NOT NULL AUTO_INCREMENT,
  `referencia_egreso` varchar(100) CHARACTER SET latin1 NOT NULL,
  `monto` double NOT NULL,
  `descripcion_egreso` text CHARACTER SET latin1 NOT NULL,
  `fecha_added` datetime NOT NULL,
  `users` int(11) NOT NULL,
  PRIMARY KEY (`id_egreso`),
  KEY `users` (`users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'egresos'
# +-------------------------------------

# | Vaciado de tabla 'facturas_compras'
# +-------------------------------------
DROP TABLE IF EXISTS `facturas_compras`;

# | Estructura de la tabla 'facturas_compras'
# +-------------------------------------
CREATE TABLE `facturas_compras` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `numero_factura` varchar(50) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` int(11) NOT NULL,
  `monto_factura` double NOT NULL,
  `estado_factura` tinyint(4) NOT NULL,
  `id_users_factura` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `ref_factura` varchar(50) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`),
  KEY `id_sucursal` (`id_sucursal`),
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_vendedor` (`id_vendedor`),
  KEY `id_users_factura` (`id_users_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'facturas_compras'
# +-------------------------------------

# | Vaciado de tabla 'facturas_cot'
# +-------------------------------------
DROP TABLE IF EXISTS `facturas_cot`;

# | Estructura de la tabla 'facturas_cot'
# +-------------------------------------
CREATE TABLE `facturas_cot` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
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
  `print_img` int(11) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'facturas_cot'
# +-------------------------------------

# | Vaciado de tabla 'facturas_ventas'
# +-------------------------------------
DROP TABLE IF EXISTS `facturas_ventas`;

# | Estructura de la tabla 'facturas_ventas'
# +-------------------------------------
CREATE TABLE `facturas_ventas` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
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
  `num_trans_factura` varchar(50) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `numero_cotizacion` (`numero_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'facturas_ventas'
# +-------------------------------------

# | Vaciado de tabla 'historial_productos'
# +-------------------------------------
DROP TABLE IF EXISTS `historial_productos`;

# | Estructura de la tabla 'historial_productos'
# +-------------------------------------
CREATE TABLE `historial_productos` (
  `id_historial` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `fecha_historial` datetime NOT NULL,
  `nota_historial` varchar(255) NOT NULL,
  `referencia_historial` varchar(100) NOT NULL,
  `cantidad_historial` double NOT NULL,
  `tipo_historial` int(11) NOT NULL,
  PRIMARY KEY (`id_historial`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# | Carga de datos de la tabla 'historial_productos'
# +-------------------------------------

# | Vaciado de tabla 'impuestos'
# +-------------------------------------
DROP TABLE IF EXISTS `impuestos`;

# | Estructura de la tabla 'impuestos'
# +-------------------------------------
CREATE TABLE `impuestos` (
  `id_imp` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_imp` varchar(100) NOT NULL,
  `valor_imp` double NOT NULL,
  `estado_imp` int(11) NOT NULL,
  PRIMARY KEY (`id_imp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'impuestos'
# +-------------------------------------

# | Vaciado de tabla 'ingresos'
# +-------------------------------------
DROP TABLE IF EXISTS `ingresos`;

# | Estructura de la tabla 'ingresos'
# +-------------------------------------
CREATE TABLE `ingresos` (
  `id_ingreso` int(11) NOT NULL AUTO_INCREMENT,
  `id_consulta` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `monto` double NOT NULL,
  `fecha_added` datetime NOT NULL,
  `users` int(11) NOT NULL,
  PRIMARY KEY (`id_ingreso`),
  KEY `id_consulta` (`id_consulta`),
  KEY `id_paciente` (`id_paciente`),
  KEY `users` (`users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'ingresos'
# +-------------------------------------

# | Vaciado de tabla 'kardex'
# +-------------------------------------
DROP TABLE IF EXISTS `kardex`;

# | Estructura de la tabla 'kardex'
# +-------------------------------------
CREATE TABLE `kardex` (
  `id_kardex` int(11) NOT NULL AUTO_INCREMENT,
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
  `tipo_movimiento` int(11) NOT NULL,
  PRIMARY KEY (`id_kardex`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'kardex'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `kardex` (`id_kardex`, `fecha_kardex`, `producto_kardex`, `cant_entrada`, `costo_entrada`, `total_entrada`, `cant_salida`, `costo_salida`, `total_salida`, `cant_saldo`, `costo_saldo`, `total_saldo`, `added_kardex`, `users_kardex`, `tipo_movimiento`) VALUES 
      ('1', '2021-04-23', '1', '0', '50', '0', '0', '0', '0', '0', '0', '0', '2021-04-23 11:38:49', '1', '5');
COMMIT;

# | Vaciado de tabla 'lineas'
# +-------------------------------------
DROP TABLE IF EXISTS `lineas`;

# | Estructura de la tabla 'lineas'
# +-------------------------------------
CREATE TABLE `lineas` (
  `id_linea` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_linea` varchar(255) NOT NULL,
  `descripcion_linea` text NOT NULL,
  `estado_linea` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id_linea`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'lineas'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `lineas` (`id_linea`, `nombre_linea`, `descripcion_linea`, `estado_linea`, `date_added`) VALUES 
      ('1', 'MARTILLOS', '', '1', '2021-04-23 11:37:01');
COMMIT;

# | Vaciado de tabla 'mesas'
# +-------------------------------------
DROP TABLE IF EXISTS `mesas`;

# | Estructura de la tabla 'mesas'
# +-------------------------------------
CREATE TABLE `mesas` (
  `id_mesa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_mesa` varchar(255) NOT NULL,
  `descripcion_mesa` text NOT NULL,
  `estado_mesa` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `status_mesa` int(11) NOT NULL,
  PRIMARY KEY (`id_mesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'mesas'
# +-------------------------------------

# | Vaciado de tabla 'modulos'
# +-------------------------------------
DROP TABLE IF EXISTS `modulos`;

# | Estructura de la tabla 'modulos'
# +-------------------------------------
CREATE TABLE `modulos` (
  `id_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_modulo` varchar(30) NOT NULL,
  PRIMARY KEY (`id_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'modulos'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `modulos` (`id_modulo`, `nombre_modulo`) VALUES 
      ('1', 'Inicio'), 
      ('2', 'Productos'), 
      ('3', 'Proveedores'), 
      ('4', 'Clientes'), 
      ('5', 'Reportes'), 
      ('6', 'Configuracion'), 
      ('7', 'Usuarios'), 
      ('8', 'Permisos'), 
      ('9', 'Categorias'), 
      ('10', 'Ventas'), 
      ('11', 'Compras');
COMMIT;

# | Vaciado de tabla 'perfil'
# +-------------------------------------
DROP TABLE IF EXISTS `perfil`;

# | Estructura de la tabla 'perfil'
# +-------------------------------------
CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
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
  `precio_venta` int(11) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'perfil'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `perfil` (`id_perfil`, `nombre_empresa`, `giro_empresa`, `fiscal_empresa`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `impuesto`, `nom_impuesto`, `moneda`, `logo_url`, `cliente_id`, `comp_id`, `doc_cliente`, `doc_proveedor`, `precio_venta`) VALUES 
      ('1', 'MISCELANEA SHADDAI', 'Siempre a su servicio', '41928999-5', 'Barrio Veracruz M 13 No. 16', 'CALARCA', '63005', 'QUINDIO', '+57315 3717726', 'marialidagrajales@gmail.com', '19', 'IVA', '$', '../../img/1622054116_MISCELANEA SHADDAI.png', '1', '1', 'NIT/CC', 'NIT', '1');
COMMIT;

# | Vaciado de tabla 'productos'
# +-------------------------------------
DROP TABLE IF EXISTS `productos`;

# | Estructura de la tabla 'productos'
# +-------------------------------------
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_producto` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nombre_producto` varchar(255) NOT NULL,
  `descripcion_producto` text NOT NULL,
  `id_linea_producto` int(11) NOT NULL,
  `id_med_producto` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `inv_producto` tinyint(4) NOT NULL,
  `iva_producto` tinyint(4) NOT NULL,
  `estado_producto` tinyint(4) NOT NULL,
  `costo_producto` double NOT NULL,
  `utilidad_producto` double NOT NULL,
  `moneda_producto` int(11) NOT NULL,
  `valor1_producto` double NOT NULL,
  `valor2_producto` double NOT NULL,
  `valor3_producto` double NOT NULL,
  `valor4_producto` double NOT NULL,
  `stock_producto` double NOT NULL,
  `stock_min_producto` double NOT NULL,
  `date_added` datetime NOT NULL,
  `image_path` varchar(300) NOT NULL,
  `id_imp_producto` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_cat_producto` (`id_linea_producto`),
  KEY `id_med_producto` (`id_med_producto`),
  KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

# | Carga de datos de la tabla 'productos'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `productos` (`id_producto`, `codigo_producto`, `nombre_producto`, `descripcion_producto`, `id_linea_producto`, `id_med_producto`, `id_proveedor`, `inv_producto`, `iva_producto`, `estado_producto`, `costo_producto`, `utilidad_producto`, `moneda_producto`, `valor1_producto`, `valor2_producto`, `valor3_producto`, `valor4_producto`, `stock_producto`, `stock_min_producto`, `date_added`, `image_path`, `id_imp_producto`) VALUES 
      ('1', '10000', 'MARTILLO TRUPER DE 16 ONZAS', '', '1', '0', '1', '0', '0', '1', '50', '0', '0', '100', '90', '90', '90', '0', '1', '2021-04-23 11:38:49', '', '0');
COMMIT;

# | Vaciado de tabla 'proveedores'
# +-------------------------------------
DROP TABLE IF EXISTS `proveedores`;

# | Estructura de la tabla 'proveedores'
# +-------------------------------------
CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(255) NOT NULL,
  `fiscal_proveedor` varchar(100) NOT NULL,
  `web_proveedor` varchar(255) NOT NULL,
  `direccion_proveedor` text NOT NULL,
  `contacto_proveedor` varchar(255) NOT NULL,
  `email_proveedor` varchar(255) NOT NULL,
  `telefono_proveedor` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `estado_proveedor` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'proveedores'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `proveedores` (`id_proveedor`, `nombre_proveedor`, `fiscal_proveedor`, `web_proveedor`, `direccion_proveedor`, `contacto_proveedor`, `email_proveedor`, `telefono_proveedor`, `date_added`, `estado_proveedor`) VALUES 
      ('1', 'LA COLIMA', '69835623', 'colimagt.com', 'CIUDAD', 'EDWIN MACZ', 'edwingiovani2009@gmail.com', '+50245472055', '2021-04-23 11:38:08', '1');
COMMIT;

# | Vaciado de tabla 'stock'
# +-------------------------------------
DROP TABLE IF EXISTS `stock`;

# | Estructura de la tabla 'stock'
# +-------------------------------------
CREATE TABLE `stock` (
  `id_stock` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto_stock` int(11) NOT NULL,
  `id_sucursal_stock` int(11) NOT NULL,
  `cantidad_stock` double NOT NULL,
  PRIMARY KEY (`id_stock`),
  KEY `id_producto_stock` (`id_producto_stock`),
  KEY `id_sucursal_stock` (`id_sucursal_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'stock'
# +-------------------------------------

# | Vaciado de tabla 'sucursales'
# +-------------------------------------
DROP TABLE IF EXISTS `sucursales`;

# | Estructura de la tabla 'sucursales'
# +-------------------------------------
CREATE TABLE `sucursales` (
  `id_sucursal` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_sucursal` varchar(50) NOT NULL,
  `nombre_sucursal` varchar(255) NOT NULL,
  `direccion_sucursal` text NOT NULL,
  `limite_sucursal` double NOT NULL,
  `estado_sucursal` tinyint(4) NOT NULL,
  `fecha_added` datetime NOT NULL,
  PRIMARY KEY (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'sucursales'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `sucursales` (`id_sucursal`, `codigo_sucursal`, `nombre_sucursal`, `direccion_sucursal`, `limite_sucursal`, `estado_sucursal`, `fecha_added`) VALUES 
      ('1', '01', 'MISCELANEA SHADDAI', 'Barrio Veracruz M 13 No. 16', '100', '1', '2021-05-26 13:29:26');
COMMIT;

# | Vaciado de tabla 'tmp_comandas'
# +-------------------------------------
DROP TABLE IF EXISTS `tmp_comandas`;

# | Estructura de la tabla 'tmp_comandas'
# +-------------------------------------
CREATE TABLE `tmp_comandas` (
  `id_comanda` int(11) NOT NULL AUTO_INCREMENT,
  `mesa_comanda` varchar(50) NOT NULL,
  `estado_comanda` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `num_pedido` varchar(100) NOT NULL,
  PRIMARY KEY (`id_comanda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'tmp_comandas'
# +-------------------------------------

# | Vaciado de tabla 'tmp_compra'
# +-------------------------------------
DROP TABLE IF EXISTS `tmp_compra`;

# | Estructura de la tabla 'tmp_compra'
# +-------------------------------------
CREATE TABLE `tmp_compra` (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `costo_tmp` double DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

# | Carga de datos de la tabla 'tmp_compra'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `tmp_compra` (`id_tmp`, `id_producto`, `cantidad_tmp`, `costo_tmp`, `session_id`) VALUES 
      ('1', '1', '100', '50', '54169e5ae1dc10f288124b3bfb0eeef0');
COMMIT;

# | Vaciado de tabla 'tmp_cotizacion'
# +-------------------------------------
DROP TABLE IF EXISTS `tmp_cotizacion`;

# | Estructura de la tabla 'tmp_cotizacion'
# +-------------------------------------
CREATE TABLE `tmp_cotizacion` (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double DEFAULT NULL,
  `desc_tmp` int(11) NOT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

# | Carga de datos de la tabla 'tmp_cotizacion'
# +-------------------------------------

# | Vaciado de tabla 'tmp_mesa'
# +-------------------------------------
DROP TABLE IF EXISTS `tmp_mesa`;

# | Estructura de la tabla 'tmp_mesa'
# +-------------------------------------
CREATE TABLE `tmp_mesa` (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `mesa_tmp` varchar(50) NOT NULL,
  `producto_tmp` int(11) NOT NULL,
  `cant_tmp` double NOT NULL,
  `precio_tmp` double NOT NULL,
  `desc_tmp` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `status_tmp` int(11) NOT NULL,
  `new_cant` double NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'tmp_mesa'
# +-------------------------------------

# | Vaciado de tabla 'tmp_ventas'
# +-------------------------------------
DROP TABLE IF EXISTS `tmp_ventas`;

# | Estructura de la tabla 'tmp_ventas'
# +-------------------------------------
CREATE TABLE `tmp_ventas` (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` double NOT NULL,
  `precio_tmp` double DEFAULT NULL,
  `desc_tmp` int(11) NOT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

# | Carga de datos de la tabla 'tmp_ventas'
# +-------------------------------------

# | Vaciado de tabla 'traslados'
# +-------------------------------------
DROP TABLE IF EXISTS `traslados`;

# | Estructura de la tabla 'traslados'
# +-------------------------------------
CREATE TABLE `traslados` (
  `id_traslado` int(11) NOT NULL AUTO_INCREMENT,
  `referencia_traslado` varchar(50) NOT NULL,
  `origen_traslado` int(11) NOT NULL,
  `destino_traslado` int(11) NOT NULL,
  `monto_traslado` int(11) NOT NULL,
  `fecha_added` datetime NOT NULL,
  `id_users` int(11) NOT NULL,
  `num_transaccion` varchar(50) NOT NULL,
  `estado_traslado` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_traslado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'traslados'
# +-------------------------------------

# | Vaciado de tabla 'user_group'
# +-------------------------------------
DROP TABLE IF EXISTS `user_group`;

# | Estructura de la tabla 'user_group'
# +-------------------------------------
CREATE TABLE `user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `permission` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_group_id`),
  KEY `user_group_id` (`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# | Carga de datos de la tabla 'user_group'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `user_group` (`user_group_id`, `name`, `permission`, `date_added`) VALUES 
      ('1', 'Super Administrador', 'Inicio,1,1,1;Productos,1,1,1;Proveedores,1,1,1;Clientes,1,1,1;Reportes,1,1,1;Configuracion,1,1,1;Usuarios,1,1,1;Permisos,1,1,1;Categorias,1,1,1;Ventas,1,1,1;Compras,1,1,1;', '2017-08-09 10:22:15'), 
      ('2', 'GERENTE', 'Inicio,1,0,0;Productos,1,0,0;Proveedores,1,0,0;Clientes,1,0,0;Reportes,1,0,0;Configuracion,1,0,0;Usuarios,1,0,0;Permisos,1,0,0;Categorias,1,0,0;Ventas,1,1,0;Compras,1,0,0;', '2017-08-09 11:31:34'), 
      ('3', 'FACTURADOR', 'Inicio,0,0,0;Productos,0,0,0;Proveedores,0,0,0;Clientes,0,0,0;Reportes,0,0,0;Configuracion,0,0,0;Usuarios,0,0,0;Permisos,0,0,0;Categorias,0,0,0;Ventas,1,0,0;Compras,0,0,0;', '2017-09-15 22:44:50'), 
      ('4', 'ADMINISTRADOR', 'Inicio,1,1,1;Productos,1,1,1;Proveedores,1,1,1;Clientes,1,1,1;Reportes,1,1,1;Configuracion,1,1,1;Usuarios,1,1,1;Permisos,1,1,1;Categorias,1,1,1;Ventas,1,0,0;Compras,1,1,1;', '2017-11-21 11:33:36');
COMMIT;

# | Vaciado de tabla 'users'
# +-------------------------------------
DROP TABLE IF EXISTS `users`;

# | Estructura de la tabla 'users'
# +-------------------------------------
CREATE TABLE `users` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',
  `nombre_users` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `apellido_users` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_users` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `con_users` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `email_users` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `tipo_users` tinyint(4) NOT NULL,
  `cargo_users` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `sucursal_users` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `comision_users` double NOT NULL,
  PRIMARY KEY (`id_users`),
  UNIQUE KEY `user_name` (`usuario_users`),
  UNIQUE KEY `user_email` (`email_users`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

# | Carga de datos de la tabla 'users'
# +-------------------------------------

COMMIT;
INSERT IGNORE INTO `users` (`id_users`, `nombre_users`, `apellido_users`, `usuario_users`, `con_users`, `email_users`, `tipo_users`, `cargo_users`, `sucursal_users`, `date_added`, `comision_users`) VALUES 
      ('1', 'SUPER', 'ADMINISTRADOR', 'admin', '$2y$10$NpL4sn9rhZH5LDDsvGBDmelJMDM9wGejvY4nwxHspsGawRInEjKKm', 'root@admin.com', '0', '1', '1', '2016-05-21 15:06:00', '0');
COMMIT;

