/*
Navicat MySQL Data Transfer

Source Server         : thinkpad.me_3306
Source Server Version : 50168
Source Host           : 192.168.0.101:3306
Source Database       : springboottest

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2016-11-23 17:58:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for api_type
-- ----------------------------
DROP TABLE IF EXISTS `api_type`;
CREATE TABLE `api_type` (
  `id` varchar(32) NOT NULL,
  `isusing` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `need_catch` bit(1) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of api_type
-- ----------------------------
INSERT INTO `api_type` VALUES ('1', '', 'mysql', '', 'http://overapi.com/mysql');
