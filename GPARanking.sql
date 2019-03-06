/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50619
Source Host           : localhost:3306
Source Database       : EduManager

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2019-03-05 14:54:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for GPARanking
-- ----------------------------
DROP TABLE IF EXISTS `GPARanking`;
CREATE TABLE `GPARanking` (
  `ID` char(36) NOT NULL,
  `HandleDept` char(36) DEFAULT NULL,
  `HandleStaff` char(36) DEFAULT NULL,
  `StudentID` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Major` varchar(255) DEFAULT NULL COMMENT '专业',
  `FirstYearGPA` double(255,0) DEFAULT NULL,
  `FirstYearGPARanking` int(255) DEFAULT NULL,
  `SecondYearGPA` double(255,0) DEFAULT NULL,
  `SecondYearGPARanking` int(255) DEFAULT NULL,
  `RankingChange` int(255) DEFAULT NULL,
  `ChangePercentage` varchar(255) DEFAULT '' COMMENT '进退步百分比',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
