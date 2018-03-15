/*
Navicat MySQL Data Transfer

Source Server         : MYSQL 3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : learning

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2018-03-15 08:04:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of access
-- ----------------------------
INSERT INTO `access` VALUES ('1', 'ITS');
INSERT INTO `access` VALUES ('2', 'Staff');
INSERT INTO `access` VALUES ('3', 'Director');

-- ----------------------------
-- Table structure for allocation
-- ----------------------------
DROP TABLE IF EXISTS `allocation`;
CREATE TABLE `allocation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `moduleid` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of allocation
-- ----------------------------
INSERT INTO `allocation` VALUES ('1', 'tech', '2');
INSERT INTO `allocation` VALUES ('2', 'tech', '3');
INSERT INTO `allocation` VALUES ('3', 'gracious', '4');
INSERT INTO `allocation` VALUES ('4', 'brian', '5');
INSERT INTO `allocation` VALUES ('5', 'tech', '6');

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `questionid` bigint(20) DEFAULT NULL,
  `symbolid` varchar(20) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `examtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES ('5', '2', 'A', 'Brian', '1', null);
INSERT INTO `answers` VALUES ('6', '2', 'B', 'Linda', '0', null);
INSERT INTO `answers` VALUES ('7', '2', 'C', 'Stella', '0', null);
INSERT INTO `answers` VALUES ('8', '2', 'D', 'Patie', '0', null);
INSERT INTO `answers` VALUES ('9', '3', 'A', 'Aita sei', '1', null);
INSERT INTO `answers` VALUES ('10', '3', 'B', 'Kwira', '0', null);
INSERT INTO `answers` VALUES ('11', '3', 'C', 'Enda', '0', null);
INSERT INTO `answers` VALUES ('12', '3', 'D', 'Pinda', '0', null);
INSERT INTO `answers` VALUES ('13', '4', 'A', '21', '0', null);
INSERT INTO `answers` VALUES ('14', '4', 'B', '45', '0', null);
INSERT INTO `answers` VALUES ('15', '4', 'C', '26', '1', null);
INSERT INTO `answers` VALUES ('16', '4', 'D', '2', '0', null);
INSERT INTO `answers` VALUES ('17', '5', 'A', '23', '0', null);
INSERT INTO `answers` VALUES ('18', '5', 'B', '2', '1', null);
INSERT INTO `answers` VALUES ('19', '5', 'C', '5', '0', null);
INSERT INTO `answers` VALUES ('20', '5', 'D', '9', '0', null);
INSERT INTO `answers` VALUES ('21', '7', 'A', '30', '0', null);
INSERT INTO `answers` VALUES ('22', '7', 'B', '18', '1', null);
INSERT INTO `answers` VALUES ('23', '7', 'C', '19', '0', null);
INSERT INTO `answers` VALUES ('24', '7', 'D', '21', '0', null);
INSERT INTO `answers` VALUES ('25', '8', 'A', 'Once a day', '0', null);
INSERT INTO `answers` VALUES ('26', '8', 'B', 'Twice a day', '0', null);
INSERT INTO `answers` VALUES ('27', '8', 'C', 'Anytime', '1', null);
INSERT INTO `answers` VALUES ('28', '8', 'D', 'Never', '0', null);
INSERT INTO `answers` VALUES ('29', '6', 'A', 'Waal', '1', null);
INSERT INTO `answers` VALUES ('30', '6', 'B', 'What', '0', null);
INSERT INTO `answers` VALUES ('31', '6', 'C', 'Where', '0', null);
INSERT INTO `answers` VALUES ('32', '6', 'D', 'Which', '0', null);
INSERT INTO `answers` VALUES ('33', '9', 'A', 'Mboro', '0', null);
INSERT INTO `answers` VALUES ('34', '9', 'B', 'Beche', '0', null);
INSERT INTO `answers` VALUES ('35', '9', 'C', 'Dizvi', '0', null);
INSERT INTO `answers` VALUES ('36', '9', 'D', 'Hmheno', '1', null);
INSERT INTO `answers` VALUES ('37', '15', 'A', 'HI', '0', null);
INSERT INTO `answers` VALUES ('38', '15', 'B', 'DSFDSF', '1', null);
INSERT INTO `answers` VALUES ('39', '15', 'C', 'DSFDSF', '0', null);
INSERT INTO `answers` VALUES ('40', '15', 'D', 'DSFDSF', '0', null);
INSERT INTO `answers` VALUES ('41', '16', 'A', '300000000', '0', null);
INSERT INTO `answers` VALUES ('42', '16', 'B', 'rewrewr', '1', null);
INSERT INTO `answers` VALUES ('43', '16', 'C', 'ewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('44', '16', 'D', 'ewrewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('45', '17', 'A', 'rewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('46', '17', 'B', 'ewrewrewr', '1', null);
INSERT INTO `answers` VALUES ('47', '17', 'C', 'ewrewrewrew', '0', null);
INSERT INTO `answers` VALUES ('48', '17', 'D', 'ewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('49', '18', 'A', 'sddsfdsf', '1', null);
INSERT INTO `answers` VALUES ('50', '18', 'B', 'DSFDSF', '0', null);
INSERT INTO `answers` VALUES ('51', '18', 'C', 'DSFDSF', '0', null);
INSERT INTO `answers` VALUES ('52', '18', 'D', 'dsfdsfds', '0', null);
INSERT INTO `answers` VALUES ('53', '19', 'A', 'dfsdfdsf', '0', null);
INSERT INTO `answers` VALUES ('54', '19', 'B', 'dsfdsf', '1', null);
INSERT INTO `answers` VALUES ('55', '19', 'C', 'DSFDSF', '0', null);
INSERT INTO `answers` VALUES ('56', '19', 'D', 'erewrew', '0', null);
INSERT INTO `answers` VALUES ('57', '20', 'A', 'sfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('58', '20', 'B', 'sdfdsf', '1', null);
INSERT INTO `answers` VALUES ('59', '20', 'C', 'dsfdsf', '0', null);
INSERT INTO `answers` VALUES ('60', '20', 'D', 'dsfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('61', '21', 'A', 'asdasdasd', '1', null);
INSERT INTO `answers` VALUES ('62', '21', 'B', 'asdasd', '0', null);
INSERT INTO `answers` VALUES ('63', '21', 'C', 'asdasd', '0', null);
INSERT INTO `answers` VALUES ('64', '21', 'D', 'asdasd', '0', null);
INSERT INTO `answers` VALUES ('65', '22', 'A', 'asdasdasdasd', '0', null);
INSERT INTO `answers` VALUES ('66', '22', 'B', 'asdasdasd', '1', null);
INSERT INTO `answers` VALUES ('67', '22', 'C', 'asdasdasd', '0', null);
INSERT INTO `answers` VALUES ('68', '22', 'D', 'asdasdasd', '0', null);
INSERT INTO `answers` VALUES ('69', '23', 'A', 'asdasdasdasd', '1', null);
INSERT INTO `answers` VALUES ('70', '23', 'B', 'asdasdasd', '0', null);
INSERT INTO `answers` VALUES ('71', '23', 'C', 'asdasd', '0', null);
INSERT INTO `answers` VALUES ('72', '23', 'D', 'asdasdasd', '0', null);
INSERT INTO `answers` VALUES ('73', '24', 'A', 'asdsadasdasd', '1', null);
INSERT INTO `answers` VALUES ('74', '24', 'B', 'sdasdasd', '0', null);
INSERT INTO `answers` VALUES ('75', '24', 'C', 'asdasdasdasdas', '0', null);
INSERT INTO `answers` VALUES ('76', '24', 'D', 'asdasdasd', '0', null);
INSERT INTO `answers` VALUES ('77', '25', 'A', 'dsfdsfdsfds', '1', null);
INSERT INTO `answers` VALUES ('78', '25', 'B', 'dsfdsf', '0', null);
INSERT INTO `answers` VALUES ('79', '25', 'C', 'dsfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('80', '25', 'D', 'sdfdsfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('81', '26', 'A', 'fsdfdsfdsf', '1', null);
INSERT INTO `answers` VALUES ('82', '26', 'B', 'sdfdsfdsfdf', '0', null);
INSERT INTO `answers` VALUES ('83', '26', 'C', 'dsfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('84', '26', 'D', 'dsfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('85', '27', 'A', 'dsfdsfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('86', '27', 'B', 'dsfdsf', '1', null);
INSERT INTO `answers` VALUES ('87', '27', 'C', 'dsfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('88', '27', 'D', 'dsfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('89', '28', 'A', 'sadasdasd', '1', null);
INSERT INTO `answers` VALUES ('90', '28', 'B', 'sdasdasd', '0', null);
INSERT INTO `answers` VALUES ('91', '28', 'C', 'asdasdasdasdas', '0', null);
INSERT INTO `answers` VALUES ('92', '28', 'D', 'asdasdasd', '0', null);
INSERT INTO `answers` VALUES ('93', '29', 'A', 'asdasdasdasd', '0', null);
INSERT INTO `answers` VALUES ('94', '29', 'B', 'asdasdasdas', '1', null);
INSERT INTO `answers` VALUES ('95', '29', 'C', 'asdasdasd', '0', null);
INSERT INTO `answers` VALUES ('96', '29', 'D', 'asdasdasd', '0', null);
INSERT INTO `answers` VALUES ('97', '30', 'A', '11', '1', null);
INSERT INTO `answers` VALUES ('98', '30', 'B', '12', '0', null);
INSERT INTO `answers` VALUES ('99', '30', 'C', '123', '0', null);
INSERT INTO `answers` VALUES ('100', '30', 'D', '1', '0', null);
INSERT INTO `answers` VALUES ('101', '31', 'A', 'dsdfsdf', '0', null);
INSERT INTO `answers` VALUES ('102', '31', 'B', 'dsfdsfs', '1', null);
INSERT INTO `answers` VALUES ('103', '31', 'C', 'dsfsdfdsf', '0', null);
INSERT INTO `answers` VALUES ('104', '31', 'D', 'dsfsfdsf', '0', null);
INSERT INTO `answers` VALUES ('105', '32', 'A', 'dsfsdfdsf', '1', null);
INSERT INTO `answers` VALUES ('106', '32', 'B', 'dsfdsfs', '0', null);
INSERT INTO `answers` VALUES ('107', '32', 'C', 'dsfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('108', '32', 'D', '5', '0', null);
INSERT INTO `answers` VALUES ('109', '33', 'A', 'sdfdsfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('110', '33', 'B', 'sdfdsfdsf', '1', null);
INSERT INTO `answers` VALUES ('111', '33', 'C', 'sdfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('112', '33', 'D', 'dsfdsfdsf', '0', null);
INSERT INTO `answers` VALUES ('113', '34', 'A', 'ewrewrewr', '1', null);
INSERT INTO `answers` VALUES ('114', '34', 'B', 'werewr', '0', null);
INSERT INTO `answers` VALUES ('115', '34', 'C', 'ewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('116', '34', 'D', 'ewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('117', '35', 'A', '11', '1', null);
INSERT INTO `answers` VALUES ('118', '35', 'B', 'ewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('119', '35', 'C', 'ewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('120', '35', 'D', 'ewrewr', '0', null);
INSERT INTO `answers` VALUES ('121', '36', 'A', 'ewrewrewr', '1', null);
INSERT INTO `answers` VALUES ('122', '36', 'B', 'ewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('123', '36', 'C', 'werwerewr', '0', null);
INSERT INTO `answers` VALUES ('124', '36', 'D', 'ewrewrewrew', '0', null);
INSERT INTO `answers` VALUES ('125', '37', 'A', 'ewrewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('126', '37', 'B', 'ewrewrewrer', '1', null);
INSERT INTO `answers` VALUES ('127', '37', 'C', 'ewrewrewrewew', '0', null);
INSERT INTO `answers` VALUES ('128', '37', 'D', 'rewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('129', '38', 'A', 'ewrewrewr', '1', null);
INSERT INTO `answers` VALUES ('130', '38', 'B', 'ewrewrewr', '0', null);
INSERT INTO `answers` VALUES ('131', '38', 'C', 'rewrewr', '0', null);
INSERT INTO `answers` VALUES ('132', '38', 'D', 'erewrewr', '0', null);
INSERT INTO `answers` VALUES ('133', '39', 'A', 'dasf', '1', null);
INSERT INTO `answers` VALUES ('134', '39', 'B', 'fd', '0', null);
INSERT INTO `answers` VALUES ('135', '39', 'C', 'f', '0', null);
INSERT INTO `answers` VALUES ('136', '39', 'D', 'df', '0', null);
INSERT INTO `answers` VALUES ('137', '40', 'A', 'df', '1', null);
INSERT INTO `answers` VALUES ('138', '40', 'B', 'dsd', '0', null);
INSERT INTO `answers` VALUES ('139', '40', 'C', 'ds', '0', null);
INSERT INTO `answers` VALUES ('140', '40', 'D', 'scd', '0', null);
INSERT INTO `answers` VALUES ('141', '41', 'A', 'sad', '1', null);
INSERT INTO `answers` VALUES ('142', '41', 'B', 'WD', '0', null);
INSERT INTO `answers` VALUES ('143', '41', 'C', 'ASD', '0', null);
INSERT INTO `answers` VALUES ('144', '41', 'D', 'scs', '0', null);
INSERT INTO `answers` VALUES ('145', '43', 'A', 'sdfg', '1', null);
INSERT INTO `answers` VALUES ('146', '43', 'B', 'sfg', '0', null);
INSERT INTO `answers` VALUES ('147', '43', 'C', 'sg', '0', null);
INSERT INTO `answers` VALUES ('148', '43', 'D', 'sgf', '0', null);
INSERT INTO `answers` VALUES ('149', '42', 'A', 'sdg', '1', null);
INSERT INTO `answers` VALUES ('150', '42', 'B', 'sg', '0', null);
INSERT INTO `answers` VALUES ('151', '42', 'C', 'fgshd', '0', null);
INSERT INTO `answers` VALUES ('152', '42', 'D', 'hdf', '0', null);
INSERT INTO `answers` VALUES ('153', '42', 'E', 'hdf', '0', null);
INSERT INTO `answers` VALUES ('154', '45', 'A', 'dsg', '1', null);
INSERT INTO `answers` VALUES ('155', '45', 'B', 'dsg', '0', null);
INSERT INTO `answers` VALUES ('156', '45', 'C', 'sdg', '0', null);
INSERT INTO `answers` VALUES ('157', '45', 'D', 'dsg', '0', null);
INSERT INTO `answers` VALUES ('158', '45', 'E', 'sdgs', '0', null);
INSERT INTO `answers` VALUES ('159', '46', 'A', 'dsg', '0', null);
INSERT INTO `answers` VALUES ('160', '46', 'B', 'dsg', '1', null);
INSERT INTO `answers` VALUES ('161', '46', 'C', 'sdg', '0', null);
INSERT INTO `answers` VALUES ('162', '46', 'D', 'sdg', '0', null);
INSERT INTO `answers` VALUES ('163', '46', 'E', 'sdg', '0', null);
INSERT INTO `answers` VALUES ('164', '47', 'A', 'sdg', '0', null);
INSERT INTO `answers` VALUES ('165', '47', 'B', 'sdg', '0', null);
INSERT INTO `answers` VALUES ('166', '47', 'C', 'sdg', '1', null);
INSERT INTO `answers` VALUES ('167', '47', 'D', 'sdg', '0', null);
INSERT INTO `answers` VALUES ('168', '47', 'E', 'sdg', '0', null);
INSERT INTO `answers` VALUES ('169', '48', 'A', 'sdfdff', '1', null);
INSERT INTO `answers` VALUES ('170', '48', 'B', 'v', '0', null);
INSERT INTO `answers` VALUES ('171', '48', 'C', 'sdfdff', '0', null);
INSERT INTO `answers` VALUES ('172', '48', 'D', 'sdfdff', '0', null);
INSERT INTO `answers` VALUES ('173', '48', 'E', 'sdfdff', '0', null);
INSERT INTO `answers` VALUES ('174', '49', 'A', 'dafd', '1', null);
INSERT INTO `answers` VALUES ('175', '49', 'B', 'ddd', '0', null);
INSERT INTO `answers` VALUES ('176', '49', 'C', 'dd', '0', null);
INSERT INTO `answers` VALUES ('177', '49', 'D', 'dd', '0', null);
INSERT INTO `answers` VALUES ('178', '49', 'E', 'd', '0', null);
INSERT INTO `answers` VALUES ('179', '44', 'A', 'dsa', '1', null);
INSERT INTO `answers` VALUES ('180', '44', 'B', 'ds', '0', null);
INSERT INTO `answers` VALUES ('181', '44', 'C', 'ds', '0', null);
INSERT INTO `answers` VALUES ('182', '44', 'D', 'dsgds', '0', null);
INSERT INTO `answers` VALUES ('183', '44', 'E', 'ds', '0', null);
INSERT INTO `answers` VALUES ('184', '50', 'A', 'sfd', '1', null);
INSERT INTO `answers` VALUES ('185', '50', 'B', 'sf', '0', null);
INSERT INTO `answers` VALUES ('186', '50', 'C', 'fs', '0', null);
INSERT INTO `answers` VALUES ('187', '50', 'D', 'fs', '0', null);
INSERT INTO `answers` VALUES ('188', '50', 'E', 'fsfs', '0', null);
INSERT INTO `answers` VALUES ('189', '51', 'A', 'fssss', '1', null);
INSERT INTO `answers` VALUES ('190', '51', 'B', 'dsf', '0', null);
INSERT INTO `answers` VALUES ('191', '51', 'C', 'sdf', '0', null);
INSERT INTO `answers` VALUES ('192', '51', 'D', 'dsf', '0', null);
INSERT INTO `answers` VALUES ('193', '51', 'E', 'dsfdsf', '0', null);
INSERT INTO `answers` VALUES ('194', '52', 'A', 'asfdgs', '1', null);
INSERT INTO `answers` VALUES ('195', '52', 'B', 'sdf', '0', null);
INSERT INTO `answers` VALUES ('196', '52', 'C', 'dsf', '0', null);
INSERT INTO `answers` VALUES ('197', '52', 'D', 'dsf', '0', null);
INSERT INTO `answers` VALUES ('198', '52', 'E', 'dsf', '0', null);
INSERT INTO `answers` VALUES ('199', '53', 'A', 'afsdd', '1', null);
INSERT INTO `answers` VALUES ('200', '53', 'B', 'adf', '0', null);
INSERT INTO `answers` VALUES ('201', '53', 'C', 'afds', '0', null);
INSERT INTO `answers` VALUES ('202', '53', 'D', 'adfs', '0', null);
INSERT INTO `answers` VALUES ('203', '53', 'E', 'afds', '0', null);
INSERT INTO `answers` VALUES ('204', '54', 'A', 'adffff', '1', null);
INSERT INTO `answers` VALUES ('205', '54', 'B', 'adffff', '0', null);
INSERT INTO `answers` VALUES ('206', '54', 'C', 'adfffffff', '0', null);
INSERT INTO `answers` VALUES ('207', '54', 'D', 'afd', '0', null);
INSERT INTO `answers` VALUES ('208', '54', 'E', 'afd', '0', null);
INSERT INTO `answers` VALUES ('209', '55', 'A', 'dsg', '1', 'full');
INSERT INTO `answers` VALUES ('210', '55', 'B', 'dsg', '0', 'full');
INSERT INTO `answers` VALUES ('211', '55', 'C', 'adfffffff', '0', 'full');
INSERT INTO `answers` VALUES ('212', '55', 'D', 'adfs', '0', 'full');
INSERT INTO `answers` VALUES ('213', '55', 'E', 'afd', '0', 'full');
INSERT INTO `answers` VALUES ('214', '57', 'A', 'adffff', '1', 'full');
INSERT INTO `answers` VALUES ('215', '57', 'B', 'adf', '0', 'full');
INSERT INTO `answers` VALUES ('216', '57', 'C', 'adfffffff', '0', 'full');
INSERT INTO `answers` VALUES ('217', '57', 'D', 'adfs', '0', 'full');
INSERT INTO `answers` VALUES ('218', '57', 'E', 'afd', '0', 'full');
INSERT INTO `answers` VALUES ('219', '56', 'A', 'adffff', '1', 'full');
INSERT INTO `answers` VALUES ('220', '56', 'B', 'adffff', '0', 'full');
INSERT INTO `answers` VALUES ('221', '56', 'C', 'afds', '0', 'full');
INSERT INTO `answers` VALUES ('222', '56', 'D', 'adfs', '0', 'full');
INSERT INTO `answers` VALUES ('223', '56', 'E', 'afd', '0', 'full');

-- ----------------------------
-- Table structure for audit_tray
-- ----------------------------
DROP TABLE IF EXISTS `audit_tray`;
CREATE TABLE `audit_tray` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `operation` varchar(400) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of audit_tray
-- ----------------------------
INSERT INTO `audit_tray` VALUES ('1', '1', 'Added new user Brian Takawira', '09/03/2012');
INSERT INTO `audit_tray` VALUES ('2', '1', 'Added new user Patience Gahadzikwa', '09/05/2012');
INSERT INTO `audit_tray` VALUES ('3', '1', 'Added new user Rudo Matsika', '09/18/2012');
INSERT INTO `audit_tray` VALUES ('4', '1', 'Added new user Gracious Mashasha', '09/20/2012');
INSERT INTO `audit_tray` VALUES ('5', '1', 'Added new user Yeukai Guruva', '09/23/2012');
INSERT INTO `audit_tray` VALUES ('6', '1', 'Added new user Brian Takunda Taks', '09/23/2012');
INSERT INTO `audit_tray` VALUES ('7', '1', 'Added new user Gracious Mashaha', '09/24/2012');
INSERT INTO `audit_tray` VALUES ('8', '1', 'Added new user Tendai Mashakda', '09/24/2012');

-- ----------------------------
-- Table structure for bookings
-- ----------------------------
DROP TABLE IF EXISTS `bookings`;
CREATE TABLE `bookings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `bookdate` varchar(20) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `moduleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bookings
-- ----------------------------
INSERT INTO `bookings` VALUES ('1', '3', '451850', '09/23/2012', '09/23/2012', '1', '2');
INSERT INTO `bookings` VALUES ('2', '6', '785574', '09/23/2012', '09/23/2012', '1', '3');
INSERT INTO `bookings` VALUES ('3', '9', '198673', '09/31/2013', '09/24/2013', '1', '4');
INSERT INTO `bookings` VALUES ('4', '6', '462546', '21/09/2013', '06/09/2013', '0', '3');
INSERT INTO `bookings` VALUES ('5', '3', '281976', '03/08/2017', '03/08/2017', '1', '5');
INSERT INTO `bookings` VALUES ('6', '3', '861046', '03/13/2018', '03/13/2018', '1', '2');

-- ----------------------------
-- Table structure for cancel_bookings
-- ----------------------------
DROP TABLE IF EXISTS `cancel_bookings`;
CREATE TABLE `cancel_bookings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cancel_bookings
-- ----------------------------
INSERT INTO `cancel_bookings` VALUES ('1', '');
INSERT INTO `cancel_bookings` VALUES ('2', '457142');
INSERT INTO `cancel_bookings` VALUES ('3', '909241');
INSERT INTO `cancel_bookings` VALUES ('4', '462546');

-- ----------------------------
-- Table structure for certificates
-- ----------------------------
DROP TABLE IF EXISTS `certificates`;
CREATE TABLE `certificates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `mark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `v` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of certificates
-- ----------------------------
INSERT INTO `certificates` VALUES ('1', '682900', '88.888888888889');
INSERT INTO `certificates` VALUES ('2', '', '66.666666666667');
INSERT INTO `certificates` VALUES ('3', '102408', '900');
INSERT INTO `certificates` VALUES ('4', '984465', '81.818181818182');
INSERT INTO `certificates` VALUES ('5', '046936', '81.818181818182');
INSERT INTO `certificates` VALUES ('6', '657155', '81.818181818182');
INSERT INTO `certificates` VALUES ('7', '823392', '100');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `to` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `message` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `sent` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `recd` varchar(255) COLLATE latin1_general_ci DEFAULT '0',
  `date` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of chat
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `entry_id` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `project` varchar(111) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', 'staff', '2', '15-03-2014 08:42', 'cgh', '1');
INSERT INTO `comments` VALUES ('2', 'staff', '2', '15-03-2014 08:50', 'ddd', '1');
INSERT INTO `comments` VALUES ('3', 'staff', '2', '15-03-2014 03:08:04', 'dddddwwwwwwwwwwww', null);
INSERT INTO `comments` VALUES ('4', 'wvt', '2', '15-03-2014 08:32', 'zdfd', '1');
INSERT INTO `comments` VALUES ('5', 'wvt', '2', '15-03-2014 08:43', 'ddafdf', '1');
INSERT INTO `comments` VALUES ('6', 'staff', '4', '15-03-2014 09:37', 'sss', '3');
INSERT INTO `comments` VALUES ('7', 'staff', '4', '15-03-2014 09:49', 'rrrrtt', '3');
INSERT INTO `comments` VALUES ('8', 'staff', '4', '15-03-2014 09:56', 'sdfghgjk', '3');
INSERT INTO `comments` VALUES ('9', 'staff', '4', '15-03-2014 09:15', 'eeee', '3');
INSERT INTO `comments` VALUES ('10', 'staff', '4', '15-03-2014 09:55', 'deedede', '3');
INSERT INTO `comments` VALUES ('11', 'staff', '5', '15-03-2014 09:43', '444', '3');
INSERT INTO `comments` VALUES ('12', 'staff', '5', '15-03-2014 09:16', 'ee4444', '3');
INSERT INTO `comments` VALUES ('13', 'staff', '3', '15-03-2014 11:28', 'fadfd', '1');
INSERT INTO `comments` VALUES ('14', 'student', '10', '09-03-2017 04:31', 'dafj', '');

-- ----------------------------
-- Table structure for correctquestions
-- ----------------------------
DROP TABLE IF EXISTS `correctquestions`;
CREATE TABLE `correctquestions` (
  `correctid` int(11) NOT NULL AUTO_INCREMENT,
  `questionid` varchar(255) DEFAULT NULL,
  `student` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`correctid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of correctquestions
-- ----------------------------
INSERT INTO `correctquestions` VALUES ('11', '55', 'student', '480043');
INSERT INTO `correctquestions` VALUES ('2', '44', 'student', '657155');
INSERT INTO `correctquestions` VALUES ('3', '45', 'student', '657155');
INSERT INTO `correctquestions` VALUES ('4', '48', 'student', '657155');
INSERT INTO `correctquestions` VALUES ('5', '49', 'student', '657155');
INSERT INTO `correctquestions` VALUES ('6', '50', 'student', '657155');
INSERT INTO `correctquestions` VALUES ('7', '51', 'student', '657155');
INSERT INTO `correctquestions` VALUES ('8', '52', 'student', '657155');
INSERT INTO `correctquestions` VALUES ('9', '53', 'student', '657155');
INSERT INTO `correctquestions` VALUES ('10', '54', 'student', '657155');
INSERT INTO `correctquestions` VALUES ('12', '56', 'student', '480043');
INSERT INTO `correctquestions` VALUES ('13', '57', 'student', '480043');
INSERT INTO `correctquestions` VALUES ('14', '55', 'student', '637451');
INSERT INTO `correctquestions` VALUES ('15', '56', 'student', '637451');
INSERT INTO `correctquestions` VALUES ('16', '57', 'student', '637451');
INSERT INTO `correctquestions` VALUES ('17', '55', 'student', '823392');
INSERT INTO `correctquestions` VALUES ('18', '56', 'student', '823392');
INSERT INTO `correctquestions` VALUES ('19', '57', 'student', '823392');

-- ----------------------------
-- Table structure for entries
-- ----------------------------
DROP TABLE IF EXISTS `entries`;
CREATE TABLE `entries` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `entry` varchar(199) DEFAULT NULL,
  `date_entered` varchar(100) DEFAULT NULL,
  `publish` varchar(100) DEFAULT NULL,
  `e_project` varchar(111) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of entries
-- ----------------------------
INSERT INTO `entries` VALUES ('1', '$_SESSION[username]', '$_POST[comment]', '$date', '$_SESSION[username]', '$_GET[project]');
INSERT INTO `entries` VALUES ('2', 'staff', 'idfjkvgfjmhj', '15-03-2014 08:51', 'staff', '1');
INSERT INTO `entries` VALUES ('3', 'wvt', 'dfdf', '15-03-2014 03:08:58', 'wvt', '1');
INSERT INTO `entries` VALUES ('4', 'staff', 'rrrr', '15-03-2014 09:09', 'staff', '3');
INSERT INTO `entries` VALUES ('5', 'staff', 'idfjk', '15-03-2014 09:15', 'staff', '3');
INSERT INTO `entries` VALUES ('6', 'staff', 'idfjk', '15-03-2014 12:23', 'staff', '5');
INSERT INTO `entries` VALUES ('7', 'student', 'tttsdf', '09-03-2017 04:30', 'student', '');
INSERT INTO `entries` VALUES ('8', 'student', 'dfj', '09-03-2017 04:30', 'student', '');
INSERT INTO `entries` VALUES ('9', 'student', 'sdgdg', '09-03-2017 04:30', 'student', '');
INSERT INTO `entries` VALUES ('10', 'student', 'sdgdg', '09-03-2017 04:31', 'student', '');
INSERT INTO `entries` VALUES ('11', 'student', 'sdgdg', '09-03-2017 04:33', 'student', '');

-- ----------------------------
-- Table structure for marks
-- ----------------------------
DROP TABLE IF EXISTS `marks`;
CREATE TABLE `marks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `mark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `v` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of marks
-- ----------------------------
INSERT INTO `marks` VALUES ('1', '451850', '0');
INSERT INTO `marks` VALUES ('2', '785574', '4');
INSERT INTO `marks` VALUES ('4', '', '4');
INSERT INTO `marks` VALUES ('9', '198673', '0');
INSERT INTO `marks` VALUES ('12', '281976', '2.7027027027027');
INSERT INTO `marks` VALUES ('13', '861046', '0');
INSERT INTO `marks` VALUES ('14', '947727', '0');
INSERT INTO `marks` VALUES ('16', '877544', '0');
INSERT INTO `marks` VALUES ('17', '888624', '0');
INSERT INTO `marks` VALUES ('20', '102408', '36');
INSERT INTO `marks` VALUES ('23', '078409', '0');
INSERT INTO `marks` VALUES ('24', '984465', '81.818181818182');
INSERT INTO `marks` VALUES ('26', '046936', '81.818181818182');
INSERT INTO `marks` VALUES ('27', '974418', '0');
INSERT INTO `marks` VALUES ('28', '657155', '81.818181818182');
INSERT INTO `marks` VALUES ('29', '480043', '0');
INSERT INTO `marks` VALUES ('30', '637451', '0');
INSERT INTO `marks` VALUES ('31', '823392', '100');

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `departmentid` bigint(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `modulecode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO `modules` VALUES ('1', '0', '', '');
INSERT INTO `modules` VALUES ('2', '1', 'Telecommunications', 'HCS 100');
INSERT INTO `modules` VALUES ('3', '3', 'Introduction to HINFO', 'HCS 102');
INSERT INTO `modules` VALUES ('4', '4', 'Introduction to accounting', 'AAC 001');
INSERT INTO `modules` VALUES ('5', '1', 'ww', 'ww');
INSERT INTO `modules` VALUES ('6', '3', 'Ernest', 'HCS201');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question` longtext,
  `dept` varchar(30) DEFAULT NULL,
  `moduleid` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `examtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('44', 'dsfdg', '4', '', 'teacher', null);
INSERT INTO `questions` VALUES ('45', 'haya', '4', 'Beginner', 'teacher', null);
INSERT INTO `questions` VALUES ('46', 'Test1', '4', '1', 'teacher', null);
INSERT INTO `questions` VALUES ('47', 'Test12', '4', '1', 'teacher', null);
INSERT INTO `questions` VALUES ('48', 'Test123', '4', '1', 'teacher', null);
INSERT INTO `questions` VALUES ('49', 'Test2', '4', '2', 'teacher', null);
INSERT INTO `questions` VALUES ('50', 'Test22', '4', '2', 'teacher', null);
INSERT INTO `questions` VALUES ('51', 'Test23', '4', '2', 'teacher', null);
INSERT INTO `questions` VALUES ('52', 'Test3', '4', '3', 'teacher', null);
INSERT INTO `questions` VALUES ('53', 'Test32', '4', '3', 'teacher', null);
INSERT INTO `questions` VALUES ('54', 'Test33', '4', '3', 'teacher', null);
INSERT INTO `questions` VALUES ('55', 'full1', '4', '1', 'teacher', 'full');
INSERT INTO `questions` VALUES ('56', 'full2', '4', '1', 'teacher', 'full');
INSERT INTO `questions` VALUES ('57', 'full23', '4', '1', 'teacher', 'full');

-- ----------------------------
-- Table structure for studentclass
-- ----------------------------
DROP TABLE IF EXISTS `studentclass`;
CREATE TABLE `studentclass` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentclass
-- ----------------------------
INSERT INTO `studentclass` VALUES ('5', 'Grade1');

-- ----------------------------
-- Table structure for symbol
-- ----------------------------
DROP TABLE IF EXISTS `symbol`;
CREATE TABLE `symbol` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of symbol
-- ----------------------------
INSERT INTO `symbol` VALUES ('1', 'A');
INSERT INTO `symbol` VALUES ('2', 'B');
INSERT INTO `symbol` VALUES ('3', 'C');
INSERT INTO `symbol` VALUES ('4', 'D');
INSERT INTO `symbol` VALUES ('5', 'E');

-- ----------------------------
-- Table structure for tmp_001
-- ----------------------------
DROP TABLE IF EXISTS `tmp_001`;
CREATE TABLE `tmp_001` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `qnid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tmp_001
-- ----------------------------
INSERT INTO `tmp_001` VALUES ('1', '1');
INSERT INTO `tmp_001` VALUES ('2', '2');
INSERT INTO `tmp_001` VALUES ('3', '3');
INSERT INTO `tmp_001` VALUES ('4', '4');
INSERT INTO `tmp_001` VALUES ('5', '5');
INSERT INTO `tmp_001` VALUES ('6', '7');
INSERT INTO `tmp_001` VALUES ('7', '8');
INSERT INTO `tmp_001` VALUES ('8', '6');
INSERT INTO `tmp_001` VALUES ('9', '9');
INSERT INTO `tmp_001` VALUES ('10', '11');
INSERT INTO `tmp_001` VALUES ('11', '11');
INSERT INTO `tmp_001` VALUES ('12', '12');
INSERT INTO `tmp_001` VALUES ('13', '12');
INSERT INTO `tmp_001` VALUES ('14', '12');
INSERT INTO `tmp_001` VALUES ('15', '12');
INSERT INTO `tmp_001` VALUES ('16', '12');
INSERT INTO `tmp_001` VALUES ('17', '12');
INSERT INTO `tmp_001` VALUES ('18', '12');
INSERT INTO `tmp_001` VALUES ('19', '12');
INSERT INTO `tmp_001` VALUES ('20', '12');
INSERT INTO `tmp_001` VALUES ('21', '12');
INSERT INTO `tmp_001` VALUES ('22', '12');
INSERT INTO `tmp_001` VALUES ('23', '12');
INSERT INTO `tmp_001` VALUES ('24', '12');
INSERT INTO `tmp_001` VALUES ('25', '15');
INSERT INTO `tmp_001` VALUES ('26', '16');
INSERT INTO `tmp_001` VALUES ('27', '17');
INSERT INTO `tmp_001` VALUES ('28', '18');
INSERT INTO `tmp_001` VALUES ('29', '19');
INSERT INTO `tmp_001` VALUES ('30', '20');
INSERT INTO `tmp_001` VALUES ('31', '21');
INSERT INTO `tmp_001` VALUES ('32', '22');
INSERT INTO `tmp_001` VALUES ('33', '23');
INSERT INTO `tmp_001` VALUES ('34', '24');
INSERT INTO `tmp_001` VALUES ('35', '25');
INSERT INTO `tmp_001` VALUES ('36', '26');
INSERT INTO `tmp_001` VALUES ('37', '27');
INSERT INTO `tmp_001` VALUES ('38', '28');
INSERT INTO `tmp_001` VALUES ('39', '29');
INSERT INTO `tmp_001` VALUES ('40', '30');
INSERT INTO `tmp_001` VALUES ('41', '31');
INSERT INTO `tmp_001` VALUES ('42', '32');
INSERT INTO `tmp_001` VALUES ('43', '33');
INSERT INTO `tmp_001` VALUES ('44', '34');
INSERT INTO `tmp_001` VALUES ('45', '35');
INSERT INTO `tmp_001` VALUES ('46', '36');
INSERT INTO `tmp_001` VALUES ('47', '37');
INSERT INTO `tmp_001` VALUES ('48', '38');
INSERT INTO `tmp_001` VALUES ('49', '39');
INSERT INTO `tmp_001` VALUES ('50', '40');
INSERT INTO `tmp_001` VALUES ('51', '41');
INSERT INTO `tmp_001` VALUES ('52', '43');
INSERT INTO `tmp_001` VALUES ('53', '42');
INSERT INTO `tmp_001` VALUES ('54', '45');
INSERT INTO `tmp_001` VALUES ('55', '46');
INSERT INTO `tmp_001` VALUES ('56', '47');
INSERT INTO `tmp_001` VALUES ('57', '48');
INSERT INTO `tmp_001` VALUES ('58', '49');
INSERT INTO `tmp_001` VALUES ('59', '44');
INSERT INTO `tmp_001` VALUES ('60', '50');
INSERT INTO `tmp_001` VALUES ('61', '51');
INSERT INTO `tmp_001` VALUES ('62', '52');
INSERT INTO `tmp_001` VALUES ('63', '53');
INSERT INTO `tmp_001` VALUES ('64', '54');
INSERT INTO `tmp_001` VALUES ('65', '55');
INSERT INTO `tmp_001` VALUES ('66', '57');
INSERT INTO `tmp_001` VALUES ('67', '56');

-- ----------------------------
-- Table structure for tutorials
-- ----------------------------
DROP TABLE IF EXISTS `tutorials`;
CREATE TABLE `tutorials` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `dept` varchar(30) DEFAULT NULL,
  `moduleid` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tutorials
-- ----------------------------
INSERT INTO `tutorials` VALUES ('1', 'Liam Mthulisi', '3', '2', 'tech', '1489032568sssx.PNG');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `surname` varchar(40) DEFAULT NULL,
  `sex` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `idnumber` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `access` varchar(30) DEFAULT NULL,
  `studentclass` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', 'male', 'admin@us.org', '0', '0', '0', 'admin', 'password', '1', '1', '1', '1', '1');
INSERT INTO `users` VALUES ('3', 'Patience', 'Gahadzikwa', 'female', 'pgahadzikwa@gmail.com', '0772115710', '4 7th Street Ext,\r\nGweru\r\n', '1', 'staff', 'password', '12-12546567-M-12', '1', '09/05/2012', '2', '1');
INSERT INTO `users` VALUES ('9', 'Tendai', 'Mashakda', 'female', 'takawirab@msu.ac.zw', '074636777387', 'Gweru', '4', 'teacher', 'password', '23-45454545-Q-56', '1', '09/24/2012', '2', 'Grade1');
INSERT INTO `users` VALUES ('10', 'CWP', 'Muroiwa', 'male', 'emuroiwa@gmail.com', null, 'adf', '', 'student', 'password', '', '1', '03/13/2018', '3', 'Grade1');
