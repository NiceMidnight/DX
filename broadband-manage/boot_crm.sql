/*
 Navicat MySQL Data Transfer

 Source Server         : J2EE
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : boot_crm

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 22/12/2022 19:03:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for base_dict
-- ----------------------------
DROP TABLE IF EXISTS `base_dict`;
CREATE TABLE `base_dict`  (
  `dict_id` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '数据字典项目名称',
  `dict_item_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '数据字典项目代码(可为空)',
  `dict_sort` int NULL DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '1:使用 0:停用',
  `dict_memo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of base_dict
-- ----------------------------
INSERT INTO `base_dict` VALUES ('1', '001', '客户所属专业', '计算机科学与技术', NULL, 1, '1', NULL);
INSERT INTO `base_dict` VALUES ('10', '003', '公司性质', '民企', NULL, 3, '1', NULL);
INSERT INTO `base_dict` VALUES ('11', '002', '宽带地址', '北三追梦楼', NULL, 3, '1', NULL);
INSERT INTO `base_dict` VALUES ('12', '004', '年营业额', '1-10万', NULL, 1, '1', NULL);
INSERT INTO `base_dict` VALUES ('13', '004', '年营业额', '10-20万', NULL, 2, '1', NULL);
INSERT INTO `base_dict` VALUES ('14', '004', '年营业额', '20-50万', NULL, 3, '1', NULL);
INSERT INTO `base_dict` VALUES ('15', '004', '年营业额', '50-100万', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('16', '004', '年营业额', '100-500万', NULL, 5, '1', NULL);
INSERT INTO `base_dict` VALUES ('17', '004', '年营业额', '500-1000万', NULL, 6, '1', NULL);
INSERT INTO `base_dict` VALUES ('18', '005', '客户状态', '基础客户', NULL, 1, '1', NULL);
INSERT INTO `base_dict` VALUES ('19', '005', '客户状态', '潜在客户', NULL, 2, '1', NULL);
INSERT INTO `base_dict` VALUES ('2', '001', '客户所属专业', '电子商务', NULL, 2, '1', NULL);
INSERT INTO `base_dict` VALUES ('20', '005', '客户状态', '成功客户', NULL, 3, '1', NULL);
INSERT INTO `base_dict` VALUES ('21', '005', '客户状态', '无效客户', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('22', '006', '客户级别', '月付用户', NULL, 1, '1', NULL);
INSERT INTO `base_dict` VALUES ('23', '006', '客户级别', '年付用户', NULL, 2, '1', NULL);
INSERT INTO `base_dict` VALUES ('24', '007', '商机状态', '意向客户', NULL, 1, '1', NULL);
INSERT INTO `base_dict` VALUES ('25', '007', '商机状态', '初步沟通', NULL, 2, '1', NULL);
INSERT INTO `base_dict` VALUES ('26', '007', '商机状态', '深度沟通', NULL, 3, '1', NULL);
INSERT INTO `base_dict` VALUES ('27', '007', '商机状态', '签订合同', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('3', '001', '客户所属专业', '通信工程', NULL, 3, '1', NULL);
INSERT INTO `base_dict` VALUES ('30', '008', '商机类型', '新业务', NULL, 1, '1', NULL);
INSERT INTO `base_dict` VALUES ('31', '008', '商机类型', '现有业务', NULL, 2, '1', NULL);
INSERT INTO `base_dict` VALUES ('32', '009', '商机来源', '电话营销', NULL, 1, '1', NULL);
INSERT INTO `base_dict` VALUES ('33', '009', '商机来源', '推广活动', NULL, 2, '1', NULL);
INSERT INTO `base_dict` VALUES ('34', '009', '商机来源', '推广活动', NULL, 3, '1', NULL);
INSERT INTO `base_dict` VALUES ('35', '002', '宽带地址', '北四筑梦楼', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('36', '002', '宽带地址', '南一海崇楼', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('37', '002', '宽带地址', '南二海文楼', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('38', '002', '宽带地址', '南三海尚楼', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('39', '002', '宽带地址', '南四海德楼', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('4', '001', '客户所属专业', '电子信息工程', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('40', '002', '宽带地址', '南五海礼楼', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('41', '002', '宽带地址', '南六海智楼', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('42', '002', '宽带地址', '南七海信楼', NULL, 4, '1', NULL);
INSERT INTO `base_dict` VALUES ('5', '001', '客户所属专业', '软件工程', NULL, 5, '1', NULL);
INSERT INTO `base_dict` VALUES ('6', '002', '宽带地址', '北二启航楼', NULL, 1, '1', NULL);
INSERT INTO `base_dict` VALUES ('7', '002', '宽带地址', '北一扬帆楼', NULL, 2, '1', NULL);
INSERT INTO `base_dict` VALUES ('8', '003', '公司性质', '合资', NULL, 1, '1', NULL);
INSERT INTO `base_dict` VALUES ('9', '003', '公司性质', '国企', NULL, 2, '1', NULL);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `cust_id` int NOT NULL AUTO_INCREMENT COMMENT '客户编号(主键)',
  `cust_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '客户名称',
  `cust_user_id` int NULL DEFAULT NULL COMMENT '负责人id',
  `cust_create_id` int NULL DEFAULT NULL COMMENT '创建人id',
  `cust_source` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '客户信息来源',
  `cust_industry` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '客户所属行业',
  `cust_level` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '客户级别',
  `cust_linkman` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `cust_phone` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '固定电话',
  `cust_mobile` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '移动电话',
  `cust_zipcode` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮政编码',
  `cust_address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `cust_createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cust_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (15, '小韩', 123, 2, '7', '3', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:01');
INSERT INTO `customer` VALUES (16, '小李', 1, 3, '6', '2', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:01');
INSERT INTO `customer` VALUES (17, '小赵', 1, 4, '6', '4', '23', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:02');
INSERT INTO `customer` VALUES (22, '小明', 1, 3, '6', '2', '23', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:03');
INSERT INTO `customer` VALUES (25, 'Tom', 1, 3, '11', '2', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:03');
INSERT INTO `customer` VALUES (26, 'jack', 1, 2, '35', '2', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:03');
INSERT INTO `customer` VALUES (28, 'Rose', 1, 2, '6', '2', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES (29, '小韩', 1, 1, '7', '1', '23', '小雪', '020-88888887', '13888888886', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES (30, '小叶', 1, 2, '35', '2', '23', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES (31, '小韩', 1, 4, '7', '1', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES (33, '小海', 1, 3, '6', '2', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:04');
INSERT INTO `customer` VALUES (34, '小韩', 1, 4, '6', '2', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES (35, '小姜', 1, 3, '11', '2', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES (36, '小韩', 1, 4, '6', '2', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES (37, '小梦', 1, 3, '35', '2', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES (38, '小孙', 1, 3, '11', '2', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:05');
INSERT INTO `customer` VALUES (39, '小韩', 1, 3, '6', '2', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES (40, '小韩', 1, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES (41, '小韩', 1, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES (42, '小韩', 1, 1, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES (43, '小韩', 1, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:06');
INSERT INTO `customer` VALUES (44, '小韩', 1, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES (45, '小韩', 1, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES (46, '小韩', 1, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES (47, '小韩', 1, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES (48, '小高', 1, 5, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES (49, '小韩', 1, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:07');
INSERT INTO `customer` VALUES (51, '小韩', 1, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES (52, '小周', 1, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES (53, '小韩', 1, 1, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES (54, '小丽', 1, 1, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES (55, '小韩', 1, 1, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:08');
INSERT INTO `customer` VALUES (56, '小韩', 1, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:09');
INSERT INTO `customer` VALUES (57, '小韩', 1, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:09');
INSERT INTO `customer` VALUES (58, '张三', 1, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:09');
INSERT INTO `customer` VALUES (59, '李四', 1, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES (60, '小韩', 1, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES (61, '小韩', 1, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES (62, '小韩', 1, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:29');
INSERT INTO `customer` VALUES (63, '小韩', 1, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES (64, '小韩', 1, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES (65, '王五', 1, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES (66, '小韩', 1, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES (67, '小韩', 1, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES (68, '赵六', 1, 4, '35', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:30');
INSERT INTO `customer` VALUES (69, '小韩', NULL, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES (70, '小韩', NULL, 1, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES (71, '小韩', NULL, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES (72, '小韩', NULL, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES (73, '小七', NULL, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:31');
INSERT INTO `customer` VALUES (74, '小韩', NULL, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES (75, '小韩', NULL, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES (76, '小韩', NULL, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES (77, '小韩', NULL, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES (78, '小郑', NULL, 3, '35', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES (79, '小韩', NULL, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:32');
INSERT INTO `customer` VALUES (80, '小韩', NULL, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES (81, '小韩', NULL, 4, '6', '2', '23', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES (82, '小吴', NULL, 4, '11', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES (83, '小韩', NULL, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:33');
INSERT INTO `customer` VALUES (144, '小韩', NULL, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:44');
INSERT INTO `customer` VALUES (145, '小韩', NULL, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:44');
INSERT INTO `customer` VALUES (146, '小韩', NULL, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:44');
INSERT INTO `customer` VALUES (147, '小韩', NULL, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES (148, '小韩', NULL, 1, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES (149, '小韩', NULL, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES (150, '小韩', NULL, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES (151, '小韩', NULL, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:45');
INSERT INTO `customer` VALUES (152, '小韩', NULL, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES (153, '晶晶', NULL, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES (154, '倩倩', NULL, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES (155, '小韩', NULL, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES (156, '小韩', NULL, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES (157, '小韩', NULL, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:46');
INSERT INTO `customer` VALUES (158, '小韩', NULL, 1, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES (159, '小韩', NULL, 2, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES (160, '小韩', NULL, 3, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES (161, '小韩', NULL, 4, '6', '2', '22', '小雪', '010-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2016-04-08 16:32:47');
INSERT INTO `customer` VALUES (171, '小韩', NULL, 3, '7', '1', '23', '小雪', '010-8235438', '13755555555', '100000', '广东省广州市广州航海学院', '2017-05-05 10:23:07');
INSERT INTO `customer` VALUES (172, '小韩', NULL, 2, '6', '2', '22', '小雪', '010-0000000', '13288546521', '100859', '广东省广州市广州航海学院', '2017-05-05 10:51:08');
INSERT INTO `customer` VALUES (173, '小洛', NULL, 1, '6', '1', '22', '小雪', '01062872234', '13521023333', '100000', '广东省广州市广州航海学院', '2017-05-05 10:57:09');
INSERT INTO `customer` VALUES (174, '小月', NULL, 1, '6', '1', '22', '小雪', '0482-8235438', '13848399998', '137400', '广东省广州市广州航海学院', '2017-05-05 11:33:27');
INSERT INTO `customer` VALUES (175, '小韩', NULL, 1, '6', '1', '22', '小石', '0791-88130000', '15179105961', '330098', '广东省广州市广州航海学院', '2017-05-05 13:17:11');
INSERT INTO `customer` VALUES (180, '小张', 1, 4, '6', '5', '23', '小雪', '020-888888888', '020-888888888', '100096', '广东省广州市广州航海学院', '2022-12-22 18:34:27');
INSERT INTO `customer` VALUES (181, 'Jack', NULL, 3, '6', '3', '22', '小雪', '020-88888887', '13888888888', '100096', '广东省广州市广州航海学院', '2022-12-22 18:42:47');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `cust_name` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pay_date` datetime(0) NULL DEFAULT NULL,
  `due_date` datetime(0) NULL DEFAULT NULL,
  `order_cost` double NULL DEFAULT NULL,
  `pay_type` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `order_operator` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (4, 'Jack', '2021-01-01 15:45:06', '2022-01-01 15:45:18', 1000, '包年', '小李');
INSERT INTO `orders` VALUES (8, '小张', '2022-12-21 15:37:36', '2024-01-12 19:11:19', 500, '包月', '小陈');
INSERT INTO `orders` VALUES (9, '小张', '2022-12-12 19:11:19', '2023-12-12 19:11:19', 1000, '包年', '小雪');
INSERT INTO `orders` VALUES (10, '小韩', '2022-12-21 16:00:40', '2023-01-21 16:00:40', 500, '包月', '小陈');
INSERT INTO `orders` VALUES (11, 'Tom', '2022-12-22 18:32:18', '2023-02-21 15:37:38', 500, '包月', '小陈');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_code` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户账号',
  `user_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户密码',
  `user_state` int NOT NULL COMMENT '1:正常,0:暂停',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'm0001', '小韩', '123', 1);
INSERT INTO `sys_user` VALUES (2, 'm0002', '小雪', '123', 1);
INSERT INTO `sys_user` VALUES (3, 'm0003', '小石', '123', 1);
INSERT INTO `sys_user` VALUES (4, 'm0004', '小陈', '123', 1);

SET FOREIGN_KEY_CHECKS = 1;
