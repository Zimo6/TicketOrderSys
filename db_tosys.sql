/*
Navicat MySQL Data Transfer

Source Server         : cui
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : db_tosys

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-05-01 21:11:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_aircraft
-- ----------------------------
DROP TABLE IF EXISTS `t_aircraft`;
CREATE TABLE `t_aircraft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buyDate` datetime DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `useDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_aircraft
-- ----------------------------
INSERT INTO `t_aircraft` VALUES ('1', '2012-01-01 00:00:00', '波音747', '好', '2012-01-04 00:00:00');
INSERT INTO `t_aircraft` VALUES ('2', '2022-01-02 00:00:00', '波音737', '非常好', '2022-01-04 00:00:00');
INSERT INTO `t_aircraft` VALUES ('3', '2020-03-19 00:00:00', '歼9', '超级好', '2020-03-26 00:00:00');
INSERT INTO `t_aircraft` VALUES ('4', '2020-04-08 00:00:00', '歼10', '无坚不摧', '2020-04-10 00:00:00');

-- ----------------------------
-- Table structure for t_flight
-- ----------------------------
DROP TABLE IF EXISTS `t_flight`;
CREATE TABLE `t_flight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ecPrice` int(11) NOT NULL,
  `ecTicketRemain` int(11) NOT NULL,
  `ecTicketTotal` int(11) NOT NULL,
  `fcPrice` int(11) NOT NULL,
  `fcTicketRemain` int(11) NOT NULL,
  `fcTicketTotal` int(11) NOT NULL,
  `flightType` varchar(20) DEFAULT NULL,
  `fromCity` varchar(20) DEFAULT NULL,
  `fromTime` datetime DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `toCity` varchar(20) DEFAULT NULL,
  `toTime` datetime DEFAULT NULL,
  `aircraftId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_90d1t32r62s6dsm98qoh4qsa1` (`aircraftId`),
  CONSTRAINT `FK_90d1t32r62s6dsm98qoh4qsa1` FOREIGN KEY (`aircraftId`) REFERENCES `t_aircraft` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_flight
-- ----------------------------
INSERT INTO `t_flight` VALUES ('1', '400', '294', '292', '800', '20', '10', '国内航班', '北京', '2020-04-05 15:30:00', '东方航空MU3748', '鄂尔多斯', '2020-04-05 17:00:00', '1');
INSERT INTO `t_flight` VALUES ('2', '398', '291', '120', '700', '10', '8', '国内航班', '北京', '2020-04-05 15:30:00', '东方航空MU5278', '太原', '2020-04-05 17:00:00', '2');
INSERT INTO `t_flight` VALUES ('3', '608', '292', '292', '1808', '7', '10', '国内航班', '北京', '2020-04-05 15:30:00', '东方航空MU5170', '合肥', '2020-04-05 15:30:00', '1');
INSERT INTO `t_flight` VALUES ('4', '1800', '292', '292', '4000', '10', '10', '国际航班', '上海', '2020-04-05 15:30:00', '东方航空MU542', '东京', '2020-04-05 18:00:00', '1');
INSERT INTO `t_flight` VALUES ('5', '1000', '292', '292', '3000', '10', '10', '国际航班', '上海', '2020-04-05 15:30:00', '东方航空MU9827', '首尔', '2020-04-05 15:30:00', '1');
INSERT INTO `t_flight` VALUES ('6', '2000', '292', '292', '4000', '10', '10', '国际航班', '上海', '2020-04-05 15:30:00', '东方航空MU9828', '新加坡', '2020-04-05 15:30:00', '1');
INSERT INTO `t_flight` VALUES ('7', '400', '291', '292', '800', '10', '10', '国内航班', '上海', '2020-04-05 15:30:00', '东方航空MU9824', '广州', '2020-04-05 15:30:00', '1');
INSERT INTO `t_flight` VALUES ('8', '500', '292', '292', '1000', '10', '10', '国内航班', '重庆', '2020-04-05 15:30:00', '东方航空MU9823', '广州', '2020-04-05 15:30:00', '1');
INSERT INTO `t_flight` VALUES ('9', '1500', '292', '292', '5000', '10', '10', '国际航班', '上海', '2020-04-05 15:30:00', '东方航空MU9822', '东京', '2020-04-05 15:30:00', '1');
INSERT INTO `t_flight` VALUES ('10', '1300', '291', '292', '2900', '10', '10', '国际航班', '上海', '2020-04-05 15:30:00', '东方航空MU9821', '首尔', '2020-04-05 15:30:00', '1');
INSERT INTO `t_flight` VALUES ('14', '100', '100', '100', '300', '100', '100', '国内航班', '成都', '2020-04-11 14:39:36', '四川航空SC8888', '武汉', '2020-04-15 14:39:43', '4');
INSERT INTO `t_flight` VALUES ('15', '1000', '99', '100', '2000', '99', '100', '国际航班', '武汉', '2020-04-30 14:45:29', '武汉航空WH8888', '日本', '2020-05-01 14:45:34', '4');

-- ----------------------------
-- Table structure for t_manager
-- ----------------------------
DROP TABLE IF EXISTS `t_manager`;
CREATE TABLE `t_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `trueName` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manager
-- ----------------------------
INSERT INTO `t_manager` VALUES ('1', '123', '1234566778', '老王', 'admin');

-- ----------------------------
-- Table structure for t_ticketorder
-- ----------------------------
DROP TABLE IF EXISTS `t_ticketorder`;
CREATE TABLE `t_ticketorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(30) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `price` int(11) NOT NULL,
  `spaceType` varchar(20) DEFAULT NULL,
  `flightId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5vujoeb2yrjvt9tjx9bcevvrn` (`flightId`),
  KEY `FK_nhv1j8c29cntipsxc91yith8y` (`userId`),
  CONSTRAINT `FK_5vujoeb2yrjvt9tjx9bcevvrn` FOREIGN KEY (`flightId`) REFERENCES `t_flight` (`id`),
  CONSTRAINT `FK_nhv1j8c29cntipsxc91yith8y` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ticketorder
-- ----------------------------
INSERT INTO `t_ticketorder` VALUES ('11', 'NO20200405040152', '2020-04-05 16:01:52', '800', '头等舱', '1', '3', '1', '800');
INSERT INTO `t_ticketorder` VALUES ('13', 'NO20200405040712', '2020-04-05 16:07:12', '400', '经济舱', '1', '3', '1100', '440000');
INSERT INTO `t_ticketorder` VALUES ('14', 'NO20200405040849', '2020-04-05 16:08:49', '398', '经济舱', '2', '3', '1000', '398000');
INSERT INTO `t_ticketorder` VALUES ('15', 'NO20200405041031', '2020-04-05 16:10:31', '398', '经济舱', '2', '3', '1000', '398000');
INSERT INTO `t_ticketorder` VALUES ('16', 'NO20200405041145', '2020-04-05 16:11:45', '1808', '头等舱', '3', '3', '1', '1808');
INSERT INTO `t_ticketorder` VALUES ('17', 'NO20200405041207', '2020-04-05 16:12:07', '1808', '头等舱', '3', '3', '2', '3616');
INSERT INTO `t_ticketorder` VALUES ('18', 'NO20200408040431', '2020-04-05 16:04:31', '1300', '经济舱', '10', '3', '1', '1300');
INSERT INTO `t_ticketorder` VALUES ('19', 'NO20200408040623', '2020-04-05 16:06:23', '398', '经济舱', '2', '3', '1', '398');
INSERT INTO `t_ticketorder` VALUES ('24', 'NO20200408033413', '2020-04-08 15:34:13', '2000', '头等舱', '15', '6', '1', '2000');
INSERT INTO `t_ticketorder` VALUES ('25', 'NO20200408034526', '2020-04-08 15:45:26', '1000', '经济舱', '15', '6', '1', '1000');
INSERT INTO `t_ticketorder` VALUES ('26', 'NO20200408035105', '2020-04-08 15:51:05', '400', '经济舱', '7', '6', '1', '400');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `sfz` varchar(20) DEFAULT NULL,
  `trueName` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('2', '234@qq.com', '123', '2321321', '女', '21321321211', '小红', 'marry');
INSERT INTO `t_user` VALUES ('3', '123@qq.com', '123', '13888887777', '男', '422123', '小崔', 'jack2');
INSERT INTO `t_user` VALUES ('4', '123@qq.com', '123', '13788885555', '男', '422123', '小张', 'json');
INSERT INTO `t_user` VALUES ('5', '123@qq.com', '123', '13788885555', '男', '422123', '王二麻子', 'wangermazi');
INSERT INTO `t_user` VALUES ('6', '1159533975@qq.com', '123', '13788885555', '男', '422123', '小崔', 'test1');
