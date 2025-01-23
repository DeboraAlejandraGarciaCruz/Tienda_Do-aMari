/*
 Navicat Premium Data Transfer

 Source Server         : Aeropuerto
 Source Server Type    : MySQL
 Source Server Version : 50130 (5.1.30-community-log)
 Source Host           : localhost:3306
 Source Schema         : sis_inventario

 Target Server Type    : MySQL
 Target Server Version : 50130 (5.1.30-community-log)
 File Encoding         : 65001

 Date: 22/01/2025 21:56:27
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categorias
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO `categorias` VALUES (1, 'SABRITAS', '2024-06-22 19:43:54');
INSERT INTO `categorias` VALUES (2, 'MARINELA', '2024-06-22 19:44:02');
INSERT INTO `categorias` VALUES (3, 'GAMESA', '2024-06-22 19:44:20');
INSERT INTO `categorias` VALUES (4, 'BIMBO', '2024-06-22 19:44:44');
INSERT INTO `categorias` VALUES (5, 'BARCEL', '2024-06-22 20:11:58');

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `direccion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (3, 'cliente', 2147483647, 'juan@hotmail.com', '(300) 341-2345', 'Calle 23 # 45 - 56', '1980-11-02', 19, '2024-06-22 19:03:31', '2024-06-22 18:03:31');
INSERT INTO `clientes` VALUES (4, 'cliente', 2147483647, 'pedro@gmail.com', '(399) 876-5432', 'Calle 34 N33 -56', '1970-08-07', 8, '2024-06-21 14:25:51', '2024-06-22 17:53:35');
INSERT INTO `clientes` VALUES (5, 'cliente', 325235235, 'miguel@hotmail.com', '(254) 545-3446', 'calle 34 # 34 - 23', '1976-03-04', 32, '2017-12-26 17:27:13', '2024-06-22 17:53:42');
INSERT INTO `clientes` VALUES (6, 'cliente', 34565432, 'margarita@hotmail.com', '(344) 345-6678', 'Calle 45 # 34 - 56', '1976-11-30', 19, '2019-05-25 01:10:41', '2024-06-22 17:53:50');
INSERT INTO `clientes` VALUES (7, 'cliente', 786786545, 'julian@hotmail.com', '(675) 674-5453', 'Carrera 45 # 54 - 56', '1980-04-05', 14, '2017-12-26 17:26:28', '2024-06-22 17:53:56');
INSERT INTO `clientes` VALUES (8, 'cliente', 65756735, 'stella@gmail.com', '(435) 346-3463', 'Carrera 34 # 45- 56', '1956-06-05', 9, '2017-12-26 17:25:55', '2024-06-22 17:54:02');
INSERT INTO `clientes` VALUES (9, 'cliente', 2147483647, 'eduardo@gmail.com', '(534) 634-6565', 'Carrera 67 # 45sur', '1978-03-04', 15, '2019-06-20 15:33:23', '2024-06-22 17:54:12');
INSERT INTO `clientes` VALUES (10, 'cliente', 436346346, 'ximena@gmail.com', '(543) 463-4634', 'calle 45 # 23 - 45', '1956-03-04', 18, '2017-12-26 17:25:08', '2024-06-22 17:54:16');
INSERT INTO `clientes` VALUES (11, 'cliente', 43634643, 'david@hotmail.com', '(354) 574-5634', 'carrera 45 # 45 ', '1967-05-04', 10, '2017-12-26 17:24:50', '2024-06-22 17:54:22');
INSERT INTO `clientes` VALUES (12, 'cliente', 436346346, 'gonzalo@yahoo.com', '(235) 346-3464', 'Carrera 34 # 56 - 34', '1967-08-09', 24, '2017-12-25 17:24:24', '2024-06-22 17:54:53');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `codigo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `imagen` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES (1, 1, '101', 'Aspiradora Industrial ', 'vistas/img/productos/101/105.png', 13, 1000, 1200, 2, '2017-12-23 19:11:04');
INSERT INTO `productos` VALUES (2, 1, '102', 'Plato Flotante para Allanadora', 'vistas/img/productos/102/940.jpg', 6, 4500, 6300, 3, '2017-12-26 09:04:11');
INSERT INTO `productos` VALUES (3, 1, '103', 'Compresor de Aire para pintura', 'vistas/img/productos/103/763.jpg', 8, 3000, 4200, 12, '2017-12-26 09:03:22');
INSERT INTO `productos` VALUES (4, 1, '104', 'Cortadora de Adobe sin Disco ', 'vistas/img/productos/104/957.jpg', 16, 4000, 5600, 4, '2017-12-26 09:03:22');
INSERT INTO `productos` VALUES (5, 1, '105', 'Cortadora de Piso sin Disco ', 'vistas/img/productos/105/630.jpg', 13, 1540, 2156, 7, '2017-12-26 09:03:22');
INSERT INTO `productos` VALUES (6, 1, '106', 'Disco Punta Diamante ', 'vistas/img/productos/106/635.jpg', 15, 1100, 1540, 5, '2017-12-26 09:04:38');
INSERT INTO `productos` VALUES (7, 1, '107', 'Extractor de Aire ', 'vistas/img/productos/107/848.jpg', 12, 1540, 2156, 8, '2017-12-26 09:04:11');
INSERT INTO `productos` VALUES (8, 1, '108', 'SABRITAS HABANERO', 'vistas/img/productos/108/163.jpg', 13, 16, 20, 7, '2024-06-22 19:52:50');
INSERT INTO `productos` VALUES (9, 1, '109', 'SABRITAS  ESPECIAS', 'vistas/img/productos/109/769.jpg', 15, 16, 20, 5, '2024-06-22 19:52:21');
INSERT INTO `productos` VALUES (10, 1, '110', 'SABRITAS JALAPEÑO', 'vistas/img/productos/110/582.jpg', 18, 16, 20, 2, '2024-06-22 19:51:37');
INSERT INTO `productos` VALUES (11, 1, '111', 'SABRITAS RECETA CRUJIENTE JALAPEÑO', 'vistas/img/productos/default/anonymous.png', 20, 16, 20, 0, '2024-06-22 19:51:04');
INSERT INTO `productos` VALUES (12, 1, '112', 'SABRITAS RECETA CRUJIENTE FUEGO', 'vistas/img/productos/default/anonymous.png', 20, 16, 20, 0, '2024-06-22 19:50:25');
INSERT INTO `productos` VALUES (13, 1, '113', 'SABRITAS RECETA CRUJIENTE NATURALES', 'vistas/img/productos/default/anonymous.png', 20, 16, 20, 0, '2024-06-22 19:49:54');
INSERT INTO `productos` VALUES (14, 1, '114', 'SABRITAS FUEGO', 'vistas/img/productos/default/anonymous.png', 20, 16, 20, 0, '2024-06-22 19:49:16');
INSERT INTO `productos` VALUES (15, 1, '115', 'SABRITAS ADOBADAS', 'vistas/img/productos/default/anonymous.png', 20, 16, 20, 0, '2024-06-22 19:48:26');
INSERT INTO `productos` VALUES (16, 1, '116', 'SABRITAS NATURALES', 'vistas/img/productos/default/anonymous.png', 20, 16, 20, 0, '2024-06-22 19:47:55');
INSERT INTO `productos` VALUES (17, 1, '117', 'SABRITAS DE LIMON', 'vistas/img/productos/default/anonymous.png', 20, 16, 20, 0, '2024-06-22 19:46:23');
INSERT INTO `productos` VALUES (18, 2, '201', 'BARRITAS DE PIÑA', 'vistas/img/productos/default/anonymous.png', 20, 18, 25.2, 0, '2024-06-22 19:58:54');
INSERT INTO `productos` VALUES (19, 2, '202', 'GALLETAS PRINCIPE', 'vistas/img/productos/default/anonymous.png', 20, 18, 25.2, 0, '2024-06-22 19:58:29');
INSERT INTO `productos` VALUES (20, 2, '203', 'BARRITAS DE FRESA', 'vistas/img/productos/default/anonymous.png', 20, 18, 25.2, 0, '2024-06-22 19:59:11');
INSERT INTO `productos` VALUES (21, 2, '204', 'CANELITAS', 'vistas/img/productos/default/anonymous.png', 20, 18, 25.2, 0, '2024-06-22 19:57:18');
INSERT INTO `productos` VALUES (22, 2, '205', 'CHOCOROLES', 'vistas/img/productos/default/anonymous.png', 20, 18, 25.2, 0, '2024-06-22 19:57:00');
INSERT INTO `productos` VALUES (23, 2, '206', 'GANSITO', 'vistas/img/productos/default/anonymous.png', 20, 17, 25.16, 0, '2024-06-22 19:56:22');
INSERT INTO `productos` VALUES (24, 2, '207', 'PINGUINOS', 'vistas/img/productos/default/anonymous.png', 20, 17, 25.16, 0, '2024-06-22 19:55:54');
INSERT INTO `productos` VALUES (25, 3, '301', 'Andamio colgante', 'vistas/img/productos/default/anonymous.png', 20, 1440, 2016, 0, '2017-12-21 15:56:28');
INSERT INTO `productos` VALUES (26, 3, '302', 'CHOKIS', 'vistas/img/productos/default/anonymous.png', 20, 20, 28, 0, '2024-06-22 20:05:40');
INSERT INTO `productos` VALUES (27, 3, '303', 'CREMAX VAINILLA', 'vistas/img/productos/default/anonymous.png', 20, 20, 28, 0, '2024-06-22 20:05:17');
INSERT INTO `productos` VALUES (28, 3, '304', 'CREMAX FRESA', 'vistas/img/productos/default/anonymous.png', 20, 20, 28, 0, '2024-06-22 20:04:56');
INSERT INTO `productos` VALUES (29, 3, '305', 'CREMAX CHOCOLATE', 'vistas/img/productos/default/anonymous.png', 20, 20, 28, 0, '2024-06-22 20:04:38');
INSERT INTO `productos` VALUES (30, 3, '306', 'GALLETAS EMPERADOR COMBINADAS', 'vistas/img/productos/default/anonymous.png', 20, 18, 25.2, 0, '2024-06-22 20:04:18');
INSERT INTO `productos` VALUES (31, 3, '307', 'GALLETAS EMPERADOR SENSO', 'vistas/img/productos/default/anonymous.png', 20, 18, 25.2, 0, '2024-06-22 20:03:49');
INSERT INTO `productos` VALUES (32, 3, '308', 'GALLETAS EMPERADOR VERDES', 'vistas/img/productos/default/anonymous.png', 20, 18, 25.2, 0, '2024-06-22 20:03:25');
INSERT INTO `productos` VALUES (33, 3, '309', 'GALLETAS EMPERADOR ROJAS', 'vistas/img/productos/default/anonymous.png', 20, 17, 24.14, 0, '2024-06-22 20:03:01');
INSERT INTO `productos` VALUES (34, 3, '310', 'BOMBITOS', 'vistas/img/productos/default/anonymous.png', 20, 17, 24.14, 0, '2024-06-22 20:02:27');
INSERT INTO `productos` VALUES (35, 3, '311', 'DORADITAS', 'vistas/img/productos/default/anonymous.png', 20, 19, 26.03, 0, '2024-06-22 20:01:56');
INSERT INTO `productos` VALUES (36, 4, '401', 'PAN HOTDOG', 'vistas/img/productos/default/anonymous.png', 20, 20, 28, 0, '2024-06-22 20:11:06');
INSERT INTO `productos` VALUES (37, 4, '402', 'PAN HAMBURGUESA', 'vistas/img/productos/default/anonymous.png', 20, 25, 35, 0, '2024-06-22 20:10:44');
INSERT INTO `productos` VALUES (38, 4, '403', 'DONITAS BIMBO', 'vistas/img/productos/default/anonymous.png', 20, 20, 28, 0, '2024-06-22 20:10:13');
INSERT INTO `productos` VALUES (39, 4, '404', 'ROLES DE CANELA', 'vistas/img/productos/default/anonymous.png', 20, 20, 28, 0, '2024-06-22 20:09:50');
INSERT INTO `productos` VALUES (40, 4, '405', 'BIMBUÑUELOS', 'vistas/img/productos/default/anonymous.png', 20, 17, 22, 0, '2024-06-22 20:09:27');
INSERT INTO `productos` VALUES (41, 4, '406', 'PAN BIMBO GRANDE', 'vistas/img/productos/default/anonymous.png', 20, 38, 40, 0, '2024-06-22 20:08:52');
INSERT INTO `productos` VALUES (42, 4, '407', 'PAN BIMBO MEDIANO', 'vistas/img/productos/default/anonymous.png', 20, 35, 38, 0, '2024-06-22 20:08:24');
INSERT INTO `productos` VALUES (43, 4, '408', 'PAN BIMBO CHICO', 'vistas/img/productos/default/anonymous.png', 20, 25, 28, 0, '2024-06-22 20:07:51');
INSERT INTO `productos` VALUES (52, 5, '509', 'BIG MIX AZUL', 'vistas/img/productos/509/488.png', 10, 130, 182, 10, '2024-06-22 20:18:38');
INSERT INTO `productos` VALUES (53, 5, '510', 'BIG MIX FUEGO', 'vistas/img/productos/510/600.png', 6, 18, 25.2, 14, '2024-06-23 17:11:08');
INSERT INTO `productos` VALUES (54, 5, '511', 'RUNNERS', 'vistas/img/productos/511/239.jpg', 16, 18, 25.2, 4, '2024-06-22 20:15:19');
INSERT INTO `productos` VALUES (55, 5, '512', 'TAKIS SALSA BRAVA', 'vistas/img/productos/512/266.jpg', 16, 18, 25.2, 4, '2024-06-22 20:14:51');
INSERT INTO `productos` VALUES (56, 5, '513', 'TAKIS FUEGO', 'vistas/img/productos/513/445.jpg', 10, 18, 25.2, 18, '2024-06-22 20:14:23');
INSERT INTO `productos` VALUES (57, 5, '514', 'TAKIS VERDES', 'vistas/img/productos/514/249.jpg', 20, 18, 25.2, 18, '2024-06-22 20:14:04');
INSERT INTO `productos` VALUES (58, 5, '515', 'CHIPS FUEGO', 'vistas/img/productos/515/174.jpg', 16, 18, 25.2, 4, '2024-06-22 20:13:26');
INSERT INTO `productos` VALUES (59, 5, '516', 'CHIPS JALAPEÑO', 'vistas/img/productos/516/167.png', 13, 18, 25.2, 7, '2024-06-22 20:13:08');
INSERT INTO `productos` VALUES (60, 5, '517', 'CHIPS SAL', 'vistas/img/productos/517/746.jpg', 9, 18, 25.2, 15, '2024-06-22 20:12:48');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/886.png', 1, '2025-01-22 22:48:01', '2024-06-23 16:41:59');
INSERT INTO `usuarios` VALUES (57, 'Juan Fernando Urrego', 'juan', '$2y$10$o.G6A2.2oIvfJutznbBWd.9jbrD/4KzMlomagEGcd2sbI6bRX9doW', 'Vendedor', 'vistas/img/usuarios/juan/405.png', 1, '2024-06-23 18:15:27', '2024-06-23 17:15:27');
INSERT INTO `usuarios` VALUES (58, 'Julio Gómez', 'julio', '$2y$10$NQqRjiL0/XVllTVSc5odp.XgG5AF0cA5DYyK95oL1xqNu.MLvgNzy', 'Especial', 'vistas/img/usuarios/julio/100.png', 1, '2024-06-21 14:54:34', '2024-06-22 18:02:33');
INSERT INTO `usuarios` VALUES (59, 'Ana Gonzalez', 'ana', '$2y$10$RaMFFO4MFKiI8RX0te9ztOhrhSUy0ybnbeIq3.JEuhdem04KLMu3S', 'Vendedor', 'vistas/img/usuarios/ana/260.png', 1, '2024-06-21 14:54:01', '2024-06-22 18:02:34');

-- ----------------------------
-- Table structure for ventas
-- ----------------------------
DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ventas
-- ----------------------------
INSERT INTO `ventas` VALUES (17, 10001, 3, 1, '[{\"id\":\"1\",\"descripcion\":\"Aspiradora Industrial \",\"cantidad\":\"2\",\"stock\":\"13\",\"precio\":\"1200\",\"total\":\"2400\"},{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"2\",\"stock\":\"7\",\"precio\":\"6300\",\"total\":\"12600\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"4200\",\"total\":\"4200\"}]', 3648, 19200, 22848, 'Efectivo', '2018-02-01 19:11:04');
INSERT INTO `ventas` VALUES (18, 10002, 4, 59, '[{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"2\",\"stock\":\"18\",\"precio\":\"2156\",\"total\":\"4312\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2156\",\"total\":\"2156\"}]', 2585.52, 13608, 16193.5, 'Efectivo', '2024-06-22 17:55:31');
INSERT INTO `ventas` VALUES (19, 10003, 5, 59, '[{\"id\":\"8\",\"descripcion\":\"Guadañadora \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2156\",\"total\":\"2156\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"2156\",\"total\":\"2156\"}]', 1510.88, 7952, 9462.88, 'Efectivo', '2018-01-18 08:57:40');
INSERT INTO `ventas` VALUES (20, 10004, 5, 59, '[{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"5\",\"stock\":\"14\",\"precio\":\"4200\",\"total\":\"21000\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"2156\",\"total\":\"2156\"}]', 5463.64, 28756, 34219.6, 'Efectivo', '2024-06-22 17:55:47');
INSERT INTO `ventas` VALUES (21, 10005, 6, 57, '[{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"2156\",\"total\":\"2156\"},{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"5\",\"stock\":\"9\",\"precio\":\"4200\",\"total\":\"21000\"}]', 5463.64, 28756, 34219.6, 'Efectivo', '2024-06-22 17:56:00');
INSERT INTO `ventas` VALUES (22, 10006, 10, 1, '[{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"4200\",\"total\":\"4200\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"3\",\"stock\":\"13\",\"precio\":\"2156\",\"total\":\"6468\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"1540\",\"total\":\"1540\"}]', 3383.52, 17808, 21191.5, 'Efectivo', '2018-01-26 09:03:22');
INSERT INTO `ventas` VALUES (23, 10007, 9, 1, '[{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"2156\",\"total\":\"2156\"},{\"id\":\"8\",\"descripcion\":\"Guadañadora \",\"cantidad\":\"6\",\"stock\":\"13\",\"precio\":\"2156\",\"total\":\"12936\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"3640\",\"total\":\"3640\"}]', 3851.68, 20272, 24123.7, 'Efectivo', '2024-06-22 17:56:11');
INSERT INTO `ventas` VALUES (24, 10008, 12, 1, '[{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"6300\",\"total\":\"6300\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"5\",\"stock\":\"12\",\"precio\":\"2156\",\"total\":\"10780\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"3640\",\"total\":\"3640\"}]', 4229.4, 22260, 26489.4, 'Efectivo', '2024-06-22 17:56:24');
INSERT INTO `ventas` VALUES (25, 10009, 11, 1, '[{\"id\":\"10\",\"descripcion\":\"Hidrolavadora Gasolina\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3094\",\"total\":\"3094\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"1540\",\"total\":\"1540\"}]', 1572.06, 8274, 9846.06, 'Efectivo', '2024-06-22 17:55:19');
INSERT INTO `ventas` VALUES (26, 10010, 8, 1, '[{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"10\",\"descripcion\":\"Hidrolavadora Gasolina\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"3094\",\"total\":\"3094\"}]', 1279.46, 6734, 8013.46, 'Efectivo', '2017-12-07 09:05:09');
INSERT INTO `ventas` VALUES (27, 10011, 7, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"812\",\"total\":\"812\"}]', 550.62, 2898, 3448.62, 'Efectivo', '2017-12-25 16:23:38');
INSERT INTO `ventas` VALUES (28, 10012, 12, 57, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1078\",\"total\":\"1078\"}]', 529.34, 2786, 3315.34, 'TC-3545235235', '2017-12-25 16:24:24');
INSERT INTO `ventas` VALUES (29, 10013, 11, 57, '[{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"5\",\"stock\":\"14\",\"precio\":\"1302\",\"total\":\"6510\"}]', 1449.7, 7630, 9079.7, 'TC-425235235235', '2017-12-26 16:24:50');
INSERT INTO `ventas` VALUES (30, 10014, 10, 57, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"10\",\"stock\":\"9\",\"precio\":\"1078\",\"total\":\"10780\"}]', 2261, 11900, 14161, 'Efectivo', '2017-12-26 16:25:09');
INSERT INTO `ventas` VALUES (31, 10015, 9, 57, '[{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"3\",\"stock\":\"16\",\"precio\":\"812\",\"total\":\"2436\"}]', 462.84, 2436, 2898.84, 'Efectivo', '2017-12-26 16:25:33');
INSERT INTO `ventas` VALUES (32, 10016, 8, 57, '[{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"5\",\"stock\":\"11\",\"precio\":\"812\",\"total\":\"4060\"},{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"630\",\"total\":\"630\"}]', 1002.82, 5278, 6280.82, 'TD-4523523523', '2017-12-26 16:25:55');
INSERT INTO `ventas` VALUES (33, 10017, 7, 57, '[{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"4\",\"stock\":\"7\",\"precio\":\"812\",\"total\":\"3248\"},{\"id\":\"52\",\"descripcion\":\"Bascula \",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"182\",\"total\":\"546\"},{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"2\",\"stock\":\"18\",\"precio\":\"560\",\"total\":\"1120\"},{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"630\",\"total\":\"630\"}]', 1053.36, 5544, 6597.36, 'Efectivo', '2017-12-26 16:26:28');
INSERT INTO `ventas` VALUES (34, 10018, 6, 57, '[{\"id\":\"51\",\"descripcion\":\"Tensor\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"140\",\"total\":\"140\"},{\"id\":\"52\",\"descripcion\":\"Bascula \",\"cantidad\":\"5\",\"stock\":\"12\",\"precio\":\"182\",\"total\":\"910\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"1078\",\"total\":\"1078\"}]', 404.32, 2128, 2532.32, 'Efectivo', '2017-12-26 16:26:51');
INSERT INTO `ventas` VALUES (35, 10019, 5, 57, '[{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"15\",\"stock\":\"3\",\"precio\":\"630\",\"total\":\"9450\"},{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"560\",\"total\":\"560\"}]', 1901.9, 10010, 11911.9, 'Efectivo', '2017-12-26 16:27:13');
INSERT INTO `ventas` VALUES (36, 10020, 4, 57, '[{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"560\",\"total\":\"560\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"924\",\"total\":\"924\"}]', 281.96, 1484, 1765.96, 'TC-46346346346', '2017-12-26 16:27:42');
INSERT INTO `ventas` VALUES (37, 10021, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"196\",\"total\":\"196\"}]', 149.8, 1498, 1647.8, 'Efectivo', '2018-02-06 16:47:02');
INSERT INTO `ventas` VALUES (38, 10022, 6, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"14\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"812\",\"total\":\"812\"},{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"1\",\"stock\":\"2\",\"precio\":\"630\",\"total\":\"630\"}]', 141.12, 3528, 3669.12, 'Efectivo', '2019-05-25 00:10:41');
INSERT INTO `ventas` VALUES (39, 10023, 9, 1, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"812\",\"total\":\"812\"}]', 277.2, 2310, 2587.2, 'Efectivo', '2019-06-20 14:33:23');
INSERT INTO `ventas` VALUES (40, 10024, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"10\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"10\",\"precio\":\"1302\",\"total\":\"1302\"}]', 26.04, 2604, 2630.04, 'Efectivo', '2024-06-20 17:58:19');
INSERT INTO `ventas` VALUES (41, 10025, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"2\",\"stock\":\"8\",\"precio\":\"1302\",\"total\":\"2604\"}]', 260.4, 2604, 2864.4, 'Efectivo', '2024-06-21 12:31:48');
INSERT INTO `ventas` VALUES (42, 10026, 4, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"1302\",\"total\":\"1302\"}]', 260.4, 1302, 1562.4, 'Efectivo', '2024-06-21 13:25:51');
INSERT INTO `ventas` VALUES (43, 10027, 3, 1, '[{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"3\",\"stock\":\"15\",\"precio\":\"812\",\"total\":\"2436\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"2\",\"stock\":\"6\",\"precio\":\"1078\",\"total\":\"2156\"},{\"id\":\"52\",\"descripcion\":\"Bascula \",\"cantidad\":\"2\",\"stock\":\"10\",\"precio\":\"182\",\"total\":\"364\"}]', 49.56, 4956, 5005.56, 'Efectivo', '2024-06-21 14:01:14');
INSERT INTO `ventas` VALUES (44, 10028, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"1302\",\"total\":\"1302\"}]', 13.02, 1302, 1315.02, 'Efectivo', '2024-06-22 18:03:31');

SET FOREIGN_KEY_CHECKS = 1;
