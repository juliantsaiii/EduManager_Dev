/*
Navicat MySQL Data Transfer

Source Server         : 本地库
Source Server Version : 50619
Source Host           : localhost:3306
Source Database       : EduManager

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2019-07-09 10:42:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Cet
-- ----------------------------
DROP TABLE IF EXISTS `Cet`;
CREATE TABLE `Cet` (
  `ID` varchar(255) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Cet4` varchar(255) DEFAULT NULL,
  `Cet6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Cet
-- ----------------------------
INSERT INTO `Cet` VALUES ('2015021101', '杨畅', '323', '0');
INSERT INTO `Cet` VALUES ('2015021104', '罗思琦', '477', '395');
INSERT INTO `Cet` VALUES ('2015021105', '袁丹娜', '461', '416');
INSERT INTO `Cet` VALUES ('2015021106', '王淑怡', '488', '340');
INSERT INTO `Cet` VALUES ('2015021107', '叶龙群', '422', '0');
INSERT INTO `Cet` VALUES ('2015021108', '王琪', '466', '373');
INSERT INTO `Cet` VALUES ('2015021109', '伍静雯', '437', '0');
INSERT INTO `Cet` VALUES ('2015021110', '王沁孜', '424', '0');
INSERT INTO `Cet` VALUES ('2015021111', '靳瑞冬', '335', '0');
INSERT INTO `Cet` VALUES ('2015021112', '焦楷', '414', '0');
INSERT INTO `Cet` VALUES ('2015021113', '金学秀', '0', '0');
INSERT INTO `Cet` VALUES ('2015021114', '王杰', '507', '513');
INSERT INTO `Cet` VALUES ('2015021115', '张文樑', '380', '0');
INSERT INTO `Cet` VALUES ('2015021116', '徐文涛', '451', '407');
INSERT INTO `Cet` VALUES ('2015021118', '潘仲达', '430', '413');
INSERT INTO `Cet` VALUES ('2015021119', '蒋珍存', '427', '0');
INSERT INTO `Cet` VALUES ('2015021120', '王欢', '437', '0');
INSERT INTO `Cet` VALUES ('2015021121', '吴嘉楠', '452', '0');
INSERT INTO `Cet` VALUES ('2015021122', '陈鑫', '433', '374');
INSERT INTO `Cet` VALUES ('2015021124', '彭天元', '371', '0');
INSERT INTO `Cet` VALUES ('2015021125', '黄高鹏', '456', '354');
INSERT INTO `Cet` VALUES ('2015021126', '尹清淳', '444', '334');
INSERT INTO `Cet` VALUES ('2015021127', '李谊航', '384', '0');
INSERT INTO `Cet` VALUES ('2015021128', '安光盛', '337', '0');
INSERT INTO `Cet` VALUES ('2015021130', '雷琛', '329', '0');
INSERT INTO `Cet` VALUES ('2015021201', '薛志', '454', '341');
INSERT INTO `Cet` VALUES ('2015021202', '王艺蓉', '477', '442');
INSERT INTO `Cet` VALUES ('2015021203', '印洁', '445', '385');
INSERT INTO `Cet` VALUES ('2015021204', '张倩倩', '522', '427');
INSERT INTO `Cet` VALUES ('2015021206', '吴嘉琦', '487', '424');
INSERT INTO `Cet` VALUES ('2015021207', '汤宝珍', '413', '0');
INSERT INTO `Cet` VALUES ('2015021209', '杨连琼', '406', '0');
INSERT INTO `Cet` VALUES ('2015021210', '唐雍哲', '443', '0');
INSERT INTO `Cet` VALUES ('2015021211', '蒋源', '458', '0');
INSERT INTO `Cet` VALUES ('2015021212', '白振宏', '387', '0');
INSERT INTO `Cet` VALUES ('2015021213', '荣岩', '334', '0');
INSERT INTO `Cet` VALUES ('2015021214', '秦祎', '468', '319');
INSERT INTO `Cet` VALUES ('2015021216', '徐麟昌', '502', '423');
INSERT INTO `Cet` VALUES ('2015021217', '任宇炟', '483', '462');
INSERT INTO `Cet` VALUES ('2015021219', '李星昊', '348', '0');
INSERT INTO `Cet` VALUES ('2015021220', '戴军', '445', '251');
INSERT INTO `Cet` VALUES ('2015021221', '王翔', '468', '464');
INSERT INTO `Cet` VALUES ('2015021222', '周超', '437', '374');
INSERT INTO `Cet` VALUES ('2015021223', '蔡晓天', null, null);
INSERT INTO `Cet` VALUES ('2015021224', '曹佳成', '0', '0');
INSERT INTO `Cet` VALUES ('2015021225', '孙辉', '310', '0');
INSERT INTO `Cet` VALUES ('2015021227', '代昌帅', '328', '0');
INSERT INTO `Cet` VALUES ('2015021228', '蒋京君', '283', '0');
INSERT INTO `Cet` VALUES ('2015021229', '赵宇', '333', '0');
INSERT INTO `Cet` VALUES ('2015021230', '石嘉晨', '354', '0');
INSERT INTO `Cet` VALUES ('2015021301', '许航玮', '387', '0');
INSERT INTO `Cet` VALUES ('2015021303', '王建如', '515', '480');
INSERT INTO `Cet` VALUES ('2015021304', '蒋玉吉', '361', '0');
INSERT INTO `Cet` VALUES ('2015021305', '杨梦杰', '504', '456');
INSERT INTO `Cet` VALUES ('2015021306', '程远', '494', '461');
INSERT INTO `Cet` VALUES ('2015021307', '洪丹', '464', '438');
INSERT INTO `Cet` VALUES ('2015021308', '吕曼婷', '451', '326');
INSERT INTO `Cet` VALUES ('2015021309', '史文洁', '289', '0');
INSERT INTO `Cet` VALUES ('2015021310', '向思东', '461', '315');
INSERT INTO `Cet` VALUES ('2015021311', '张靖涛', '425', '304');
INSERT INTO `Cet` VALUES ('2015021312', '刘帅言', '306', '0');
INSERT INTO `Cet` VALUES ('2015021314', '严祺', '411', '0');
INSERT INTO `Cet` VALUES ('2015021315', '蔡菥', '475', '0');
INSERT INTO `Cet` VALUES ('2015021316', '王闯', '466', '0');
INSERT INTO `Cet` VALUES ('2015021317', '孔令奇', '495', '363');
INSERT INTO `Cet` VALUES ('2015021318', '曹弘毅', '449', '337');
INSERT INTO `Cet` VALUES ('2015021319', '焦意轩', '464', '339');
INSERT INTO `Cet` VALUES ('2015021320', '吴孙业', '436', '353');
INSERT INTO `Cet` VALUES ('2015021321', '刘宇靓', '459', '348');
INSERT INTO `Cet` VALUES ('2015021322', '王硕', '287', '0');
INSERT INTO `Cet` VALUES ('2015021323', '李陈壹', '389', '0');
INSERT INTO `Cet` VALUES ('2015021324', '彭陈', '295', '0');
INSERT INTO `Cet` VALUES ('2015021325', '顾之榕', '454', '320');
INSERT INTO `Cet` VALUES ('2015021326', '张师胤', '0', '0');
INSERT INTO `Cet` VALUES ('2015021327', '刘治中', '0', '0');
INSERT INTO `Cet` VALUES ('2015021329', '邹俊杭', '317', '0');
INSERT INTO `Cet` VALUES ('2015021330', '李飞', '348', '0');
INSERT INTO `Cet` VALUES ('2015021401', '邓琳', '427', '343');
INSERT INTO `Cet` VALUES ('2015021403', '孙绮蔓', '508', '357');
INSERT INTO `Cet` VALUES ('2015021404', '陈石', '470', '335');
INSERT INTO `Cet` VALUES ('2015021405', '陈叶', '386', '0');
INSERT INTO `Cet` VALUES ('2015021406', '朱朝香', '449', '365');
INSERT INTO `Cet` VALUES ('2015021407', '陈斯琦', '430', '304');
INSERT INTO `Cet` VALUES ('2015021409', '张祎璇', '449', '371');
INSERT INTO `Cet` VALUES ('2015021410', '叶国庆', '382', '0');
INSERT INTO `Cet` VALUES ('2015021412', '乔丹', '327', '0');
INSERT INTO `Cet` VALUES ('2015021414', '朱万博', '424', '0');
INSERT INTO `Cet` VALUES ('2015021415', '江羿', '512', '334');
INSERT INTO `Cet` VALUES ('2015021416', '丁京', '492', '411');
INSERT INTO `Cet` VALUES ('2015021417', '张晨亮', '412', '0');
INSERT INTO `Cet` VALUES ('2015021418', '韦韬', '346', '0');
INSERT INTO `Cet` VALUES ('2015021419', '周宇', '448', '279');
INSERT INTO `Cet` VALUES ('2015021420', '徐天扬', '402', '0');
INSERT INTO `Cet` VALUES ('2015021422', '徐才良', '411', '0');
INSERT INTO `Cet` VALUES ('2015021423', '杨良海', '473', '0');
INSERT INTO `Cet` VALUES ('2015021424', '欧阳滔远', '418', '0');
INSERT INTO `Cet` VALUES ('2015021425', '张淼', '377', '0');
INSERT INTO `Cet` VALUES ('2015021426', '陈鹏鸿', '445', '0');
INSERT INTO `Cet` VALUES ('2015021427', '黄静涛', '416', '0');
INSERT INTO `Cet` VALUES ('2015021429', '王一凡', '380', '0');
INSERT INTO `Cet` VALUES ('2015062220', '叶元昕', '450', '317');
INSERT INTO `Cet` VALUES ('2015072102', '汪莹', '457', '376');

-- ----------------------------
-- Table structure for Course
-- ----------------------------
DROP TABLE IF EXISTS `Course`;
CREATE TABLE `Course` (
  `ID` char(36) NOT NULL DEFAULT '' COMMENT '唯一标识符',
  `CourseName` varchar(50) DEFAULT '' COMMENT '课程名称',
  `ClassID` varchar(50) DEFAULT NULL COMMENT '授课班级',
  `Teacher` varchar(50) DEFAULT NULL COMMENT '授课老师',
  `TeacherID` varchar(50) DEFAULT NULL COMMENT '授课教师工号',
  `Week` varchar(50) DEFAULT NULL COMMENT '星期几',
  `CourseOrder` varchar(50) DEFAULT NULL COMMENT '节次',
  `Place` varchar(50) DEFAULT '' COMMENT '上课地点',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Course
-- ----------------------------
INSERT INTO `Course` VALUES ('38ebaef1-7101-429d-877b-33f129c8fc60', 'C#', '20150213', '傅家兵', '1006', '1', '2', 'A4');
INSERT INTO `Course` VALUES ('684b26f1-4a2e-11e9-afda-507b9d31bede', 'JAVA', '20150212', '卞晓晓', '1001', '1', '1', 'A4S202');
INSERT INTO `Course` VALUES ('684f3025-4a2e-11e9-afda-507b9d31bede', '多媒体技术与应用', '20150212', '詹玲超', '1002', '1', '3', 'A4S201');
INSERT INTO `Course` VALUES ('6858bfb7-4a2e-11e9-afda-507b9d31bede', '电磁场与微波技术', '20150212', '耿茜', '1003', '1', '4', 'A4N111');
INSERT INTO `Course` VALUES ('685eb771-4a2e-11e9-afda-507b9d31bede', '通信原理', '20150212', '卞晓晓', '1001', '2', '1', 'A4S117');
INSERT INTO `Course` VALUES ('68634f28-4a2e-11e9-afda-507b9d31bede', '形势与政策', '20150212', '吉欢', '1004', '2', '2', 'A1N209');
INSERT INTO `Course` VALUES ('68692bca-4a2e-11e9-afda-507b9d31bede', '现代交换技术', '20150212', '魏丽', '1005', '2', '4', 'A4N203');
INSERT INTO `Course` VALUES ('686d6448-4a2e-11e9-afda-507b9d31bede', '微机原理与接口技术', '20150212', '迟少华', '1006', '3', '1', 'A4N103');
INSERT INTO `Course` VALUES ('6871da9f-4a2e-11e9-afda-507b9d31bede', '电磁场与微波技术', '20150212', '耿茜', '1003', '3', '2', 'A4N103');
INSERT INTO `Course` VALUES ('68765fd4-4a2e-11e9-afda-507b9d31bede', '多媒体技术与应用', '20150212', '詹玲超', '1002', '3', '3', 'A3-203');
INSERT INTO `Course` VALUES ('687ac0fb-4a2e-11e9-afda-507b9d31bede', '现代交换技术', '20150212', '魏丽', '1005', '3', '4', 'A4N203');
INSERT INTO `Course` VALUES ('687fce78-4a2e-11e9-afda-507b9d31bede', '通信原理实验', '20150212', '卢家凰', '1007', '4', '1', 'A3-313');
INSERT INTO `Course` VALUES ('688395a7-4a2e-11e9-afda-507b9d31bede', '通信原理', '20150212', '卞晓晓', '1001', '4', '2', 'A4');
INSERT INTO `Course` VALUES ('68873b86-4a2e-11e9-afda-507b9d31bede', '现代交换技术', '20150212', '魏丽', '1005', '4', '3', ' A4N203');
INSERT INTO `Course` VALUES ('688af78d-4a2e-11e9-afda-507b9d31bede', '电磁场与微波技术', '20150212', '耿茜', '1003', '4', '4', 'A4N107');
INSERT INTO `Course` VALUES ('688f1b6e-4a2e-11e9-afda-507b9d31bede', '微机原理与接口技术实验', '20150212', '王位喜', '1008', '5', '1', 'A3-307');
INSERT INTO `Course` VALUES ('6893614a-4a2e-11e9-afda-507b9d31bede', '微机原理与接口技术', '20150212', '迟少华', '1006', '5', '3', 'A4S217');
INSERT INTO `Course` VALUES ('76229740-accd-433b-a1d9-78f2c5e90941', '演示课程', '20150213', '蔡宗麟', '123456', '1', '1', '答辩教室');
INSERT INTO `Course` VALUES ('77b162b5-e98a-4d34-bd19-6a6f2a84df2d', '单片机', '20150214', '王明', '1007', '1', '3', 'A1');
INSERT INTO `Course` VALUES ('c37347dd-8485-4c6c-9c93-415e04142d05', 'C++', '20150213', '蔡宗麟', '1006', '3', '4', 'A1');

-- ----------------------------
-- Table structure for Dept
-- ----------------------------
DROP TABLE IF EXISTS `Dept`;
CREATE TABLE `Dept` (
  `ID` char(36) NOT NULL,
  `DeptName` varchar(50) DEFAULT NULL,
  `UserID` char(36) DEFAULT NULL,
  `ParentID` char(36) DEFAULT NULL,
  `Sequence` int(11) DEFAULT '0',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0',
  `Timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Dept
-- ----------------------------
INSERT INTO `Dept` VALUES ('00000000-0000-0001-0000-000000000000', '南京航空航天大学金城学院', '07316932-d03e-4823-bac1-8b262ad9a990', '00000000-0000-0000-0000-000000000000', '1', '\0', '2019-03-03 17:36:20');
INSERT INTO `Dept` VALUES ('10886a46-589c-4bb3-b830-cb6f7652bcd6', '教务处', '07316932-d03e-4823-bac1-8b262ad9a990', '00000000-0000-0001-0000-000000000000', '11', '\0', '2019-03-03 17:36:44');

-- ----------------------------
-- Table structure for Dictionary
-- ----------------------------
DROP TABLE IF EXISTS `Dictionary`;
CREATE TABLE `Dictionary` (
  `ID` char(36) NOT NULL,
  `TableName` varchar(255) DEFAULT NULL,
  `EN` varchar(255) DEFAULT NULL COMMENT '系统字段',
  `CN` varchar(255) DEFAULT NULL COMMENT '数据源字段',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Dictionary
-- ----------------------------
INSERT INTO `Dictionary` VALUES ('1bc4bf80-3bd3-11e9-aab5-507b9d31bede', 'Person', 'Address', '详细住址');
INSERT INTO `Dictionary` VALUES ('37addcef-3bd2-11e9-aab5-507b9d31bede', 'Person', 'StudentID', '学号');
INSERT INTO `Dictionary` VALUES ('460fd505-3bd2-11e9-aab5-507b9d31bede', 'Person', 'IdCard', '身份证号');
INSERT INTO `Dictionary` VALUES ('4d219619-3bd2-11e9-aab5-507b9d31bede', 'Person', 'Name', '姓名');
INSERT INTO `Dictionary` VALUES ('5fdafa59-3bd2-11e9-aab5-507b9d31bede', 'Person', 'Nation', '民族');
INSERT INTO `Dictionary` VALUES ('6b36947c-3bd1-11e9-aab5-507b9d31bede', 'Person', 'Education', '全日制学历');
INSERT INTO `Dictionary` VALUES ('74cc62e5-3bd2-11e9-aab5-507b9d31bede', 'Person', 'Height', '身高');
INSERT INTO `Dictionary` VALUES ('a08f2efb-3bd2-11e9-aab5-507b9d31bede', 'Person', 'Phone', '联系电话');
INSERT INTO `Dictionary` VALUES ('ec70d250-3bd2-11e9-aab5-507b9d31bede', 'Person', 'NativePlace', '籍贯');

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

-- ----------------------------
-- Records of GPARanking
-- ----------------------------
INSERT INTO `GPARanking` VALUES ('daa7f019-1326-4f91-9315-8557eeedf829', '00000000-0000-0001-0000-000000000000', '07316932-d03e-4823-bac1-8b262ad9a990', '2015021223', '蔡宗麟', '信息工程', '4', '2', '4', '2', '1', '10%');

-- ----------------------------
-- Table structure for Menu
-- ----------------------------
DROP TABLE IF EXISTS `Menu`;
CREATE TABLE `Menu` (
  `ID` char(36) NOT NULL,
  `Name` varchar(50) DEFAULT '',
  `Icon` varchar(20) DEFAULT '',
  `ParentID` char(36) DEFAULT NULL,
  `Url` varchar(200) DEFAULT '',
  `Sequence` int(11) DEFAULT '0',
  `Timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Menu
-- ----------------------------
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000001000', '系统设置', 'layui-icon-layer', '00000000-0000-0000-0000-000000000000', '', '100', '2019-03-01 16:26:26');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000001001', '用户设置', 'icon-nav', '00000000-0000-0000-0000-000000001000', '/Admin/UsersList', '101', '2018-07-21 21:38:17');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000001002', '部门设置', 'icon-nav', '00000000-0000-0000-0000-000000001000', '/Admin/DeptList', '102', '2018-07-21 21:38:18');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000001003', '角色设置', 'icon-nav', '00000000-0000-0000-0000-000000001000', '/Admin/RoleList', '103', '2018-07-21 21:38:19');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000001005', '修改密码', 'icon-nav', '00000000-0000-0000-0000-000000001000', '/Admin/ChangePassword', '105', '2018-07-21 21:38:22');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000002000', '成绩管理', 'layui-icon-layer', '00000000-0000-0000-0000-000000000000', '', '20', '2019-03-01 16:30:28');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000002005', '四六级成绩', 'icon-nav', '00000000-0000-0000-0000-000000002000', '/Cet/CetList', '21', '2019-03-01 16:30:32');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000003000', '个人信息', 'layui-icon-layer', '00000000-0000-0000-0000-000000000000', '', '10', '2019-03-11 09:40:00');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000003001', '基本信息', 'icon-nav', '00000000-0000-0000-0000-000000003000', '/Person/PersonList', '11', '2019-03-01 16:31:37');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000004000', '数据分析', 'layui-icon-layer', '00000000-0000-0000-0000-000000000000', '', '30', '2019-04-26 23:26:15');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000004001', 'GPA查询', 'icon-nav', '00000000-0000-0000-0000-000000004000', '/BigData/GPARanking', '31', '2019-03-11 09:40:26');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000004002', '综合分析', 'icon-nav', '00000000-0000-0000-0000-000000004000', '/BigData/ScoreAnalysis', '32', '2019-03-06 16:17:11');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000004003', '生源地分析', 'icon-nav', '00000000-0000-0000-0000-000000004000', '/BigData/HometownAnalysis', '33', '2019-03-10 17:44:15');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000005000', '教务管理', 'layui-icon-layer', '00000000-0000-0000-0000-000000000000', '', '40', '2019-03-12 16:55:04');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000005001', '课程安排', 'icon-nav', '00000000-0000-0000-0000-000000005000', '/Education/CourseCharge', '41', '2019-03-12 16:58:01');
INSERT INTO `Menu` VALUES ('00000000-0000-0000-0000-000000005002', '课表查询', 'icon-nav', '00000000-0000-0000-0000-000000005000', '/Education/CourseFind', '0', '2019-03-12 16:59:03');

-- ----------------------------
-- Table structure for Person
-- ----------------------------
DROP TABLE IF EXISTS `Person`;
CREATE TABLE `Person` (
  `ID` char(36) NOT NULL,
  `HandleDept` char(36) DEFAULT '' COMMENT '部门ID',
  `HandleStaff` char(36) DEFAULT '' COMMENT '账户ID',
  `IdCard` varchar(20) DEFAULT '' COMMENT '干部身份证号',
  `Name` varchar(50) DEFAULT '' COMMENT '干部姓名',
  `WorkUnit` varchar(255) DEFAULT '' COMMENT '所在院系',
  `WorkDuty` varchar(255) DEFAULT '' COMMENT '职务',
  `WorkLevel` varchar(50) DEFAULT '' COMMENT '职级',
  `DutyTime` varchar(255) DEFAULT '' COMMENT '任职时间',
  `LevelTime` varchar(255) DEFAULT '' COMMENT '任职级时间',
  `WorkTime` varchar(255) DEFAULT '' COMMENT '参加工作时间',
  `Gender` varchar(20) DEFAULT '' COMMENT '性别',
  `Nation` varchar(20) DEFAULT '' COMMENT '民族',
  `NativePlace` varchar(100) DEFAULT '' COMMENT '籍贯',
  `BirthDate` varchar(20) DEFAULT '' COMMENT '出生年月',
  `BirthPlace` varchar(255) DEFAULT '' COMMENT '出生地',
  `GrowPlace` varchar(255) DEFAULT '' COMMENT '成长地',
  `PartyDate` varchar(20) DEFAULT '' COMMENT '入党时间',
  `PoliticsStatus` varchar(50) DEFAULT '' COMMENT '政治面貌',
  `Marriage` varchar(100) DEFAULT '' COMMENT '婚姻状况',
  `Health` varchar(100) DEFAULT '' COMMENT '健康状况',
  `Education` varchar(100) DEFAULT '' COMMENT '全日制学历',
  `School` varchar(100) DEFAULT '' COMMENT '全日制毕业院校',
  `Major` varchar(255) DEFAULT '' COMMENT '全日制专业',
  `HighestEducation` varchar(255) DEFAULT '' COMMENT '最高学历',
  `Address` varchar(200) DEFAULT '' COMMENT '家庭住址',
  `Phone` varchar(20) DEFAULT '' COMMENT '联系电话',
  `Skill` varchar(255) DEFAULT '' COMMENT '技能或特长',
  `resume` text,
  `Democratic` varchar(255) DEFAULT '' COMMENT '民主党派',
  `Score` int(11) DEFAULT '100',
  `IsDeleted` bit(1) DEFAULT b'0',
  `Timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `StudentID` varchar(255) NOT NULL DEFAULT '' COMMENT '学号或工号',
  `Height` varchar(255) DEFAULT NULL COMMENT '身高',
  PRIMARY KEY (`StudentID`),
  KEY `IdCard` (`IdCard`) USING BTREE,
  KEY `Name` (`Name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Person
-- ----------------------------
INSERT INTO `Person` VALUES ('90c299cf-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320681199511250615', '袁新龙', '', '', '', '', '', '', '', '汉族', '江苏省南通市', '', '', '', '', '', '', '', '', '', '', '', '江苏省启东市惠丰乡临江村12组', '15051201760', '', null, '', '100', '\0', null, '2014011310', '1.75cm');
INSERT INTO `Person` VALUES ('90bf868b-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320829199612301421', '贝慧', '', '', '', '', '', '', '', '汉族', '江苏省洪泽县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省洪泽县万集镇郭贝村三组43号', '15852938689', '', null, '', '100', '\0', null, '2015011102', '1.75cm');
INSERT INTO `Person` VALUES ('90bf8bc5-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '342201199509068226', '王文婷', '', '', '', '', '', '', '', '汉族', '', '', '', '', '', '', '', '', '本科四年', '', '', '', '安徽省宿州市埇桥区顺河乡顺河村', '', '', null, '', '100', '\0', null, '2015011103', '1.75cm');
INSERT INTO `Person` VALUES ('90bf8d4f-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320683199609150439', '朱嘉怡', '', '', '', '', '', '', '', '汉族', '江苏省南通市通州区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏南通通州西亭镇西禅寺村四十七组7号', '15950868287', '', null, '', '100', '\0', null, '2015011105', '1.75cm');
INSERT INTO `Person` VALUES ('90bf8e6d-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320924199702027474', '陈佳男', '', '', '', '', '', '', '', '汉族', '江苏省盐城市亭湖区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省盐城市亭湖区盐东镇庆丰村一组63号', '15150593509', '', null, '', '100', '\0', null, '2015011107', '1.75cm');
INSERT INTO `Person` VALUES ('90bf8f90-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320382199610290436', '石全', '', '', '', '', '', '', '', '汉族', '江苏省邳州市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省邳州市运河中学高中北校区', '15851858399', '', null, '', '100', '\0', null, '2015011108', '1.75cm');
INSERT INTO `Person` VALUES ('90bf90b3-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321121199707053215', '赵殷无名', '', '', '', '', '', '', '', '汉族', '江苏省丹阳市', '', '', '', '', '', '', '', '本科四年', '', '', '', '镇江市丹徒区辛丰镇辛丰村前进河路139号', '15365071306', '', null, '', '100', '\0', null, '2015011109', '1.75cm');
INSERT INTO `Person` VALUES ('90bf91d1-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320830199706200010', '王启睿', '', '', '', '', '', '', '', '汉族', '江苏省盱眙县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省淮安市盱眙县中澳生态城22幢1单元101室', '15851856117', '', null, '', '100', '\0', null, '2015011110', '1.75cm');
INSERT INTO `Person` VALUES ('90bf92df-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320122199708210011', '王培源', '', '', '', '', '', '', '', '汉族', '', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省南京市浦口区江浦街道碧云山庄42幢1单元301室', '', '', null, '', '100', '\0', null, '2015011111', '1.75cm');
INSERT INTO `Person` VALUES ('90bf93e8-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '32038219970524001X', '鲁新生', '', '', '', '', '', '', '', '汉族', '江苏省邳州市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省徐州市邳州市幸福花园21楼3单元306', '15851836399', '', null, '', '100', '\0', null, '2015011112', '1.75cm');
INSERT INTO `Person` VALUES ('90bf9502-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '32108119970517601X', '余耕耘', '', '', '', '', '', '', '', '汉族', '江苏省仪征市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省仪征市陈集镇友好村上中组52号', '18036270733', '', null, '', '100', '\0', null, '2015011113', '1.75cm');
INSERT INTO `Person` VALUES ('90bf960f-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320281199702282511', '蒋子俊', '', '', '', '', '', '', '', '汉族', '江苏省江阴市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省无锡市徐霞客镇峭岐黄承村4号', '15851856987', '', null, '', '100', '\0', null, '2015011114', '1.75cm');
INSERT INTO `Person` VALUES ('90c275ba-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '32068219961105559X', '戴鑫鑫', '', '', '', '', '', '', '', '汉族', '江苏省如皋市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省南通市如皋市江安镇中心居6组32号', '15851832675', '', null, '', '100', '\0', null, '2015011115', '1.75cm');
INSERT INTO `Person` VALUES ('90c27799-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320882199701231818', '陈治栋', '', '', '', '', '', '', '', '汉族', '江苏省淮安市淮安区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省淮安市淮安区马甸镇二堡村陈前组18—1号', '18136857427', '', null, '', '100', '\0', null, '2015011116', '1.75cm');
INSERT INTO `Person` VALUES ('90c278de-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320322199703120050', '胡明志', '', '', '', '', '', '', '', '汉族', '江苏省沛县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省徐州市沛县沛城镇甄庄大队徐园村21号', '17327758969', '', null, '', '100', '\0', null, '2015011117', '1.75cm');
INSERT INTO `Person` VALUES ('90c27b0e-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320683199608151210', '徐天魁', '', '', '', '', '', '', '', '汉族', '', '', '', '', '', '', '', '', '本科四年', '', '', '', '金沙镇世纪大道198号金沙公馆3单元505', '', '', null, '', '100', '\0', null, '2015011118', '1.75cm');
INSERT INTO `Person` VALUES ('90c27c64-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320684199512187418', '赵家铭', '', '', '', '', '', '', '', '汉族', '', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省海门市包场镇怡乐路93幢504室', '', '', null, '', '100', '\0', null, '2015011119', '1.75cm');
INSERT INTO `Person` VALUES ('90c27d9c-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321283199705146412', '顾磊', '', '', '', '', '', '', '', '汉族', '江苏省泰州市', '', '', '', '', '', '', '', '', '', '', '', '江苏省泰兴市虹桥镇通石村任垈组12号', '18018023873', '', null, '', '100', '\0', null, '2015011120', '1.75cm');
INSERT INTO `Person` VALUES ('90c27ef2-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320483199701241316', '王能', '', '', '', '', '', '', '', '汉族', '江苏省常州市武进区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省常州市武进区南夏墅街道大学新村3幢丁单元202室', '15895836819', '', null, '', '100', '\0', null, '2015011121', '1.75cm');
INSERT INTO `Person` VALUES ('90c28049-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320621199710125917', '史华健', '', '', '', '', '', '', '', '汉族', '江苏省海安县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省南通市海安县海安镇陈港村11组26号', '13773751421', '', null, '', '100', '\0', null, '2015011122', '1.75cm');
INSERT INTO `Person` VALUES ('90c28196-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320922199602225411', '刘桐良', '', '', '', '', '', '', '', '汉族', '江苏省盐城市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省盐城市滨海县八巨镇前冲村8组', '18018027959', '', null, '', '100', '\0', null, '2015011123', '1.75cm');
INSERT INTO `Person` VALUES ('90c282a4-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320981199612274479', '陈毅', '', '', '', '', '', '', '', '汉族', '江苏省东台市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省东台市富安镇米港村三组', '15895820139', '', null, '', '100', '\0', null, '2015011124', '1.75cm');
INSERT INTO `Person` VALUES ('90c283c2-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321283199601212438', '钱伟', '', '', '', '', '', '', '', '汉族', '江苏省泰州市姜堰区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省泰州市泰兴市元竹镇沿泰村7组31号', '15298360989', '', null, '', '100', '\0', null, '2015011125', '1.75cm');
INSERT INTO `Person` VALUES ('90c284d8-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320382199512080259', '张宇恒', '', '', '', '', '', '', '', '汉族', '', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省邳州市邳新路城东新村5巷23号', '', '', null, '', '100', '\0', null, '2015011126', '1.75cm');
INSERT INTO `Person` VALUES ('90c285e5-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320683199701283955', '曹润国', '', '', '', '', '', '', '', '汉族', '江苏省南通市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省南通市崇川区学田苑77幢509', '18018038515', '', null, '', '100', '\0', null, '2015011127', '1.75cm');
INSERT INTO `Person` VALUES ('90c28700-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320721199610062037', '吴迪', '', '', '', '', '', '', '', '汉族', '江苏省赣榆县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省连云港市赣榆县墩尚镇刘湾村', '15051851720', '', null, '', '100', '\0', null, '2015011128', '1.75cm');
INSERT INTO `Person` VALUES ('90c2880d-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '520202199801287619', '蒋晓明', '', '', '', '', '', '', '', '汉族', '贵州省盘县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省扬州市邗江区西湖镇中心村沟圈组20号', '15852930329', '', null, '', '100', '\0', null, '2015011129', '1.75cm');
INSERT INTO `Person` VALUES ('90c28934-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321281199611285195', '林广盛', '', '', '', '', '', '', '', '汉族', '江苏省兴化市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省兴化市西鲍乡胡杨村3组85号', '15298373562', '', null, '', '100', '\0', null, '2015011130', '1.75cm');
INSERT INTO `Person` VALUES ('90c28a42-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320123199610124015', '章招', '', '', '', '', '', '', '', '汉族', '江苏省南京市', '', '', '', '', '', '', '', '本科四年', '', '', '', '南京市六合区金牛湖街道铁牛社区海章组10号', '15195884831', '', null, '', '100', '\0', null, '2015011131', '1.75cm');
INSERT INTO `Person` VALUES ('90c28b3e-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320281199707210779', '宦晓康', '', '', '', '', '', '', '', '汉族', '江苏省江阴市', '', '', '', '', '', '', '', '', '', '', '', '江苏省江阴市利港镇兴港新村39栋403室', '15851851821', '', null, '', '100', '\0', null, '2015011132', '1.75cm');
INSERT INTO `Person` VALUES ('90c28c58-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320321199410167019', '张承宇', '', '', '', '', '', '', '', '汉族', '江苏省徐州市', '', '', '', '', '', '', '', '', '', '', '', '江苏省丰县东关小区', '18018039569', '', null, '', '100', '\0', null, '2015011133', '1.75cm');
INSERT INTO `Person` VALUES ('90c28e44-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320586199701221512', '陆振良', '', '', '', '', '', '', '', '汉族', '', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省苏州市吴中区通达路塘南新村139幢504室', '', '', null, '', '100', '\0', null, '2015011134', '1.75cm');
INSERT INTO `Person` VALUES ('90c29074-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '32092219960908173X', '陈忠', '', '', '', '', '', '', '', '汉族', '江苏省滨海县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省滨海县五汛镇五七村三组023号', '15852931229', '', null, '', '100', '\0', null, '2015011135', '1.75cm');
INSERT INTO `Person` VALUES ('90c291f9-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321084199608024814', '秦凯', '', '', '', '', '', '', '', '汉族', '江苏省扬州市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省高邮市甘垛镇志强村6组27号', '18021509859', '', null, '', '100', '\0', null, '2015011136', '1.75cm');
INSERT INTO `Person` VALUES ('90c2930f-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '330381199701283317', '虞上枫', '', '', '', '', '', '', '', '汉族', '浙江省温州市', '', '', '', '', '', '', '', '本科四年', '', '', '', '浙江省瑞安市飞云街道霞砀村办公楼旁边', '15895835837', '', null, '', '100', '\0', null, '2015011137', '1.75cm');
INSERT INTO `Person` VALUES ('90c2943f-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '330682199605144432', '范增超', '', '', '', '', '', '', '', '汉族', '浙江省绍兴市上虞区', '', '', '', '', '', '', '', '本科四年', '', '', '', '浙江省绍兴市上虞区东关街道金鸡山村', '15257536593', '', null, '', '100', '\0', null, '2015011138', '1.75cm');
INSERT INTO `Person` VALUES ('90c29562-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '331022199702050771', '谢跃杰', '', '', '', '', '', '', '', '汉族', '浙江省三门县', '', '', '', '', '', '', '', '', '', '', '', '浙江省三门县海游镇下谢村东片167号', '15967020615', '', null, '', '100', '\0', null, '2015011139', '1.75cm');
INSERT INTO `Person` VALUES ('90c29689-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '342622199507142393', '张法志', '', '', '', '', '', '', '', '汉族', '安徽省庐江县', '', '', '', '', '', '', '', '本科四年', '', '', '', '安徽省庐江中学高三（13）班', '18018021901', '', null, '', '100', '\0', null, '2015011140', '1.75cm');
INSERT INTO `Person` VALUES ('90c297b4-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '341124199608283819', '余守洋', '', '', '', '', '', '', '', '汉族', '安徽省全椒县', '', '', '', '', '', '', '', '本科四年', '', '', '', '安徽省全椒中学', '18251985112', '', null, '', '100', '\0', null, '2015011141', '1.75cm');
INSERT INTO `Person` VALUES ('90c29afa-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320621199611275725', '吉蒙', '', '', '', '', '', '', '', '汉族', '江苏省海安县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省南通市海安县海安镇青萍港村19组50号', '15298366616', '', null, '', '100', '\0', null, '2015011201', '1.75cm');
INSERT INTO `Person` VALUES ('90c29c37-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321088199711100024', '徐辰洁', '', '', '', '', '', '', '', '汉族', '江苏省扬州市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省扬州市江都区浦头镇高汉村建华组71号', '15852933775', '', null, '', '100', '\0', null, '2015011202', '1.75cm');
INSERT INTO `Person` VALUES ('90c29d6b-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320283199704230574', '史蒋涛', '', '', '', '', '', '', '', '汉族', '江苏省无锡市锡山区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省无锡市锡山区羊尖镇羊尖大街82号', '13861732995', '', null, '', '100', '\0', null, '2015011203', '1.75cm');
INSERT INTO `Person` VALUES ('90c29ed6-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320830199511281615', '窦胜', '', '', '', '', '', '', '', '汉族', '江苏省淮安市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省盱眙县鲍集镇街道干洗店', '15851831733', '', null, '', '100', '\0', null, '2015011204', '1.75cm');
INSERT INTO `Person` VALUES ('90c2a028-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320105199611031635', '王伟喆', '', '', '', '', '', '', '', '汉族', '江苏省南京市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省南京市建邺区滨湖街道茶南露园14栋56号501室', '18260099369', '', null, '', '100', '\0', null, '2015011205', '1.75cm');
INSERT INTO `Person` VALUES ('90c2a2c8-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321323199601051936', '吴通', '', '', '', '', '', '', '', '汉族', '江苏省宿迁市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省宿迁市泗阳县高渡镇南王集居委会48号', '15851839292', '', null, '', '100', '\0', null, '2015011207', '1.75cm');
INSERT INTO `Person` VALUES ('90c2a40d-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320683199710243816', '赵慧羽', '', '', '', '', '', '', '', '汉族', '江苏省南通市通州区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏南通通州十总镇二爻小学', '13962862631', '', null, '', '100', '\0', null, '2015011208', '1.75cm');
INSERT INTO `Person` VALUES ('90c2a534-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320923199807276913', '张文泉', '', '', '', '', '', '', '', '汉族', '江苏省南京市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省南京市雨花经济开发区龙飞路6号正达公寓2幢一单元302室', '18018030523', '', null, '', '100', '\0', null, '2015011209', '1.75cm');
INSERT INTO `Person` VALUES ('90c2a835-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320124199709082413', '魏启明', '', '', '', '', '', '', '', '汉族', '江苏省南京市溧水区(代码已不用)', '', '', '', '', '', '', '', '本科四年', '', '', '', '南京市溧水区经济开发区马场路19号美丽新苑01幢第一单元301室', '18114704493', '', null, '', '100', '\0', null, '2015011211', '1.75cm');
INSERT INTO `Person` VALUES ('90c2aa7b-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320511199709021215', '沈雨豪', '', '', '', '', '', '', '', '汉族', '江苏省苏州市姑苏区(代码已不用)', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省苏州市姑苏区竹辉路养蚕里新村60幢102室', '17721520829', '', null, '', '100', '\0', null, '2015011212', '1.75cm');
INSERT INTO `Person` VALUES ('90c2b76d-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321181199706112814', '茅曦鹏', '', '', '', '', '', '', '', '汉族', '', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省镇江市丹阳市南门大街14弄2号', '', '', null, '', '100', '\0', null, '2015011213', '1.75cm');
INSERT INTO `Person` VALUES ('90c2b94c-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320323199706010435', '赵顺祥', '', '', '', '', '', '', '', '汉族', '江苏省徐州市铜山区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏徐州铜山郑集阳光嘉园2栋1单元502号', '15298379123', '', null, '', '100', '\0', null, '2015011214', '1.75cm');
INSERT INTO `Person` VALUES ('90c2bae3-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320682199705117456', '王先鹏', '', '', '', '', '', '', '', '汉族', '江苏省如皋市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省如皋市磨头镇丁冒村十五组73号', '18306278778', '', null, '', '100', '\0', null, '2015011215', '1.75cm');
INSERT INTO `Person` VALUES ('90c2bd02-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320111199804124819', '夏飞', '', '', '', '', '', '', '', '汉族', '江苏省南京市浦口区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省江浦高级中学', '15895934511', '', null, '', '100', '\0', null, '2015011216', '1.75cm');
INSERT INTO `Person` VALUES ('90c2be42-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320483199609115835', '谢维栋', '', '', '', '', '', '', '', '汉族', '江苏省常州市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省常州市武进区郑陆镇舜北村委塘铁桥114号', '13813591725', '', null, '', '100', '\0', null, '2015011217', '1.75cm');
INSERT INTO `Person` VALUES ('90c2bf7b-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320621199702120059', '陈卓', '', '', '', '', '', '', '', '汉族', '江苏省南通市', '', '', '', '', '', '', '', '', '', '', '', '江苏省海安县海安镇凤山北路16号3幢306室', '15366371571', '', null, '', '100', '\0', null, '2015011218', '1.75cm');
INSERT INTO `Person` VALUES ('90c2c0e6-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320923199801124214', '徐万利', '', '', '', '', '', '', '', '汉族', '江苏省阜宁县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省阜宁县芦蒲镇沿淮村五组', '15051072712', '', null, '', '100', '\0', null, '2015011219', '1.75cm');
INSERT INTO `Person` VALUES ('90c2c241-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321324199609083816', '祖志宇', '', '', '', '', '', '', '', '汉族', '江苏省宿迁市', '', '', '', '', '', '', '', '', '', '', '', '江苏省泗洪县曹庙乡草庙村一组', '15150591172', '', null, '', '100', '\0', null, '2015011220', '1.75cm');
INSERT INTO `Person` VALUES ('90c2c37d-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320323199411050050', '马帅', '', '', '', '', '', '', '', '汉族', '', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省苏州市园区唯亭摩尔尚城3幢305', '', '', null, '', '100', '\0', null, '2015011221', '1.75cm');
INSERT INTO `Person` VALUES ('90c2c50f-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320621199703297913', '范礼刚', '', '', '', '', '', '', '', '汉族', '江苏省海安县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省海安县墩头镇仇湖西湖村十三组20号', '15150593726', '', null, '', '100', '\0', null, '2015011222', '1.75cm');
INSERT INTO `Person` VALUES ('90c2c698-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320922199705194734', '滕剑', '', '', '', '', '', '', '', '汉族', '江苏省盐城市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省盐城市滨海县景湖理想城A14-504', '15951760017', '', null, '', '100', '\0', null, '2015011223', '1.75cm');
INSERT INTO `Person` VALUES ('90c2c7ea-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321084199706208019', '吴界', '', '', '', '', '', '', '', '汉族', '江苏省扬州市', '', '', '', '', '', '', '', '本科四年', '', '', '', '世纪城25栋1604', '18018035020', '', null, '', '100', '\0', null, '2015011224', '1.75cm');
INSERT INTO `Person` VALUES ('90c2c96b-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321284199701182412', '刘洪', '', '', '', '', '', '', '', '汉族', '江苏省泰州市姜堰区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省泰州市姜堰区张甸镇张甸村二十组20号', '18018022251', '', null, '', '100', '\0', null, '2015011225', '1.75cm');
INSERT INTO `Person` VALUES ('90c2cb5b-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320483199604288219', '刘泽科', '', '', '', '', '', '', '', '汉族', '江苏省常州市武进区', '', '', '', '', '', '', '', '本科四年', '', '', '', '常州市新北区西夏墅镇刘岱里村73号', '15961221588', '', null, '', '100', '\0', null, '2015011226', '1.75cm');
INSERT INTO `Person` VALUES ('90c2cccf-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320623199611206458', '胡嘉祺', '', '', '', '', '', '', '', '汉族', '江苏省如东县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省南通市如东县双甸镇锡伍村二十二组30号', '18018035132', '', null, '', '100', '\0', null, '2015011227', '1.75cm');
INSERT INTO `Person` VALUES ('90c2ce08-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320722199612182610', '孙振', '', '', '', '', '', '', '', '汉族', '江苏省连云港市', '', '', '', '', '', '', '', '', '', '', '', '江苏省东海县黄川镇张桥村6-13号', '15261309780', '', null, '', '100', '\0', null, '2015011228', '1.75cm');
INSERT INTO `Person` VALUES ('90c2cfeb-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321283199701031837', '顾春祥', '', '', '', '', '', '', '', '汉族', '江苏省泰兴市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省泰兴市横垛镇西雁岭南岭七组', '17714384369', '', null, '', '100', '\0', null, '2015011230', '1.75cm');
INSERT INTO `Person` VALUES ('90c2d11a-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320125199610133918', '李晓强', '', '', '', '', '', '', '', '汉族', '江苏省南京市高淳区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省高淳县固城镇三陇大队刘家043号', '15335187857', '', null, '', '100', '\0', null, '2015011231', '1.75cm');
INSERT INTO `Person` VALUES ('90c2d297-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320281199705205298', '顾云飞', '', '', '', '', '', '', '', '汉族', '江苏省江阴市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省江阴市祝塘镇包家小区99栋302', '13337711873', '', null, '', '100', '\0', null, '2015011232', '1.75cm');
INSERT INTO `Person` VALUES ('90c2d536-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320381199512253213', '沈悦', '', '', '', '', '', '', '', '汉族', '江苏省新沂市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏新沂市新店镇刘庄村滨湖组', '15150593016', '', null, '', '100', '\0', null, '2015011233', '1.75cm');
INSERT INTO `Person` VALUES ('90c2d7a3-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320683199710246558', '钱洋', '', '', '', '', '', '', '', '汉族', '江苏省南通市通州区', '', '', '', '', '', '', '', '', '', '', '', '江苏省南通市平东镇恒东花苑18幢205室', '13776963838', '', null, '', '100', '\0', null, '2015011234', '1.75cm');
INSERT INTO `Person` VALUES ('90c2dad3-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320924199707255732', '李昊楠', '', '', '', '', '', '', '', '汉族', '江苏省盐城市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏盐城射阳合德镇城北居委会', '18018030896', '', null, '', '100', '\0', null, '2015011235', '1.75cm');
INSERT INTO `Person` VALUES ('90c2dc21-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321281199605026816', '吴伟', '', '', '', '', '', '', '', '汉族', '江苏省兴化市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省兴化市昌荣镇红花村三组294号', '15365072516', '', null, '', '100', '\0', null, '2015011236', '1.75cm');
INSERT INTO `Person` VALUES ('90c2dd6a-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '330327199704211337', '薛振武', '', '', '', '', '', '', '', '汉族', '浙江省温州市', '', '', '', '', '', '', '', '本科四年', '', '', '', '浙江省温州市苍南县龙港镇薛家桥薛北村8号', '15888289136', '', null, '', '100', '\0', null, '2015011237', '1.75cm');
INSERT INTO `Person` VALUES ('90c54914-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '330683199701221238', '钱梓楠', '', '', '', '', '', '', '', '汉族', '浙江省嵊州市', '', '', '', '', '', '', '', '', '', '', '', '浙江省嵊州市长乐镇四一村九曲路36号5室', '18258031973', '', null, '', '100', '\0', null, '2015011238', '1.75cm');
INSERT INTO `Person` VALUES ('90c54cdb-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '362426199704170017', '顾宗良', '', '', '', '', '', '', '', '汉族', '', '', '', '', '', '', '', '', '本科四年', '', '', '', '浙江省义乌市九联银河湾星苑二栋一单元201', '', '', null, '', '100', '\0', null, '2015011239', '1.75cm');
INSERT INTO `Person` VALUES ('90c55061-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '340311199611161810', '贾涛', '', '', '', '', '', '', '', '汉族', '安徽省蚌埠市', '', '', '', '', '', '', '', '本科四年', '', '', '', '安徽省蚌埠市龙子湖区淮河路513号2栋五单元7号', '18018021971', '', null, '', '100', '\0', null, '2015011240', '1.75cm');
INSERT INTO `Person` VALUES ('90c553d6-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '342222199410294815', '王宗权', '', '', '', '', '', '', '', '汉族', '安徽省宿州市', '', '', '', '', '', '', '', '本科四年', '', '', '', '安徽省宿州市萧县祖楼镇六其村大王庄', '15895828277', '', null, '', '100', '\0', null, '2015011241', '1.75cm');
INSERT INTO `Person` VALUES ('90c55758-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321081199801182428', '蒋婷婷', '', '', '', '', '', '', '', '汉族', '江苏省扬州市邗江区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省扬州市开发区朴席镇曹桥村蒋庄组12号', '18795885976', '', null, '', '100', '\0', null, '2015011301', '1.75cm');
INSERT INTO `Person` VALUES ('90c55ae7-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321202199610024844', '陆婷苇', '', '', '', '', '', '', '', '汉族', '江苏省泰州市海陵区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省泰州市开发区凤凰街道梅兴村十四组25号', '15077832755', '', null, '', '100', '\0', null, '2015011302', '1.75cm');
INSERT INTO `Person` VALUES ('90c55e90-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '32118119970812021X', '胡睿臻', '', '', '', '', '', '', '', '汉族', '江苏省丹阳市', '', '', '', '', '', '', '', '', '', '', '', '江苏省丹阳市新世纪花园10幢2单元401室', '15252964448', '', null, '', '100', '\0', null, '2015011303', '1.75cm');
INSERT INTO `Person` VALUES ('90c56227-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320683199711035330', '黄哲', '', '', '', '', '', '', '', '汉族', '江苏省南通市通州区(代码已不用)', '', '', '', '', '', '', '', '本科四年', '', '', '', '通州区刘桥镇苏池村十二组', '18018020273', '', null, '', '100', '\0', null, '2015011304', '1.75cm');
INSERT INTO `Person` VALUES ('90c565e1-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320902199710251515', '蒋建', '', '', '', '', '', '', '', '汉族', '江苏省盐城市亭湖区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省盐城市城南新区戴庄路金色水岸3号楼1302', '15852932102', '', null, '', '100', '\0', null, '2015011305', '1.75cm');
INSERT INTO `Person` VALUES ('90c569c1-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320125199708115814', '赵俊杰', '', '', '', '', '', '', '', '汉族', '江苏省南京市高淳区', '', '', '', '', '', '', '', '本科四年', '', '', '', '南京市高淳区桠溪镇韩桥村刘桥46号', '15380934562', '', null, '', '100', '\0', null, '2015011306', '1.75cm');
INSERT INTO `Person` VALUES ('90c56d4c-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320203199610151216', '邓家成', '', '', '', '', '', '', '', '汉族', '江苏省无锡市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省无锡市南长区阳光城市花园A区58号2301室', '13771015565', '', null, '', '100', '\0', null, '2015011307', '1.75cm');
INSERT INTO `Person` VALUES ('90c570ca-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320621199609268710', '缪子旻', '', '', '', '', '', '', '', '汉族', '江苏省海安县', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省南通市海安县海安镇江海西路35号26幢204室', '18018030669', '', null, '', '100', '\0', null, '2015011308', '1.75cm');
INSERT INTO `Person` VALUES ('90c57450-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320282199509160973', '李函洋', '', '', '', '', '', '', '', '汉族', '江苏省宜兴市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省无锡市宜兴市环科园新城路新城公寓6幢305', '15961564309', '', null, '', '100', '\0', null, '2015011309', '1.75cm');
INSERT INTO `Person` VALUES ('90c577c5-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '340881199508045359', '侯君伟', '', '', '', '', '', '', '', '汉族', '', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省扬州市江都区恒通绿城2幢2单元606室', '', '', null, '', '100', '\0', null, '2015011310', '1.75cm');
INSERT INTO `Person` VALUES ('90c57b4b-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320283199701190570', '张哲豪', '', '', '', '', '', '', '', '汉族', '江苏省无锡市锡山区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏无锡锡山羊尖金羊集团', '13771001558', '', null, '', '100', '\0', null, '2015011311', '1.75cm');
INSERT INTO `Person` VALUES ('90c57ed6-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320621199607136335', '王伟贤', '', '', '', '', '', '', '', '汉族', '江苏省海安县', '', '', '', '', '', '', '', '', '', '', '', '江苏省海安县雅周镇东夏村五组11号', '18018023056', '', null, '', '100', '\0', null, '2015011312', '1.75cm');
INSERT INTO `Person` VALUES ('90c58261-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321081199602227814', '方伟', '', '', '', '', '', '', '', '汉族', '江苏省扬州市邗江区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省仪征市胥浦迎江西村1栋309', '15365079837', '', null, '', '100', '\0', null, '2015011313', '1.75cm');
INSERT INTO `Person` VALUES ('90c585f4-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320404199611063813', '严栋平', null, null, null, null, null, null, '男', '汉族', '江苏省常州市钟楼区', '2019-08', null, null, null, null, null, null, '本科四年', null, null, null, '江苏省常州市钟楼区南大街街道怀德南路14-8  502室', '15895822993', null, null, null, '100', '\0', '2019-05-20 00:31:22', '2015011314', null);
INSERT INTO `Person` VALUES ('90c5896d-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '51072219950413131X', '冯波', '', '', '', '', '', '', '', '汉族', '江苏省丹阳市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省丹阳市皇塘镇积善村沈家村5号', '15152949707', '', null, '', '100', '\0', null, '2015011315', '1.75cm');
INSERT INTO `Person` VALUES ('90c58cf4-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320123199709153414', '强皓', '', '', '', '', '', '', '', '汉族', '江苏省南京市六合区', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省南京市六合区气象路117号', '14751616135', '', null, '', '100', '\0', null, '2015011316', '1.75cm');
INSERT INTO `Person` VALUES ('90c590c7-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '320501199612245017', '邹晓祺', '', '', '', '', '', '', '', '汉族', '江苏省苏州市市辖区', '', '', '', '', '', '', '', '本科四年', '', '', '', '葑谊街葑谊新村北葑谊社区三楼', '15366202981', '', null, '', '100', '\0', null, '2015011317', '1.75cm');
INSERT INTO `Person` VALUES ('90c59872-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '32062319970201411X', '任一鸣', '', '', '', '', '', '', '', '汉族', '江苏省南通市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省如东县掘港镇芳泉路民生阳光新城6幢4单元201', '15895827217', '', null, '', '100', '\0', null, '2015011318', '1.75cm');
INSERT INTO `Person` VALUES ('90c5a100-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '321182199603074014', '魏安岐', '', '', '', '', '', '', '', '汉族', '江苏省镇江市', '', '', '', '', '', '', '', '本科四年', '', '', '', '江苏省扬中市三茅镇恒龙嘉苑1幢二单元502室', '15298363228', '', null, '', '100', '\0', null, '2015011319', '1.75cm');
INSERT INTO `Person` VALUES ('90c298ce-7a53-11e9-9107-507b9d31bede', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '07316932-d03e-4823-bac1-8b262ad9a991', '371083199702059055', '朱寅问', '', '', '', '', '', '', '', '汉族', '山东省乳山市', '', '', '', '', '', '', '', '', '', '', '', '乳山市向阳小区', '18018035969', '', null, '', '100', '\0', null, '2015122218', '1.75cm');

-- ----------------------------
-- Table structure for Role
-- ----------------------------
DROP TABLE IF EXISTS `Role`;
CREATE TABLE `Role` (
  `ID` char(36) NOT NULL,
  `RoleName` varchar(50) DEFAULT '',
  `Rank` int(11) DEFAULT '0',
  `Url` varchar(200) DEFAULT '',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0',
  `Timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ReMark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Role
-- ----------------------------
INSERT INTO `Role` VALUES ('00000000-0000-0000-0001-000000000000', '管理员', '1', null, '\0', '2019-03-18 16:55:16', '管理员最高权限');
INSERT INTO `Role` VALUES ('1244be30-7929-419d-b9c2-32deb0e9c9e2', '测试', '1', null, '', '2019-03-03 17:38:11', '6666');
INSERT INTO `Role` VALUES ('6aeb49a6-2eac-43ce-859f-aa50f41aa587', '招生办', '1', null, '\0', '2019-05-20 00:30:04', '查看招生信息');
INSERT INTO `Role` VALUES ('7f375508-ca55-45d6-be85-dc63b45025b0', '教务人员', '1', null, '\0', '2019-05-19 23:56:25', '教务管理界面');
INSERT INTO `Role` VALUES ('8e26645b-9895-49a1-8744-f07c2818de4c', '学生', '1', null, '\0', '2019-05-20 00:45:16', '学生界面');

-- ----------------------------
-- Table structure for RoleMenu
-- ----------------------------
DROP TABLE IF EXISTS `RoleMenu`;
CREATE TABLE `RoleMenu` (
  `ID` char(36) NOT NULL,
  `RoleID` char(36) DEFAULT NULL,
  `MenuID` char(36) DEFAULT NULL,
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0',
  `Timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of RoleMenu
-- ----------------------------
INSERT INTO `RoleMenu` VALUES ('06704e44-fb6d-4874-a6a2-eba60a2e5450', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000033', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('09dad360-8d11-4ca1-93a4-f8543f2f2b7c', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000044', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('0c83cff2-8742-4a9d-aba4-f933db2d3b1b', '8e26645b-9895-49a1-8744-f07c2818de4c', '00000000-0000-0000-0000-000000003001', '\0', '2019-05-20 00:45:16');
INSERT INTO `RoleMenu` VALUES ('0ebb2094-8c78-4d62-b862-41641f7cb81a', '8e26645b-9895-49a1-8744-f07c2818de4c', '00000000-0000-0000-0000-000000004001', '\0', '2019-05-20 00:45:16');
INSERT INTO `RoleMenu` VALUES ('10e2be40-ce2b-4e54-8689-4c296fc5f7dd', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000004002', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('16c2476f-da73-46e5-a7ad-0700f772a0a0', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000020', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('1806878a-bb30-4e5d-97af-ba0f67394fad', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000042', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('180b8257-a6bd-4a60-b56b-2aedb45587b3', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000034', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('1b5ee8e5-1303-4bae-9b6b-0fda00548640', '8e26645b-9895-49a1-8744-f07c2818de4c', '00000000-0000-0000-0000-000000005002', '\0', '2019-05-20 00:45:16');
INSERT INTO `RoleMenu` VALUES ('1ba55262-e455-44b6-91a0-8c4c4a5b7b71', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000004001', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('1d487cb0-76e2-4c1e-8e33-85a104c03f70', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000001002', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('2433247b-c39b-4231-b05a-46403363ef20', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000031', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('2e972b3c-7357-4876-b483-0ee702842829', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000051', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('300f20c7-7522-401e-93fb-647b3d14c62b', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000016', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('33507f75-04e9-4bf8-a11b-056736038ba6', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000005001', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('36645ce7-bf77-4acc-a8c7-17c4bf95f8bb', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000052', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('387a127e-5958-4fc4-b2c5-2e80b7d87cd1', '1244be30-7929-419d-b9c2-32deb0e9c9e2', '00000000-0000-0000-0000-000000000026', '\0', '2019-02-22 15:26:02');
INSERT INTO `RoleMenu` VALUES ('4408a590-ba11-428e-a2a0-28067a820bfd', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000037', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('443ec993-7a93-4ca5-9349-9e0ea555259f', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000003001', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('4d372044-1556-4ba1-a524-7dae7abadf1b', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000055', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('4e204edc-5d41-47c1-b84d-9c7f67e1c5ef', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000002000', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('50097a51-974b-4e8a-a366-fe79662650d5', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000001001', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('535d5666-eac4-44f5-91cb-aef9e3dc2c03', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000041', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('57ef50b0-04a8-4aee-b4b3-274cd188d925', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000018', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('5d06aa85-e203-48c9-a192-9ad61763ddcb', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000034', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('5ebe9efd-45c6-4c31-b841-832460949035', '7f375508-ca55-45d6-be85-dc63b45025b0', '00000000-0000-0000-0000-000000005002', '\0', '2019-05-19 23:56:26');
INSERT INTO `RoleMenu` VALUES ('60a1e8f0-53a4-4310-be47-82f99aeefbf5', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000004003', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('616d9bf3-f373-418e-88dc-f0fc27eae187', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000024', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('64cc870e-2087-4f8a-8e47-a70ec930cbdc', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000001005', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('68003466-3554-4e85-9b51-0d08eb66bc6c', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000032', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('716d6f69-c8ad-4184-998f-a26540731414', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000035', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('7186c956-011f-4c9d-9d71-5917b7ce44c8', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000001003', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('77255a68-5988-434d-b58a-76c7ef78a6d7', '8e26645b-9895-49a1-8744-f07c2818de4c', '00000000-0000-0000-0000-000000002005', '\0', '2019-05-20 00:45:16');
INSERT INTO `RoleMenu` VALUES ('7864a6d9-6c26-4bd7-9965-fa7cb269fe73', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000043', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('7aa2cc11-4fb2-4237-ae67-7f3c0806b5e4', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000054', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('7c75723a-0ecb-4b91-b771-35bb17c61579', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000015', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('7d0ad7ca-c6f6-4ee9-a7fd-481c9ee30f47', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000035', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('7e68386e-c1c4-4f8c-afa7-e248414afbbd', '8e26645b-9895-49a1-8744-f07c2818de4c', '00000000-0000-0000-0000-000000003000', '\0', '2019-05-20 00:45:16');
INSERT INTO `RoleMenu` VALUES ('7ffdda2b-f31d-43f0-a4d4-bfd889c2c7f4', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000002005', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('813219ad-bffa-4643-afc8-02ab4d7f941c', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000026', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('8664a45d-73bc-4738-9df4-ef9da6eb8d12', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000036', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('89eba712-78c9-49c5-b0c3-76bee013e000', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000004000', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('8e0c94f9-1c7e-4126-ac7c-e251f6468326', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000010', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('90874fbd-36e0-4281-ae30-5742441f0dd4', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000021', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('90c52633-7c09-11e8-8120-28c63f748e47', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000010', '\0', '2018-06-30 10:01:52');
INSERT INTO `RoleMenu` VALUES ('927f3cb9-7ac2-45c2-8021-6652d198eb7a', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000043', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('92cbf5d2-1fbc-4f46-9bc6-a9d3a8fc6c65', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000053', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('938822bc-7c09-11e8-8120-28c63f748e47', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000020', '\0', '2018-06-30 10:01:56');
INSERT INTO `RoleMenu` VALUES ('94cfa60b-34bd-45bf-80e8-77a7fc3f237a', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000022', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('96d789f8-7c09-11e8-8120-28c63f748e47', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000040', '\0', '2018-06-30 10:02:02');
INSERT INTO `RoleMenu` VALUES ('974ada41-0dd7-4c4f-91a6-d54f479aaef0', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000005000', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('98f87b98-b3c8-4534-a153-1cc9b7af850d', '7f375508-ca55-45d6-be85-dc63b45025b0', '00000000-0000-0000-0000-000000004001', '\0', '2019-05-19 23:56:26');
INSERT INTO `RoleMenu` VALUES ('99fafdc2-6daf-4b62-b6c5-74303515dbdf', '1244be30-7929-419d-b9c2-32deb0e9c9e2', '00000000-0000-0000-0000-000000000020', '\0', '2019-02-22 15:26:02');
INSERT INTO `RoleMenu` VALUES ('9ca2b384-598b-411e-ac41-b77fa78e623a', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000031', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('a3ccb463-35ac-431c-9611-27ed063554b1', '7f375508-ca55-45d6-be85-dc63b45025b0', '00000000-0000-0000-0000-000000004002', '\0', '2019-05-19 23:56:26');
INSERT INTO `RoleMenu` VALUES ('a3fe58ce-977e-4d55-aa30-6444653700ee', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000023', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('a53389c0-e7c0-4848-8c37-ca1dbbf22f43', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000013', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('afaf1cfb-2947-47e1-8797-3be1d93232ef', '7f375508-ca55-45d6-be85-dc63b45025b0', '00000000-0000-0000-0000-000000005001', '\0', '2019-05-19 23:56:26');
INSERT INTO `RoleMenu` VALUES ('b0ecb04a-a7df-4b1a-9c5f-84fab2898389', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000005002', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('b3b8670c-b824-4e3b-9170-37603949d9b1', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000033', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('b3befa3e-86e9-497f-af15-b6677d8390ec', '7f375508-ca55-45d6-be85-dc63b45025b0', '00000000-0000-0000-0000-000000003001', '\0', '2019-05-19 23:56:26');
INSERT INTO `RoleMenu` VALUES ('b7a42fb9-1bf9-453c-b4de-173ae201c730', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000036', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('b9edd88e-142f-40dc-83ac-c2ce36e9e236', '7f375508-ca55-45d6-be85-dc63b45025b0', '00000000-0000-0000-0000-000000002005', '\0', '2019-05-19 23:56:26');
INSERT INTO `RoleMenu` VALUES ('bd3176dd-c8fa-471a-bb2f-30182337bdef', '6aeb49a6-2eac-43ce-859f-aa50f41aa587', '00000000-0000-0000-0000-000000004003', '\0', '2019-05-20 00:30:04');
INSERT INTO `RoleMenu` VALUES ('bd36f945-80fa-4f18-8b34-20ca27caeec5', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000001000', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('be6db2f0-b5fa-4cfe-bf61-3b688143e78a', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000041', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('c46052c6-0b05-4bb6-812d-e42e7ce36c02', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000011', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('c78da18e-42cd-43ad-9388-e0a505cceada', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000032', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('c7f0cc89-b0d3-4658-8e64-ffae16078b6e', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000037', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('ca1939dc-c901-4030-8ed3-35ffa014add7', '7f375508-ca55-45d6-be85-dc63b45025b0', '00000000-0000-0000-0000-000000002000', '\0', '2019-05-19 23:56:26');
INSERT INTO `RoleMenu` VALUES ('ca50a6ea-e783-48dd-8159-d1042ef57d39', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000025', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('d0594f37-323b-4da7-8ef3-c2571c617073', '8e26645b-9895-49a1-8744-f07c2818de4c', '00000000-0000-0000-0000-000000002000', '\0', '2019-05-20 00:45:16');
INSERT INTO `RoleMenu` VALUES ('d4b558b3-843b-4b33-8bb9-63f07c4ce3b1', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000014', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('d547938f-ae53-4629-954a-4af964ca0e1f', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000026', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('d7456679-d1e3-4b09-a61f-b249a63b23d3', '00000000-0000-0000-0001-000000000000', '00000000-0000-0000-0000-000000003000', '\0', '2019-03-18 16:55:17');
INSERT INTO `RoleMenu` VALUES ('df00a4b1-2568-4fb3-a4d4-0de4388381c2', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000012', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('e2b13c8c-f3b3-40db-a898-725a34b53d92', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000040', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('e390a144-0296-4c68-9eb5-3eeaad29e52e', '7f375508-ca55-45d6-be85-dc63b45025b0', '00000000-0000-0000-0000-000000003000', '\0', '2019-05-19 23:56:26');
INSERT INTO `RoleMenu` VALUES ('e4f2089f-bc12-4898-968b-f554e40c3286', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000050', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('e6be3c56-8f34-4e52-984b-f785535836c9', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000018', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('e79ccfc0-0a34-4cd5-b918-ff8be5db3bdb', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000042', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('ecfce48a-859a-470f-b263-3d70d428d652', 'e14043a3-9f7b-4ee1-af0c-75438ff4f0ec', '00000000-0000-0000-0000-000000000030', '\0', '2018-06-30 09:42:54');
INSERT INTO `RoleMenu` VALUES ('eff93d43-c695-4163-8acd-f27f41aee0c6', '4fc59dd9-8190-4b33-abf6-fb47edd3a836', '00000000-0000-0000-0000-000000000030', '\0', '2018-06-30 09:42:49');
INSERT INTO `RoleMenu` VALUES ('f7cd32ba-05b0-47aa-9fcb-7a4e07830db0', '7f375508-ca55-45d6-be85-dc63b45025b0', '00000000-0000-0000-0000-000000005000', '\0', '2019-05-19 23:56:26');

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `ID` char(36) NOT NULL,
  `DeptID` char(36) DEFAULT NULL,
  `RoleID` char(36) DEFAULT NULL,
  `MasterID` char(36) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT '',
  `Password` varchar(50) DEFAULT '',
  `RealName` varchar(20) DEFAULT '',
  `Rank` int(11) DEFAULT '0',
  `IsKeyNode` bit(1) NOT NULL DEFAULT b'0',
  `MasterType` varchar(20) DEFAULT '',
  `IP` varchar(20) DEFAULT '',
  `Region` varchar(50) DEFAULT '',
  `IsDeleted` bit(1) NOT NULL DEFAULT b'0',
  `Timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Users
-- ----------------------------
INSERT INTO `Users` VALUES ('07316932-d03e-4823-bac1-8b262ad9a990', '00000000-0000-0001-0000-000000000000', '00000000-0000-0000-0001-000000000000', null, 'admin', 'admin', '管理员', '99', '', '1', null, null, '\0', '2019-03-03 17:46:00');
INSERT INTO `Users` VALUES ('07316932-d03e-4823-bac1-8b262ad9a991', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '7f375508-ca55-45d6-be85-dc63b45025b0', null, 'teacher', '123', '教务人员', '99', '', '1', null, null, '\0', '2019-05-19 23:58:09');
INSERT INTO `Users` VALUES ('164d051b-623a-4994-b2c6-1f3832ed0865', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '6aeb49a6-2eac-43ce-859f-aa50f41aa587', null, 'zsb', '123', '招生办', '99', '\0', null, null, null, '\0', '2019-05-20 00:30:28');
INSERT INTO `Users` VALUES ('8ea0fb0b-5d2e-4f2c-8215-ac41f52cd3b8', '10886a46-589c-4bb3-b830-cb6f7652bcd6', '8e26645b-9895-49a1-8744-f07c2818de4c', null, 'student', '123', '学生', '99', '\0', null, null, null, '\0', '2019-03-11 16:04:09');
