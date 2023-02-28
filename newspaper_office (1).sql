/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : pet_store

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 15/07/2020 18:26:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `parent_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父菜单',
  `level` bigint(2) NULL DEFAULT NULL COMMENT '菜单层级',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父菜单联集',
  `sort` smallint(6) NULL DEFAULT NULL COMMENT '排序',
  `href` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `bg_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示背景色',
  `is_show` tinyint(2) NULL DEFAULT NULL COMMENT '是否显示',
  `permission` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('03c9c57e4efe4ea582e7c89422a337e4', '角色管理', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', 2, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,03c9c57e4efe4ea582e7c89422a337e4,', 21, '/admin/system/role/list', NULL, '', '', 1, 'sys:role:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 19:51:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 19:51:52', NULL, 0);
INSERT INTO `sys_menu` VALUES ('19a4d5eedfa44dbfac85c98c3f58c88a', '个人订单', NULL, 1, '19a4d5eedfa44dbfac85c98c3f58c88a,', 12, '/admin/system/order/list', NULL, '', '', 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-14 20:07:21', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-14 21:36:12', NULL, 0);
INSERT INTO `sys_menu` VALUES ('264ca24393ff44cb9d7bcd656031e4cd', '编辑用户', 'd5a9d4fe4a7b44e0ab4fa6e1b5357377', 3, 'be851c9eb362492baa8d70c9000547d3,d5a9d4fe4a7b44e0ab4fa6e1b5357377,264ca24393ff44cb9d7bcd656031e4cd,', 2, '', NULL, NULL, '', 1, 'sys:user:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:08:33', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:08:33', NULL, 0);
INSERT INTO `sys_menu` VALUES ('3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', '用户管理', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', 2, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,', 9, '/admin/system/user/list', NULL, '', '#47e69c', 1, 'sys:user:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:31:18', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:07:13', NULL, 1);
INSERT INTO `sys_menu` VALUES ('3b58e01e-9adb-11e8-aebe-1368d4ec24eb', '角色管理', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', 2, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,', 10, '/admin/system/role/list', NULL, '', '#c23ab9', 1, 'sys:role:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:32:33', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 19:45:29', NULL, 1);
INSERT INTO `sys_menu` VALUES ('3b5cb607-9adb-11e8-aebe-1368d4ec24eb', '权限管理', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', 2, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,', 20, '/admin/system/menu/list', NULL, '', '#d4573b', 1, 'sys:menu:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:33:19', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:49:28', NULL, 0);
INSERT INTO `sys_menu` VALUES ('3e0b86a3-9adc-11e8-aebe-1368d4ec24eb', '新增用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e0b86a3-9adc-11e8-aebe-1368d4ec24eb,', 0, '', NULL, NULL, NULL, 0, 'sys:user:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:10:32', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:06:27', NULL, 1);
INSERT INTO `sys_menu` VALUES ('3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb', '编辑用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb,', 10, '', NULL, NULL, NULL, 0, 'sys:user:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:11:49', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:06:03', NULL, 1);
INSERT INTO `sys_menu` VALUES ('3e36cf2f-9adc-11e8-aebe-1368d4ec24eb', '删除用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e36cf2f-9adc-11e8-aebe-1368d4ec24eb,', 20, '', NULL, NULL, NULL, 0, 'sys:user:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 10:12:43', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:05:15', NULL, 1);
INSERT INTO `sys_menu` VALUES ('408100dbe8f1484293b047aa6741f7a4', '客户操作', '109d67c56b8c4c6a9ba5e8391706cc38', 3, '16ed6ebe720e45588b34ae34772be17f,109d67c56b8c4c6a9ba5e8391706cc38,408100dbe8f1484293b047aa6741f7a4,', 4, '', NULL, NULL, '', 1, 'sys:wao:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-28 22:45:24', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-30 13:46:35', NULL, 1);
INSERT INTO `sys_menu` VALUES ('715860b3fb70456583a3950d8b739b8c', '个人资料', NULL, 1, '715860b3fb70456583a3950d8b739b8c,', 9, '/admin/system/user/userinfo', NULL, '', '', 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-07 15:14:48', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-07 15:14:55', NULL, 0);
INSERT INTO `sys_menu` VALUES ('7d1020ee-9ad9-11e8-aebe-1368d4ec24eb', '用户管理', NULL, 1, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,', 11, '', NULL, '', '', 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-01-16 11:29:46', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-27 14:46:02', NULL, 0);
INSERT INTO `sys_menu` VALUES ('8000ea0d671549cca6c9783c02f491d7', '修改密码', NULL, 1, '8000ea0d671549cca6c9783c02f491d7,', 7, '/admin/system/user/changePassword', NULL, '', '', 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-07 15:13:25', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-07 15:21:15', NULL, 0);
INSERT INTO `sys_menu` VALUES ('80c0a7726ca845b987ac0933265460d8', '测试', NULL, 1, '80c0a7726ca845b987ac0933265460d8,', 14, '', NULL, '', '', 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-14 22:46:28', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-14 22:46:50', NULL, 1);
INSERT INTO `sys_menu` VALUES ('8d822fe690fb49f3bc4840f2ad9c1bc5', '角色删除', '03c9c57e4efe4ea582e7c89422a337e4', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,03c9c57e4efe4ea582e7c89422a337e4,8d822fe690fb49f3bc4840f2ad9c1bc5,', 2, '', NULL, NULL, '', 1, 'sys:role:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 19:56:29', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 19:56:29', NULL, 0);
INSERT INTO `sys_menu` VALUES ('946b9d551ebe4d53a352d3912a3190c8', '报社', NULL, 1, '946b9d551ebe4d53a352d3912a3190c8,', 13, '/admin/system/newspaper/list', NULL, '', '', 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-13 21:59:11', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-14 20:06:30', NULL, 0);
INSERT INTO `sys_menu` VALUES ('96fd6a5a-9adb-11e8-aebe-1368d4ec24eb', '新增权限', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,96fd6a5a-9adb-11e8-aebe-1368d4ec24eb,', 0, '', NULL, NULL, NULL, 0, 'sys:menu:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:49:15', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:49:38', NULL, 0);
INSERT INTO `sys_menu` VALUES ('9703ccf2-9adb-11e8-aebe-1368d4ec24eb', '编辑权限', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,9703ccf2-9adb-11e8-aebe-1368d4ec24eb,', 10, '', NULL, NULL, NULL, 0, 'sys:menu:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:50:16', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:50:25', NULL, 0);
INSERT INTO `sys_menu` VALUES ('9707cf58-9adb-11e8-aebe-1368d4ec24eb', '删除权限', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,9707cf58-9adb-11e8-aebe-1368d4ec24eb,', 20, '', NULL, NULL, NULL, 0, 'sys:menu:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:51:53', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-02-08 09:53:42', NULL, 0);
INSERT INTO `sys_menu` VALUES ('a47289e83fa44e439f8be1aa3bbf5649', '删除报社', '946b9d551ebe4d53a352d3912a3190c8', 2, '946b9d551ebe4d53a352d3912a3190c8,a47289e83fa44e439f8be1aa3bbf5649,', 2, '', NULL, NULL, '', 0, 'sys:newspaper:del', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-13 22:00:35', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-13 22:02:09', NULL, 0);
INSERT INTO `sys_menu` VALUES ('a7c57f4ff8934277b3151fc201b7950f', '修改报社', '946b9d551ebe4d53a352d3912a3190c8', 2, '946b9d551ebe4d53a352d3912a3190c8,a7c57f4ff8934277b3151fc201b7950f,', 3, '', NULL, NULL, '', 0, 'sys:newspaper:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-13 22:01:51', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-13 22:02:17', NULL, 0);
INSERT INTO `sys_menu` VALUES ('a8aa9530ede14211a30ad5c0c018e5b5', '锁定用户', 'd5a9d4fe4a7b44e0ab4fa6e1b5357377', 3, 'be851c9eb362492baa8d70c9000547d3,d5a9d4fe4a7b44e0ab4fa6e1b5357377,a8aa9530ede14211a30ad5c0c018e5b5,', 4, '', NULL, NULL, '', 1, 'sys:user:lock', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:09:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:09:13', NULL, 0);
INSERT INTO `sys_menu` VALUES ('be851c9eb362492baa8d70c9000547d3', '辅助管理', NULL, 1, 'be851c9eb362492baa8d70c9000547d3,', 10, '', NULL, '', '', 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 15:10:54', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-07 15:21:25', NULL, 0);
INSERT INTO `sys_menu` VALUES ('c0e9bbb28fd04864ac9a4872f534a767', '新增角色', '03c9c57e4efe4ea582e7c89422a337e4', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,03c9c57e4efe4ea582e7c89422a337e4,c0e9bbb28fd04864ac9a4872f534a767,', 1, '', NULL, NULL, '', 1, 'sys:role:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 19:53:22', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 19:53:22', NULL, 0);
INSERT INTO `sys_menu` VALUES ('c16e0f67eade44a0861d7e0193687372', '权限修改', '03c9c57e4efe4ea582e7c89422a337e4', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,03c9c57e4efe4ea582e7c89422a337e4,c16e0f67eade44a0861d7e0193687372,', 3, '', NULL, NULL, '', 1, 'sys:role:edit', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 19:57:39', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 19:57:39', NULL, 0);
INSERT INTO `sys_menu` VALUES ('c18699422fcc420f82146731bd524813', '删除用户', 'd5a9d4fe4a7b44e0ab4fa6e1b5357377', 3, 'be851c9eb362492baa8d70c9000547d3,d5a9d4fe4a7b44e0ab4fa6e1b5357377,c18699422fcc420f82146731bd524813,', 3, '', NULL, NULL, '', 1, 'sys:user:delete', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:08:52', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:08:53', NULL, 0);
INSERT INTO `sys_menu` VALUES ('d5a9d4fe4a7b44e0ab4fa6e1b5357377', '账号管理', 'be851c9eb362492baa8d70c9000547d3', 2, 'be851c9eb362492baa8d70c9000547d3,d5a9d4fe4a7b44e0ab4fa6e1b5357377,', 4, '/admin/system/user/list', NULL, '', '', 1, 'sys:user:list', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:07:53', '99fda371aeee44eb99a9bc9513f7e61f', '2020-03-30 15:54:41', NULL, 0);
INSERT INTO `sys_menu` VALUES ('dd2963a9a14347a193cce19264035304', '添加报社', '946b9d551ebe4d53a352d3912a3190c8', 2, '946b9d551ebe4d53a352d3912a3190c8,dd2963a9a14347a193cce19264035304,', 1, '', NULL, NULL, '', 0, 'sys:newspaper:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-13 22:00:22', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-13 22:00:22', NULL, 0);
INSERT INTO `sys_menu` VALUES ('e7444a8e13bb49a781bdb5016ea3073d', '用户删除', '204a3ae1ac464fedb97c9f66ede18e55', 3, 'be851c9eb362492baa8d70c9000547d3,204a3ae1ac464fedb97c9f66ede18e55,e7444a8e13bb49a781bdb5016ea3073d,', 1, 'sys:role:delete', NULL, NULL, '', 1, '', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 19:47:02', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 19:51:08', NULL, 1);
INSERT INTO `sys_menu` VALUES ('ed63866b30cf46bfb6797a1d31ae930c', '锁定用户', '3b54e2a2-9adb-11e8-aebe-1368d4ec24eb', 3, '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,ed63866b30cf46bfb6797a1d31ae930c,', 21, '', NULL, NULL, '', 0, 'sys:user:lock', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2018-08-21 17:44:05', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:04:47', NULL, 1);
INSERT INTO `sys_menu` VALUES ('fb4dbb25df8e4a949f4fa381cdc283fb', '新增用户', 'd5a9d4fe4a7b44e0ab4fa6e1b5357377', 3, 'be851c9eb362492baa8d70c9000547d3,d5a9d4fe4a7b44e0ab4fa6e1b5357377,fb4dbb25df8e4a949f4fa381cdc283fb,', 1, '', NULL, NULL, '', 1, 'sys:user:add', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:08:12', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-03-26 20:08:12', NULL, 0);

-- ----------------------------
-- Table structure for sys_newspaper
-- ----------------------------
DROP TABLE IF EXISTS `sys_newspaper`;
CREATE TABLE `sys_newspaper`  (
  `pnc` int(20) NOT NULL AUTO_INCREMENT COMMENT '报纸编号',
  `pna` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '报纸名称',
  `psi` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '报纸规格',
  `ppr` decimal(10, 0) NULL DEFAULT NULL COMMENT '报纸单价',
  `pdw` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '出版单位',
  PRIMARY KEY (`pnc`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_newspaper
-- ----------------------------
INSERT INTO `sys_newspaper` VALUES (2, 'cs', '15*15', 15, '想想');
INSERT INTO `sys_newspaper` VALUES (3, '新闻日报', '50*50', 20, '你猜');

-- ----------------------------
-- Table structure for sys_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_order`;
CREATE TABLE `sys_order`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `u_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '订购人姓名',
  `number` int(10) NULL DEFAULT NULL COMMENT '订购数量',
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '订购总金额',
  `pnc` int(20) NULL DEFAULT NULL COMMENT '报纸编号',
  `u_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_order
-- ----------------------------
INSERT INTO `sys_order` VALUES (2, '管理员1', 15, 225.00, 2, '18b8b543-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_order` VALUES (3, '晨晨', 10, 150.00, 2, '58231033b0804130b2e14f46777daad9');
INSERT INTO `sys_order` VALUES (4, '晨晨', 10, 150.00, 2, '58231033b0804130b2e14f46777daad9');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('5df493a504f34123852db2e39874c401', '用户角色', '2020-07-08 22:27:15', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-14 22:44:50', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', 0);
INSERT INTO `sys_role` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '系统管理员', '2017-11-29 19:36:37', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-14 22:46:41', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '', 0);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menu_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('5df493a504f34123852db2e39874c401', '19a4d5eedfa44dbfac85c98c3f58c88a');
INSERT INTO `sys_role_menu` VALUES ('5df493a504f34123852db2e39874c401', '715860b3fb70456583a3950d8b739b8c');
INSERT INTO `sys_role_menu` VALUES ('5df493a504f34123852db2e39874c401', '8000ea0d671549cca6c9783c02f491d7');
INSERT INTO `sys_role_menu` VALUES ('5df493a504f34123852db2e39874c401', '946b9d551ebe4d53a352d3912a3190c8');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '03c9c57e4efe4ea582e7c89422a337e4');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '19a4d5eedfa44dbfac85c98c3f58c88a');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '264ca24393ff44cb9d7bcd656031e4cd');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '3b5cb607-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '715860b3fb70456583a3950d8b739b8c');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '7d1020ee-9ad9-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '8000ea0d671549cca6c9783c02f491d7');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '80c0a7726ca845b987ac0933265460d8');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '8d822fe690fb49f3bc4840f2ad9c1bc5');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '946b9d551ebe4d53a352d3912a3190c8');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '96fd6a5a-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '9703ccf2-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', '9707cf58-9adb-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'a47289e83fa44e439f8be1aa3bbf5649');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'a7c57f4ff8934277b3151fc201b7950f');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'a8aa9530ede14211a30ad5c0c018e5b5');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'be851c9eb362492baa8d70c9000547d3');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'c0e9bbb28fd04864ac9a4872f534a767');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'c16e0f67eade44a0861d7e0193687372');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'c18699422fcc420f82146731bd524813');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'd5a9d4fe4a7b44e0ab4fa6e1b5357377');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'dd2963a9a14347a193cce19264035304');
INSERT INTO `sys_role_menu` VALUES ('706e0195-9ad7-11e8-aebe-1368d4ec24eb', 'fb4dbb25df8e4a949f4fa381cdc283fb');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `login_name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `nick_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'shiro加密盐',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `site` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `locked` tinyint(2) NULL DEFAULT NULL COMMENT '是否锁定',
  `create_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `update_by` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del_flag` tinyint(4) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `is_admin` tinyint(2) NULL DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('18b8b543-9ad7-11e8-aebe-1368d4ec24eb', 'admin', '管理员1', '0037759c450478fe41d9251f4ed20b5161abc884', 'a1d139f2e2f390f9', '13083759163', '邵阳', '160613041@qq.com', 0, '2020-07-14 22:42:18', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-14 22:42:42', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', NULL, 0000, 1, NULL, NULL);
