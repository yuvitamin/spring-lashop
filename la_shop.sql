/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : la_shop

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 29/10/2019 19:37:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_business
-- ----------------------------
DROP TABLE IF EXISTS `t_business`;
CREATE TABLE `t_business`  (
  `business_id` int(11) NOT NULL AUTO_INCREMENT,
  `business_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cate_id` int(11) NOT NULL,
  PRIMARY KEY (`business_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_business
-- ----------------------------
INSERT INTO `t_business` VALUES (1, '良品铺子', 1);
INSERT INTO `t_business` VALUES (2, '三只松鼠', 1);
INSERT INTO `t_business` VALUES (3, '百草味', 1);
INSERT INTO `t_business` VALUES (4, '口水娃', 1);
INSERT INTO `t_business` VALUES (5, '卫龙', 1);
INSERT INTO `t_business` VALUES (6, '其妙', 2);
INSERT INTO `t_business` VALUES (7, '稻香村', 2);
INSERT INTO `t_business` VALUES (8, '好吃点', 2);
INSERT INTO `t_business` VALUES (9, '食为先', 2);
INSERT INTO `t_business` VALUES (10, '奥利奥', 2);

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category`  (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES (1, '点心/蛋糕');
INSERT INTO `t_category` VALUES (2, '饼干/膨化');
INSERT INTO `t_category` VALUES (3, '熟食/肉类');
INSERT INTO `t_category` VALUES (4, '素食/卤味');
INSERT INTO `t_category` VALUES (5, '坚果/炒货');
INSERT INTO `t_category` VALUES (6, '粮果/蜜饯');
INSERT INTO `t_category` VALUES (7, '巧克力');
INSERT INTO `t_category` VALUES (8, '海味/河鲜');
INSERT INTO `t_category` VALUES (9, '花茶/果茶');
INSERT INTO `t_category` VALUES (10, '品牌/礼包');

-- ----------------------------
-- Table structure for t_review
-- ----------------------------
DROP TABLE IF EXISTS `t_review`;
CREATE TABLE `t_review`  (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_date` datetime(6) NULL DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`review_id`) USING BTREE,
  INDEX `t_review_shop_id_ef411f83_fk_shop_shop_id`(`shop_id`) USING BTREE,
  INDEX `t_review_uid_f2dbbc6e_fk_user_uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_review
-- ----------------------------
INSERT INTO `t_review` VALUES (1, '很好', '2019-09-08 02:18:27.000000', 1, 1);
INSERT INTO `t_review` VALUES (2, '差评,山寨货', '2019-09-08 02:28:19.000000', 1, 1);
INSERT INTO `t_review` VALUES (3, '呵呵', '2019-09-08 02:28:42.000000', 1, 1);
INSERT INTO `t_review` VALUES (4, '很好', '2019-09-08 02:42:06.000000', 1, 1);

-- ----------------------------
-- Table structure for t_shop_image
-- ----------------------------
DROP TABLE IF EXISTS `t_shop_image`;
CREATE TABLE `t_shop_image`  (
  `shop_img_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`shop_img_id`) USING BTREE,
  INDEX `shop_image_shop_id_3aa69aaf_fk_shop_shop_id`(`shop_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10198 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_shop_image
-- ----------------------------
INSERT INTO `t_shop_image` VALUES (1, 1, 'type_single');

-- ----------------------------
-- Table structure for t_sub_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_sub_menu`;
CREATE TABLE `t_sub_menu`  (
  `sub_menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cate_id` int(11) NOT NULL,
  PRIMARY KEY (`sub_menu_id`) USING BTREE,
  INDEX `sub_menu_cate_id_0c298047_fk_category_cate_id`(`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sub_menu
-- ----------------------------
INSERT INTO `t_sub_menu` VALUES (1, '蛋糕', 1);
INSERT INTO `t_sub_menu` VALUES (2, '点心', 1);
INSERT INTO `t_sub_menu` VALUES (3, '饼干', 2);
INSERT INTO `t_sub_menu` VALUES (4, '膨化', 2);

-- ----------------------------
-- Table structure for t_sub_menu1
-- ----------------------------
DROP TABLE IF EXISTS `t_sub_menu1`;
CREATE TABLE `t_sub_menu1`  (
  `sub_menu2_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sub_menu_id` int(11) NOT NULL,
  PRIMARY KEY (`sub_menu2_id`) USING BTREE,
  INDEX `sub_menu2_sub_menu_id_322cba06_fk_sub_menu_sub_menu_id`(`sub_menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 181 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sub_menu1
-- ----------------------------
INSERT INTO `t_sub_menu1` VALUES (1, '蒸蛋糕', 1);
INSERT INTO `t_sub_menu1` VALUES (2, '脱水蛋糕', 1);
INSERT INTO `t_sub_menu1` VALUES (3, '杏仁佛手', 2);
INSERT INTO `t_sub_menu1` VALUES (4, '鸳鸯卷', 2);
INSERT INTO `t_sub_menu1` VALUES (5, '合意饼', 3);
INSERT INTO `t_sub_menu1` VALUES (6, '咸饼干', 3);
INSERT INTO `t_sub_menu1` VALUES (7, '面包', 4);
INSERT INTO `t_sub_menu1` VALUES (8, '馒头', 4);
INSERT INTO `t_sub_menu1` VALUES (9, '鸡蛋糕', 1);
INSERT INTO `t_sub_menu1` VALUES (10, '蛋黄派点心', 2);
INSERT INTO `t_sub_menu1` VALUES (11, '威化饼干', 3);
INSERT INTO `t_sub_menu1` VALUES (12, '三明治', 4);

SET FOREIGN_KEY_CHECKS = 1;
