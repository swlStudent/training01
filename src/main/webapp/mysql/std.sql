/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : std

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-10-10 08:59:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hero
-- ----------------------------
DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `hp` float DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hero
-- ----------------------------
INSERT INTO `hero` VALUES ('1', '盖伦', '2000', '100');
INSERT INTO `hero` VALUES ('2', '阿卡丽', '1500', '150');
INSERT INTO `hero` VALUES ('3', '厄加特', '2000', '90');
INSERT INTO `hero` VALUES ('4', '瑞兹', '1300', '130');
INSERT INTO `hero` VALUES ('5', '卢锡安', '1400', '140');
INSERT INTO `hero` VALUES ('6', '虚空之眼', '1200', '100');