INSERT INTO `sys_user` VALUES ('58231033b0804130b2e14f46777daad9', 'cc', '晨晨', '7da95d26edc6563dc7274f891b7a3478f8ea676a', 'ceb242668f96229b', '13123456789', '上海', '18574771239@163.com', 0, '2020-07-14 22:44:28', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '2020-07-14 22:44:28', '18b8b543-9ad7-11e8-aebe-1368d4ec24eb', NULL, 0000, 1, NULL, NULL);
INSERT INTO `sys_user` VALUES ('eae0edd9-d259-469b-b794-83a9631b73e6', 'qwe', '请问', '50bc203e6810c80a562af2576ae143e7c468d1da', '754a49e4e15701ef', '15083759163', '邵阳', '1336514538@qq.com', NULL, '2020-07-14 22:48:46', NULL, '2020-07-14 22:48:46', 'eae0edd9-d259-469b-b794-83a9631b73e6', NULL, 0000, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('07c74068-d59a-4c15-a174-330e0c5e9d39', '5df493a504f34123852db2e39874c401');
INSERT INTO `sys_user_role` VALUES ('18b8b543-9ad7-11e8-aebe-1368d4ec24eb', '706e0195-9ad7-11e8-aebe-1368d4ec24eb');
INSERT INTO `sys_user_role` VALUES ('58231033b0804130b2e14f46777daad9', '5df493a504f34123852db2e39874c401');
INSERT INTO `sys_user_role` VALUES ('5bb54d6af5f3495db2fa0721ffbfe166', '5df493a504f34123852db2e39874c401');
INSERT INTO `sys_user_role` VALUES ('6ebf256b-3b6f-46bd-a92e-176a3e08bedc', '5df493a504f34123852db2e39874c401');
INSERT INTO `sys_user_role` VALUES ('71bfe2b7-e04a-43cc-803a-1af0ed962bcd', '5df493a504f34123852db2e39874c401');
INSERT INTO `sys_user_role` VALUES ('a83a0ecc-41eb-4477-9596-aa699f7cb723', '5df493a504f34123852db2e39874c401');
INSERT INTO `sys_user_role` VALUES ('d5e2ffd5-60e6-4955-b4fe-8d9d9e908399', '5df493a504f34123852db2e39874c401');
INSERT INTO `sys_user_role` VALUES ('eae0edd9-d259-469b-b794-83a9631b73e6', '5df493a504f34123852db2e39874c401');

SET FOREIGN_KEY_CHECKS = 1;
