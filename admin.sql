/*
 Navicat Premium Dump SQL

 Source Server         : host
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : admin

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 23/11/2025 00:10:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `real_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `level` tinyint NOT NULL DEFAULT 0,
  `school` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sex` tinyint NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '管理员A', 0, '兰州信息科技学院', '2176927988@qq.com', '17709496436', 0, '2025-11-05 15:06:24');
INSERT INTO `admin` VALUES (2, 'admin2', '123456', '管理员B', 0, '兰州信息科技学院', '13697966688@qq.com', '17897634100', 0, '2025-11-17 16:21:12');
INSERT INTO `admin` VALUES (3, 'admin3', '123456', '管理员C', 0, '兰州信息科技学院', '6578109988@qq.com', '17456304936', 0, '2025-11-17 16:21:49');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '编号',
  `name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '课程名',
  `credits` decimal(4, 1) NOT NULL DEFAULT 2.0 COMMENT '学分',
  `score` int NOT NULL DEFAULT 100 COMMENT '满分',
  `number` int NOT NULL DEFAULT 32 COMMENT '课时',
  `year` int NOT NULL DEFAULT 2016 COMMENT '届时',
  `term` tinyint NOT NULL DEFAULT 0 COMMENT '学期',
  `type` tinyint NOT NULL DEFAULT 1 COMMENT '类别 1必修 2选修',
  `profession` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '专业',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC, `name` ASC) USING BTREE,
  INDEX `profession`(`profession` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('2025032123', '高等数学', 4.0, 100, 30, 2025, 2, 1, '计算机', '2025-11-15 16:59:16');
INSERT INTO `course` VALUES ('2025051001', '土木工程基础', 4.0, 100, 40, 2025, 1, 1, '土木工程', '2025-11-17 16:17:34');
INSERT INTO `course` VALUES ('2025062001', '网络工程基础', 4.0, 100, 40, 2025, 2, 1, '网络工程', '2025-11-18 14:24:09');
INSERT INTO `course` VALUES ('2025082001', '会计学', 4.0, 100, 36, 2025, 2, 1, '会计', '2025-11-17 16:16:56');
INSERT INTO `course` VALUES ('20251101', '数字电路基础', 4.0, 100, 18, 2025, 1, 1, '电子信息工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251102', '大学物理', 4.0, 100, 20, 2025, 1, 1, '电子信息工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251103', '线性代数', 1.0, 100, 18, 2025, 1, 1, '电子信息工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251104', '复变函数', 2.0, 100, 18, 2025, 1, 1, '电子信息工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251105', '模拟电子线路', 4.0, 100, 18, 2025, 1, 1, '电子信息工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251106', '信号与系统', 2.0, 100, 18, 2025, 1, 1, '电子信息工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251107', '大学英语', 4.0, 100, 18, 2025, 1, 1, '电子信息工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251108', '体育', 1.0, 100, 16, 2025, 1, 2, '电子信息工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251109', '电子技术', 2.0, 100, 16, 2025, 1, 1, '电子信息工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251110', '多媒体技术', 2.0, 100, 18, 2025, 1, 2, '电子信息工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251111', '物联网工程导论', 2.0, 100, 18, 2025, 1, 1, '物联网', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251112', '物联网安全', 2.0, 100, 18, 2025, 1, 1, '物联网', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251113', '现代通信技术', 1.0, 100, 18, 2025, 1, 1, '物联网', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251114', '无线传感器网络', 4.0, 100, 18, 2025, 1, 1, '物联网', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251115', '现代传感器技术', 2.0, 100, 18, 2025, 1, 1, '物联网', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251116', '信号与系统概论', 2.0, 100, 18, 2025, 1, 1, '物联网', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251117', '计算机网络技术', 1.0, 100, 18, 2025, 1, 1, '计算机', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251118', '网络与通信', 1.0, 100, 18, 2025, 1, 1, '计算机', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251119', '计算机安全', 2.0, 100, 15, 2025, 1, 1, '计算机', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251120', '算法与数据结构', 4.0, 100, 18, 2025, 1, 1, '计算机', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251121', '多媒体信息处理', 2.0, 100, 14, 2025, 1, 2, '计算机', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251122', '计算机组成原理', 2.0, 100, 18, 2025, 1, 1, '计算机', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251123', '高频电子线路', 4.0, 100, 18, 2025, 1, 1, '通信工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251124', '光纤通讯', 2.0, 100, 16, 2025, 1, 1, '通信工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251125', '移动通讯', 1.0, 100, 18, 2025, 1, 1, '通信工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251126', '电路分析', 1.0, 100, 18, 2025, 1, 1, '通信工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251127', '程控交换技术', 2.0, 100, 18, 2025, 1, 2, '通信工程', '2025-11-10 18:30:00');
INSERT INTO `course` VALUES ('20251128', '通信原理', 4.0, 100, 18, 2025, 1, 1, '通信工程', '2025-11-10 18:30:00');

-- ----------------------------
-- Table structure for course_info
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `start` int NOT NULL,
  `end` int NOT NULL,
  `room` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `profession` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_id`(`course_id` ASC) USING BTREE,
  INDEX `profession`(`profession` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20251134 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of course_info
-- ----------------------------
INSERT INTO `course_info` VALUES (1, '20251101', 1, 25, '404', '电子信息工程');
INSERT INTO `course_info` VALUES (2, '20251102', 1, 25, '401', '电子信息工程');
INSERT INTO `course_info` VALUES (3, '20251103', 1, 25, '403', '电子信息工程');
INSERT INTO `course_info` VALUES (4, '20251104', 1, 25, '406', '电子信息工程');
INSERT INTO `course_info` VALUES (5, '20251105', 1, 25, '405', '电子信息工程');
INSERT INTO `course_info` VALUES (6, '20251106', 1, 25, '402', '电子信息工程');
INSERT INTO `course_info` VALUES (7, '20251107', 1, 25, '306', '电子信息工程');
INSERT INTO `course_info` VALUES (8, '20251108', 1, 25, '409', '电子信息工程');
INSERT INTO `course_info` VALUES (9, '20251109', 1, 25, '430', '电子信息工程');
INSERT INTO `course_info` VALUES (10, '20251110', 1, 25, '512', '电子信息工程');
INSERT INTO `course_info` VALUES (11, '20251111', 1, 25, '505', '物联网');
INSERT INTO `course_info` VALUES (12, '20251112', 1, 25, '316', '物联网');
INSERT INTO `course_info` VALUES (13, '20251113', 1, 25, '314', '物联网');
INSERT INTO `course_info` VALUES (14, '20251114', 1, 25, '325', '物联网');
INSERT INTO `course_info` VALUES (15, '20251115', 1, 25, '216', '物联网');
INSERT INTO `course_info` VALUES (16, '20251116', 1, 25, '222', '物联网');
INSERT INTO `course_info` VALUES (17, '20251117', 1, 25, '506', '计算机');
INSERT INTO `course_info` VALUES (18, '20251118', 1, 25, '403', '计算机');
INSERT INTO `course_info` VALUES (19, '20251119', 1, 25, '106', '计算机');
INSERT INTO `course_info` VALUES (20, '20251120', 1, 25, '135', '计算机');
INSERT INTO `course_info` VALUES (21, '20251121', 1, 25, '102', '计算机');
INSERT INTO `course_info` VALUES (22, '20251122', 1, 25, '105', '计算机');
INSERT INTO `course_info` VALUES (23, '20251123', 1, 25, '506', '通信工程');
INSERT INTO `course_info` VALUES (24, '20251124', 1, 25, '601', '通信工程');
INSERT INTO `course_info` VALUES (25, '20251125', 1, 25, '149', '通信工程');
INSERT INTO `course_info` VALUES (26, '20251126', 1, 25, '175', '通信工程');
INSERT INTO `course_info` VALUES (27, '20251127', 1, 25, '166', '通信工程');
INSERT INTO `course_info` VALUES (28, '20251128', 1, 25, '150', '通信工程');
INSERT INTO `course_info` VALUES (20251130, '2025032123', 1, 25, NULL, '计算机');
INSERT INTO `course_info` VALUES (20251131, '2025082001', 1, 25, NULL, '会计');
INSERT INTO `course_info` VALUES (20251132, '2025051001', 1, 25, NULL, '土木工程');
INSERT INTO `course_info` VALUES (20251133, '2025062001', 1, 25, NULL, '网络工程');

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES (1, '电子信息工程');
INSERT INTO `profession` VALUES (2, '物联网');
INSERT INTO `profession` VALUES (3, '计算机');
INSERT INTO `profession` VALUES (4, '通信工程');
INSERT INTO `profession` VALUES (5, '土木工程');
INSERT INTO `profession` VALUES (6, '网络工程');
INSERT INTO `profession` VALUES (7, '工程造价');
INSERT INTO `profession` VALUES (8, '会计');
INSERT INTO `profession` VALUES (9, '环境工程');

-- ----------------------------
-- Table structure for silent
-- ----------------------------
DROP TABLE IF EXISTS `silent`;
CREATE TABLE `silent`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `state` tinyint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of silent
-- ----------------------------
INSERT INTO `silent` VALUES (1, 0);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `real_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `level` tinyint NOT NULL DEFAULT 2,
  `school` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `admission_time` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `profession` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `grade` int NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sex` tinyint NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username` ASC) USING BTREE,
  INDEX `profession`(`profession` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('22740301', '22740301', '123456', '林梓涵', 2, '兰州信息科技学院', '2022', '1564387882@qq.com', '电子信息工程', 2501, '13358204423', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740302', '22740302', '123456', '王嘉怡', 2, '兰州信息科技学院', '2022', '1564387882@qq.com', '电子信息工程', 2501, '13904568561', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740303', '22740303', '123456', '李浩宇', 2, '兰州信息科技学院', '2022', '1913637409@qq.com', '电子信息工程', 2501, '13700090921', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740304', '22740304', '123456', '张诗琪', 2, '兰州信息科技学院', '2022', '1720646161@qq.com', '电子信息工程', 2501, '15903373628', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740305', '22740305', '123456', '刘浩然', 2, '兰州信息科技学院', '2022', '1030844828@qq.com', '电子信息工程', 2501, '13306440038', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740306', '22740306', '123456', '杨雨桐', 2, '兰州信息科技学院', '2022', '1368517693@qq.com', '电子信息工程', 2501, '13600865966', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740307', '22740307', '123456', '周俊杰', 2, '兰州信息科技学院', '2022', '1633449201@qq.com', '电子信息工程', 2501, '13701752096', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740308', '22740308', '123456', '吴欣怡', 2, '兰州信息科技学院', '2022', '1603230942@qq.com', '物联网', 2501, '15200310443', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740309', '22740309', '123456789', '小黄同学', 2, '兰州信息科技学院', '2022', '1478356846@qq.com', '物联网', 2501, '17591511756', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740310', '22740310', '123456', '孙一诺', 2, '兰州信息科技学院', '2022', '1268829036@qq.com', '物联网', 2501, '13104042247', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740311', '22740311', '123456', '马子轩', 2, '兰州信息科技学院', '2022', '1866710083@qq.com', '物联网', 2501, '13704864349', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740312', '22740312', '123456', '朱雨欣', 2, '兰州信息科技学院', '2022', '1810351523@qq.com', '物联网', 2501, '13003758800', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740313', '22740313', '12345678', '李捡', 2, '兰州信息科技学院', '2022', '1393604939@qq.com', '物联网', 2501, '15105275012', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740314', '22740314', '123456', '郭思妍', 2, '兰州信息科技学院', '2022', '1459773822@qq.com', '物联网', 2501, '13605744985', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740315', '22740315', '123456', '何子涵', 2, '兰州信息科技学院', '2022', '1139434347@qq.com', '计算机', 2501, '13102513003', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740316', '22740316', '123456', '高雨辰', 2, '兰州信息科技学院', '2022', '1720673668@qq.com', '计算机', 2501, '13004250563', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740317', '22740317', '123456', '林佳琪', 2, '兰州信息科技学院', '2022', '1984607297@qq.com', '计算机', 2501, '13402975067', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740318', '22740318', '123456', '罗浩宇', 2, '兰州信息科技学院', '2022', '1064021840@qq.com', '计算机', 2501, '15301138688', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740319', '22740319', '123456', '梁一诺', 2, '兰州信息科技学院', '2022', '1632228805@qq.com', '计算机', 2501, '15704356031', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740320', '22740320', '123456', '宋雨桐', 2, '兰州信息科技学院', '2022', '1189607467@qq.com', '计算机', 2501, '13508641007', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740321', '22740321', '123456', '卢文悦', 2, '兰州信息科技学院', '2022', '1860190234@qq.com', '计算机', 2501, '13006594022', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740322', '22740322', '123456', '许欣怡', 2, '兰州信息科技学院', '2022', '1642978396@qq.com', '通信工程', 2501, '15001253493', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740323', '22740323', '123456', '邓子轩', 2, '兰州信息科技学院', '2022', '1693928397@qq.com', '通信工程', 2501, '15901024868', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740324', '22740324', '123456', '韩思妍', 2, '兰州信息科技学院', '2022', '1377953093@qq.com', '通信工程', 2501, '13402228948', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740325', '22740325', '123456', '冯浩宇', 2, '兰州信息科技学院', '2022', '1283938615@qq.com', '通信工程', 2501, '13501243126', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740326', '22740326', '123456', '曹雨辰', 2, '兰州信息科技学院', '2022', '1951738850@qq.com', '通信工程', 2501, '13304491796', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740327', '22740327', '123456', '彭佳琪', 2, '兰州信息科技学院', '2022', '1518418751@qq.com', '通信工程', 2501, '13506746627', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740328', '22740328', '123456', '曾俊杰', 2, '兰州信息科技学院', '2022', '1844811992@qq.com', '通信工程', 2501, '15806244167', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740329', '22740329', '123456', '肖一诺', 2, '兰州信息科技学院', '2022', '1694373866@qq.com', '土木工程', 2501, '15302491589', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740330', '22740330', '123456', '田雨桐', 2, '兰州信息科技学院', '2022', '1443532361@qq.com', '土木工程', 2501, '15906814748', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740331', '22740331', '123456', '董浩宇', 2, '兰州信息科技学院', '2022', '1217218205@qq.com', '土木工程', 2501, '13507047383', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740332', '22740332', '123456', '袁思妍', 2, '兰州信息科技学院', '2022', '1563536627@qq.com', '土木工程', 2501, '15300773435', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740333', '22740333', '123456', '潘子轩', 2, '兰州信息科技学院', '2022', '1703023907@qq.com', '土木工程', 2501, '15602604715', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740334', '22740334', '123456', '于雨辰', 2, '兰州信息科技学院', '2022', '1750397403@qq.com', '土木工程', 2501, '15206754657', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740335', '22740335', '123456', '蒋佳琪', 2, '兰州信息科技学院', '2022', '1729941302@qq.com', '土木工程', 2501, '13403206262', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740336', '22740336', '123456', '蔡俊杰', 2, '兰州信息科技学院', '2022', '1756085533@qq.com', '网络工程', 2501, '13406450046', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740337', '22740337', '123456', '余一诺', 2, '兰州信息科技学院', '2022', '1096417457@qq.com', '网络工程', 2501, '13307891428', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740338', '22740338', '123456', '杜雨桐', 2, '兰州信息科技学院', '2022', '1014671661@qq.com', '网络工程', 2501, '15606914831', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740339', '22740339', '123456', '叶浩宇', 2, '兰州信息科技学院', '2022', '1720099038@qq.com', '网络工程', 2501, '15008216365', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740340', '22740340', '123456', '程思妍', 2, '兰州信息科技学院', '2022', '1651430112@qq.com', '网络工程', 2501, '13004858329', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740341', '22740341', '123456', '苏子轩', 2, '兰州信息科技学院', '2022', '1209163886@qq.com', '网络工程', 2501, '13500697610', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740342', '22740342', '123456', '魏雨辰', 2, '兰州信息科技学院', '2022', '1624959266@qq.com', '工程造价', 2501, '13704804643', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740343', '22740343', '123456', '吕佳琪', 2, '兰州信息科技学院', '2022', '1335148161@qq.com', '工程造价', 2501, '13005132500', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740344', '22740344', '123456', '丁俊杰', 2, '兰州信息科技学院', '2022', '1970163510@qq.com', '工程造价', 2501, '13107244178', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740345', '22740345', '123456', '任一诺', 2, '兰州信息科技学院', '2022', '1114181684@qq.com', '工程造价', 2501, '13605745626', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740346', '22740346', '123456', '沈雨桐', 2, '兰州信息科技学院', '2022', '1738525339@qq.com', '工程造价', 2501, '13906668841', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740347', '22740347', '123456', '姚浩宇', 2, '兰州信息科技学院', '2022', '1994704574@qq.com', '工程造价', 2501, '13003380011', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740348', '22740348', '123456', '卢思妍', 2, '兰州信息科技学院', '2022', '1475455334@qq.com', '会计', 2501, '13707638959', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740349', '22740349', '123456', '方子轩', 2, '兰州信息科技学院', '2022', '1247780895@qq.com', '会计', 2501, '15607800436', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740350', '22740350', '123456', '钟雨辰', 2, '兰州信息科技学院', '2022', '1249904227@qq.com', '会计', 2501, '13903720567', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740351', '22740351', '123456', '姜佳琪', 2, '兰州信息科技学院', '2022', '1719066785@qq.com', '会计', 2501, '15200665684', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740352', '22740352', '123456', '崔俊杰', 2, '兰州信息科技学院', '2022', '1697077805@qq.com', '会计', 2501, '15103087634', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740353', '22740353', '123456', '谭一诺', 2, '兰州信息科技学院', '2022', '1095246750@qq.com', '环境工程', 2501, '13202301117', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740354', '22740354', '123456', '廖雨桐', 2, '兰州信息科技学院', '2022', '1065615209@qq.com', '环境工程', 2501, '15701427428', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740355', '22740355', '123456', '石浩宇', 2, '兰州信息科技学院', '2022', '1633187005@qq.com', '环境工程', 2501, '13004697373', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740356', '22740356', '123456', '陆思妍', 2, '兰州信息科技学院', '2022', '1463528551@qq.com', '环境工程', 2501, '13103794192', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740357', '22740357', '123456', '郝子轩', 2, '兰州信息科技学院', '2022', '1281195423@qq.com', '环境工程', 2501, '15707381051', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740358', '22740358', '123456', '孔雨辰', 2, '兰州信息科技学院', '2022', '1768734901@qq.com', '环境工程', 2501, '13102565239', 0, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740359', '22740359', '123456', '戴佳琪', 2, '兰州信息科技学院', '2022', '1870438832@qq.com', '环境工程', 2501, '13801956288', 1, '2022-09-01 12:30:00');
INSERT INTO `student` VALUES ('22740360', '22740360', '123456', '陈宇轩', 2, '兰州信息科技学院', '2022', '1405331751@qq.com', '环境工程', 2501, '15302941699', 0, '2022-09-01 12:30:00');

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `course_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `score` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `point` decimal(4, 2) NOT NULL,
  `credits` decimal(4, 2) NOT NULL,
  `term` tinyint NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_id`(`student_id` ASC) USING BTREE,
  INDEX `student_course_ibfk_2`(`course_id` ASC, `name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 615 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES (1, '22740301', '20251101', '数字电路基础', '75', 2.50, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (2, '22740302', '20251101', '数字电路基础', '76', 2.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (3, '22740303', '20251101', '数字电路基础', '76', 2.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (4, '22740304', '20251101', '数字电路基础', '78', 2.80, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (5, '22740305', '20251101', '数字电路基础', '76', 2.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (6, '22740306', '20251101', '数字电路基础', '98', 4.80, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (7, '22740307', '20251101', '数字电路基础', '76', 2.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (8, '22740301', '20251102', '大学物理', '65', 1.50, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (9, '22740302', '20251102', '大学物理', '65', 1.50, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (10, '22740303', '20251102', '大学物理', '76', 2.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (11, '22740304', '20251102', '大学物理', '56', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (12, '22740305', '20251102', '大学物理', '76', 2.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (13, '22740306', '20251102', '大学物理', '76', 2.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (14, '22740307', '20251102', '大学物理', '87', 3.70, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (15, '22740301', '20251103', '线性代数', '53', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (16, '22740302', '20251103', '线性代数', '52', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (17, '22740303', '20251103', '线性代数', '54', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (18, '22740304', '20251103', '线性代数', '100', 5.00, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (19, '22740305', '20251103', '线性代数', '100', 5.00, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (20, '22740306', '20251103', '线性代数', '75', 2.50, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (21, '22740307', '20251103', '线性代数', '100', 5.00, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (22, '22740301', '20251104', '复变函数', '54', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (23, '22740302', '20251104', '复变函数', '65', 1.50, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (24, '22740303', '20251104', '复变函数', '76', 2.60, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (25, '22740304', '20251104', '复变函数', '45', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (26, '22740305', '20251104', '复变函数', '100', 5.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (27, '22740306', '20251104', '复变函数', '87', 3.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (28, '22740307', '20251104', '复变函数', '65', 1.50, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (29, '22740301', '20251105', '模拟电子线路', '67', 1.70, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (30, '22740302', '20251105', '模拟电子线路', '87', 3.70, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (31, '22740303', '20251105', '模拟电子线路', '65', 1.50, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (32, '22740304', '20251105', '模拟电子线路', '76', 2.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (33, '22740305', '20251105', '模拟电子线路', '64', 1.40, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (34, '22740306', '20251105', '模拟电子线路', '65', 1.50, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (35, '22740307', '20251105', '模拟电子线路', '77', 2.70, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (36, '22740301', '20251106', '信号与系统', '52', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (37, '22740302', '20251106', '信号与系统', '100', 5.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (38, '22740303', '20251106', '信号与系统', '100', 5.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (39, '22740304', '20251106', '信号与系统', '54', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (40, '22740305', '20251106', '信号与系统', '76', 2.60, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (41, '22740306', '20251106', '信号与系统', '100', 5.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (42, '22740307', '20251106', '信号与系统', '74', 2.40, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (43, '22740309', '20251111', '物联网工程导论', '88', 3.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (44, '22740310', '20251111', '物联网工程导论', '78', 2.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (45, '22740311', '20251111', '物联网工程导论', '45', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (46, '22740312', '20251111', '物联网工程导论', '66', 1.60, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (47, '22740313', '20251111', '物联网工程导论', '87', 3.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (48, '22740314', '20251111', '物联网工程导论', '65', 1.50, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (49, '22740315', '20251111', '物联网工程导论', '54', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (50, '22740316', '20251117', '计算机网络技术', '88', 3.80, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (51, '22740317', '20251117', '计算机网络技术', '55', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (52, '22740318', '20251117', '计算机网络技术', '76', 2.60, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (53, '22740319', '20251117', '计算机网络技术', '100', 5.00, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (54, '22740320', '20251117', '计算机网络技术', '100', 5.00, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (55, '22740321', '20251117', '计算机网络技术', '100', 5.00, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (56, '22740322', '20251117', '计算机网络技术', '76', 2.60, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (57, '22740323', '20251123', '高频电子线路', '45', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (58, '22740324', '20251123', '高频电子线路', '55', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (59, '22740325', '20251123', '高频电子线路', '78', 2.80, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (60, '22740326', '20251123', '高频电子线路', '87', 3.70, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (61, '22740327', '20251123', '高频电子线路', '56', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (62, '22740328', '20251123', '高频电子线路', '94', 4.40, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (63, '22740329', '20251123', '高频电子线路', '45', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (475, '22740315', '20251122', '计算机组成原理', '76', 2.60, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (476, '22740316', '20251122', '计算机组成原理', '69', 1.90, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (477, '22740317', '20251122', '计算机组成原理', '98', 4.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (478, '22740318', '20251122', '计算机组成原理', '46', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (479, '22740319', '20251122', '计算机组成原理', '66', 1.60, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (480, '22740320', '20251122', '计算机组成原理', '83', 3.30, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (481, '22740321', '20251122', '计算机组成原理', '74', 2.40, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (482, '22740315', '20251119', '计算机安全', '55', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (483, '22740316', '20251119', '计算机安全', '76', 2.60, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (484, '22740317', '20251119', '计算机安全', '83', 3.30, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (485, '22740318', '20251119', '计算机安全', '77', 2.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (486, '22740319', '20251119', '计算机安全', '87', 3.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (487, '22740320', '20251119', '计算机安全', '82', 3.20, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (488, '22740321', '20251119', '计算机安全', '61', 1.10, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (489, '22740315', '20251118', '网络与通信', '61', 1.10, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (490, '22740316', '20251118', '网络与通信', '73', 2.30, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (491, '22740317', '20251118', '网络与通信', '69', 1.90, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (492, '22740318', '20251118', '网络与通信', '88', 3.80, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (493, '22740319', '20251118', '网络与通信', '90', 4.00, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (494, '22740320', '20251118', '网络与通信', '75', 2.50, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (495, '22740321', '20251118', '网络与通信', '82', 3.20, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (496, '22740315', '20251121', '多媒体信息处理', '64', 1.40, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (497, '22740316', '20251121', '多媒体信息处理', '72', 2.20, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (498, '22740317', '20251121', '多媒体信息处理', '82', 3.20, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (499, '22740318', '20251121', '多媒体信息处理', '75', 2.50, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (500, '22740319', '20251121', '多媒体信息处理', '88', 3.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (501, '22740320', '20251121', '多媒体信息处理', '69', 1.90, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (502, '22740321', '20251121', '多媒体信息处理', '80', 3.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (503, '22740315', '20251117', '计算机网络技术', '60', 1.00, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (504, '22740315', '20251120', '算法与数据结构', '52', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (505, '22740316', '20251120', '算法与数据结构', '69', 1.90, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (506, '22740317', '20251120', '算法与数据结构', '77', 2.70, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (507, '22740318', '20251120', '算法与数据结构', '80', 3.00, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (508, '22740319', '20251120', '算法与数据结构', '84', 3.40, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (509, '22740320', '20251120', '算法与数据结构', '72', 2.20, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (510, '22740321', '20251120', '算法与数据结构', '80', 3.00, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (511, '22740301', '20251109', '电子技术', '55', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (512, '22740302', '20251109', '电子技术', '67', 1.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (513, '22740303', '20251109', '电子技术', '88', 3.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (514, '22740304', '20251109', '电子技术', '63', 1.30, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (515, '22740305', '20251109', '电子技术', '88', 3.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (516, '22740306', '20251109', '电子技术', '89', 3.90, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (517, '22740307', '20251109', '电子技术', '79', 2.90, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (518, '22740301', '20251107', '大学英语', '71', 2.10, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (519, '22740302', '20251107', '大学英语', '73', 2.30, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (520, '22740303', '20251107', '大学英语', '81', 3.10, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (521, '22740304', '20251107', '大学英语', '91', 4.10, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (522, '22740305', '20251107', '大学英语', '74', 2.40, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (523, '22740306', '20251107', '大学英语', '82', 3.20, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (524, '22740307', '20251107', '大学英语', '69', 1.90, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (525, '22740301', '20251108', '体育', '69', 1.90, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (526, '22740302', '20251108', '体育', '73', 2.30, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (527, '22740303', '20251108', '体育', '84', 3.40, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (528, '22740304', '20251108', '体育', '90', 4.00, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (529, '22740305', '20251108', '体育', '66', 1.60, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (530, '22740306', '20251108', '体育', '72', 2.20, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (531, '22740307', '20251108', '体育', '64', 1.40, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (532, '22740308', '20251111', '物联网工程导论', '70', 2.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (533, '22740301', '20251110', '多媒体技术', '70', 2.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (534, '22740302', '20251110', '多媒体技术', '90', 4.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (535, '22740303', '20251110', '多媒体技术', '60', 1.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (536, '22740304', '20251110', '多媒体技术', '81', 3.10, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (537, '22740305', '20251110', '多媒体技术', '67', 1.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (538, '22740306', '20251110', '多媒体技术', '80', 3.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (539, '22740307', '20251110', '多媒体技术', '69', 1.90, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (540, '22740308', '20251113', '现代通信技术', '78', 2.80, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (541, '22740309', '20251113', '现代通信技术', '88', 3.80, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (542, '22740310', '20251113', '现代通信技术', '58', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (543, '22740311', '20251113', '现代通信技术', '77', 2.70, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (544, '22740312', '20251113', '现代通信技术', '87', 3.70, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (545, '22740313', '20251113', '现代通信技术', '98', 4.80, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (546, '22740314', '20251113', '现代通信技术', '87', 3.70, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (547, '22740308', '20251112', '物联网安全', '67', 1.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (548, '22740308', '20251114', '无线传感器网络', '45', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (549, '22740308', '20251115', '现代传感器技术', '78', 2.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (550, '22740308', '20251116', '信号与系统概论', '98', 4.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (551, '22740309', '20251112', '物联网安全', '67', 1.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (552, '22740309', '20251114', '无线传感器网络', '76', 2.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (553, '22740309', '20251115', '现代传感器技术', '66', 1.60, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (554, '22740309', '20251116', '信号与系统概论', '55', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (555, '22740310', '20251112', '物联网安全', '45', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (556, '22740310', '20251114', '无线传感器网络', '87', 3.70, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (557, '22740310', '20251115', '现代传感器技术', '76', 2.60, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (558, '22740310', '20251116', '信号与系统概论', '75', 2.50, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (559, '22740311', '20251112', '物联网安全', '58', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (560, '22740311', '20251114', '无线传感器网络', '98', 4.80, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (561, '22740311', '20251115', '现代传感器技术', '90', 4.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (562, '22740311', '20251116', '信号与系统概论', '97', 4.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (563, '22740312', '20251112', '物联网安全', '75', 2.50, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (564, '22740312', '20251114', '无线传感器网络', '65', 1.50, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (565, '22740312', '20251115', '现代传感器技术', '79', 2.90, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (566, '22740312', '20251116', '信号与系统概论', '78', 2.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (567, '22740313', '20251112', '物联网安全', '73', 2.30, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (568, '22740313', '20251114', '无线传感器网络', '76', 2.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (569, '22740313', '20251115', '现代传感器技术', '74', 2.40, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (570, '22740313', '20251116', '信号与系统概论', '85', 3.50, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (571, '22740314', '20251112', '物联网安全', '89', 3.90, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (572, '22740314', '20251114', '无线传感器网络', '100', 5.00, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (573, '22740314', '20251115', '现代传感器技术', '76', 2.60, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (574, '22740314', '20251116', '信号与系统概论', '78', 2.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (575, '22740322', '20251123', '高频电子线路', '45', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (576, '22740322', '20251124', '光纤通讯', '90', 4.00, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (577, '22740322', '20251125', '移动通讯', '92', 4.20, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (578, '22740322', '20251126', '电路分析', '93', 4.30, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (579, '22740322', '20251127', '程控交换技术', '98', 4.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (580, '22740322', '20251128', '通信原理', '90', 4.00, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (581, '22740323', '20251124', '光纤通讯', '34', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (582, '22740323', '20251125', '移动通讯', '67', 1.70, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (583, '22740323', '20251126', '电路分析', '78', 2.80, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (584, '22740323', '20251127', '程控交换技术', '98', 4.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (585, '22740323', '20251128', '通信原理', '76', 2.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (586, '22740324', '20251124', '光纤通讯', '65', 1.50, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (587, '22740324', '20251125', '移动通讯', '54', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (588, '22740324', '20251126', '电路分析', '89', 3.90, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (589, '22740324', '20251127', '程控交换技术', '34', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (590, '22740324', '20251128', '通信原理', '87', 3.70, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (591, '22740325', '20251124', '光纤通讯', '76', 2.60, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (592, '22740325', '20251125', '移动通讯', '78', 2.80, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (593, '22740325', '20251126', '电路分析', '79', 2.90, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (594, '22740325', '20251127', '程控交换技术', '98', 4.80, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (595, '22740325', '20251128', '通信原理', '78', 2.80, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (596, '22740326', '20251124', '光纤通讯', '87', 3.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (597, '22740326', '20251125', '移动通讯', '56', 0.00, 0.00, 1, 2022);
INSERT INTO `student_course` VALUES (598, '22740326', '20251126', '电路分析', '76', 2.60, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (599, '22740326', '20251127', '程控交换技术', '87', 3.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (600, '22740326', '20251128', '通信原理', '98', 4.80, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (601, '22740327', '20251124', '光纤通讯', '97', 4.70, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (602, '22740327', '20251125', '移动通讯', '76', 2.60, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (603, '22740327', '20251126', '电路分析', '84', 3.40, 1.00, 1, 2022);
INSERT INTO `student_course` VALUES (604, '22740327', '20251127', '程控交换技术', '84', 3.40, 2.00, 1, 2022);
INSERT INTO `student_course` VALUES (605, '22740327', '20251128', '通信原理', '85', 3.50, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (606, '22740328', '20251128', '通信原理', '66', 1.60, 4.00, 1, 2022);
INSERT INTO `student_course` VALUES (607, '22740309', '20251112', '物联网安全', '69', 3.50, 4.00, 2, 2022);
INSERT INTO `student_course` VALUES (608, '22740315', '2025032123', '高等数学', '67', 1.70, 4.00, 2, 2022);
INSERT INTO `student_course` VALUES (609, '22740316', '2025032123', '高等数学', '78', 2.80, 4.00, 2, 2022);
INSERT INTO `student_course` VALUES (610, '22740317', '2025032123', '高等数学', '53', 0.00, 0.00, 2, 2022);
INSERT INTO `student_course` VALUES (611, '22740318', '2025032123', '高等数学', '90', 4.00, 4.00, 2, 2022);
INSERT INTO `student_course` VALUES (612, '22740319', '2025032123', '高等数学', '68', 1.80, 4.00, 2, 2022);
INSERT INTO `student_course` VALUES (613, '22740320', '2025032123', '高等数学', '79', 2.90, 4.00, 2, 2022);
INSERT INTO `student_course` VALUES (614, '22740321', '2025032123', '高等数学', '54', 0.00, 0.00, 2, 2022);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `real_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `level` tinyint NOT NULL DEFAULT 1,
  `school` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `sex` tinyint NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3890332 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (10001, '10001', '123456', '李娜', 1, '兰州信息科技学院', '1963551835@qq.com', '15501905622', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10002, '10002', '123456', '王芳', 1, '兰州信息科技学院', '1708884815@qq.com', '13306387834', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10003, '10003', '123456', '赵杰', 1, '兰州信息科技学院', '1544192276@qq.com', '13507731614', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10004, '10004', '123456', '刘洋', 1, '兰州信息科技学院', '1625877976@qq.com', '15300308560', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10005, '10005', '123456', '陈明', 1, '兰州信息科技学院', '1034979625@qq.com', '13004971520', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10006, '10006', '123456', '杨丽', 1, '兰州信息科技学院', '1401785583@qq.com', '15203875368', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10007, '10007', '123456', '黄磊', 1, '兰州信息科技学院', '1786307189@qq.com', '15806324835', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10008, '10008', '123456', '周强', 1, '兰州信息科技学院', '1967037674@qq.com', '15007264285', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10009, '10009', '123456', '吴敏', 1, '兰州信息科技学院', '1349297112@qq.com', '15803877153', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10010, '10010', '123456', '郑亮', 1, '兰州信息科技学院', '1529310157@qq.com', '15305324810', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10011, '10011', '123456', '孙颖', 1, '兰州信息科技学院', '1562878504@qq.com', '13801569100', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10012, '10012', '123456', '马涛', 1, '兰州信息科技学院', '1218208094@qq.com', '13201196252', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10013, '10013', '123456', '朱琳', 1, '兰州信息科技学院', '1878740423@qq.com', '15707822243', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10014, '10014', '123456', '胡鹏', 1, '兰州信息科技学院', '1418974154@qq.com', '13903362620', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10015, '10015', '123456', '郭静', 1, '兰州信息科技学院', '1861931683@qq.com', '13803977654', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10016, '10016', '123456', '何勇', 1, '兰州信息科技学院', '1986037053@qq.com', '15200484007', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10017, '10017', '123456', '高敏', 1, '兰州信息科技学院', '1222509395@qq.com', '13301415159', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10018, '10018', '123456', '林浩', 1, '兰州信息科技学院', '1920238756@qq.com', '15706327447', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10019, '10019', '123456', '罗丽', 1, '兰州信息科技学院', '1514580859@qq.com', '13203831721', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10020, '10020', '123456', '梁军', 1, '兰州信息科技学院', '1040370175@qq.com', '13701634820', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10021, '10021', '123456', '宋佳', 1, '兰州信息科技学院', '1834713942@qq.com', '15200438039', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10022, '10022', '123456', '唐辉', 1, '兰州信息科技学院', '1601714145@qq.com', '13000134418', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10023, '10023', '123456', '许琳', 1, '兰州信息科技学院', '1362849132@qq.com', '13305326764', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10024, '10024', '123456', '邓刚', 1, '兰州信息科技学院', '1822630732@qq.com', '13504492052', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10025, '10025', '123456', '韩梅', 1, '兰州信息科技学院', '1411341634@qq.com', '15805962625', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10026, '10026', '123456', '冯超', 1, '兰州信息科技学院', '1954401657@qq.com', '13908853584', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10027, '10027', '123456', '曹颖', 1, '兰州信息科技学院', '1291977381@qq.com', '15906847962', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10028, '10028', '123456', '彭杰', 1, '兰州信息科技学院', '1256798176@qq.com', '15600310242', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10029, '10029', '123456', '曾静', 1, '兰州信息科技学院', '1130372848@qq.com', '15006590956', 1, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10030, '10030', '123456', '肖鹏', 1, '兰州信息科技学院', '1814243309@qq.com', '15700204445', 0, '2025-11-10 18:30:00');
INSERT INTO `teacher` VALUES (10031, '10031', '123456', '张苗苗', 1, '兰州信息科技学院', '13697980288@qq.com', '19987364521', 1, '2025-11-15 17:00:47');
INSERT INTO `teacher` VALUES (3890310, '3890310', '159357', '李黎', 1, '兰州信息科技学院', '136985380288@qq.com', '17694832200', 0, '2025-11-17 16:16:22');
INSERT INTO `teacher` VALUES (3890321, '3890321', '159357', '黄玄', 1, '兰州信息科技学院', '1769457980288@163.com', '13674998610', 1, '2025-11-17 16:18:47');
INSERT INTO `teacher` VALUES (3890331, '3890331', '159357', '李小小', 1, '兰州信息科技学院', '1356653898328@qq.com', '17429304421', 1, '2025-11-18 14:24:52');

-- ----------------------------
-- Table structure for teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `profession` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `grade` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `term` tinyint NOT NULL,
  `course_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES (1, '10001', '10001', '数字电路基础', '电子信息工程', '2501', 1, '20251101');
INSERT INTO `teacher_course` VALUES (2, '10002', '10002', '物联网工程导论', '物联网', '2501', 1, '20251111');
INSERT INTO `teacher_course` VALUES (3, '10003', '10003', '计算机网络技术', '计算机', '2501', 1, '20251117');
INSERT INTO `teacher_course` VALUES (4, '10004', '10004', '高频电子线路', '通信工程', '2501', 1, '20251123');
INSERT INTO `teacher_course` VALUES (5, '10005', '10005', '大学物理', '电子信息工程', '2501', 1, '20251102');
INSERT INTO `teacher_course` VALUES (6, '10006', '10006', '网络与通信', '计算机', '2501', 1, '20251118');
INSERT INTO `teacher_course` VALUES (7, '10007', '10007', '光纤通讯', '通信工程', '2501', 1, '20251124');
INSERT INTO `teacher_course` VALUES (8, '10008', '10008', '线性代数', '电子信息工程', '2501', 1, '20251103');
INSERT INTO `teacher_course` VALUES (9, '10009', '10009', '现代通信技术', '物联网', '2501', 1, '20251113');
INSERT INTO `teacher_course` VALUES (10, '10010', '10010', '计算机安全', '计算机', '2501', 1, '20251119');
INSERT INTO `teacher_course` VALUES (11, '10011', '10011', '移动通讯', '通信工程', '2501', 1, '20251125');
INSERT INTO `teacher_course` VALUES (12, '10012', '10012', '复变函数', '电子信息工程', '2501', 1, '20251104');
INSERT INTO `teacher_course` VALUES (13, '10013', '10013', '现代传感器技术', '物联网', '2501', 1, '20251115');
INSERT INTO `teacher_course` VALUES (14, '10014', '10014', '算法与数据结构', '计算机', '2501', 1, '20251120');
INSERT INTO `teacher_course` VALUES (15, '10015', '10015', '电路分析', '通信工程', '2501', 1, '20251126');
INSERT INTO `teacher_course` VALUES (16, '10016', '10016', '模拟电子线路', '电子信息工程', '2501', 1, '20251105');
INSERT INTO `teacher_course` VALUES (17, '10017', '10017', '信号与系统概论', '物联网', '2501', 1, '20251106');
INSERT INTO `teacher_course` VALUES (18, '10018', '10018', '多媒体信息处理', '计算机', '2501', 1, '20251121');
INSERT INTO `teacher_course` VALUES (19, '10019', '10019', '程控交换技术', '通信工程', '2501', 1, '20251127');
INSERT INTO `teacher_course` VALUES (20, '10020', '10020', '信号与系统', '电子信息工程', '2501', 1, '20251106');
INSERT INTO `teacher_course` VALUES (21, '10021', '10021', '无线传感器网络', '物联网', '2501', 1, '20251114');
INSERT INTO `teacher_course` VALUES (22, '10022', '10022', '计算机组成原理', '计算机', '2501', 1, '20251122');
INSERT INTO `teacher_course` VALUES (23, '10023', '10023', '光纤通讯', '通信工程', '2501', 1, '20251124');
INSERT INTO `teacher_course` VALUES (24, '10024', '10024', '物联网安全', '物联网', '2501', 1, '20251112');
INSERT INTO `teacher_course` VALUES (25, '10025', '10025', '网络与通信', '计算机', '2501', 1, '20251118');
INSERT INTO `teacher_course` VALUES (30, '10031', '10031', '高等数学', '计算机', '2501', 2, '2025032123');
INSERT INTO `teacher_course` VALUES (31, '3890321', '3890321', '土木工程基础', '土木工程', '2501', 1, '2025051001');
INSERT INTO `teacher_course` VALUES (32, '3890310', '3890310', '会计学', '会计', '2501', 2, '2025082001');
INSERT INTO `teacher_course` VALUES (33, '3890331', '3890331', '网络工程基础', '网络工程', '2501', 2, '2025062001');

-- ----------------------------
-- Table structure for timetable
-- ----------------------------
DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `week_id` int NOT NULL,
  `profession` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `grade` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `year` int NOT NULL,
  `term` tinyint NOT NULL,
  `week_num` int NULL DEFAULT NULL COMMENT '周数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 172 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of timetable
-- ----------------------------
INSERT INTO `timetable` VALUES (1, 1, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (2, 2, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (3, 3, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (4, 4, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (5, 5, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (6, 6, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (7, 7, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (8, 8, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (9, 9, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (10, 10, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (11, 11, '物联网', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (12, 12, '物联网', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (13, 13, '物联网', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (14, 14, '物联网', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (15, 15, '物联网', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (16, 16, '物联网', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (17, 17, '物联网', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (18, 18, '物联网', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (19, 19, '物联网', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (20, 20, '物联网', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (21, 21, '计算机', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (22, 22, '计算机', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (23, 23, '计算机', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (24, 24, '计算机', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (25, 25, '计算机', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (26, 26, '计算机', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (27, 27, '计算机', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (28, 28, '计算机', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (29, 29, '计算机', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (30, 30, '计算机', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (31, 31, '通信工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (32, 32, '通信工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (33, 33, '通信工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (34, 34, '通信工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (35, 35, '通信工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (36, 36, '通信工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (37, 37, '通信工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (38, 38, '通信工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (39, 39, '通信工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (40, 40, '通信工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (42, 41, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (43, 42, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (44, 43, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (45, 44, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (46, 45, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (47, 46, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (48, 47, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (49, 48, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (50, 49, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (51, 50, '电子信息工程', '2501', 2025, 1, 1);
INSERT INTO `timetable` VALUES (52, 51, '电子信息工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (53, 52, '电子信息工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (54, 53, '电子信息工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (55, 54, '电子信息工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (56, 55, '电子信息工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (57, 56, '电子信息工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (58, 57, '电子信息工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (59, 58, '电子信息工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (60, 59, '电子信息工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (61, 60, '电子信息工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (62, 61, '物联网', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (63, 62, '物联网', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (64, 63, '物联网', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (65, 64, '物联网', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (66, 65, '物联网', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (67, 66, '物联网', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (68, 67, '物联网', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (69, 68, '物联网', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (70, 69, '物联网', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (71, 70, '物联网', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (72, 71, '电子信息工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (73, 72, '电子信息工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (74, 73, '电子信息工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (75, 74, '电子信息工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (76, 75, '电子信息工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (77, 76, '电子信息工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (78, 77, '电子信息工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (79, 78, '电子信息工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (80, 79, '电子信息工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (81, 80, '电子信息工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (82, 81, '电子信息工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (83, 82, '电子信息工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (84, 83, '电子信息工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (85, 84, '电子信息工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (86, 85, '电子信息工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (87, 86, '电子信息工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (88, 87, '电子信息工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (89, 88, '电子信息工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (90, 89, '电子信息工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (91, 90, '电子信息工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (92, 1151, '物联网', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (93, 1152, '物联网', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (94, 1153, '物联网', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (95, 1154, '物联网', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (96, 1155, '物联网', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (97, 1156, '物联网', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (98, 1157, '物联网', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (99, 1158, '物联网', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (100, 1159, '物联网', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (101, 1160, '物联网', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (102, 1161, '物联网', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (103, 1162, '物联网', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (104, 1163, '物联网', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (105, 1164, '物联网', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (106, 1165, '物联网', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (107, 1166, '物联网', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (108, 1167, '物联网', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (109, 1168, '物联网', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (110, 1169, '物联网', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (111, 1170, '物联网', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (112, 1171, '计算机', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (113, 1172, '计算机', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (114, 1173, '计算机', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (115, 1174, '计算机', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (116, 1175, '计算机', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (117, 1176, '计算机', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (118, 1177, '计算机', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (119, 1178, '计算机', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (120, 1179, '计算机', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (121, 1180, '计算机', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (122, 1181, '计算机', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (123, 1182, '计算机', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (124, 1183, '计算机', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (125, 1184, '计算机', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (126, 1185, '计算机', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (127, 1186, '计算机', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (128, 1187, '计算机', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (129, 1188, '计算机', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (130, 1189, '计算机', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (131, 1190, '计算机', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (132, 1191, '计算机', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (133, 1192, '计算机', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (134, 1193, '计算机', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (135, 1194, '计算机', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (136, 1195, '计算机', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (137, 1196, '计算机', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (138, 1197, '计算机', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (139, 1198, '计算机', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (140, 1199, '计算机', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (141, 1200, '计算机', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (142, 1201, '通信工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (143, 1202, '通信工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (144, 1203, '通信工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (145, 1204, '通信工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (146, 1205, '通信工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (147, 1206, '通信工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (148, 1207, '通信工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (149, 1208, '通信工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (150, 1209, '通信工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (151, 1210, '通信工程', '2501', 2016, 1, 1);
INSERT INTO `timetable` VALUES (152, 1211, '通信工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (153, 1212, '通信工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (154, 1213, '通信工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (155, 1214, '通信工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (156, 1215, '通信工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (157, 1216, '通信工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (158, 1217, '通信工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (159, 1218, '通信工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (160, 1219, '通信工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (161, 1220, '通信工程', '2501', 2016, 2, 1);
INSERT INTO `timetable` VALUES (162, 1221, '通信工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (163, 1222, '通信工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (164, 1223, '通信工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (165, 1224, '通信工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (166, 1225, '通信工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (167, 1226, '通信工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (168, 1227, '通信工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (169, 1228, '通信工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (170, 1229, '通信工程', '2501', 2025, 2, 1);
INSERT INTO `timetable` VALUES (171, 1230, '通信工程', '2501', 2025, 2, 1);

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `level` int NOT NULL DEFAULT 0,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES (1, '1', 0, '/files/0c2ae524-7706-4036-8b99-78c833344f42.jpg');
INSERT INTO `upload` VALUES (2, '3168901102', 2, '/files/98d6ec65-bb2c-4b41-8f7f-ac723085b59b.jpg');
INSERT INTO `upload` VALUES (3, '3890290', 1, '/files/eb0d84e1-3fc4-4031-9f44-b991508c05f2.jpg');
INSERT INTO `upload` VALUES (4, '3168901101', 2, '/files/4f60c9ba-d99c-4dac-9767-4d833a430d90.jpg');
INSERT INTO `upload` VALUES (5, '22740309', 2, '/files/b97e9f46-1fa4-4c4e-9e97-19de1cf36ffb.jpg');
INSERT INTO `upload` VALUES (6, '22740311', 2, '/files/ee5754e7-0ce9-47fa-8ad4-7fb9ee7fb137.jpg');

-- ----------------------------
-- Table structure for week
-- ----------------------------
DROP TABLE IF EXISTS `week`;
CREATE TABLE `week`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `monday` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `tuesday` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `wednesday` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `thursday` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `friday` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `saturday` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sunday` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1231 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of week
-- ----------------------------
INSERT INTO `week` VALUES (1, '大学物理', '一', '模拟电子线路', '一', '一', '一', '一');
INSERT INTO `week` VALUES (2, '大学物理', '一', '模拟电子线路', '一', '一', '一', '一');
INSERT INTO `week` VALUES (3, '一', '线性代数', '一', '复变函数', '信号与系统', '一', '一');
INSERT INTO `week` VALUES (4, '一', '线性代数', '一', '复变函数', '信号与系统', '一', '一');
INSERT INTO `week` VALUES (5, '信号与系统', '数字电路基础', '大学物理', '大学物理', '一', '一', '一');
INSERT INTO `week` VALUES (6, '信号与系统', '数字电路基础', '大学物理', '大学物理', '一', '一', '一');
INSERT INTO `week` VALUES (7, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (8, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (9, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (10, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (11, '一', '信号与系统概论', '一', '物联网安全', '现代通信技术', '一', '一');
INSERT INTO `week` VALUES (12, '一', '信号与系统概论', '一', '物联网安全', '现代通信技术', '一', '一');
INSERT INTO `week` VALUES (13, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (14, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (15, '物联网工程导论', '无线传感器网络', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (16, '物联网工程导论', '无线传感器网络', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (17, '现代通信技术', '一', '一', '物联网工程导论', '一', '一', '一');
INSERT INTO `week` VALUES (18, '现代通信技术', '一', '一', '物联网工程导论', '一', '一', '一');
INSERT INTO `week` VALUES (19, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (20, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (21, '一', '算法与数据结构', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (22, '一', '算法与数据结构', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (23, '网络与通信', '一', '计算机网络技术', '网络与通信', '一', '一', '一');
INSERT INTO `week` VALUES (24, '网络与通信', '一', '计算机网络技术', '网络与通信', '一', '一', '一');
INSERT INTO `week` VALUES (25, '一', '一', '计算机组成原理', '多媒体信息处理', '一', '一', '一');
INSERT INTO `week` VALUES (26, '一', '一', '计算机组成原理', '多媒体信息处理', '一', '一', '一');
INSERT INTO `week` VALUES (27, '一', '多媒体信息处理', '一', '一', '计算机组成原理', '一', '一');
INSERT INTO `week` VALUES (28, '一', '多媒体信息处理', '一', '一', '计算机组成原理', '一', '一');
INSERT INTO `week` VALUES (29, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (30, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (31, '一', '一', '一', '高频电子线路', '一', '一', '一');
INSERT INTO `week` VALUES (32, '一', '一', '一', '高频电子线路', '一', '一', '一');
INSERT INTO `week` VALUES (33, '一', '一', '一', '光纤通讯', '一', '一', '一');
INSERT INTO `week` VALUES (34, '一', '一', '一', '光纤通讯', '一', '一', '一');
INSERT INTO `week` VALUES (35, '通信原理', '光纤通讯', '一', '电路分析', '移动通讯', '一', '一');
INSERT INTO `week` VALUES (36, '通信原理', '光纤通讯', '一', '电路分析', '移动通讯', '一', '一');
INSERT INTO `week` VALUES (37, '高频电子线路', '一', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (38, '高频电子线路', '一', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (39, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (40, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (41, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (42, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (43, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (44, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (45, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (46, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (47, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (48, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (49, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (50, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (51, '数字电路基础', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (52, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (53, '一', '一', '数字电路基础', '一', '电子技术', '一', '一');
INSERT INTO `week` VALUES (54, '一', '大学英语', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (55, '一', '一', '一', '一', '体育', '一', '一');
INSERT INTO `week` VALUES (56, '一', '一', '一', '线性代数', '一', '一', '一');
INSERT INTO `week` VALUES (57, '大学物理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (58, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (59, '一', '一', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES (60, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (61, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (62, '一', '一', '现代传感器技术', '现代传感器技术', '一', '一', '一');
INSERT INTO `week` VALUES (63, '物联网安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (64, '一', '现代传感器技术', '一', '物联网工程导论', '一', '一', '一');
INSERT INTO `week` VALUES (65, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (66, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (67, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (68, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (69, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (70, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (71, '大学物理', '一', '一', '一', '电子技术', '一', '一');
INSERT INTO `week` VALUES (72, '一', '电子技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (73, '模拟电子线路', '一', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES (74, '一', '一', '一', '大学英语', '一', '一', '一');
INSERT INTO `week` VALUES (75, '一', '信号与系统', '一', '一', '体育', '一', '一');
INSERT INTO `week` VALUES (76, '一', '一', '一', '数字电路基础', '一', '线性代数', '一');
INSERT INTO `week` VALUES (77, '一', '一', '大学英语', '一', '一', '一', '一');
INSERT INTO `week` VALUES (78, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (79, '数字电路基础', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (80, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (81, '一', '一', '一', '一', '一', '一', '体育');
INSERT INTO `week` VALUES (82, '一', '一', '一', '一', '一', '大学物理', '一');
INSERT INTO `week` VALUES (83, '一', '一', '一', '一', '大学英语', '一', '一');
INSERT INTO `week` VALUES (84, '一', '一', '一', '数字电路基础', '一', '一', '一');
INSERT INTO `week` VALUES (85, '一', '一', '复变函数', '一', '一', '一', '一');
INSERT INTO `week` VALUES (86, '一', '信号与系统', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (87, '大学物理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (88, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (89, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (90, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (91, '信号与系统概论', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (92, '一', '一', '一', '现代通信技术', '现代通信技术', '一', '一');
INSERT INTO `week` VALUES (93, '一', '无线传感器网络', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (94, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (95, '一', '一', '一', '现代通信技术', '一', '一', '一');
INSERT INTO `week` VALUES (96, '现代传感器技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (97, '一', '一', '物联网工程导论', '一', '一', '一', '一');
INSERT INTO `week` VALUES (98, '一', '现代传感器技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (99, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (100, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (101, '大学物理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (102, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (103, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (104, '一', '一', '电子技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (105, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (106, '电子技术', '一', '体育', '一', '一', '线性代数', '线性代数');
INSERT INTO `week` VALUES (107, '一', '一', '一', '一', '大学英语', '线性代数', '一');
INSERT INTO `week` VALUES (108, '一', '数字电路基础', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (109, '模拟电子线路', '一', '一', '数字电路基础', '一', '多媒体技术', '一');
INSERT INTO `week` VALUES (110, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (111, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (112, '一', '大学英语', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (113, '一', '一', '一', '电子技术', '电子技术', '一', '一');
INSERT INTO `week` VALUES (114, '电子技术', '一', '大学英语', '一', '一', '线性代数', '一');
INSERT INTO `week` VALUES (115, '一', '电子技术', '一', '一', '一', '一', '线性代数');
INSERT INTO `week` VALUES (116, '一', '一', '一', '一', '一', '线性代数', '一');
INSERT INTO `week` VALUES (117, '一', '一', '电子技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (118, '数字电路基础', '一', '一', '一', '一', '一', '多媒体技术');
INSERT INTO `week` VALUES (119, '一', '一', '一', '多媒体技术', '体育', '数字电路基础', '一');
INSERT INTO `week` VALUES (120, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (121, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (122, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (123, '线性代数', '一', '一', '一', '一', '一', '体育');
INSERT INTO `week` VALUES (124, '一', '一', '一', '一', '线性代数', '一', '一');
INSERT INTO `week` VALUES (125, '一', '一', '一', '一', '一', '大学英语', '一');
INSERT INTO `week` VALUES (126, '一', '线性代数', '一', '一', '一', '一', '线性代数');
INSERT INTO `week` VALUES (127, '一', '一', '一', '电子技术', '电子技术', '一', '一');
INSERT INTO `week` VALUES (128, '一', '一', '多媒体技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (129, '一', '一', '一', '一', '数字电路基础', '一', '一');
INSERT INTO `week` VALUES (130, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (131, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (132, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (133, '一', '一', '一', '一', '一', '线性代数', '一');
INSERT INTO `week` VALUES (134, '线性代数', '一', '一', '大学英语', '体育', '一', '一');
INSERT INTO `week` VALUES (135, '一', '大学英语', '一', '一', '一', '大学英语', '线性代数');
INSERT INTO `week` VALUES (136, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (137, '一', '一', '体育', '一', '一', '一', '一');
INSERT INTO `week` VALUES (138, '一', '一', '一', '一', '一', '多媒体技术', '一');
INSERT INTO `week` VALUES (139, '一', '一', '一', '一', '多媒体技术', '一', '一');
INSERT INTO `week` VALUES (140, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (141, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (142, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (143, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (144, '一', '大学英语', '体育', '一', '一', '线性代数', '一');
INSERT INTO `week` VALUES (145, '一', '一', '一', '一', '大学英语', '一', '一');
INSERT INTO `week` VALUES (146, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (147, '一', '一', '一', '线性代数', '一', '一', '一');
INSERT INTO `week` VALUES (148, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (149, '数字电路基础', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (150, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (151, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (152, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (153, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (154, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (155, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (156, '一', '一', '电子技术', '一', '电子技术', '一', '一');
INSERT INTO `week` VALUES (157, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (158, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (159, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (160, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (161, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (162, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (163, '物联网工程导论', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (164, '一', '一', '一', '物联网安全', '现代传感器技术', '信号与系统概论', '一');
INSERT INTO `week` VALUES (165, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (166, '物联网工程导论', '现代传感器技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (167, '一', '一', '一', '现代传感器技术', '现代传感器技术', '一', '一');
INSERT INTO `week` VALUES (168, '一', '一', '一', '一', '一', '现代传感器技术', '一');
INSERT INTO `week` VALUES (169, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (170, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (171, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (172, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (173, '信号与系统概论', '一', '一', '一', '一', '现代传感器技术', '无线传感器网络');
INSERT INTO `week` VALUES (174, '一', '信号与系统概论', '一', '现代传感器技术', '一', '一', '一');
INSERT INTO `week` VALUES (175, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (176, '一', '一', '一', '一', '现代传感器技术', '一', '一');
INSERT INTO `week` VALUES (177, '一', '信号与系统概论', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (178, '信号与系统概论', '一', '信号与系统概论', '信号与系统概论', '一', '一', '一');
INSERT INTO `week` VALUES (179, '一', '一', '一', '一', '一', '现代通信技术', '一');
INSERT INTO `week` VALUES (180, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (181, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (182, '现代传感器技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (183, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (184, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (185, '物联网工程导论', '一', '一', '信号与系统概论', '信号与系统概论', '信号与系统概论', '一');
INSERT INTO `week` VALUES (186, '一', '一', '一', '一', '一', '一', '信号与系统概论');
INSERT INTO `week` VALUES (187, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (188, '一', '一', '物联网工程导论', '一', '一', '一', '一');
INSERT INTO `week` VALUES (189, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (190, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (191, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (192, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (193, '一', '一', '一', '一', '现代传感器技术', '一', '一');
INSERT INTO `week` VALUES (194, '信号与系统概论', '一', '一', '一', '一', '一', '信号与系统概论');
INSERT INTO `week` VALUES (195, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (196, '一', '一', '信号与系统概论', '一', '现代传感器技术', '现代传感器技术', '一');
INSERT INTO `week` VALUES (197, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (198, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (199, '一', '一', '一', '一', '一', '一', '物联网安全');
INSERT INTO `week` VALUES (200, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (201, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (202, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (203, '现代传感器技术', '一', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (204, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (205, '一', '一', '一', '一', '一', '现代传感器技术', '一');
INSERT INTO `week` VALUES (206, '一', '一', '信号与系统概论', '一', '一', '一', '一');
INSERT INTO `week` VALUES (207, '一', '一', '一', '现代传感器技术', '一', '一', '一');
INSERT INTO `week` VALUES (208, '一', '信号与系统概论', '一', '一', '信号与系统概论', '现代传感器技术', '一');
INSERT INTO `week` VALUES (209, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (210, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (211, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (212, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (213, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (214, '一', '一', '一', '一', '物联网工程导论', '一', '一');
INSERT INTO `week` VALUES (215, '物联网安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (216, '一', '一', '一', '一', '一', '无线传感器网络', '一');
INSERT INTO `week` VALUES (217, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (218, '一', '一', '信号与系统概论', '一', '物联网安全', '一', '一');
INSERT INTO `week` VALUES (219, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (220, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (221, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (222, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (223, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (224, '一', '一', '算法与数据结构', '算法与数据结构', '一', '算法与数据结构', '一');
INSERT INTO `week` VALUES (225, '一', '计算机网络技术', '一', '一', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (226, '计算机网络技术', '一', '一', '一', '一', '一', '计算机网络技术');
INSERT INTO `week` VALUES (227, '一', '一', '计算机网络技术', '一', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (228, '一', '一', '一', '计算机网络技术', '一', '一', '一');
INSERT INTO `week` VALUES (229, '一', '一', '一', '一', '一', '计算机安全', '一');
INSERT INTO `week` VALUES (230, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (231, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (232, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (233, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (234, '计算机网络技术', '计算机安全', '计算机安全', '一', '计算机网络技术', '一', '一');
INSERT INTO `week` VALUES (235, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (236, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (237, '计算机网络技术', '一', '一', '一', '一', '一', '多媒体信息处理');
INSERT INTO `week` VALUES (238, '一', '一', '多媒体信息处理', '一', '多媒体信息处理', '计算机安全', '一');
INSERT INTO `week` VALUES (239, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (240, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (241, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (242, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (243, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (244, '多媒体信息处理', '一', '一', '一', '一', '计算机网络技术', '一');
INSERT INTO `week` VALUES (245, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (246, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (247, '一', '一', '网络与通信', '一', '一', '一', '一');
INSERT INTO `week` VALUES (248, '一', '一', '一', '多媒体信息处理', '多媒体信息处理', '计算机网络技术', '一');
INSERT INTO `week` VALUES (249, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (250, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (251, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (252, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (253, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (254, '一', '一', '一', '计算机网络技术', '一', '一', '一');
INSERT INTO `week` VALUES (255, '多媒体信息处理', '一', '一', '一', '计算机网络技术', '一', '一');
INSERT INTO `week` VALUES (256, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (257, '一', '一', '多媒体信息处理', '计算机网络技术', '一', '计算机网络技术', '一');
INSERT INTO `week` VALUES (258, '一', '一', '一', '一', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (259, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (260, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (261, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (262, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (263, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (264, '多媒体信息处理', '一', '一', '多媒体信息处理', '多媒体信息处理', '一', '多媒体信息处理');
INSERT INTO `week` VALUES (265, '一', '一', '一', '一', '一', '网络与通信', '一');
INSERT INTO `week` VALUES (266, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (267, '一', '一', '计算机网络技术', '一', '一', '一', '多媒体信息处理');
INSERT INTO `week` VALUES (268, '一', '一', '一', '多媒体信息处理', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (269, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (270, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (271, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (272, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (273, '一', '一', '一', '一', '一', '一', '高频电子线路');
INSERT INTO `week` VALUES (274, '光纤通讯', '一', '一', '程控交换技术', '一', '一', '一');
INSERT INTO `week` VALUES (275, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (276, '一', '一', '高频电子线路', '一', '一', '电路分析', '一');
INSERT INTO `week` VALUES (277, '一', '一', '一', '一', '光纤通讯', '一', '一');
INSERT INTO `week` VALUES (278, '一', '高频电子线路', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (279, '一', '一', '一', '一', '一', '一', '移动通讯');
INSERT INTO `week` VALUES (280, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (281, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (282, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (283, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (284, '一', '一', '电路分析', '电路分析', '一', '通信原理', '一');
INSERT INTO `week` VALUES (285, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (286, '光纤通讯', '一', '一', '一', '一', '电路分析', '电路分析');
INSERT INTO `week` VALUES (287, '一', '一', '一', '光纤通讯', '光纤通讯', '一', '一');
INSERT INTO `week` VALUES (288, '一', '高频电子线路', '光纤通讯', '一', '一', '一', '一');
INSERT INTO `week` VALUES (289, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (290, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (291, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (292, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (293, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (294, '一', '高频电子线路', '光纤通讯', '一', '程控交换技术', '一', '一');
INSERT INTO `week` VALUES (295, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (296, '电路分析', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (297, '一', '一', '电路分析', '电路分析', '光纤通讯', '光纤通讯', '电路分析');
INSERT INTO `week` VALUES (298, '一', '高频电子线路', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (299, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (300, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (301, '线性代数', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (302, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (303, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (304, '一', '一', '一', '一', '一', '电子技术', '电子技术');
INSERT INTO `week` VALUES (305, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (306, '一', '一', '一', '电子技术', '电子技术', '线性代数', '一');
INSERT INTO `week` VALUES (307, '一', '一', '大学物理', '一', '一', '一', '一');
INSERT INTO `week` VALUES (308, '模拟电子线路', '一', '一', '一', '一', '多媒体技术', '一');
INSERT INTO `week` VALUES (309, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (310, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (311, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (312, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (313, '电子技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (314, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (315, '一', '一', '电子技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (316, '一', '一', '一', '电子技术', '一', '一', '一');
INSERT INTO `week` VALUES (317, '一', '一', '一', '一', '大学英语', '一', '一');
INSERT INTO `week` VALUES (318, '一', '一', '一', '一', '一', '体育', '一');
INSERT INTO `week` VALUES (319, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (320, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (321, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (322, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (323, '电子技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (324, '一', '线性代数', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (325, '一', '一', '一', '一', '一', '线性代数', '一');
INSERT INTO `week` VALUES (326, '一', '一', '一', '电子技术', '一', '一', '一');
INSERT INTO `week` VALUES (327, '一', '一', '线性代数', '一', '线性代数', '一', '一');
INSERT INTO `week` VALUES (328, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (329, '一', '一', '一', '数字电路基础', '一', '一', '一');
INSERT INTO `week` VALUES (330, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (331, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (332, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (333, '现代传感器技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (334, '一', '一', '一', '一', '一', '信号与系统概论', '物联网安全');
INSERT INTO `week` VALUES (335, '一', '信号与系统概论', '一', '一', '信号与系统概论', '一', '一');
INSERT INTO `week` VALUES (336, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (337, '一', '一', '一', '现代传感器技术', '一', '一', '一');
INSERT INTO `week` VALUES (338, '一', '一', '一', '一', '现代传感器技术', '一', '一');
INSERT INTO `week` VALUES (339, '物联网安全', '一', '无线传感器网络', '一', '一', '无线传感器网络', '无线传感器网络');
INSERT INTO `week` VALUES (340, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (341, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (342, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (343, '一', '信号与系统概论', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (344, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (345, '一', '一', '一', '一', '一', '物联网安全', '一');
INSERT INTO `week` VALUES (346, '现代传感器技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (347, '一', '一', '一', '现代传感器技术', '现代传感器技术', '现代传感器技术', '一');
INSERT INTO `week` VALUES (348, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (349, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (350, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (351, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (352, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (353, '一', '一', '一', '一', '现代传感器技术', '一', '一');
INSERT INTO `week` VALUES (354, '现代传感器技术', '一', '一', '一', '一', '现代传感器技术', '一');
INSERT INTO `week` VALUES (355, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (356, '一', '现代传感器技术', '一', '一', '一', '一', '信号与系统概论');
INSERT INTO `week` VALUES (357, '一', '一', '一', '现代传感器技术', '现代传感器技术', '一', '一');
INSERT INTO `week` VALUES (358, '一', '一', '一', '一', '一', '一', '物联网工程导论');
INSERT INTO `week` VALUES (359, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (360, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (361, '计算机安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (362, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (363, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (364, '一', '一', '一', '一', '一', '一', '计算机网络技术');
INSERT INTO `week` VALUES (365, '一', '计算机网络技术', '一', '一', '一', '多媒体信息处理', '一');
INSERT INTO `week` VALUES (366, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (367, '一', '一', '多媒体信息处理', '一', '一', '一', '一');
INSERT INTO `week` VALUES (368, '一', '一', '一', '计算机安全', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (369, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (370, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (371, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (372, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (373, '一', '一', '一', '一', '计算机网络技术', '一', '一');
INSERT INTO `week` VALUES (374, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (375, '多媒体信息处理', '一', '计算机网络技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (376, '一', '一', '一', '多媒体信息处理', '计算机网络技术', '算法与数据结构', '一');
INSERT INTO `week` VALUES (377, '一', '计算机安全', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (378, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (379, '一', '一', '一', '计算机安全', '一', '一', '一');
INSERT INTO `week` VALUES (380, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (381, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (382, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (383, '一', '一', '计算机网络技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (384, '多媒体信息处理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (385, '一', '一', '一', '一', '计算机网络技术', '计算机网络技术', '一');
INSERT INTO `week` VALUES (386, '一', '多媒体信息处理', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (387, '一', '一', '计算机网络技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (388, '一', '一', '一', '计算机网络技术', '一', '一', '一');
INSERT INTO `week` VALUES (389, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (390, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (391, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (392, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (393, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (394, '一', '电路分析', '电路分析', '电路分析', '一', '一', '一');
INSERT INTO `week` VALUES (395, '光纤通讯', '一', '一', '一', '程控交换技术', '程控交换技术', '电路分析');
INSERT INTO `week` VALUES (396, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (397, '一', '一', '光纤通讯', '一', '一', '一', '一');
INSERT INTO `week` VALUES (398, '一', '电路分析', '一', '电路分析', '光纤通讯', '一', '一');
INSERT INTO `week` VALUES (399, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (400, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (401, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (402, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (403, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (404, '一', '电路分析', '一', '程控交换技术', '一', '移动通讯', '一');
INSERT INTO `week` VALUES (405, '程控交换技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (406, '一', '一', '一', '一', '程控交换技术', '一', '程控交换技术');
INSERT INTO `week` VALUES (407, '一', '一', '电路分析', '一', '一', '光纤通讯', '一');
INSERT INTO `week` VALUES (408, '电路分析', '电路分析', '一', '一', '一', '一', '光纤通讯');
INSERT INTO `week` VALUES (409, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (410, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (411, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (412, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (413, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (414, '程控交换技术', '高频电子线路', '高频电子线路', '光纤通讯', '光纤通讯', '一', '一');
INSERT INTO `week` VALUES (415, '一', '一', '一', '一', '一', '一', '光纤通讯');
INSERT INTO `week` VALUES (416, '一', '一', '光纤通讯', '电路分析', '一', '一', '一');
INSERT INTO `week` VALUES (417, '一', '光纤通讯', '一', '一', '光纤通讯', '电路分析', '一');
INSERT INTO `week` VALUES (418, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (419, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (420, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (421, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (422, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (423, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (424, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (425, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (426, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (427, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (428, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (429, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (430, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (431, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (432, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (433, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (434, '线性代数', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (435, '一', '一', '一', '线性代数', '电子技术', '一', '一');
INSERT INTO `week` VALUES (436, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (437, '一', '一', '电子技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (438, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (439, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (440, '一', '体育', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (441, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (442, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (443, '体育', '一', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES (444, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (445, '一', '一', '一', '一', '线性代数', '一', '一');
INSERT INTO `week` VALUES (446, '一', '线性代数', '一', '一', '一', '大学英语', '一');
INSERT INTO `week` VALUES (447, '电子技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (448, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (449, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (450, '一', '一', '一', '线性代数', '一', '一', '一');
INSERT INTO `week` VALUES (451, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (452, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (453, '电子技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (454, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (455, '一', '线性代数', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (456, '一', '一', '一', '一', '一', '电子技术', '一');
INSERT INTO `week` VALUES (457, '一', '一', '电子技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (458, '一', '一', '一', '一', '数字电路基础', '一', '一');
INSERT INTO `week` VALUES (459, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (460, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (461, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (462, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (463, '一', '一', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES (464, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (465, '一', '线性代数', '一', '一', '大学英语', '大学英语', '一');
INSERT INTO `week` VALUES (466, '大学英语', '一', '一', '大学英语', '一', '一', '一');
INSERT INTO `week` VALUES (467, '一', '一', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES (468, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (469, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (470, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (471, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (472, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (473, '一', '大学英语', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (474, '线性代数', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (475, '一', '线性代数', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (476, '一', '一', '一', '一', '电子技术', '一', '一');
INSERT INTO `week` VALUES (477, '一', '一', '一', '电子技术', '一', '一', '一');
INSERT INTO `week` VALUES (478, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (479, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (480, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (481, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (482, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (483, '多媒体技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (484, '一', '电子技术', '一', '电子技术', '一', '一', '一');
INSERT INTO `week` VALUES (485, '一', '一', '体育', '一', '一', '一', '一');
INSERT INTO `week` VALUES (486, '一', '一', '一', '线性代数', '一', '一', '一');
INSERT INTO `week` VALUES (487, '线性代数', '一', '一', '一', '一', '线性代数', '一');
INSERT INTO `week` VALUES (488, '一', '数字电路基础', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (489, '一', '一', '一', '一', '数字电路基础', '一', '一');
INSERT INTO `week` VALUES (490, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (491, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (492, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (493, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (494, '线性代数', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (495, '一', '一', '一', '一', '大学英语', '一', '一');
INSERT INTO `week` VALUES (496, '一', '一', '线性代数', '大学英语', '一', '一', '一');
INSERT INTO `week` VALUES (497, '一', '线性代数', '一', '一', '一', '电子技术', '一');
INSERT INTO `week` VALUES (498, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (499, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (500, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (501, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (502, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (503, '大学英语', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (504, '一', '一', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES (505, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (506, '一', '大学英语', '一', '一', '电子技术', '电子技术', '一');
INSERT INTO `week` VALUES (507, '一', '一', '电子技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (508, '一', '一', '一', '多媒体技术', '一', '一', '一');
INSERT INTO `week` VALUES (509, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (510, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (511, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (512, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (513, '一', '一', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES (514, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (515, '线性代数', '体育', '一', '一', '一', '电子技术', '一');
INSERT INTO `week` VALUES (516, '一', '一', '一', '一', '一', '一', '线性代数');
INSERT INTO `week` VALUES (517, '一', '一', '体育', '一', '线性代数', '一', '一');
INSERT INTO `week` VALUES (518, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (519, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (520, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (521, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (522, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (523, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (524, '一', '一', '一', '复变函数', '一', '一', '一');
INSERT INTO `week` VALUES (525, '线性代数', '一', '大学英语', '一', '大学英语', '一', '一');
INSERT INTO `week` VALUES (526, '一', '一', '一', '一', '一', '电子技术', '一');
INSERT INTO `week` VALUES (527, '一', '电子技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (528, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (529, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (530, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (531, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (532, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (533, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (534, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (535, '线性代数', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (536, '一', '电子技术', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES (537, '一', '一', '一', '大学物理', '一', '一', '一');
INSERT INTO `week` VALUES (538, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (539, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (540, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (541, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (542, '大学英语', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (543, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (544, '一', '一', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES (545, '一', '电子技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (546, '一', '一', '电子技术', '大学英语', '大学英语', '体育', '线性代数');
INSERT INTO `week` VALUES (547, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (548, '一', '一', '一', '数字电路基础', '一', '一', '一');
INSERT INTO `week` VALUES (549, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (550, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (551, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (552, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (553, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (554, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (555, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (556, '电子技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (557, '一', '大学英语', '一', '电子技术', '线性代数', '一', '一');
INSERT INTO `week` VALUES (558, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (559, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (560, '一', '一', '线性代数', '一', '一', '一', '一');
INSERT INTO `week` VALUES (561, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (562, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (563, '电子技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (564, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (565, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (566, '一', '一', '线性代数', '线性代数', '线性代数', '一', '一');
INSERT INTO `week` VALUES (567, '电子技术', '一', '一', '一', '一', '线性代数', '一');
INSERT INTO `week` VALUES (568, '一', '数字电路基础', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (569, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (570, '一', '一', '一', '一', '一', '一', '线性代数');
INSERT INTO `week` VALUES (571, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (572, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (573, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (574, '电子技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (575, '一', '电子技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (576, '一', '一', '线性代数', '大学英语', '一', '一', '一');
INSERT INTO `week` VALUES (577, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (578, '一', '一', '一', '一', '体育', '一', '一');
INSERT INTO `week` VALUES (579, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (580, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (581, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (582, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (583, '一', '一', '一', '一', '一', '现代传感器技术', '一');
INSERT INTO `week` VALUES (584, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (585, '信号与系统概论', '一', '一', '现代传感器技术', '一', '一', '一');
INSERT INTO `week` VALUES (586, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (587, '一', '一', '信号与系统概论', '一', '信号与系统概论', '物联网工程导论', '一');
INSERT INTO `week` VALUES (588, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (589, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (590, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (591, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (592, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (593, '一', '信号与系统概论', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (594, '一', '一', '一', '一', '物联网安全', '物联网安全', '一');
INSERT INTO `week` VALUES (595, '物联网安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (596, '一', '一', '现代传感器技术', '现代传感器技术', '一', '一', '一');
INSERT INTO `week` VALUES (597, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (598, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (599, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (600, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (601, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (602, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (603, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (604, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (605, '物联网工程导论', '现代传感器技术', '一', '一', '现代传感器技术', '一', '一');
INSERT INTO `week` VALUES (606, '一', '一', '物联网工程导论', '现代传感器技术', '一', '现代传感器技术', '一');
INSERT INTO `week` VALUES (607, '一', '一', '一', '一', '现代传感器技术', '一', '一');
INSERT INTO `week` VALUES (608, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (609, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (610, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (611, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (612, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (613, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (614, '一', '一', '信号与系统概论', '一', '一', '一', '一');
INSERT INTO `week` VALUES (615, '物联网工程导论', '现代传感器技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (616, '一', '一', '信号与系统概论', '一', '一', '一', '一');
INSERT INTO `week` VALUES (617, '一', '一', '一', '现代传感器技术', '一', '一', '一');
INSERT INTO `week` VALUES (618, '一', '一', '一', '一', '物联网安全', '信号与系统概论', '一');
INSERT INTO `week` VALUES (619, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (620, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (621, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (622, '一', '一', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (623, '现代传感器技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (624, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (625, '一', '一', '信号与系统概论', '一', '信号与系统概论', '现代传感器技术', '一');
INSERT INTO `week` VALUES (626, '一', '信号与系统概论', '一', '信号与系统概论', '一', '一', '一');
INSERT INTO `week` VALUES (627, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (628, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (629, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (630, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (631, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (632, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (633, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (634, '现代传感器技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (635, '一', '信号与系统概论', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (636, '一', '一', '信号与系统概论', '一', '现代传感器技术', '信号与系统概论', '一');
INSERT INTO `week` VALUES (637, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (638, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (639, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (640, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (641, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (642, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (643, '物联网安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (644, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (645, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (646, '现代传感器技术', '一', '物联网工程导论', '物联网工程导论', '一', '一', '一');
INSERT INTO `week` VALUES (647, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (648, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (649, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (650, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (651, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (652, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (653, '信号与系统概论', '一', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (654, '一', '信号与系统概论', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (655, '一', '一', '一', '信号与系统概论', '信号与系统概论', '一', '一');
INSERT INTO `week` VALUES (656, '一', '物联网工程导论', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (657, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (658, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (659, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (660, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (661, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (662, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (663, '信号与系统概论', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (664, '一', '物联网工程导论', '信号与系统概论', '一', '一', '一', '一');
INSERT INTO `week` VALUES (665, '一', '一', '一', '信号与系统概论', '一', '一', '一');
INSERT INTO `week` VALUES (666, '一', '一', '一', '一', '信号与系统概论', '一', '一');
INSERT INTO `week` VALUES (667, '一', '物联网工程导论', '信号与系统概论', '一', '一', '物联网工程导论', '一');
INSERT INTO `week` VALUES (668, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (669, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (670, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (671, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (672, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (673, '信号与系统概论', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (674, '一', '信号与系统概论', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (675, '一', '一', '信号与系统概论', '现代传感器技术', '一', '一', '一');
INSERT INTO `week` VALUES (676, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (677, '一', '一', '一', '物联网安全', '一', '信号与系统概论', '一');
INSERT INTO `week` VALUES (678, '一', '一', '一', '一', '现代传感器技术', '一', '一');
INSERT INTO `week` VALUES (679, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (680, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (681, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (682, '一', '一', '一', '物联网安全', '一', '一', '一');
INSERT INTO `week` VALUES (683, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (684, '信号与系统概论', '一', '一', '一', '信号与系统概论', '一', '一');
INSERT INTO `week` VALUES (685, '一', '一', '一', '一', '一', '物联网工程导论', '一');
INSERT INTO `week` VALUES (686, '一', '信号与系统概论', '信号与系统概论', '一', '一', '一', '一');
INSERT INTO `week` VALUES (687, '一', '一', '一', '信号与系统概论', '一', '信号与系统概论', '一');
INSERT INTO `week` VALUES (688, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (689, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (690, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (691, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (692, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (693, '一', '一', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (694, '一', '信号与系统概论', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (695, '物联网安全', '一', '信号与系统概论', '一', '一', '一', '一');
INSERT INTO `week` VALUES (696, '一', '一', '一', '现代传感器技术', '一', '一', '一');
INSERT INTO `week` VALUES (697, '一', '一', '一', '一', '信号与系统概论', '一', '一');
INSERT INTO `week` VALUES (698, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (699, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (700, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (701, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (702, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (703, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (704, '一', '一', '信号与系统概论', '一', '物联网安全', '物联网安全', '一');
INSERT INTO `week` VALUES (705, '信号与系统概论', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (706, '一', '物联网工程导论', '一', '信号与系统概论', '一', '一', '一');
INSERT INTO `week` VALUES (707, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (708, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (709, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (710, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (711, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (712, '物联网安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (713, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (714, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (715, '一', '一', '信号与系统概论', '一', '一', '一', '一');
INSERT INTO `week` VALUES (716, '一', '物联网工程导论', '一', '一', '信号与系统概论', '一', '一');
INSERT INTO `week` VALUES (717, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (718, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (719, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (720, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (721, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (722, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (723, '一', '无线传感器网络', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (724, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (725, '一', '一', '一', '信号与系统概论', '一', '一', '一');
INSERT INTO `week` VALUES (726, '信号与系统概论', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (727, '一', '一', '一', '一', '现代传感器技术', '一', '一');
INSERT INTO `week` VALUES (728, '一', '一', '信号与系统概论', '一', '一', '一', '一');
INSERT INTO `week` VALUES (729, '现代通信技术', '一', '一', '物联网安全', '一', '一', '一');
INSERT INTO `week` VALUES (730, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (731, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (732, '计算机网络技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (733, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (734, '一', '多媒体信息处理', '多媒体信息处理', '一', '一', '一', '一');
INSERT INTO `week` VALUES (735, '一', '一', '一', '算法与数据结构', '一', '一', '一');
INSERT INTO `week` VALUES (736, '一', '一', '一', '一', '计算机网络技术', '计算机网络技术', '一');
INSERT INTO `week` VALUES (737, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (738, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (739, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (740, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (741, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (742, '计算机安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (743, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (744, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (745, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (746, '一', '多媒体信息处理', '网络与通信', '计算机安全', '计算机网络技术', '一', '一');
INSERT INTO `week` VALUES (747, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (748, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (749, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (750, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (751, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (752, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (753, '一', '计算机网络技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (754, '计算机网络技术', '一', '一', '计算机网络技术', '一', '计算机安全', '计算机网络技术');
INSERT INTO `week` VALUES (755, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (756, '一', '计算机网络技术', '计算机网络技术', '计算机网络技术', '计算机网络技术', '一', '一');
INSERT INTO `week` VALUES (757, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (758, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (759, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (760, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (761, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (762, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (763, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (764, '计算机网络技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (765, '一', '一', '一', '一', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (766, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (767, '多媒体信息处理', '多媒体信息处理', '计算机网络技术', '多媒体信息处理', '一', '一', '一');
INSERT INTO `week` VALUES (768, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (769, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (770, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (771, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (772, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (773, '计算机网络技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (774, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (775, '计算机网络技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (776, '一', '一', '计算机网络技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (777, '多媒体信息处理', '网络与通信', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (778, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (779, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (780, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (781, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (782, '网络与通信', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (783, '一', '一', '多媒体信息处理', '一', '一', '一', '一');
INSERT INTO `week` VALUES (784, '一', '一', '一', '计算机安全', '一', '一', '一');
INSERT INTO `week` VALUES (785, '一', '计算机网络技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (786, '一', '一', '一', '一', '计算机网络技术', '计算机网络技术', '一');
INSERT INTO `week` VALUES (787, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (788, '一', '一', '一', '一', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (789, '一', '一', '一', '一', '一', '计算机安全', '一');
INSERT INTO `week` VALUES (790, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (791, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (792, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (793, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (794, '计算机安全', '一', '计算机安全', '一', '一', '一', '一');
INSERT INTO `week` VALUES (795, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (796, '一', '一', '一', '计算机网络技术', '计算机网络技术', '计算机网络技术', '一');
INSERT INTO `week` VALUES (797, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (798, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (799, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (800, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (801, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (802, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (803, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (804, '计算机网络技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (805, '一', '计算机安全', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (806, '一', '一', '多媒体信息处理', '多媒体信息处理', '一', '一', '一');
INSERT INTO `week` VALUES (807, '一', '一', '一', '一', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (808, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (809, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (810, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (811, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (812, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (813, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (814, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (815, '多媒体信息处理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (816, '一', '一', '一', '一', '计算机网络技术', '一', '一');
INSERT INTO `week` VALUES (817, '一', '一', '计算机网络技术', '计算机网络技术', '一', '一', '一');
INSERT INTO `week` VALUES (818, '多媒体信息处理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (819, '一', '计算机安全', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (820, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (821, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (822, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (823, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (824, '计算机安全', '一', '一', '一', '一', '算法与数据结构', '一');
INSERT INTO `week` VALUES (825, '一', '一', '计算机网络技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (826, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (827, '一', '一', '一', '计算机网络技术', '计算机网络技术', '计算机网络技术', '一');
INSERT INTO `week` VALUES (828, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (829, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (830, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (831, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (832, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (833, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (834, '多媒体信息处理', '一', '一', '计算机网络技术', '一', '一', '多媒体信息处理');
INSERT INTO `week` VALUES (835, '一', '一', '一', '一', '多媒体信息处理', '计算机网络技术', '一');
INSERT INTO `week` VALUES (836, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (837, '计算机网络技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (838, '一', '多媒体信息处理', '计算机网络技术', '多媒体信息处理', '一', '一', '一');
INSERT INTO `week` VALUES (839, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (840, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (841, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (842, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (843, '一', '一', '一', '一', '网络与通信', '一', '一');
INSERT INTO `week` VALUES (844, '多媒体信息处理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (845, '一', '计算机网络技术', '计算机网络技术', '算法与数据结构', '计算机安全', '计算机网络技术', '一');
INSERT INTO `week` VALUES (846, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (847, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (848, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (849, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (850, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (851, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (852, '多媒体信息处理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (853, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (854, '一', '计算机安全', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (855, '一', '一', '网络与通信', '多媒体信息处理', '计算机网络技术', '计算机网络技术', '一');
INSERT INTO `week` VALUES (856, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (857, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (858, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (859, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (860, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (861, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (862, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (863, '计算机网络技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (864, '一', '计算机安全', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (865, '一', '一', '多媒体信息处理', '多媒体信息处理', '计算机网络技术', '计算机网络技术', '一');
INSERT INTO `week` VALUES (866, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (867, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (868, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (869, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (870, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (871, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (872, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (873, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (874, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (875, '多媒体信息处理', '多媒体信息处理', '计算机网络技术', '计算机网络技术', '一', '一', '一');
INSERT INTO `week` VALUES (876, '一', '一', '一', '一', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (877, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (878, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (879, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (880, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (881, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (882, '计算机安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (883, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (884, '一', '一', '多媒体信息处理', '计算机网络技术', '一', '一', '一');
INSERT INTO `week` VALUES (885, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (886, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (887, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (888, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (889, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (890, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (891, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (892, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (893, '多媒体信息处理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (894, '一', '计算机网络技术', '一', '计算机安全', '一', '一', '一');
INSERT INTO `week` VALUES (895, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (896, '一', '一', '网络与通信', '一', '一', '一', '一');
INSERT INTO `week` VALUES (897, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (898, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (899, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (900, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (901, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (902, '一', '程控交换技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (903, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (904, '一', '一', '光纤通讯', '一', '一', '一', '一');
INSERT INTO `week` VALUES (905, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (906, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (907, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (908, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (909, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (910, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (911, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (912, '通信原理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (913, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (914, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (915, '一', '一', '高频电子线路', '一', '一', '一', '一');
INSERT INTO `week` VALUES (916, '一', '一', '一', '光纤通讯', '电路分析', '程控交换技术', '一');
INSERT INTO `week` VALUES (917, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (918, '一', '一', '光纤通讯', '光纤通讯', '一', '一', '一');
INSERT INTO `week` VALUES (919, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (920, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (921, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (922, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (923, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (924, '高频电子线路', '程控交换技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (925, '一', '一', '一', '程控交换技术', '一', '一', '一');
INSERT INTO `week` VALUES (926, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (927, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (928, '一', '一', '一', '高频电子线路', '一', '一', '一');
INSERT INTO `week` VALUES (929, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (930, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (931, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (932, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (933, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (934, '一', '一', '程控交换技术', '程控交换技术', '电路分析', '一', '一');
INSERT INTO `week` VALUES (935, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (936, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (937, '一', '一', '光纤通讯', '一', '一', '一', '一');
INSERT INTO `week` VALUES (938, '光纤通讯', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (939, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (940, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (941, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (942, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (943, '光纤通讯', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (944, '一', '电路分析', '一', '电路分析', '一', '一', '一');
INSERT INTO `week` VALUES (945, '一', '一', '电路分析', '一', '程控交换技术', '移动通讯', '一');
INSERT INTO `week` VALUES (946, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (947, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (948, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (949, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (950, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (951, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (952, '程控交换技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (953, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (954, '一', '电路分析', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (955, '一', '一', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (956, '一', '一', '一', '电路分析', '程控交换技术', '一', '一');
INSERT INTO `week` VALUES (957, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (958, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (959, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (960, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (961, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (962, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (963, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (964, '光纤通讯', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (965, '一', '一', '程控交换技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (966, '一', '光纤通讯', '一', '光纤通讯', '光纤通讯', '一', '一');
INSERT INTO `week` VALUES (967, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (968, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (969, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (970, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (971, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (972, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (973, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (974, '电路分析', '一', '程控交换技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (975, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (976, '一', '一', '光纤通讯', '光纤通讯', '一', '一', '一');
INSERT INTO `week` VALUES (977, '一', '一', '高频电子线路', '一', '一', '一', '一');
INSERT INTO `week` VALUES (978, '一', '一', '高频电子线路', '一', '一', '一', '一');
INSERT INTO `week` VALUES (979, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (980, '一', '一', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (981, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (982, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (983, '一', '程控交换技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (984, '一', '光纤通讯', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (985, '高频电子线路', '光纤通讯', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (986, '高频电子线路', '一', '一', '光纤通讯', '一', '一', '一');
INSERT INTO `week` VALUES (987, '高频电子线路', '高频电子线路', '光纤通讯', '一', '高频电子线路', '一', '一');
INSERT INTO `week` VALUES (988, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (989, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (990, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (991, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (992, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (993, '高频电子线路', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (994, '一', '光纤通讯', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (995, '一', '一', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (996, '一', '一', '一', '光纤通讯', '一', '电路分析', '一');
INSERT INTO `week` VALUES (997, '一', '一', '一', '一', '光纤通讯', '一', '一');
INSERT INTO `week` VALUES (998, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (999, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1000, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1001, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1002, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1003, '光纤通讯', '一', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1004, '一', '电路分析', '一', '电路分析', '一', '一', '一');
INSERT INTO `week` VALUES (1005, '一', '一', '一', '一', '程控交换技术', '一', '一');
INSERT INTO `week` VALUES (1006, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1007, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1008, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1009, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1010, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1011, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1012, '程控交换技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1013, '一', '一', '一', '一', '程控交换技术', '一', '一');
INSERT INTO `week` VALUES (1014, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1015, '光纤通讯', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1016, '一', '一', '光纤通讯', '电路分析', '一', '一', '一');
INSERT INTO `week` VALUES (1017, '一', '光纤通讯', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1018, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1019, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1020, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1021, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1022, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1023, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1024, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1025, '光纤通讯', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1026, '一', '光纤通讯', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1027, '一', '一', '一', '光纤通讯', '一', '一', '一');
INSERT INTO `week` VALUES (1028, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1029, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1030, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1031, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1032, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1033, '光纤通讯', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1034, '一', '电路分析', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1035, '一', '一', '电路分析', '电路分析', '移动通讯', '一', '一');
INSERT INTO `week` VALUES (1036, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1037, '一', '一', '一', '一', '一', '光纤通讯', '一');
INSERT INTO `week` VALUES (1038, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1039, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1040, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1041, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1042, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1043, '光纤通讯', '一', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1044, '一', '高频电子线路', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1045, '一', '光纤通讯', '高频电子线路', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1046, '一', '一', '一', '高频电子线路', '一', '一', '一');
INSERT INTO `week` VALUES (1047, '一', '光纤通讯', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1048, '一', '光纤通讯', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1049, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1050, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1051, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1052, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1053, '电路分析', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1054, '一', '电路分析', '程控交换技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1055, '一', '一', '一', '一', '程控交换技术', '光纤通讯', '一');
INSERT INTO `week` VALUES (1056, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1057, '一', '一', '光纤通讯', '一', '一', '光纤通讯', '一');
INSERT INTO `week` VALUES (1058, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1059, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1060, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1061, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1062, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1063, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1064, '电路分析', '程控交换技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1065, '程控交换技术', '一', '电路分析', '程控交换技术', '程控交换技术', '一', '一');
INSERT INTO `week` VALUES (1066, '光纤通讯', '高频电子线路', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1067, '光纤通讯', '高频电子线路', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1068, '一', '高频电子线路', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1069, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1070, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1071, '计算机安全', '一', '算法与数据结构', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1072, '一', '计算机网络技术', '一', '一', '计算机组成原理', '一', '一');
INSERT INTO `week` VALUES (1073, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1074, '一', '一', '多媒体信息处理', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1075, '算法与数据结构', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1076, '一', '一', '一', '计算机网络技术', '网络与通信', '一', '一');
INSERT INTO `week` VALUES (1077, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1078, '一', '网络与通信', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1079, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1080, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1081, '一', '计算机组成原理', '一', '计算机安全', '一', '一', '一');
INSERT INTO `week` VALUES (1082, '算法与数据结构', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1083, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1084, '一', '一', '网络与通信', '一', '算法与数据结构', '一', '一');
INSERT INTO `week` VALUES (1085, '一', '一', '一', '一', '算法与数据结构', '一', '一');
INSERT INTO `week` VALUES (1086, '一', '一', '一', '网络与通信', '一', '一', '一');
INSERT INTO `week` VALUES (1087, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1088, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1089, '计算机组成原理', '一', '计算机网络技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1090, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1091, '一', '现代通信技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1092, '一', '一', '一', '一', '信号与系统概论', '一', '一');
INSERT INTO `week` VALUES (1093, '物联网安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1094, '一', '一', '一', '物联网工程导论', '一', '一', '一');
INSERT INTO `week` VALUES (1095, '一', '一', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1096, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1097, '一', '一', '一', '无线传感器网络', '一', '一', '一');
INSERT INTO `week` VALUES (1098, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1099, '现代传感器技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1100, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1101, '无线传感器网络', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1102, '一', '一', '现代通信技术', '一', '无线传感器网络', '一', '一');
INSERT INTO `week` VALUES (1103, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1104, '一', '物联网工程导论', '一', '物联网工程导论', '一', '一', '一');
INSERT INTO `week` VALUES (1105, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1106, '物联网安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1107, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1108, '一', '一', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1109, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1110, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1111, '计算机组成原理', '一', '一', '一', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (1112, '一', '一', '多媒体信息处理', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1113, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1114, '一', '一', '一', '计算机组成原理', '一', '一', '一');
INSERT INTO `week` VALUES (1115, '一', '计算机网络技术', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1116, '一', '一', '一', '一', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (1117, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1118, '一', '一', '一', '一', '算法与数据结构', '一', '一');
INSERT INTO `week` VALUES (1119, '一', '一', '一', '网络与通信', '一', '一', '一');
INSERT INTO `week` VALUES (1120, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1121, '通信原理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1122, '一', '电路分析', '一', '一', '高频电子线路', '一', '一');
INSERT INTO `week` VALUES (1123, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1124, '一', '一', '一', '程控交换技术', '一', '一', '一');
INSERT INTO `week` VALUES (1125, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1126, '通信原理', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1127, '一', '一', '光纤通讯', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1128, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1129, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1130, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1131, '通信原理', '一', '通信原理', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1132, '一', '高频电子线路', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1133, '一', '一', '一', '高频电子线路', '一', '一', '一');
INSERT INTO `week` VALUES (1134, '一', '一', '通信原理', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1135, '一', '一', '一', '一', '通信原理', '一', '一');
INSERT INTO `week` VALUES (1136, '光纤通讯', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1137, '一', '一', '移动通讯', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1138, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1139, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1140, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1141, '移动通讯', '一', '一', '通信原理', '一', '一', '一');
INSERT INTO `week` VALUES (1142, '一', '一', '移动通讯', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1143, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1144, '一', '一', '一', '一', '电路分析', '一', '一');
INSERT INTO `week` VALUES (1145, '一', '高频电子线路', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1146, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1147, '一', '一', '一', '通信原理', '一', '一', '一');
INSERT INTO `week` VALUES (1148, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1149, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1150, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1151, '物联网工程导论', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1152, '一', '信号与系统概论', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1153, '一', '信号与系统概论', '一', '无线传感器网络', '一', '一', '一');
INSERT INTO `week` VALUES (1154, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1155, '一', '一', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1156, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1157, '一', '一', '一', '一', '现代通信技术', '一', '一');
INSERT INTO `week` VALUES (1158, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1159, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1160, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1161, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1162, '一', '一', '一', '一', '物联网工程导论', '一', '一');
INSERT INTO `week` VALUES (1163, '一', '一', '物联网工程导论', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1164, '一', '信号与系统概论', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1165, '一', '一', '一', '现代通信技术', '一', '一', '一');
INSERT INTO `week` VALUES (1166, '物联网安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1167, '一', '一', '现代传感器技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1168, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1169, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1170, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1171, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1172, '一', '一', '一', '一', '算法与数据结构', '一', '一');
INSERT INTO `week` VALUES (1173, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1174, '一', '一', '算法与数据结构', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1175, '一', '计算机网络技术', '一', '多媒体信息处理', '一', '一', '一');
INSERT INTO `week` VALUES (1176, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1177, '一', '一', '多媒体信息处理', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1178, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1179, '计算机安全', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1180, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1181, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1182, '算法与数据结构', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1183, '一', '一', '计算机安全', '一', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (1184, '一', '多媒体信息处理', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1185, '一', '网络与通信', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1186, '一', '一', '一', '算法与数据结构', '一', '一', '一');
INSERT INTO `week` VALUES (1187, '一', '一', '计算机网络技术', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1188, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1189, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1190, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1191, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1192, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1193, '网络与通信', '一', '计算机安全', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1194, '一', '一', '一', '计算机网络技术', '多媒体信息处理', '一', '一');
INSERT INTO `week` VALUES (1195, '一', '计算机组成原理', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1196, '一', '一', '多媒体信息处理', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1197, '一', '一', '一', '算法与数据结构', '一', '一', '一');
INSERT INTO `week` VALUES (1198, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1199, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1200, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1201, '程控交换技术', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1202, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1203, '一', '一', '高频电子线路', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1204, '一', '光纤通讯', '一', '移动通讯', '电路分析', '一', '一');
INSERT INTO `week` VALUES (1205, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1206, '一', '一', '电路分析', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1207, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1208, '一', '一', '一', '程控交换技术', '一', '一', '一');
INSERT INTO `week` VALUES (1209, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1210, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1211, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1212, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1213, '电路分析', '一', '一', '一', '光纤通讯', '一', '一');
INSERT INTO `week` VALUES (1214, '一', '光纤通讯', '通信原理', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1215, '一', '一', '一', '程控交换技术', '一', '一', '一');
INSERT INTO `week` VALUES (1216, '一', '高频电子线路', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1217, '一', '一', '一', '移动通讯', '一', '一', '一');
INSERT INTO `week` VALUES (1218, '一', '一', '移动通讯', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1219, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1220, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1221, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1222, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1223, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1224, '通信原理', '一', '电路分析', '一', '光纤通讯', '一', '一');
INSERT INTO `week` VALUES (1225, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1226, '一', '移动通讯', '一', '高频电子线路', '一', '一', '一');
INSERT INTO `week` VALUES (1227, '一', '一', '一', '一', '光纤通讯', '一', '一');
INSERT INTO `week` VALUES (1228, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1229, '一', '一', '一', '一', '一', '一', '一');
INSERT INTO `week` VALUES (1230, '一', '一', '一', '一', '一', '一', '一');

SET FOREIGN_KEY_CHECKS = 1;
