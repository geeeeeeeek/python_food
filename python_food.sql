/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_food

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 27/06/2023 19:10:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add tag', 13, 'add_tag');
INSERT INTO `auth_permission` VALUES (50, 'Can change tag', 13, 'change_tag');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tag', 13, 'delete_tag');
INSERT INTO `auth_permission` VALUES (52, 'Can view tag', 13, 'view_tag');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add thing', 15, 'add_thing');
INSERT INTO `auth_permission` VALUES (58, 'Can change thing', 15, 'change_thing');
INSERT INTO `auth_permission` VALUES (59, 'Can delete thing', 15, 'delete_thing');
INSERT INTO `auth_permission` VALUES (60, 'Can view thing', 15, 'view_thing');
INSERT INTO `auth_permission` VALUES (61, 'Can add record', 16, 'add_record');
INSERT INTO `auth_permission` VALUES (62, 'Can change record', 16, 'change_record');
INSERT INTO `auth_permission` VALUES (63, 'Can delete record', 16, 'delete_record');
INSERT INTO `auth_permission` VALUES (64, 'Can view record', 16, 'view_record');
INSERT INTO `auth_permission` VALUES (65, 'Can add order log', 17, 'add_orderlog');
INSERT INTO `auth_permission` VALUES (66, 'Can change order log', 17, 'change_orderlog');
INSERT INTO `auth_permission` VALUES (67, 'Can delete order log', 17, 'delete_orderlog');
INSERT INTO `auth_permission` VALUES (68, 'Can view order log', 17, 'view_orderlog');
INSERT INTO `auth_permission` VALUES (69, 'Can add order', 18, 'add_order');
INSERT INTO `auth_permission` VALUES (70, 'Can change order', 18, 'change_order');
INSERT INTO `auth_permission` VALUES (71, 'Can delete order', 18, 'delete_order');
INSERT INTO `auth_permission` VALUES (72, 'Can view order', 18, 'view_order');
INSERT INTO `auth_permission` VALUES (73, 'Can add comment', 19, 'add_comment');
INSERT INTO `auth_permission` VALUES (74, 'Can change comment', 19, 'change_comment');
INSERT INTO `auth_permission` VALUES (75, 'Can delete comment', 19, 'delete_comment');
INSERT INTO `auth_permission` VALUES (76, 'Can view comment', 19, 'view_comment');
INSERT INTO `auth_permission` VALUES (77, 'Can add banner', 20, 'add_banner');
INSERT INTO `auth_permission` VALUES (78, 'Can change banner', 20, 'change_banner');
INSERT INTO `auth_permission` VALUES (79, 'Can delete banner', 20, 'delete_banner');
INSERT INTO `auth_permission` VALUES (80, 'Can view banner', 20, 'view_banner');
INSERT INTO `auth_permission` VALUES (81, 'Can add address', 21, 'add_address');
INSERT INTO `auth_permission` VALUES (82, 'Can change address', 21, 'change_address');
INSERT INTO `auth_permission` VALUES (83, 'Can delete address', 21, 'delete_address');
INSERT INTO `auth_permission` VALUES (84, 'Can view address', 21, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------
INSERT INTO `b_address` VALUES (1, '刘德华', '333', '3333', 0, '2023-06-25 18:53:22.681173', 2);
INSERT INTO `b_address` VALUES (2, '刘德华', '333', '2222222', 0, '2023-06-27 18:41:03.478655', 4);

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '东北菜', '2023-06-26 18:36:59.316381');
INSERT INTO `b_classification` VALUES (2, '川菜', '2023-06-26 18:37:04.195783');
INSERT INTO `b_classification` VALUES (3, '粤菜', '2023-06-26 18:37:09.029553');
INSERT INTO `b_classification` VALUES (4, '淮南菜', '2023-06-26 18:37:22.294473');
INSERT INTO `b_classification` VALUES (5, '北京菜', '2023-06-26 18:37:27.984128');
INSERT INTO `b_classification` VALUES (6, '鲁菜', '2023-06-26 18:37:32.493468');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '多对多', '2023-06-27 18:33:44.768990', 0, 8, 2);
INSERT INTO `b_comment` VALUES (2, 'dda', '2023-06-27 18:34:42.602632', 0, 8, 2);
INSERT INTO `b_comment` VALUES (3, 'aaa', '2023-06-27 18:47:50.626920', 0, 8, 4);
INSERT INTO `b_comment` VALUES (4, 'ff', '2023-06-27 18:47:52.354385', 0, 8, 4);
INSERT INTO `b_comment` VALUES (5, 'ee', '2023-06-27 18:47:53.463961', 0, 8, 4);
INSERT INTO `b_comment` VALUES (6, 'a', '2023-06-27 18:47:54.536346', 0, 8, 4);
INSERT INTO `b_comment` VALUES (7, 'f', '2023-06-27 18:47:55.507940', 0, 8, 4);
INSERT INTO `b_comment` VALUES (8, 'e', '2023-06-27 18:47:56.416924', 0, 8, 4);
INSERT INTO `b_comment` VALUES (9, 'f', '2023-06-27 18:47:57.445983', 0, 8, 4);
INSERT INTO `b_comment` VALUES (10, 'da', '2023-06-27 18:47:58.461027', 0, 8, 4);
INSERT INTO `b_comment` VALUES (11, 'fe', '2023-06-27 18:47:59.566142', 0, 8, 4);
INSERT INTO `b_comment` VALUES (12, 'fa', '2023-06-27 18:48:01.110519', 0, 8, 4);
INSERT INTO `b_comment` VALUES (13, '3', '2023-06-27 19:01:50.873347', 0, 8, 4);
INSERT INTO `b_comment` VALUES (14, '4', '2023-06-27 19:01:52.318962', 0, 8, 4);
INSERT INTO `b_comment` VALUES (15, '3', '2023-06-27 19:01:53.485207', 0, 8, 4);
INSERT INTO `b_comment` VALUES (16, '4', '2023-06-27 19:01:54.408728', 0, 8, 4);
INSERT INTO `b_comment` VALUES (17, '3', '2023-06-27 19:01:55.407216', 0, 8, 4);
INSERT INTO `b_comment` VALUES (18, '2', '2023-06-27 19:04:30.375998', 0, 8, 4);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-23 15:17:14.226585');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-25 18:53:06.781565');
INSERT INTO `b_login_log` VALUES (3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-25 18:56:05.668031');
INSERT INTO `b_login_log` VALUES (4, 'aaa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-27 18:40:41.875256');
INSERT INTO `b_login_log` VALUES (5, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-27 18:43:32.516838');
INSERT INTO `b_login_log` VALUES (6, 'aaa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-27 19:07:06.135547');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1115 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-06-23 15:15:02.113728', '/adminLogin', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-06-23 15:15:02.167049', '/favicon.ico', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-06-23 15:15:15.090942', '/admin/', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-06-23 15:15:15.290005', '/admin/login/', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-06-23 15:15:45.058271', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-06-23 15:15:45.063272', '/myapp/index/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-06-23 15:15:45.081272', '/myapp/index/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-06-23 15:15:55.518359', '/myapp/admin/adminLogin', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-06-23 15:15:57.184737', '/myapp/admin/adminLogin', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-06-23 15:17:07.991249', '/myapp/admin/adminLogin', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-06-23 15:17:14.235190', '/myapp/admin/adminLogin', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-06-23 15:17:14.994989', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-06-23 15:17:15.002989', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-06-23 15:17:15.003987', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-06-23 15:17:52.132285', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-06-23 15:17:52.135285', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-06-23 15:17:52.137770', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-06-23 15:17:53.896949', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-06-23 15:17:55.236502', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-06-23 15:17:56.869653', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-06-23 15:17:56.870656', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-06-23 15:17:56.872667', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-06-23 15:18:02.120330', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-06-23 15:18:02.126329', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-06-23 15:18:02.132497', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-06-23 15:18:07.230578', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-06-23 21:44:28.730599', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-06-25 18:52:41.622575', '/myapp/index/address/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-06-25 18:52:49.423551', '/myapp/index/address/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-06-25 18:52:55.780180', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-06-25 18:52:57.952699', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-06-25 18:52:57.954742', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-06-25 18:52:57.959180', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-06-25 18:53:04.356390', '/myapp/index/user/register', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-06-25 18:53:06.790183', '/myapp/index/user/login', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-06-25 18:53:06.860348', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-06-25 18:53:06.861347', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-06-25 18:53:06.863348', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-06-25 18:53:12.913943', '/myapp/index/address/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-06-25 18:53:22.687171', '/myapp/index/address/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-06-25 18:53:25.826611', '/myapp/index/order/create', 'POST', NULL, '148');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-06-25 18:54:50.033105', '/myapp/index/order/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-06-25 18:54:59.279197', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-06-25 18:54:59.281232', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-06-25 18:54:59.287370', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-06-25 18:55:36.111219', '/myapp/index/comment/listMyComments', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-06-25 18:55:37.329958', '/myapp/index/address/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-06-25 18:55:38.384188', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-06-25 18:55:39.326780', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-06-25 18:55:40.538088', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-06-25 18:56:01.020715', '/myapp/admin/adminLogin', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-06-25 18:56:05.677272', '/myapp/admin/adminLogin', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-06-25 18:56:06.225661', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-06-25 18:56:06.230907', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-06-25 18:56:06.235570', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-06-25 18:56:07.617693', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-06-25 18:56:08.559623', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-06-25 18:56:08.560623', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-06-25 18:56:08.567623', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-06-25 18:56:10.370305', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-06-25 18:56:10.372402', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-06-25 18:56:10.373390', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-06-25 18:56:12.820703', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-06-25 18:56:15.181648', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-06-25 18:56:15.909357', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-06-25 18:56:15.910477', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-06-25 18:56:15.911747', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-06-25 18:56:18.337829', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-06-25 18:56:19.208629', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-06-26 11:16:04.251746', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-06-26 11:16:04.272592', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-06-26 11:16:04.274549', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-06-26 11:16:07.333957', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-06-26 11:16:07.334964', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-06-26 11:16:07.338983', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-06-26 11:16:16.437956', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-06-26 11:20:29.692173', '/myapp/index/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-06-26 11:20:37.607693', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-06-26 11:20:37.609852', '/myapp/index/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-06-26 11:20:37.612875', '/myapp/index/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-06-26 11:21:55.285791', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-06-26 11:21:55.291798', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-06-26 11:21:55.294795', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-06-26 11:22:00.975549', '/myapp/index/address/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-06-26 11:22:06.237859', '/myapp/index/order/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-06-26 11:22:08.688842', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-06-26 11:22:08.689841', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-06-26 11:22:08.695661', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-06-26 11:25:42.404463', '/myapp/index/order/cancel_order', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-06-26 11:25:42.453227', '/myapp/index/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-06-26 11:25:46.946502', '/myapp/index/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-06-26 11:25:48.830330', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-06-26 11:25:49.622426', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-06-26 11:26:01.300527', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-06-26 11:26:01.314632', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-06-26 11:26:01.335674', '/myapp/admin/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-06-26 11:26:03.427951', '/myapp/admin/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-06-26 11:27:09.105145', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-06-26 11:27:09.278061', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-06-26 11:27:09.930934', '/myapp/admin/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-06-26 11:30:28.399207', '/myapp/admin/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-06-26 11:30:37.171075', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-06-26 11:30:47.598499', '/myapp/admin/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-06-26 11:30:51.370840', '/myapp/admin/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-06-26 11:31:16.322762', '/myapp/admin/order/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-06-26 11:31:33.304349', '/myapp/admin/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-06-26 11:31:59.874837', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-06-26 11:32:18.104683', '/myapp/admin/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-06-26 14:04:30.078744', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-06-26 14:08:50.130497', '/myapp/admin/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-06-26 14:09:20.826536', '/myapp/admin/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-06-26 14:09:42.796174', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-06-26 18:34:57.529269', '/', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-06-26 18:35:10.378785', '/', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-06-26 18:35:11.134175', '/', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-06-26 18:35:16.127319', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-06-26 18:35:16.130316', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-06-26 18:35:16.142684', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-06-26 18:35:34.322242', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-06-26 18:35:34.324233', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-06-26 18:35:34.327233', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-06-26 18:35:36.746629', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-06-26 18:35:36.744641', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-06-26 18:35:36.750614', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-06-26 18:35:38.201687', '/myapp/admin/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-06-26 18:35:45.329212', '/myapp/admin/order/cancel_order', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-06-26 18:35:45.386213', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-06-26 18:35:48.002848', '/myapp/admin/order/cancel_order', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-06-26 18:35:48.053497', '/myapp/admin/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-06-26 18:35:56.965618', '/myapp/admin/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-06-26 18:35:58.639292', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2023-06-26 18:36:36.282169', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2023-06-26 18:36:36.284167', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2023-06-26 18:36:36.286297', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2023-06-26 18:36:38.582257', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2023-06-26 18:36:48.312616', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2023-06-26 18:36:48.313616', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2023-06-26 18:36:48.316617', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2023-06-26 18:36:50.889604', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2023-06-26 18:36:59.322616', '/myapp/admin/classification/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2023-06-26 18:36:59.340617', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2023-06-26 18:37:04.201121', '/myapp/admin/classification/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2023-06-26 18:37:04.262017', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2023-06-26 18:37:09.034559', '/myapp/admin/classification/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2023-06-26 18:37:09.076773', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2023-06-26 18:37:22.297500', '/myapp/admin/classification/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2023-06-26 18:37:22.320795', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2023-06-26 18:37:27.988493', '/myapp/admin/classification/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2023-06-26 18:37:28.046473', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2023-06-26 18:37:32.500393', '/myapp/admin/classification/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2023-06-26 18:37:32.541577', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2023-06-26 18:37:33.985643', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2023-06-26 18:37:39.894512', '/myapp/admin/tag/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2023-06-26 18:37:39.918548', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2023-06-26 18:37:43.806209', '/myapp/admin/tag/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2023-06-26 18:37:43.846719', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2023-06-26 18:37:48.976534', '/myapp/admin/tag/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2023-06-26 18:37:49.038592', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2023-06-26 18:37:54.927741', '/myapp/admin/tag/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2023-06-26 18:37:54.960376', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2023-06-26 18:38:00.549293', '/myapp/admin/tag/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2023-06-26 18:38:00.605902', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2023-06-26 18:38:06.672587', '/myapp/admin/tag/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2023-06-26 18:38:06.747689', '/myapp/admin/tag/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2023-06-26 18:38:08.375800', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2023-06-26 18:38:08.378292', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2023-06-26 18:38:08.380602', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2023-06-26 18:38:12.949058', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2023-06-26 18:38:12.950027', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2023-06-26 18:38:12.951651', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2023-06-26 18:40:17.243499', '/myapp/admin/thing/create', 'POST', NULL, '329');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2023-06-26 18:40:17.364559', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2023-06-26 18:41:23.721185', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2023-06-26 18:41:23.737838', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2023-06-26 18:41:23.743809', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2023-06-26 18:41:25.081548', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2023-06-26 18:41:26.255246', '/myapp/admin/thing/update', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2023-06-26 18:41:26.308386', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2023-06-26 18:41:30.158356', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2023-06-26 18:41:30.266897', '/myapp/admin/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2023-06-26 18:41:55.556783', '/myapp/admin/thing/create', 'POST', NULL, '86');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2023-06-26 18:41:55.617450', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2023-06-26 18:42:17.783994', '/myapp/admin/thing/create', 'POST', NULL, '91');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2023-06-26 18:42:17.869727', '/myapp/admin/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2023-06-26 18:42:21.954054', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2023-06-26 18:42:21.956055', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2023-06-26 18:42:21.985055', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2023-06-26 18:42:22.007047', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2023-06-26 18:42:22.011055', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2023-06-26 18:42:22.012047', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2023-06-26 18:42:27.044868', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2023-06-26 18:42:27.064392', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2023-06-26 18:42:27.066384', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2023-06-26 18:42:27.090090', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2023-06-26 18:42:27.106090', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2023-06-26 18:42:44.288375', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2023-06-26 18:42:44.298373', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2023-06-26 18:42:44.299368', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2023-06-26 18:42:44.312793', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2023-06-26 18:42:44.312793', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2023-06-26 18:42:44.335201', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2023-06-26 18:50:53.322811', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2023-06-26 18:50:53.327308', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2023-06-26 18:50:53.329312', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2023-06-26 18:53:27.994355', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2023-06-26 18:53:28.015377', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2023-06-26 18:53:28.033381', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2023-06-26 18:53:28.034379', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2023-06-26 18:53:28.037380', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2023-06-26 18:53:28.042382', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2023-06-26 18:53:35.819015', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2023-06-26 18:53:35.831132', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2023-06-26 18:53:35.833128', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2023-06-26 18:53:53.838658', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2023-06-26 18:53:53.849412', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2023-06-26 18:53:53.850792', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2023-06-26 18:53:53.867536', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2023-06-26 18:53:53.867536', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2023-06-26 18:53:53.868541', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2023-06-26 18:54:21.268126', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2023-06-26 18:54:21.270126', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2023-06-26 18:54:21.277126', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2023-06-26 18:54:21.290136', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2023-06-26 18:54:21.306853', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2023-06-26 18:54:21.320855', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2023-06-26 18:55:12.934227', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2023-06-26 18:55:12.951224', '/myapp/index/comment/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2023-06-26 18:55:12.956224', '/myapp/index/comment/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2023-06-26 18:55:12.997251', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2023-06-26 18:55:13.001793', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2023-06-26 18:55:13.003784', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2023-06-26 18:55:24.189036', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2023-06-26 18:55:24.200061', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2023-06-26 18:55:24.205066', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2023-06-26 18:55:24.220581', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2023-06-26 18:55:24.235586', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2023-06-26 18:55:24.236580', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2023-06-26 18:57:51.227667', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2023-06-26 18:57:51.242667', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2023-06-26 18:57:51.246677', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2023-06-26 18:57:51.264693', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2023-06-26 18:57:51.267689', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2023-06-26 18:57:51.268691', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2023-06-26 18:58:27.782783', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2023-06-26 18:58:27.794466', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2023-06-26 18:58:27.801243', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2023-06-26 18:58:27.808355', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2023-06-26 18:58:27.832084', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2023-06-26 18:58:27.833210', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2023-06-26 19:00:43.565686', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2023-06-26 19:00:43.587871', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2023-06-26 19:00:43.589871', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2023-06-26 19:00:43.609164', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2023-06-26 19:00:43.611801', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2023-06-26 19:00:43.611801', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2023-06-26 19:02:09.809513', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2023-06-26 19:02:09.818796', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2023-06-26 19:02:09.820796', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2023-06-26 19:02:09.837143', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2023-06-26 19:02:09.856046', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2023-06-26 19:02:09.857050', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2023-06-26 19:02:26.202891', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2023-06-26 19:02:26.204894', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2023-06-26 19:02:26.215892', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2023-06-26 19:02:26.219892', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2023-06-26 19:02:26.232066', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2023-06-26 19:02:26.232066', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2023-06-26 19:02:30.902687', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2023-06-26 19:02:30.909686', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2023-06-26 19:02:30.913696', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2023-06-26 19:02:30.928697', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2023-06-26 19:02:30.929695', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2023-06-26 19:02:30.929695', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2023-06-26 19:03:14.125047', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2023-06-26 19:03:14.145554', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2023-06-26 19:03:14.149553', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2023-06-26 19:03:14.157554', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2023-06-26 19:03:14.170553', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2023-06-26 19:03:14.171554', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2023-06-26 19:03:20.629100', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2023-06-26 19:03:20.644220', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2023-06-26 19:03:20.648720', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2023-06-26 19:03:22.003771', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2023-06-26 19:03:22.018776', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2023-06-26 19:03:22.021777', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2023-06-26 19:03:46.105058', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2023-06-26 19:03:46.112099', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2023-06-26 19:03:46.124352', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2023-06-26 19:03:46.168268', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2023-06-26 19:03:46.171331', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2023-06-26 19:03:46.179347', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2023-06-26 19:03:46.187485', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2023-06-26 19:03:46.187485', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2023-06-26 19:03:46.189721', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2023-06-26 19:03:46.207532', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2023-06-26 19:03:46.208709', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2023-06-26 19:03:46.208709', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2023-06-26 19:03:49.032427', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2023-06-26 19:03:49.054016', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2023-06-26 19:03:49.058388', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2023-06-26 19:03:49.083515', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2023-06-26 19:03:49.098584', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2023-06-26 19:03:49.099626', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2023-06-26 19:03:56.584435', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2023-06-26 19:03:56.595026', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2023-06-26 19:03:56.600016', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2023-06-26 19:03:56.624019', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2023-06-26 19:03:56.625018', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2023-06-26 19:03:56.626018', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2023-06-26 19:04:34.408630', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2023-06-26 19:04:34.417743', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2023-06-26 19:04:34.420744', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2023-06-26 19:04:34.437258', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2023-06-26 19:04:34.438259', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2023-06-26 19:04:34.438259', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2023-06-26 19:04:38.167449', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2023-06-26 19:04:38.170573', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2023-06-26 19:04:38.190918', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2023-06-26 19:04:38.192081', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2023-06-26 19:04:38.205437', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2023-06-26 19:04:38.223095', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2023-06-26 19:05:19.004616', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2023-06-26 19:05:19.006615', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2023-06-26 19:05:19.008615', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2023-06-26 19:05:19.021607', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2023-06-26 19:05:19.021607', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2023-06-26 19:05:19.022607', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2023-06-26 19:05:23.720096', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2023-06-26 19:05:23.737097', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2023-06-26 19:05:23.741097', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2023-06-26 19:05:23.757689', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2023-06-26 19:05:23.773695', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2023-06-26 19:05:23.773695', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2023-06-26 19:05:38.817458', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2023-06-26 19:05:38.830458', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2023-06-26 19:05:38.829457', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2023-06-26 19:05:38.853458', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2023-06-26 19:05:38.854457', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2023-06-26 19:05:38.878719', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2023-06-26 19:06:51.737256', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2023-06-26 19:06:51.765864', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2023-06-26 19:06:51.771862', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2023-06-26 19:06:51.820909', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2023-06-26 19:06:51.836909', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2023-06-26 19:06:51.837908', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2023-06-26 19:06:51.839908', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2023-06-26 19:06:51.844908', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2023-06-26 19:06:51.842907', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2023-06-26 19:06:51.865063', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2023-06-26 19:06:51.865063', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2023-06-26 19:06:51.866079', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2023-06-26 19:06:58.722856', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2023-06-26 19:06:58.732858', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2023-06-26 19:06:58.751856', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2023-06-26 19:06:58.755856', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2023-06-26 19:06:58.781542', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2023-06-26 19:06:58.782542', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2023-06-26 19:07:27.482674', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2023-06-26 19:07:27.485951', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2023-06-26 19:07:27.515486', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2023-06-26 19:07:27.545665', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2023-06-26 19:07:27.547685', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2023-06-26 19:07:27.550937', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2023-06-26 19:07:27.552973', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2023-06-26 19:07:27.555454', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2023-06-26 19:07:27.558464', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2023-06-26 19:07:27.596676', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2023-06-26 19:07:27.600671', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2023-06-26 19:07:27.601672', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2023-06-26 19:07:27.604672', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2023-06-26 19:07:29.304707', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2023-06-26 19:07:29.314303', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2023-06-26 19:07:29.326902', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2023-06-26 19:07:29.336130', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2023-06-26 19:07:29.336130', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2023-06-26 19:07:29.337138', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2023-06-26 19:07:47.311641', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2023-06-26 19:07:47.313659', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2023-06-26 19:07:47.351434', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2023-06-26 19:07:47.357746', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2023-06-26 19:07:47.362114', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2023-06-26 19:07:47.371253', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2023-06-26 19:07:47.373594', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2023-06-26 19:07:47.392622', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2023-06-26 19:07:47.393656', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2023-06-26 19:07:47.395694', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2023-06-26 19:07:47.395694', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2023-06-26 19:07:47.397725', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2023-06-26 19:07:49.232307', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2023-06-26 19:07:49.246689', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2023-06-26 19:07:49.247822', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2023-06-26 19:07:49.274125', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2023-06-26 19:07:49.278221', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2023-06-26 19:07:49.278221', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2023-06-26 19:08:55.546001', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2023-06-26 19:08:55.555351', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2023-06-26 19:08:55.565032', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2023-06-26 19:08:55.599759', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2023-06-26 19:08:55.601758', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2023-06-26 19:08:55.602757', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2023-06-26 19:08:55.602757', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2023-06-26 19:08:55.630287', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2023-06-26 19:08:55.631288', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2023-06-26 19:08:55.650814', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2023-06-26 19:08:55.650814', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2023-06-26 19:08:55.650814', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2023-06-26 19:08:58.564594', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2023-06-26 19:08:58.568592', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2023-06-26 19:08:58.572645', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2023-06-26 19:08:58.588263', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2023-06-26 19:08:58.610335', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2023-06-26 19:08:58.612333', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2023-06-26 19:09:08.853232', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2023-06-26 19:09:08.849006', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2023-06-26 19:09:08.875613', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2023-06-26 19:09:08.898603', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2023-06-26 19:09:08.899613', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2023-06-26 19:09:08.916720', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2023-06-26 19:09:10.107657', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2023-06-26 19:09:10.120950', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2023-06-26 19:09:10.124939', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2023-06-26 19:09:22.554947', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2023-06-26 19:09:22.566366', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2023-06-26 19:09:22.567601', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2023-06-26 19:10:53.991299', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2023-06-26 19:10:54.003180', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2023-06-26 19:10:54.029175', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2023-06-26 19:10:54.041419', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2023-06-26 19:10:54.042419', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2023-06-26 19:10:54.048927', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2023-06-26 19:10:54.064535', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2023-06-26 19:10:54.071841', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2023-06-26 19:10:54.071841', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2023-06-26 19:10:54.077391', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2023-06-26 19:10:54.088236', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2023-06-26 19:10:54.089374', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2023-06-26 19:10:56.291422', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2023-06-26 19:10:56.308186', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2023-06-26 19:10:56.314465', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2023-06-26 19:10:56.335890', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2023-06-26 19:10:56.338996', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2023-06-26 19:10:56.352180', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2023-06-26 19:11:06.577326', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2023-06-26 19:11:06.605053', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2023-06-26 19:11:06.610066', '/myapp/index/comment/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2023-06-26 19:11:06.641052', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2023-06-26 19:11:06.651166', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2023-06-26 19:11:06.682765', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2023-06-26 19:11:06.682765', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2023-06-26 19:11:06.686709', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2023-06-26 19:11:06.689705', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2023-06-26 19:11:06.689705', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2023-06-26 19:11:06.690722', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2023-06-26 19:11:06.694767', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2023-06-26 19:11:09.672519', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2023-06-26 19:11:09.684440', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2023-06-26 19:11:09.708603', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2023-06-26 19:11:09.711626', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2023-06-26 19:11:09.753942', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2023-06-26 19:11:09.770455', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2023-06-26 19:12:01.574400', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2023-06-26 19:12:01.607840', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2023-06-26 19:12:01.610836', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2023-06-26 19:12:01.647359', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2023-06-26 19:12:01.655361', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2023-06-26 19:12:01.654373', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2023-06-26 19:12:01.657359', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2023-06-26 19:12:01.675369', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2023-06-26 19:12:01.676359', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2023-06-26 19:12:01.705361', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2023-06-26 19:12:01.713363', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2023-06-26 19:12:01.726892', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2023-06-26 19:12:07.436222', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2023-06-26 19:12:07.441222', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2023-06-26 19:12:07.469264', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2023-06-26 19:12:07.496224', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2023-06-26 19:12:07.505243', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2023-06-26 19:12:07.505243', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2023-06-26 19:12:23.856920', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2023-06-26 19:12:23.893907', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2023-06-26 19:12:23.900906', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2023-06-26 19:12:23.918909', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2023-06-26 19:12:23.929916', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2023-06-26 19:12:23.947427', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2023-06-26 19:12:23.967428', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2023-06-26 19:12:23.968427', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2023-06-26 19:12:23.969429', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2023-06-26 19:12:23.972451', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2023-06-26 19:12:23.972451', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2023-06-26 19:12:23.974427', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2023-06-26 19:12:27.563819', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2023-06-26 19:12:27.584276', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2023-06-26 19:12:27.594639', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2023-06-26 19:12:27.618690', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2023-06-26 19:12:27.619698', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2023-06-26 19:12:27.620704', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2023-06-26 19:12:27.621709', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2023-06-26 19:12:27.621709', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2023-06-26 19:12:27.622864', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2023-06-26 19:12:27.641381', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2023-06-26 19:12:27.641381', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2023-06-26 19:12:27.642386', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2023-06-26 19:12:29.268898', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2023-06-26 19:12:29.284394', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2023-06-26 19:12:29.286403', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2023-06-26 19:12:29.296625', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2023-06-26 19:12:29.301915', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2023-06-26 19:12:29.303415', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2023-06-26 19:13:22.225691', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2023-06-26 19:13:22.254918', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2023-06-26 19:13:22.256963', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2023-06-26 19:13:22.277932', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2023-06-26 19:13:22.306444', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2023-06-26 19:13:22.309443', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2023-06-26 19:13:22.314444', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2023-06-26 19:13:22.313469', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2023-06-26 19:13:22.316452', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2023-06-26 19:13:22.334443', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2023-06-26 19:13:22.335443', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2023-06-26 19:13:22.335443', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2023-06-26 19:13:24.682008', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2023-06-26 19:13:24.699888', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2023-06-26 19:13:24.702299', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2023-06-26 19:13:24.715379', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2023-06-26 19:13:24.729143', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2023-06-26 19:13:24.730142', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2023-06-26 19:14:58.125223', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2023-06-26 19:14:58.129331', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2023-06-26 19:14:58.172352', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2023-06-26 19:14:58.190911', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2023-06-26 19:14:58.191950', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2023-06-26 19:14:58.212806', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2023-06-26 19:14:58.213847', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2023-06-26 19:14:58.216015', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2023-06-26 19:14:58.222467', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2023-06-26 19:14:58.240527', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2023-06-26 19:14:58.240527', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2023-06-26 19:14:58.241573', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2023-06-26 19:15:02.710938', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2023-06-26 19:15:02.730951', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2023-06-26 19:15:02.728951', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2023-06-26 19:15:02.757527', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2023-06-26 19:15:02.757527', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2023-06-26 19:15:02.758526', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2023-06-26 19:16:56.476839', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2023-06-26 19:16:56.492473', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2023-06-26 19:16:56.501011', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2023-06-26 19:16:56.511675', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2023-06-26 19:16:56.521184', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2023-06-26 19:16:56.537671', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2023-06-26 19:16:56.538676', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2023-06-26 19:16:56.575267', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2023-06-26 19:16:56.575267', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2023-06-26 19:16:56.577287', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2023-06-26 19:16:56.578299', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2023-06-26 19:16:56.580326', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2023-06-26 19:16:59.099292', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2023-06-26 19:16:59.117131', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2023-06-26 19:16:59.121214', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2023-06-26 19:16:59.134822', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2023-06-26 19:16:59.143822', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2023-06-26 19:16:59.144822', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2023-06-26 19:17:11.808804', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2023-06-26 19:17:11.818802', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2023-06-26 19:17:11.827802', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2023-06-26 19:17:11.859636', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2023-06-26 19:17:11.861635', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2023-06-26 19:17:11.861635', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2023-06-26 19:17:13.667136', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2023-06-26 19:17:13.676740', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2023-06-26 19:17:13.686485', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2023-06-26 19:17:51.274181', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2023-06-26 19:17:51.301814', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2023-06-26 19:17:51.303788', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2023-06-26 19:17:51.342862', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2023-06-26 19:17:51.360814', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2023-06-26 19:17:51.359838', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2023-06-26 19:17:51.362793', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2023-06-26 19:17:51.365949', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2023-06-26 19:17:51.365949', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2023-06-26 19:17:55.711858', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2023-06-26 19:17:55.723866', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2023-06-26 19:17:55.732870', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2023-06-26 19:18:11.616451', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2023-06-26 19:18:11.627641', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2023-06-26 19:18:11.628637', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2023-06-26 19:18:15.642125', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2023-06-26 19:18:15.643126', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2023-06-26 19:18:15.650413', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2023-06-26 19:18:23.179654', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2023-06-26 19:18:23.194665', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2023-06-26 19:18:23.201673', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2023-06-26 19:18:30.452418', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2023-06-26 19:18:35.485381', '/myapp/index/order/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2023-06-26 19:18:39.285410', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2023-06-26 19:18:39.296991', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2023-06-26 19:18:39.298990', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2023-06-26 19:18:49.466991', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2023-06-26 19:18:49.463933', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2023-06-26 19:18:49.480768', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2023-06-26 19:19:05.375384', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2023-06-26 19:19:05.379016', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2023-06-26 19:19:05.390158', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2023-06-26 19:19:17.661224', '/myapp/index/thing/addWishUser', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2023-06-26 19:19:17.797558', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2023-06-26 19:19:17.973221', '/myapp/index/thing/addCollectUser', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2023-06-26 19:19:18.077665', '/myapp/index/thing/detail', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2023-06-26 19:23:06.481297', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2023-06-26 19:23:06.490578', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2023-06-26 19:23:06.502247', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2023-06-26 19:23:06.540630', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2023-06-26 19:23:06.542834', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2023-06-26 19:23:06.560042', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2023-06-26 19:23:06.593376', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2023-06-26 19:23:06.607860', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2023-06-26 19:23:06.611008', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2023-06-26 19:23:06.660693', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2023-06-26 19:23:06.661774', '/upload/cover/1687776110036.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2023-06-26 19:23:06.661774', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2023-06-26 19:25:48.874245', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2023-06-26 19:25:48.884193', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2023-06-26 19:25:48.908206', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2023-06-26 19:25:48.917207', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2023-06-26 19:25:48.934752', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2023-06-26 19:25:48.954747', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2023-06-26 19:25:48.958747', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2023-06-26 19:25:48.969748', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2023-06-26 19:25:48.982747', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2023-06-26 19:27:08.711820', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2023-06-26 19:27:08.713820', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2023-06-26 19:27:08.725189', '/myapp/index/tag/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2023-06-26 19:27:08.739647', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2023-06-26 19:27:08.743631', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2023-06-26 19:27:08.745617', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2023-06-26 19:27:08.766342', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2023-06-26 19:27:08.769330', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2023-06-26 19:27:08.771330', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2023-06-26 19:27:40.548827', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2023-06-26 19:27:40.572835', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2023-06-26 19:27:40.576058', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2023-06-26 19:27:40.602588', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2023-06-26 19:27:40.602588', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2023-06-26 19:27:40.603586', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2023-06-26 19:28:57.949286', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2023-06-26 19:28:57.958416', '/myapp/index/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2023-06-26 19:28:57.970040', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2023-06-26 19:28:57.974187', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2023-06-26 19:28:57.985944', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2023-06-26 19:28:57.991348', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2023-06-26 19:28:57.998387', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2023-06-26 19:28:58.021779', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2023-06-26 19:28:58.024804', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2023-06-26 19:29:00.802684', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2023-06-26 19:29:00.813219', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2023-06-26 19:29:00.844215', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2023-06-26 19:29:02.346896', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2023-06-26 19:29:02.359898', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2023-06-26 19:29:02.362906', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2023-06-26 19:30:14.695458', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2023-06-26 19:30:14.711457', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2023-06-26 19:30:14.714448', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2023-06-26 19:30:16.407092', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2023-06-26 19:30:16.427978', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2023-06-26 19:30:16.433980', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2023-06-26 19:30:20.949240', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2023-06-26 19:30:20.951345', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2023-06-26 19:30:20.959481', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2023-06-26 19:30:23.076425', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2023-06-26 19:30:23.096984', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2023-06-26 19:30:23.099517', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2023-06-26 19:30:24.930369', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2023-06-26 19:30:24.936369', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2023-06-26 19:30:24.938869', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2023-06-26 19:30:27.049607', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2023-06-26 19:30:27.052739', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2023-06-26 19:30:27.071469', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2023-06-26 19:30:30.984480', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2023-06-26 19:30:30.990718', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2023-06-26 19:30:30.996175', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2023-06-26 19:31:22.652854', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2023-06-26 19:31:22.658862', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2023-06-26 19:31:22.686423', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2023-06-26 19:31:24.056265', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2023-06-26 19:31:24.072886', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2023-06-26 19:31:24.081878', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2023-06-27 18:28:17.383936', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2023-06-27 18:28:17.406014', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2023-06-27 18:28:17.424151', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2023-06-27 18:28:17.460657', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2023-06-27 18:28:17.460657', '/upload/cover/1687776132604.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2023-06-27 18:28:17.476674', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2023-06-27 18:28:27.767825', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2023-06-27 18:28:27.784722', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2023-06-27 18:28:27.788820', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2023-06-27 18:29:40.849581', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2023-06-27 18:29:40.852126', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2023-06-27 18:29:40.863488', '/myapp/index/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2023-06-27 18:30:01.686794', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2023-06-27 18:30:01.692792', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2023-06-27 18:30:01.696793', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2023-06-27 18:30:08.869744', '/myapp/admin/tag/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2023-06-27 18:30:08.876704', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2023-06-27 18:30:08.885852', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2023-06-27 18:30:11.281670', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2023-06-27 18:30:11.750279', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2023-06-27 18:30:11.755286', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2023-06-27 18:30:11.783875', '/myapp/admin/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2023-06-27 18:30:42.265105', '/myapp/admin/thing/create', 'POST', NULL, '227');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2023-06-27 18:30:42.329455', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2023-06-27 18:31:03.688812', '/myapp/admin/thing/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2023-06-27 18:31:03.791448', '/myapp/admin/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2023-06-27 18:31:26.686706', '/myapp/admin/thing/create', 'POST', NULL, '82');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2023-06-27 18:31:26.787658', '/myapp/admin/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2023-06-27 18:31:48.954078', '/myapp/admin/thing/create', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2023-06-27 18:31:49.030744', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2023-06-27 18:32:08.077428', '/myapp/admin/thing/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2023-06-27 18:32:08.186458', '/myapp/admin/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2023-06-27 18:32:29.726820', '/myapp/admin/thing/create', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2023-06-27 18:32:29.824146', '/myapp/admin/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2023-06-27 18:32:33.895777', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2023-06-27 18:32:33.897776', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2023-06-27 18:32:33.926777', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2023-06-27 18:32:33.992697', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2023-06-27 18:32:33.994742', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2023-06-27 18:32:33.994742', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2023-06-27 18:32:34.001299', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2023-06-27 18:32:34.002307', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2023-06-27 18:32:34.002307', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2023-06-27 18:33:27.252759', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2023-06-27 18:33:27.255863', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2023-06-27 18:33:27.304497', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2023-06-27 18:33:27.346669', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2023-06-27 18:33:27.348919', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2023-06-27 18:33:27.348919', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2023-06-27 18:33:27.349922', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2023-06-27 18:33:27.351931', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2023-06-27 18:33:27.351931', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2023-06-27 18:33:30.975123', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2023-06-27 18:33:30.977695', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2023-06-27 18:33:31.038924', '/myapp/index/tag/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2023-06-27 18:33:32.642617', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2023-06-27 18:33:32.671620', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2023-06-27 18:33:32.692647', '/myapp/index/comment/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2023-06-27 18:33:34.826948', '/myapp/index/thing/addWishUser', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2023-06-27 18:33:34.864010', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2023-06-27 18:33:35.148387', '/myapp/index/thing/addCollectUser', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2023-06-27 18:33:35.201162', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2023-06-27 18:33:44.773984', '/myapp/index/comment/create', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2023-06-27 18:33:44.819015', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2023-06-27 18:34:40.061466', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2023-06-27 18:34:42.609028', '/myapp/index/comment/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2023-06-27 18:34:42.654437', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2023-06-27 18:34:52.028518', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2023-06-27 18:34:52.030510', '/myapp/index/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2023-06-27 18:34:52.034511', '/myapp/index/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2023-06-27 18:34:55.516229', '/myapp/index/comment/listMyComments', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2023-06-27 18:34:56.582353', '/myapp/index/address/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2023-06-27 18:34:58.141546', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2023-06-27 18:34:59.122525', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2023-06-27 18:35:01.068617', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2023-06-27 18:35:01.766074', '/myapp/index/notice/list_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2023-06-27 18:35:02.800185', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2023-06-27 18:35:06.045721', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2023-06-27 18:35:06.050079', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2023-06-27 18:35:06.065497', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2023-06-27 18:35:06.083638', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2023-06-27 18:35:06.084787', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2023-06-27 18:35:06.084787', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2023-06-27 18:35:15.484793', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2023-06-27 18:35:17.401726', '/myapp/admin/overview/count', 'GET', NULL, '319');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2023-06-27 18:35:17.599243', '/myapp/admin/overview/count', 'GET', NULL, '515');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2023-06-27 18:35:21.021217', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1069');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2023-06-27 18:35:21.918549', '/myapp/admin/overview/count', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2023-06-27 18:35:29.717229', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1045');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2023-06-27 18:35:30.435325', '/myapp/admin/overview/count', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2023-06-27 18:37:42.526489', '/myapp/admin/overview/count', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2023-06-27 18:38:03.563374', '/myapp/admin/overview/count', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2023-06-27 18:38:39.206569', '/myapp/admin/overview/count', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2023-06-27 18:38:59.565104', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2023-06-27 18:39:49.804520', '/myapp/admin/overview/count', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2023-06-27 18:39:50.130175', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2023-06-27 18:39:50.134239', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2023-06-27 18:39:50.178502', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2023-06-27 18:39:50.222560', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2023-06-27 18:39:50.222560', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2023-06-27 18:39:50.231519', '/upload/cover/1687861903231.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2023-06-27 18:39:50.245619', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2023-06-27 18:39:50.247567', '/upload/cover/1687861858493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2023-06-27 18:39:50.263774', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2023-06-27 18:39:52.458357', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2023-06-27 18:39:52.484607', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2023-06-27 18:39:52.560124', '/myapp/admin/classification/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2023-06-27 18:39:57.059219', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2023-06-27 18:39:57.072584', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2023-06-27 18:39:57.111584', '/myapp/admin/tag/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2023-06-27 18:40:01.915987', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2023-06-27 18:40:03.092810', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2023-06-27 18:40:03.698198', '/myapp/admin/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2023-06-27 18:40:04.752337', '/myapp/admin/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2023-06-27 18:40:06.147374', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2023-06-27 18:40:26.974790', '/myapp/admin/user/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2023-06-27 18:40:27.034301', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2023-06-27 18:40:38.652793', '/myapp/index/user/register', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2023-06-27 18:40:41.882851', '/myapp/index/user/login', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2023-06-27 18:40:41.950464', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2023-06-27 18:40:41.959737', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2023-06-27 18:40:41.997325', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2023-06-27 18:40:46.968759', '/myapp/index/thing/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2023-06-27 18:40:46.986637', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2023-06-27 18:40:47.006613', '/upload/cover/1687861903231.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2023-06-27 18:40:47.013054', '/upload/cover/1687861903231.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2023-06-27 18:40:47.036768', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2023-06-27 18:40:47.036768', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2023-06-27 18:40:47.037770', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2023-06-27 18:40:47.731166', '/myapp/index/thing/addWishUser', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2023-06-27 18:40:47.781232', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2023-06-27 18:40:48.101438', '/myapp/index/thing/addCollectUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2023-06-27 18:40:48.148854', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2023-06-27 18:40:55.440297', '/myapp/index/address/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2023-06-27 18:41:03.488113', '/myapp/index/address/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2023-06-27 18:41:04.741959', '/myapp/index/order/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2023-06-27 18:41:57.102163', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2023-06-27 18:41:57.106406', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2023-06-27 18:41:57.136255', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2023-06-27 18:41:57.167465', '/upload/cover/1687861903231.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2023-06-27 18:41:57.168465', '/upload/cover/1687861903231.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2023-06-27 18:41:57.169472', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2023-06-27 18:41:57.184139', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2023-06-27 18:41:57.187144', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2023-06-27 18:41:57.187144', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2023-06-27 18:41:59.622877', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2023-06-27 18:42:01.027041', '/myapp/index/order/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2023-06-27 18:42:05.981679', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2023-06-27 18:42:05.983672', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2023-06-27 18:42:06.027194', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2023-06-27 18:42:08.688975', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2023-06-27 18:42:08.705968', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2023-06-27 18:42:08.708975', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2023-06-27 18:42:10.146074', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2023-06-27 18:42:10.721295', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2023-06-27 18:42:11.698183', '/myapp/index/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2023-06-27 18:42:12.150122', '/myapp/index/comment/listMyComments', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2023-06-27 18:42:13.018119', '/myapp/index/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2023-06-27 18:42:13.799415', '/myapp/index/comment/listMyComments', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2023-06-27 18:42:15.323262', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2023-06-27 18:42:15.349583', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2023-06-27 18:42:15.372172', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2023-06-27 18:42:17.733365', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2023-06-27 18:42:17.740350', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2023-06-27 18:42:17.765061', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2023-06-27 18:42:18.475525', '/myapp/index/thing/addWishUser', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2023-06-27 18:42:18.522672', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2023-06-27 18:42:18.828893', '/myapp/index/thing/addCollectUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2023-06-27 18:42:18.864913', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2023-06-27 18:42:20.697343', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2023-06-27 18:42:23.087693', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2023-06-27 18:42:23.095857', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2023-06-27 18:42:23.122577', '/myapp/index/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2023-06-27 18:42:24.461391', '/myapp/index/thing/addWishUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2023-06-27 18:42:24.504796', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2023-06-27 18:42:26.023662', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2023-06-27 18:42:26.028758', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2023-06-27 18:42:26.033909', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2023-06-27 18:42:27.096494', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2023-06-27 18:42:27.506032', '/myapp/index/thing/getWishThingList', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2023-06-27 18:42:28.082100', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2023-06-27 18:42:29.078006', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2023-06-27 18:42:29.603685', '/myapp/index/comment/listMyComments', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2023-06-27 18:42:30.286404', '/myapp/index/address/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2023-06-27 18:42:31.050679', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2023-06-27 18:42:31.597218', '/myapp/index/address/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2023-06-27 18:42:32.095291', '/myapp/index/comment/listMyComments', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2023-06-27 18:42:33.064200', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2023-06-27 18:42:33.605973', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2023-06-27 18:42:35.013869', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2023-06-27 18:42:35.921538', '/myapp/index/address/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2023-06-27 18:43:17.691765', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2023-06-27 18:43:17.693134', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2023-06-27 18:43:17.710010', '/myapp/index/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2023-06-27 18:43:17.730770', '/upload/cover/1687861945128.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2023-06-27 18:43:23.053049', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2023-06-27 18:43:23.054049', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2023-06-27 18:43:23.092724', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2023-06-27 18:43:26.080561', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2023-06-27 18:43:26.082068', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2023-06-27 18:43:26.105269', '/myapp/index/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2023-06-27 18:43:26.127954', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2023-06-27 18:43:26.127954', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2023-06-27 18:43:26.128953', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2023-06-27 18:43:26.128953', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2023-06-27 18:43:26.128953', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2023-06-27 18:43:29.736964', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2023-06-27 18:43:29.753963', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2023-06-27 18:43:29.779740', '/myapp/admin/tag/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2023-06-27 18:43:32.526307', '/myapp/admin/adminLogin', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2023-06-27 18:43:32.655992', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2023-06-27 18:43:32.657012', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2023-06-27 18:43:32.694270', '/myapp/admin/tag/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2023-06-27 18:43:35.766503', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2023-06-27 18:43:38.788193', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2023-06-27 18:43:39.770364', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2023-06-27 18:43:41.308170', '/myapp/admin/order/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2023-06-27 18:43:41.760290', '/myapp/admin/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2023-06-27 18:43:42.370057', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2023-06-27 18:43:43.342161', '/myapp/admin/overview/count', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2023-06-27 18:43:44.988780', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1081');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2023-06-27 18:43:46.361268', '/myapp/admin/opLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2023-06-27 18:43:47.153920', '/myapp/admin/loginLog/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2023-06-27 18:43:48.356069', '/myapp/admin/opLog/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2023-06-27 18:43:51.482987', '/myapp/admin/loginLog/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2023-06-27 18:43:53.502121', '/myapp/admin/opLog/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2023-06-27 18:44:04.032805', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2023-06-27 18:44:04.034914', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2023-06-27 18:44:04.083633', '/myapp/admin/tag/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2023-06-27 18:46:35.503186', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2023-06-27 18:46:35.522065', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2023-06-27 18:46:35.525209', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2023-06-27 18:46:35.539720', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2023-06-27 18:46:35.539720', '/upload/cover/1687861945128.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2023-06-27 18:46:35.539720', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2023-06-27 18:46:35.540847', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2023-06-27 18:46:35.540847', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2023-06-27 18:46:35.540847', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2023-06-27 18:46:51.234903', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2023-06-27 18:46:51.757488', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2023-06-27 18:46:52.243107', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2023-06-27 18:46:52.655811', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2023-06-27 18:46:53.013364', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2023-06-27 18:46:53.551868', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2023-06-27 18:46:54.595972', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2023-06-27 18:46:55.179674', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2023-06-27 18:46:55.624895', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2023-06-27 18:46:56.093163', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2023-06-27 18:46:57.080887', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2023-06-27 18:46:57.455302', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2023-06-27 18:46:57.929649', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2023-06-27 18:46:58.567249', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2023-06-27 18:46:59.325320', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2023-06-27 18:47:00.102066', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2023-06-27 18:47:01.305284', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2023-06-27 18:47:11.517007', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2023-06-27 18:47:11.518067', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2023-06-27 18:47:11.556751', '/myapp/admin/classification/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2023-06-27 18:47:18.865968', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2023-06-27 18:47:21.921471', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2023-06-27 18:47:23.560381', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2023-06-27 18:47:24.172404', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2023-06-27 18:47:24.174511', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2023-06-27 18:47:24.225711', '/myapp/admin/tag/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2023-06-27 18:47:31.745732', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2023-06-27 18:47:34.837976', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2023-06-27 18:47:36.250472', '/myapp/admin/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2023-06-27 18:47:38.798011', '/myapp/admin/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2023-06-27 18:47:40.142987', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2023-06-27 18:47:40.686896', '/myapp/admin/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2023-06-27 18:47:41.389416', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2023-06-27 18:47:44.863484', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2023-06-27 18:47:44.866991', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2023-06-27 18:47:44.879593', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2023-06-27 18:47:50.640946', '/myapp/index/comment/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2023-06-27 18:47:50.684541', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2023-06-27 18:47:52.359994', '/myapp/index/comment/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2023-06-27 18:47:52.402047', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2023-06-27 18:47:53.480219', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2023-06-27 18:47:53.520402', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2023-06-27 18:47:54.550944', '/myapp/index/comment/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2023-06-27 18:47:54.604754', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2023-06-27 18:47:55.523259', '/myapp/index/comment/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2023-06-27 18:47:55.574429', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2023-06-27 18:47:56.423484', '/myapp/index/comment/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2023-06-27 18:47:56.459242', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2023-06-27 18:47:57.460995', '/myapp/index/comment/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2023-06-27 18:47:57.507345', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2023-06-27 18:47:58.475812', '/myapp/index/comment/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2023-06-27 18:47:58.513733', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2023-06-27 18:47:59.579673', '/myapp/index/comment/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2023-06-27 18:47:59.621610', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2023-06-27 18:48:01.125501', '/myapp/index/comment/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2023-06-27 18:48:01.167330', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2023-06-27 18:51:51.086806', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2023-06-27 18:51:51.101859', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2023-06-27 18:51:51.102849', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2023-06-27 18:51:51.103862', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2023-06-27 18:51:51.113108', '/upload/cover/1687861858493.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2023-06-27 18:51:51.114109', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2023-06-27 18:51:51.114109', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2023-06-27 18:52:01.527919', '/myapp/index/comment/create', 'POST', NULL, '101');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2023-06-27 18:52:02.899428', '/myapp/index/comment/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2023-06-27 18:52:32.531693', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2023-06-27 18:52:32.550079', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2023-06-27 18:52:32.551085', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2023-06-27 18:52:32.552097', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2023-06-27 18:52:32.581174', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2023-06-27 18:52:32.583167', '/upload/cover/1687861858493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2023-06-27 18:52:32.583167', '/upload/cover/1687861858493.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2023-06-27 18:52:32.583167', '/upload/cover/1687861858493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2023-06-27 18:52:32.584169', '/upload/cover/1687861858493.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2023-06-27 18:52:32.584169', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2023-06-27 18:52:38.349981', '/myapp/index/comment/create', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2023-06-27 19:01:47.366821', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2023-06-27 19:01:47.390385', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2023-06-27 19:01:47.393851', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2023-06-27 19:01:47.398367', '/upload/cover/1687861921488.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2023-06-27 19:01:47.423197', '/upload/cover/1687775977042.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2023-06-27 19:01:47.424199', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2023-06-27 19:01:47.426419', '/upload/cover/1687861858493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2023-06-27 19:01:47.428378', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2023-06-27 19:01:47.443091', '/upload/cover/1687861881517.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2023-06-27 19:01:47.444096', '/upload/cover/1687861858493.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2023-06-27 19:01:50.886615', '/myapp/index/comment/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2023-06-27 19:01:50.923241', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2023-06-27 19:01:52.330769', '/myapp/index/comment/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2023-06-27 19:01:52.380569', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2023-06-27 19:01:53.498795', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2023-06-27 19:01:53.545834', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2023-06-27 19:01:54.414727', '/myapp/index/comment/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2023-06-27 19:01:54.466541', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2023-06-27 19:01:55.420169', '/myapp/index/comment/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2023-06-27 19:01:55.460026', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2023-06-27 19:01:56.620720', '/myapp/index/comment/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2023-06-27 19:01:58.689923', '/myapp/index/comment/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2023-06-27 19:02:12.432599', '/myapp/index/comment/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2023-06-27 19:02:14.387082', '/myapp/index/comment/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2023-06-27 19:04:30.386166', '/myapp/index/comment/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2023-06-27 19:04:30.420844', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2023-06-27 19:04:42.367081', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2023-06-27 19:04:42.374088', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2023-06-27 19:04:42.392081', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2023-06-27 19:04:42.406060', '/upload/cover/1687861903231.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2023-06-27 19:04:42.406060', '/upload/cover/1687861903231.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2023-06-27 19:04:58.176724', '/myapp/index/user/register', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2023-06-27 19:05:06.437639', '/myapp/index/user/register', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2023-06-27 19:05:11.095174', '/myapp/index/user/register', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2023-06-27 19:05:14.921515', '/myapp/index/user/register', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2023-06-27 19:05:15.793591', '/myapp/index/user/register', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2023-06-27 19:05:18.586955', '/myapp/index/user/register', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2023-06-27 19:05:22.580317', '/myapp/index/user/register', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2023-06-27 19:05:23.422374', '/myapp/index/user/register', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2023-06-27 19:05:23.847816', '/myapp/index/user/register', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2023-06-27 19:05:24.081759', '/myapp/index/user/register', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2023-06-27 19:05:24.269460', '/myapp/index/user/register', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2023-06-27 19:05:24.413947', '/myapp/index/user/register', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2023-06-27 19:05:24.631454', '/myapp/index/user/register', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2023-06-27 19:05:24.820009', '/myapp/index/user/register', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2023-06-27 19:05:25.119227', '/myapp/index/user/register', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2023-06-27 19:05:25.275590', '/myapp/index/user/register', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2023-06-27 19:05:32.136193', '/myapp/index/user/register', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2023-06-27 19:05:42.645816', '/myapp/index/user/register', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2023-06-27 19:05:43.659106', '/myapp/index/user/register', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2023-06-27 19:05:48.707055', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2023-06-27 19:05:48.719670', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2023-06-27 19:05:48.730529', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2023-06-27 19:05:48.754536', '/upload/cover/1687861858493.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2023-06-27 19:05:48.755537', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2023-06-27 19:05:48.756536', '/upload/cover/1687861836048.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2023-06-27 19:05:48.757528', '/upload/cover/1687861858493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2023-06-27 19:06:05.317145', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2023-06-27 19:06:05.342652', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2023-06-27 19:06:05.360654', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2023-06-27 19:06:11.097837', '/myapp/index/user/register', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2023-06-27 19:06:19.902075', '/myapp/index/user/register', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2023-06-27 19:07:06.140549', '/myapp/index/user/login', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2023-06-27 19:07:06.180115', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2023-06-27 19:07:06.195601', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2023-06-27 19:07:06.199783', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2023-06-27 19:07:09.081005', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2023-06-27 19:07:09.101205', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2023-06-27 19:07:09.136590', '/myapp/index/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2023-06-27 19:07:14.319970', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2023-06-27 19:07:15.630980', '/myapp/index/order/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2023-06-27 19:07:17.666815', '/myapp/index/thing/getWishThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2023-06-27 19:07:17.667831', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2023-06-27 19:07:17.668870', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2023-06-27 19:07:20.642306', '/myapp/index/order/cancel_order', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2023-06-27 19:07:20.698935', '/myapp/index/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2023-06-27 19:07:22.511313', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2023-06-27 19:07:22.909964', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2023-06-27 19:07:24.679011', '/myapp/index/thing/removeCollectUser', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2023-06-27 19:07:24.726133', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2023-06-27 19:07:26.273411', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2023-06-27 19:07:28.280692', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2023-06-27 19:07:28.282319', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2023-06-27 19:07:28.300766', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2023-06-27 19:07:30.157044', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2023-06-27 19:07:30.158044', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2023-06-27 19:07:30.196225', '/myapp/admin/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2023-06-27 19:07:31.810159', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2023-06-27 19:07:32.487687', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2023-06-27 19:07:33.047251', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2023-06-27 19:07:33.623580', '/myapp/admin/comment/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2023-06-27 19:07:34.351912', '/myapp/admin/user/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2023-06-27 19:07:35.719607', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2023-06-27 19:07:35.724062', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2023-06-27 19:07:35.761698', '/myapp/admin/tag/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2023-06-27 19:07:38.102201', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2023-06-27 19:07:38.811094', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2023-06-27 19:07:38.812890', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2023-06-27 19:07:38.841918', '/myapp/admin/classification/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2023-06-27 19:07:40.375313', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2023-06-27 19:07:41.033057', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2023-06-27 19:07:41.051626', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2023-06-27 19:07:41.072463', '/myapp/admin/tag/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2023-06-27 19:07:43.542312', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2023-06-27 19:07:44.199036', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2023-06-27 19:07:44.215401', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2023-06-27 19:07:44.246822', '/myapp/admin/tag/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2023-06-27 19:07:44.945007', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2023-06-27 19:07:45.853181', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2023-06-27 19:07:45.856645', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2023-06-27 19:07:45.899003', '/myapp/admin/classification/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2023-06-27 19:07:56.782182', '/myapp/admin/order/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2023-06-27 19:08:04.022781', '/myapp/admin/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2023-06-27 19:08:04.839706', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2023-06-27 19:08:11.697474', '/myapp/admin/user/update', 'POST', NULL, '26');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `amount` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gwc` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1687690490019', '7', '2023-06-25 18:54:50.022540', NULL, '刘德华', '3333', '333', NULL, 2, '37.5', '{\"gwc\":[{\"id\":\"1\",\"title\":\"豆角炒肉\",\"price\":\"2.5\",\"count\":3},{\"id\":\"2\",\"title\":\"西红柿炒鸡蛋\",\"price\":\"15\",\"count\":2}]}');
INSERT INTO `b_order` VALUES (2, '1687749726221', '7', '2023-06-26 11:22:06.226934', NULL, '刘德华', '3333', '333', NULL, 2, '97.5', '{\"gwc\":[{\"id\":\"1\",\"title\":\"豆角炒肉\",\"price\":\"2.5\",\"count\":3},{\"id\":\"2\",\"title\":\"西红柿炒鸡蛋\",\"price\":\"15\",\"count\":2},{\"id\":\"2\",\"title\":\"西红柿111\",\"price\":\"12\",\"count\":2},{\"id\":\"2\",\"title\":\"西红柿222\",\"price\":\"18\",\"count\":2}]}');
INSERT INTO `b_order` VALUES (3, '1687778315474', '1', '2023-06-26 19:18:35.479372', NULL, '刘德华', '3333', '333', NULL, 2, '215', '{\"gwc\":[{\"id\":3,\"title\":\"四喜丸子\",\"price\":\"25\",\"count\":5},{\"id\":2,\"title\":\"黄河鲤鱼\",\"price\":\"23\",\"count\":3},{\"id\":1,\"title\":\"鸡蛋炒饼\",\"price\":\"21\",\"count\":1}]}');
INSERT INTO `b_order` VALUES (4, '1687862464731', '1', '2023-06-27 18:41:04.735986', NULL, '刘德华', '2222222', '333', NULL, 4, '43', '{\"gwc\":[{\"id\":8,\"title\":\"炒馒头片\",\"price\":\"22\",\"count\":1},{\"id\":7,\"title\":\"黄瓜炒土豆\",\"price\":\"21\",\"count\":1}]}');
INSERT INTO `b_order` VALUES (5, '1687862521016', '1', '2023-06-27 18:42:01.020051', NULL, '刘德华', '2222222', '333', NULL, 4, '43', '{\"gwc\":[{\"id\":8,\"title\":\"炒馒头片\",\"price\":\"22\",\"count\":1},{\"id\":7,\"title\":\"黄瓜炒土豆\",\"price\":\"21\",\"count\":1}]}');
INSERT INTO `b_order` VALUES (6, '1687864035624', '7', '2023-06-27 19:07:15.627907', NULL, '刘德华', '2222222', '333', NULL, 4, '132', '{\"gwc\":[{\"id\":8,\"title\":\"炒馒头片\",\"price\":\"22\",\"count\":6}]}');

