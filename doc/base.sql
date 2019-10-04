-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.15 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.2.0.4675
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 base1 的数据库结构
CREATE DATABASE IF NOT EXISTS `base1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `base1`;


-- 导出  表 base1.base_menu 结构
CREATE TABLE IF NOT EXISTS `base_menu` (
  `ID` varchar(32) NOT NULL,
  `MENU_URL` varchar(120) DEFAULT NULL,
  `MENU_SEQ` varchar(120) DEFAULT NULL,
  `MENU_PARENT_ID` int(11) DEFAULT NULL,
  `MENU_NAME` varchar(50) DEFAULT NULL,
  `MENU_ICON` varchar(20) DEFAULT NULL,
  `MENU_ORDER` varchar(11) DEFAULT NULL,
  `IS_LEAF` varchar(20) DEFAULT NULL COMMENT '1 是 0 否',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  base1.base_menu 的数据：~1 rows (大约)
DELETE FROM `base_menu`;
/*!40000 ALTER TABLE `base_menu` DISABLE KEYS */;
INSERT INTO `base_menu` (`ID`, `MENU_URL`, `MENU_SEQ`, `MENU_PARENT_ID`, `MENU_NAME`, `MENU_ICON`, `MENU_ORDER`, `IS_LEAF`) VALUES
	('1', '/admin.ftl', '1', NULL, NULL, NULL, NULL, NULL),
	('2', '/menu.ftl', '1', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `base_menu` ENABLE KEYS */;


-- 导出  表 base1.base_role 结构
CREATE TABLE IF NOT EXISTS `base_role` (
  `ID` varchar(32) NOT NULL,
  `ROLE_CODE` varchar(32) DEFAULT NULL,
  `ROLE_NAME` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  base1.base_role 的数据：~3 rows (大约)
DELETE FROM `base_role`;
/*!40000 ALTER TABLE `base_role` DISABLE KEYS */;
INSERT INTO `base_role` (`ID`, `ROLE_CODE`, `ROLE_NAME`) VALUES
	('1', 'sysadmin', '管理员'),
	('2', 'test', '角色1'),
	('3', 'test1', '角色2');
/*!40000 ALTER TABLE `base_role` ENABLE KEYS */;


-- 导出  表 base1.base_role_menu 结构
CREATE TABLE IF NOT EXISTS `base_role_menu` (
  `ID` varchar(32) NOT NULL,
  `ROLE_ID` varchar(32) DEFAULT NULL,
  `MENU_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  base1.base_role_menu 的数据：~1 rows (大约)
DELETE FROM `base_role_menu`;
/*!40000 ALTER TABLE `base_role_menu` DISABLE KEYS */;
INSERT INTO `base_role_menu` (`ID`, `ROLE_ID`, `MENU_ID`) VALUES
	('1', '1', '1'),
	('2', '2', '2');
/*!40000 ALTER TABLE `base_role_menu` ENABLE KEYS */;


-- 导出  表 base1.base_user 结构
CREATE TABLE IF NOT EXISTS `base_user` (
  `ID` varchar(32) NOT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `USER_PASSWORD` varchar(100) DEFAULT NULL,
  `NIKE_NAME` varchar(50) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL COMMENT '1 正常，2 禁用',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  base1.base_user 的数据：~1 rows (大约)
DELETE FROM `base_user`;
/*!40000 ALTER TABLE `base_user` DISABLE KEYS */;
INSERT INTO `base_user` (`ID`, `USER_NAME`, `USER_PASSWORD`, `NIKE_NAME`, `STATUS`) VALUES
	('1', 'sysadmin', '$2a$10$6UzMN/VMh73bAHmkMwgFZukOThm/EPzu/q.kTqCCpKUMFtljeKBaq', 'sysadmin', 1),
	('2', 'cxb', '$2a$10$6UzMN/VMh73bAHmkMwgFZukOThm/EPzu/q.kTqCCpKUMFtljeKBaq', 'cxb', 1);
/*!40000 ALTER TABLE `base_user` ENABLE KEYS */;


-- 导出  表 base1.base_user_role 结构
CREATE TABLE IF NOT EXISTS `base_user_role` (
  `ID` varchar(32) NOT NULL,
  `USER_ID` varchar(32) DEFAULT NULL,
  `ROLE_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  base1.base_user_role 的数据：~3 rows (大约)
DELETE FROM `base_user_role`;
/*!40000 ALTER TABLE `base_user_role` DISABLE KEYS */;
INSERT INTO `base_user_role` (`ID`, `USER_ID`, `ROLE_ID`) VALUES
	('1', '1', '1'),
	('2', '2', '2'),
	('3', '2', '3');
/*!40000 ALTER TABLE `base_user_role` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
