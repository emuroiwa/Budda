/*
Navicat MySQL Data Transfer

Source Server         : MYSQL 3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : learning

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2018-03-13 10:19:23
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES ('5', '2', 'A', 'Brian', '1');
INSERT INTO `answers` VALUES ('6', '2', 'B', 'Linda', '0');
INSERT INTO `answers` VALUES ('7', '2', 'C', 'Stella', '0');
INSERT INTO `answers` VALUES ('8', '2', 'D', 'Patie', '0');
INSERT INTO `answers` VALUES ('9', '3', 'A', 'Aita sei', '1');
INSERT INTO `answers` VALUES ('10', '3', 'B', 'Kwira', '0');
INSERT INTO `answers` VALUES ('11', '3', 'C', 'Enda', '0');
INSERT INTO `answers` VALUES ('12', '3', 'D', 'Pinda', '0');
INSERT INTO `answers` VALUES ('13', '4', 'A', '21', '0');
INSERT INTO `answers` VALUES ('14', '4', 'B', '45', '0');
INSERT INTO `answers` VALUES ('15', '4', 'C', '26', '1');
INSERT INTO `answers` VALUES ('16', '4', 'D', '2', '0');
INSERT INTO `answers` VALUES ('17', '5', 'A', '23', '0');
INSERT INTO `answers` VALUES ('18', '5', 'B', '2', '1');
INSERT INTO `answers` VALUES ('19', '5', 'C', '5', '0');
INSERT INTO `answers` VALUES ('20', '5', 'D', '9', '0');
INSERT INTO `answers` VALUES ('21', '7', 'A', '30', '0');
INSERT INTO `answers` VALUES ('22', '7', 'B', '18', '1');
INSERT INTO `answers` VALUES ('23', '7', 'C', '19', '0');
INSERT INTO `answers` VALUES ('24', '7', 'D', '21', '0');
INSERT INTO `answers` VALUES ('25', '8', 'A', 'Once a day', '0');
INSERT INTO `answers` VALUES ('26', '8', 'B', 'Twice a day', '0');
INSERT INTO `answers` VALUES ('27', '8', 'C', 'Anytime', '1');
INSERT INTO `answers` VALUES ('28', '8', 'D', 'Never', '0');
INSERT INTO `answers` VALUES ('29', '6', 'A', 'Waal', '1');
INSERT INTO `answers` VALUES ('30', '6', 'B', 'What', '0');
INSERT INTO `answers` VALUES ('31', '6', 'C', 'Where', '0');
INSERT INTO `answers` VALUES ('32', '6', 'D', 'Which', '0');
INSERT INTO `answers` VALUES ('33', '9', 'A', 'Mboro', '0');
INSERT INTO `answers` VALUES ('34', '9', 'B', 'Beche', '0');
INSERT INTO `answers` VALUES ('35', '9', 'C', 'Dizvi', '0');
INSERT INTO `answers` VALUES ('36', '9', 'D', 'Hmheno', '1');
INSERT INTO `answers` VALUES ('37', '15', 'A', 'HI', '0');
INSERT INTO `answers` VALUES ('38', '15', 'B', 'DSFDSF', '1');
INSERT INTO `answers` VALUES ('39', '15', 'C', 'DSFDSF', '0');
INSERT INTO `answers` VALUES ('40', '15', 'D', 'DSFDSF', '0');
INSERT INTO `answers` VALUES ('41', '16', 'A', '300000000', '0');
INSERT INTO `answers` VALUES ('42', '16', 'B', 'rewrewr', '1');
INSERT INTO `answers` VALUES ('43', '16', 'C', 'ewrewrewr', '0');
INSERT INTO `answers` VALUES ('44', '16', 'D', 'ewrewrewrewr', '0');
INSERT INTO `answers` VALUES ('45', '17', 'A', 'rewrewrewr', '0');
INSERT INTO `answers` VALUES ('46', '17', 'B', 'ewrewrewr', '1');
INSERT INTO `answers` VALUES ('47', '17', 'C', 'ewrewrewrew', '0');
INSERT INTO `answers` VALUES ('48', '17', 'D', 'ewrewrewr', '0');
INSERT INTO `answers` VALUES ('49', '18', 'A', 'sddsfdsf', '1');
INSERT INTO `answers` VALUES ('50', '18', 'B', 'DSFDSF', '0');
INSERT INTO `answers` VALUES ('51', '18', 'C', 'DSFDSF', '0');
INSERT INTO `answers` VALUES ('52', '18', 'D', 'dsfdsfds', '0');
INSERT INTO `answers` VALUES ('53', '19', 'A', 'dfsdfdsf', '0');
INSERT INTO `answers` VALUES ('54', '19', 'B', 'dsfdsf', '1');
INSERT INTO `answers` VALUES ('55', '19', 'C', 'DSFDSF', '0');
INSERT INTO `answers` VALUES ('56', '19', 'D', 'erewrew', '0');
INSERT INTO `answers` VALUES ('57', '20', 'A', 'sfdsfdsf', '0');
INSERT INTO `answers` VALUES ('58', '20', 'B', 'sdfdsf', '1');
INSERT INTO `answers` VALUES ('59', '20', 'C', 'dsfdsf', '0');
INSERT INTO `answers` VALUES ('60', '20', 'D', 'dsfdsfdsf', '0');
INSERT INTO `answers` VALUES ('61', '21', 'A', 'asdasdasd', '1');
INSERT INTO `answers` VALUES ('62', '21', 'B', 'asdasd', '0');
INSERT INTO `answers` VALUES ('63', '21', 'C', 'asdasd', '0');
INSERT INTO `answers` VALUES ('64', '21', 'D', 'asdasd', '0');
INSERT INTO `answers` VALUES ('65', '22', 'A', 'asdasdasdasd', '0');
INSERT INTO `answers` VALUES ('66', '22', 'B', 'asdasdasd', '1');
INSERT INTO `answers` VALUES ('67', '22', 'C', 'asdasdasd', '0');
INSERT INTO `answers` VALUES ('68', '22', 'D', 'asdasdasd', '0');
INSERT INTO `answers` VALUES ('69', '23', 'A', 'asdasdasdasd', '1');
INSERT INTO `answers` VALUES ('70', '23', 'B', 'asdasdasd', '0');
INSERT INTO `answers` VALUES ('71', '23', 'C', 'asdasd', '0');
INSERT INTO `answers` VALUES ('72', '23', 'D', 'asdasdasd', '0');
INSERT INTO `answers` VALUES ('73', '24', 'A', 'asdsadasdasd', '1');
INSERT INTO `answers` VALUES ('74', '24', 'B', 'sdasdasd', '0');
INSERT INTO `answers` VALUES ('75', '24', 'C', 'asdasdasdasdas', '0');
INSERT INTO `answers` VALUES ('76', '24', 'D', 'asdasdasd', '0');
INSERT INTO `answers` VALUES ('77', '25', 'A', 'dsfdsfdsfds', '1');
INSERT INTO `answers` VALUES ('78', '25', 'B', 'dsfdsf', '0');
INSERT INTO `answers` VALUES ('79', '25', 'C', 'dsfdsfdsf', '0');
INSERT INTO `answers` VALUES ('80', '25', 'D', 'sdfdsfdsfdsf', '0');
INSERT INTO `answers` VALUES ('81', '26', 'A', 'fsdfdsfdsf', '1');
INSERT INTO `answers` VALUES ('82', '26', 'B', 'sdfdsfdsfdf', '0');
INSERT INTO `answers` VALUES ('83', '26', 'C', 'dsfdsfdsf', '0');
INSERT INTO `answers` VALUES ('84', '26', 'D', 'dsfdsfdsf', '0');
INSERT INTO `answers` VALUES ('85', '27', 'A', 'dsfdsfdsfdsf', '0');
INSERT INTO `answers` VALUES ('86', '27', 'B', 'dsfdsf', '1');
INSERT INTO `answers` VALUES ('87', '27', 'C', 'dsfdsfdsf', '0');
INSERT INTO `answers` VALUES ('88', '27', 'D', 'dsfdsfdsf', '0');
INSERT INTO `answers` VALUES ('89', '28', 'A', 'sadasdasd', '1');
INSERT INTO `answers` VALUES ('90', '28', 'B', 'sdasdasd', '0');
INSERT INTO `answers` VALUES ('91', '28', 'C', 'asdasdasdasdas', '0');
INSERT INTO `answers` VALUES ('92', '28', 'D', 'asdasdasd', '0');
INSERT INTO `answers` VALUES ('93', '29', 'A', 'asdasdasdasd', '0');
INSERT INTO `answers` VALUES ('94', '29', 'B', 'asdasdasdas', '1');
INSERT INTO `answers` VALUES ('95', '29', 'C', 'asdasdasd', '0');
INSERT INTO `answers` VALUES ('96', '29', 'D', 'asdasdasd', '0');
INSERT INTO `answers` VALUES ('97', '30', 'A', '11', '1');
INSERT INTO `answers` VALUES ('98', '30', 'B', '12', '0');
INSERT INTO `answers` VALUES ('99', '30', 'C', '123', '0');
INSERT INTO `answers` VALUES ('100', '30', 'D', '1', '0');
INSERT INTO `answers` VALUES ('101', '31', 'A', 'dsdfsdf', '0');
INSERT INTO `answers` VALUES ('102', '31', 'B', 'dsfdsfs', '1');
INSERT INTO `answers` VALUES ('103', '31', 'C', 'dsfsdfdsf', '0');
INSERT INTO `answers` VALUES ('104', '31', 'D', 'dsfsfdsf', '0');
INSERT INTO `answers` VALUES ('105', '32', 'A', 'dsfsdfdsf', '1');
INSERT INTO `answers` VALUES ('106', '32', 'B', 'dsfdsfs', '0');
INSERT INTO `answers` VALUES ('107', '32', 'C', 'dsfdsfdsf', '0');
INSERT INTO `answers` VALUES ('108', '32', 'D', '5', '0');
INSERT INTO `answers` VALUES ('109', '33', 'A', 'sdfdsfdsfdsf', '0');
INSERT INTO `answers` VALUES ('110', '33', 'B', 'sdfdsfdsf', '1');
INSERT INTO `answers` VALUES ('111', '33', 'C', 'sdfdsfdsf', '0');
INSERT INTO `answers` VALUES ('112', '33', 'D', 'dsfdsfdsf', '0');
INSERT INTO `answers` VALUES ('113', '34', 'A', 'ewrewrewr', '1');
INSERT INTO `answers` VALUES ('114', '34', 'B', 'werewr', '0');
INSERT INTO `answers` VALUES ('115', '34', 'C', 'ewrewrewr', '0');
INSERT INTO `answers` VALUES ('116', '34', 'D', 'ewrewrewr', '0');
INSERT INTO `answers` VALUES ('117', '35', 'A', '11', '1');
INSERT INTO `answers` VALUES ('118', '35', 'B', 'ewrewrewr', '0');
INSERT INTO `answers` VALUES ('119', '35', 'C', 'ewrewrewr', '0');
INSERT INTO `answers` VALUES ('120', '35', 'D', 'ewrewr', '0');
INSERT INTO `answers` VALUES ('121', '36', 'A', 'ewrewrewr', '1');
INSERT INTO `answers` VALUES ('122', '36', 'B', 'ewrewrewr', '0');
INSERT INTO `answers` VALUES ('123', '36', 'C', 'werwerewr', '0');
INSERT INTO `answers` VALUES ('124', '36', 'D', 'ewrewrewrew', '0');
INSERT INTO `answers` VALUES ('125', '37', 'A', 'ewrewrewrewr', '0');
INSERT INTO `answers` VALUES ('126', '37', 'B', 'ewrewrewrer', '1');
INSERT INTO `answers` VALUES ('127', '37', 'C', 'ewrewrewrewew', '0');
INSERT INTO `answers` VALUES ('128', '37', 'D', 'rewrewrewr', '0');
INSERT INTO `answers` VALUES ('129', '38', 'A', 'ewrewrewr', '1');
INSERT INTO `answers` VALUES ('130', '38', 'B', 'ewrewrewr', '0');
INSERT INTO `answers` VALUES ('131', '38', 'C', 'rewrewr', '0');
INSERT INTO `answers` VALUES ('132', '38', 'D', 'erewrewr', '0');
INSERT INTO `answers` VALUES ('133', '39', 'A', 'dasf', '1');
INSERT INTO `answers` VALUES ('134', '39', 'B', 'fd', '0');
INSERT INTO `answers` VALUES ('135', '39', 'C', 'f', '0');
INSERT INTO `answers` VALUES ('136', '39', 'D', 'df', '0');
INSERT INTO `answers` VALUES ('137', '40', 'A', 'df', '1');
INSERT INTO `answers` VALUES ('138', '40', 'B', 'dsd', '0');
INSERT INTO `answers` VALUES ('139', '40', 'C', 'ds', '0');
INSERT INTO `answers` VALUES ('140', '40', 'D', 'scd', '0');
INSERT INTO `answers` VALUES ('141', '41', 'A', 'sad', '1');
INSERT INTO `answers` VALUES ('142', '41', 'B', 'WD', '0');
INSERT INTO `answers` VALUES ('143', '41', 'C', 'ASD', '0');
INSERT INTO `answers` VALUES ('144', '41', 'D', 'scs', '0');
INSERT INTO `answers` VALUES ('145', '43', 'A', 'sdfg', '1');
INSERT INTO `answers` VALUES ('146', '43', 'B', 'sfg', '0');
INSERT INTO `answers` VALUES ('147', '43', 'C', 'sg', '0');
INSERT INTO `answers` VALUES ('148', '43', 'D', 'sgf', '0');
INSERT INTO `answers` VALUES ('149', '42', 'A', 'sdg', '1');
INSERT INTO `answers` VALUES ('150', '42', 'B', 'sg', '0');
INSERT INTO `answers` VALUES ('151', '42', 'C', 'fgshd', '0');
INSERT INTO `answers` VALUES ('152', '42', 'D', 'hdf', '0');
INSERT INTO `answers` VALUES ('153', '42', 'E', 'hdf', '0');
INSERT INTO `answers` VALUES ('154', '45', 'A', 'dsg', '1');
INSERT INTO `answers` VALUES ('155', '45', 'B', 'dsg', '0');
INSERT INTO `answers` VALUES ('156', '45', 'C', 'sdg', '0');
INSERT INTO `answers` VALUES ('157', '45', 'D', 'dsg', '0');
INSERT INTO `answers` VALUES ('158', '45', 'E', 'sdgs', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of certificates
-- ----------------------------
INSERT INTO `certificates` VALUES ('1', '682900', '88.888888888889');
INSERT INTO `certificates` VALUES ('2', '', '66.666666666667');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of marks
-- ----------------------------
INSERT INTO `marks` VALUES ('1', '451850', '0');
INSERT INTO `marks` VALUES ('2', '785574', '4');
INSERT INTO `marks` VALUES ('4', '', '4');
INSERT INTO `marks` VALUES ('9', '198673', '0');
INSERT INTO `marks` VALUES ('12', '281976', '2.7027027027027');
INSERT INTO `marks` VALUES ('13', '861046', '0');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', 'How old is earth', null, null, null);
INSERT INTO `questions` VALUES ('2', 'My Name', null, null, null);
INSERT INTO `questions` VALUES ('3', 'Hie munhu wese', null, null, null);
INSERT INTO `questions` VALUES ('4', 'Bux Age', null, null, null);
INSERT INTO `questions` VALUES ('5', 'How to prevent nemurous loops using for loop', null, null, null);
INSERT INTO `questions` VALUES ('6', 'Wa', null, null, null);
INSERT INTO `questions` VALUES ('7', 'What is the new age group of sex in zim', null, null, null);
INSERT INTO `questions` VALUES ('8', 'How can people have sex', null, null, null);
INSERT INTO `questions` VALUES ('9', 'Whats the most horrible name', null, null, null);
INSERT INTO `questions` VALUES ('10', 'HIV AIDS', null, null, null);
INSERT INTO `questions` VALUES ('13', '', '1', null, null);
INSERT INTO `questions` VALUES ('14', 'What is the major telecoms business', '1', '2', null);
INSERT INTO `questions` VALUES ('15', 'What is the main age of va', '1', '2', 'brian');
INSERT INTO `questions` VALUES ('16', 'How long', '3', '3', 'btaks');
INSERT INTO `questions` VALUES ('17', 'How far', '3', '3', 'btaks');
INSERT INTO `questions` VALUES ('18', 'ID', '3', '3', 'btaks');
INSERT INTO `questions` VALUES ('19', 'People how', '3', '3', 'btaks');
INSERT INTO `questions` VALUES ('20', 'What the introduction', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('21', 'Age', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('22', 'Old', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('23', 'camera', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('24', 'online', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('25', 'The', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('26', 'thsose', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('27', 'this', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('28', 'thatdfdf', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('29', 'hope', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('30', 'it', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('31', 'fdsfdsfdsf', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('32', 'dsfsdfdsfdsf dsdsgf', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('33', 'dsfds dsfdsfdsfdsf', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('34', ' dfds dfefdsf', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('35', 'thdsfjdf dsvusdfnds', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('36', 'dsufdsf hjgvdskff', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('37', 'the cshdwf cjvfdv', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('38', 'thxifewnds njdsfdsf', '4', '4', 'gracious');
INSERT INTO `questions` VALUES ('39', 'gdfg', '1', '5', 'brian');
INSERT INTO `questions` VALUES ('40', 'xxx', '3', '6', 'tech');
INSERT INTO `questions` VALUES ('41', 'aaaa', '3', '6', 'tech');
INSERT INTO `questions` VALUES ('42', 'sfg', '1', '2', 'tech');
INSERT INTO `questions` VALUES ('43', 'dga', '1', '', 'tech');
INSERT INTO `questions` VALUES ('44', 'dsfdg', '4', '', 'teacher');
INSERT INTO `questions` VALUES ('45', 'haya', '4', 'Beginner', 'teacher');

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

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
INSERT INTO `users` VALUES ('1', 'admin', 'admin', 'male', 'admin@us.org', '0', '0', '0', 'admin', 'password', '1', '1', '1', '3', '1');
INSERT INTO `users` VALUES ('3', 'Patience', 'Gahadzikwa', 'female', 'pgahadzikwa@gmail.com', '0772115710', '4 7th Street Ext,\r\nGweru\r\n', '1', 'staff', 'password', '12-12546567-M-12', '1', '09/05/2012', '2', '1');
INSERT INTO `users` VALUES ('9', 'Tendai', 'Mashakda', 'female', 'takawirab@msu.ac.zw', '074636777387', 'Gweru', '4', 'teacher', 'password', '23-45454545-Q-56', '1', '09/24/2012', '2', '1');
INSERT INTO `users` VALUES ('10', 'CWP', 'Muroiwa', 'male', 'emuroiwa@gmail.com', null, 'adf', '', 'M2018751', 'password', '', '1', '03/13/2018', '3', '1');