-- ----------------------------
-- Table structure for b_order_log
-- ----------------------------
DROP TABLE IF EXISTS `b_order_log`;
CREATE TABLE `b_order_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_log_thing_id_7306f624_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_log_user_id_1003e839_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_log_thing_id_7306f624_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_log_user_id_1003e839_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------
INSERT INTO `b_tag` VALUES (1, '肘子', '2023-06-26 18:37:39.888510');
INSERT INTO `b_tag` VALUES (2, '麻辣', '2023-06-26 18:37:43.801209');
INSERT INTO `b_tag` VALUES (3, '多汁', '2023-06-26 18:37:48.968542');
INSERT INTO `b_tag` VALUES (4, '香米饭', '2023-06-26 18:37:54.922741');
INSERT INTO `b_tag` VALUES (5, '卤汁', '2023-06-26 18:38:00.542273');
INSERT INTO `b_tag` VALUES (6, '鸡蛋饭', '2023-06-26 18:38:06.667657');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repertory` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '鸡蛋炒饼', 'cover/1687775977042.jpeg', '北京的名菜，享誉世界，被认为是中国的国菜之一。北京烤鸭以其皮薄而脆而闻名。切片的北京烤鸭经常与煎饼、甜豆酱或蒜泥酱油一起食用。是到北京必吃的一道菜！\r\n\r\n作为“中国第一道菜”，北京烤鸭曾是中国中世纪的皇室菜肴。自1970年代以来，它一直是“外交礼仪国菜”，它被周恩来总理（中华人民共和国第一任总理）首次用于接待各国外宾。受到国家元首、政府官员和国内外游客们的高度好评。', '21', '0', 0, 0, '2023-06-26 18:40:17.210359', 0, 0, 1, 1, 6, '');
INSERT INTO `b_thing` VALUES (2, '黄河鲤鱼', 'cover/1687776110036.jpeg', '北京的名菜，享誉世界，被认为是中国的国菜之一。北京烤鸭以其皮薄而脆而闻名。切片的北京烤鸭经常与煎饼、甜豆酱或蒜泥酱油一起食用。是到北京必吃的一道菜！\r\n\r\n作为“中国第一道菜”，北京烤鸭曾是中国中世纪的皇室菜肴。自1970年代以来，它一直是“外交礼仪国菜”，它被周恩来总理（中华人民共和国第一任总理）首次用于接待各国外宾。受到国家元首、政府官员和国内外游客们的高度好评。', '23', '0', 0, 0, '2023-06-26 18:41:55.509984', 0, 0, 0, 0, 5, NULL);
INSERT INTO `b_thing` VALUES (3, '四喜丸子', 'cover/1687776132604.jpeg', '北京的名菜，享誉世界，被认为是中国的国菜之一。北京烤鸭以其皮薄而脆而闻名。切片的北京烤鸭经常与煎饼、甜豆酱或蒜泥酱油一起食用。是到北京必吃的一道菜！\r\n\r\n作为“中国第一道菜”，北京烤鸭曾是中国中世纪的皇室菜肴。自1970年代以来，它一直是“外交礼仪国菜”，它被周恩来总理（中华人民共和国第一任总理）首次用于接待各国外宾。受到国家元首、政府官员和国内外游客们的高度好评。', '25', '0', 0, 0, '2023-06-26 18:42:17.738756', 0, 0, 0, 0, 4, NULL);
INSERT INTO `b_thing` VALUES (4, '黄瓜炒鸡蛋', 'cover/1687861836048.jpeg', '北京的名菜，享誉世界，被认为是中国的国菜之一。北京烤鸭以其皮薄而脆而闻名。切片的北京烤鸭经常与煎饼、甜豆酱或蒜泥酱油一起食用。是到北京必吃的一道菜！\r\n\r\n作为“中国第一道菜”，北京烤鸭曾是中国中世纪的皇室菜肴。自1970年代以来，它一直是“外交礼仪国菜”，它被周恩来总理（中华人民共和国第一任总理）首次用于接待各国外宾。受到国家元首、政府官员和国内外游客们的高度好评。', '32', '0', 0, 0, '2023-06-27 18:30:42.243782', 0, 0, 0, 0, 5, NULL);
INSERT INTO `b_thing` VALUES (5, '鸡蛋炒粉丝', 'cover/1687861858493.jpeg', '北京的名菜，享誉世界，被认为是中国的国菜之一。北京烤鸭以其皮薄而脆而闻名。切片的北京烤鸭经常与煎饼、甜豆酱或蒜泥酱油一起食用。是到北京必吃的一道菜！\r\n\r\n作为“中国第一道菜”，北京烤鸭曾是中国中世纪的皇室菜肴。自1970年代以来，它一直是“外交礼仪国菜”，它被周恩来总理（中华人民共和国第一任总理）首次用于接待各国外宾。受到国家元首、政府官员和国内外游客们的高度好评。', '33', '0', 0, 0, '2023-06-27 18:31:03.672852', 0, 0, 0, 0, 4, NULL);
INSERT INTO `b_thing` VALUES (6, '土豆炒肉丝', 'cover/1687861881517.jpeg', '北京的名菜，享誉世界，被认为是中国的国菜之一。北京烤鸭以其皮薄而脆而闻名。切片的北京烤鸭经常与煎饼、甜豆酱或蒜泥酱油一起食用。是到北京必吃的一道菜！\r\n\r\n作为“中国第一道菜”，北京烤鸭曾是中国中世纪的皇室菜肴。自1970年代以来，它一直是“外交礼仪国菜”，它被周恩来总理（中华人民共和国第一任总理）首次用于接待各国外宾。受到国家元首、政府官员和国内外游客们的高度好评。', '34', '0', 0, 0, '2023-06-27 18:31:26.649356', 0, 0, 0, 0, 3, NULL);
INSERT INTO `b_thing` VALUES (7, '黄瓜炒土豆', 'cover/1687861903231.jpeg', '北京的名菜，享誉世界，被认为是中国的国菜之一。北京烤鸭以其皮薄而脆而闻名。切片的北京烤鸭经常与煎饼、甜豆酱或蒜泥酱油一起食用。是到北京必吃的一道菜！\r\n\r\n作为“中国第一道菜”，北京烤鸭曾是中国中世纪的皇室菜肴。自1970年代以来，它一直是“外交礼仪国菜”，它被周恩来总理（中华人民共和国第一任总理）首次用于接待各国外宾。受到国家元首、政府官员和国内外游客们的高度好评。', '21', '0', 0, 0, '2023-06-27 18:31:48.933217', 0, 0, 1, 1, 2, NULL);
INSERT INTO `b_thing` VALUES (8, '炒馒头片', 'cover/1687861921488.jpeg', '北京的名菜，享誉世界，被认为是中国的国菜之一。北京烤鸭以其皮薄而脆而闻名。切片的北京烤鸭经常与煎饼、甜豆酱或蒜泥酱油一起食用。是到北京必吃的一道菜！\r\n\r\n作为“中国第一道菜”，北京烤鸭曾是中国中世纪的皇室菜肴。自1970年代以来，它一直是“外交礼仪国菜”，它被周恩来总理（中华人民共和国第一任总理）首次用于接待各国外宾。受到国家元首、政府官员和国内外游客们的高度好评。', '22', '0', 0, 0, '2023-06-27 18:32:08.049612', 0, 0, 2, 1, 1, NULL);
INSERT INTO `b_thing` VALUES (9, '藕片炒鸡蛋', 'cover/1687861945128.jpeg', '北京的名菜，享誉世界，被认为是中国的国菜之一。北京烤鸭以其皮薄而脆而闻名。切片的北京烤鸭经常与煎饼、甜豆酱或蒜泥酱油一起食用。是到北京必吃的一道菜！\r\n\r\n作为“中国第一道菜”，北京烤鸭曾是中国中世纪的皇室菜肴。自1970年代以来，它一直是“外交礼仪国菜”，它被周恩来总理（中华人民共和国第一任总理）首次用于接待各国外宾。受到国家元首、政府官员和国内外游客们的高度好评。', '33', '0', 0, 0, '2023-06-27 18:32:29.709813', 0, 0, 0, 0, 5, NULL);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (1, 1, 2);
INSERT INTO `b_thing_collect` VALUES (3, 7, 4);
INSERT INTO `b_thing_collect` VALUES (2, 8, 2);

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------
INSERT INTO `b_thing_tag` VALUES (1, 1, 2);
INSERT INTO `b_thing_tag` VALUES (2, 1, 3);
INSERT INTO `b_thing_tag` VALUES (3, 1, 5);
INSERT INTO `b_thing_tag` VALUES (4, 1, 6);
INSERT INTO `b_thing_tag` VALUES (5, 2, 1);
INSERT INTO `b_thing_tag` VALUES (6, 2, 2);
INSERT INTO `b_thing_tag` VALUES (7, 2, 3);
INSERT INTO `b_thing_tag` VALUES (8, 2, 5);
INSERT INTO `b_thing_tag` VALUES (9, 3, 5);
INSERT INTO `b_thing_tag` VALUES (10, 3, 6);
INSERT INTO `b_thing_tag` VALUES (11, 4, 1);
INSERT INTO `b_thing_tag` VALUES (12, 4, 2);
INSERT INTO `b_thing_tag` VALUES (13, 4, 3);
INSERT INTO `b_thing_tag` VALUES (14, 4, 4);
INSERT INTO `b_thing_tag` VALUES (15, 5, 1);
INSERT INTO `b_thing_tag` VALUES (16, 5, 2);
INSERT INTO `b_thing_tag` VALUES (17, 5, 3);
INSERT INTO `b_thing_tag` VALUES (18, 5, 4);
INSERT INTO `b_thing_tag` VALUES (19, 5, 5);
INSERT INTO `b_thing_tag` VALUES (20, 5, 6);
INSERT INTO `b_thing_tag` VALUES (21, 6, 4);
INSERT INTO `b_thing_tag` VALUES (22, 6, 5);
INSERT INTO `b_thing_tag` VALUES (23, 7, 3);
INSERT INTO `b_thing_tag` VALUES (24, 7, 5);
INSERT INTO `b_thing_tag` VALUES (25, 8, 3);
INSERT INTO `b_thing_tag` VALUES (26, 8, 5);
INSERT INTO `b_thing_tag` VALUES (27, 9, 3);
INSERT INTO `b_thing_tag` VALUES (28, 9, 5);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (1, 1, 2);
INSERT INTO `b_thing_wish` VALUES (3, 7, 4);
INSERT INTO `b_thing_wish` VALUES (2, 8, 2);
INSERT INTO `b_thing_wish` VALUES (4, 8, 4);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-25 18:53:04.351325', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, '122', NULL, NULL, '2023-06-27 18:40:26.969592', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (4, 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-27 18:40:38.648793', 0, NULL, 0, NULL, '47bce5c74f589f4867dbd57e9ca9f808');
INSERT INTO `b_user` VALUES (5, 'bbb', '08f8e0260c64418510cefb2b06eee5cd', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-27 19:04:58.169901', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (6, 'cd', '6865aeb3a9ed28f9a79ec454b259e5d0', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-27 19:06:11.083532', 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'orderlog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-06-23 15:14:36.564235');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-06-23 15:14:36.998046');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-06-23 15:14:37.078845');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-06-23 15:14:37.094766');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-23 15:14:37.111609');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-06-23 15:14:37.226468');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-06-23 15:14:37.302670');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-06-23 15:14:37.390859');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-06-23 15:14:37.406958');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-06-23 15:14:37.486830');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-06-23 15:14:37.495728');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-23 15:14:37.511881');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-06-23 15:14:37.582671');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-23 15:14:37.659369');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-06-23 15:14:37.739567');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-06-23 15:14:37.754077');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-23 15:14:37.820328');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-06-23 15:14:38.983265');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_address', '2023-06-23 15:14:39.036321');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20230623_1514', '2023-06-23 15:14:39.410573');
INSERT INTO `django_migrations` VALUES (21, 'sessions', '0001_initial', '2023-06-23 15:14:39.459533');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0004_auto_20230625_1852', '2023-06-25 18:52:29.436593');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
