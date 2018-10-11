/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50641
 Source Host           : localhost:3306
 Source Schema         : db_master_myjeesite

 Target Server Type    : MySQL
 Target Server Version : 50641
 File Encoding         : 65001

 Date: 11/10/2018 15:06:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_scheme
-- ----------------------------
DROP TABLE IF EXISTS `gen_scheme`;
CREATE TABLE `gen_scheme` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='生成方案';

-- ----------------------------
-- Records of gen_scheme
-- ----------------------------
BEGIN;
INSERT INTO `gen_scheme` VALUES ('0485172a2ec54771b2e0d0bb7b7506a5', '标签', 'curd', 'com.thinkgem.jeesite.modules', 'tag', '标签', '标签', '标签', 'shiyanjun', 'b9c148e175d74831b4bcdf5a997b7bc3', '1', '2018-10-10 18:10:07', '1', '2018-10-10 21:25:10', '', '0');
INSERT INTO `gen_scheme` VALUES ('142531f0d45143c6b7cb3d72fb7cbf42', '官网论坛标签', 'curd', 'com.baidu.cms.modules', 'forumtag', '', '官网论坛标签', '官网论坛标签', 'shiyanjun', '7ef1dce6041a44ca8c4e6650d3bdee95', '1', '2018-10-09 13:45:57', '1', '2018-10-09 14:16:24', '', '0');
INSERT INTO `gen_scheme` VALUES ('21b85c840ce64253b7216f14491d6cb5', '测试站点', 'curd', 'com.baidu.cms.modules.ai', 'site', '', '测试站点', '测试站点', 'shiyanjun', 'b7fbf3232f794618aca40ad1904df5c1', '1', '2018-10-10 11:06:14', '1', '2018-10-10 11:07:38', '', '0');
INSERT INTO `gen_scheme` VALUES ('2fefc563e60342da96fb436e4edc456f', '官网SEO', 'curd', 'com.thinkgem.jeesite.modules', 'seo', '', '官网SEO', '官网SEO', 'shiyanjun', 'f304fd15722948c786b17a1c3fb304d7', '1', '2018-10-05 09:47:18', '1', '2018-10-06 22:02:17', '', '1');
INSERT INTO `gen_scheme` VALUES ('35a13dc260284a728a270db3f382664b', '树结构', 'treeTable', 'com.thinkgem.jeesite.modules', 'test', NULL, '树结构生成', '树结构', 'ThinkGem', 'f6e4dafaa72f4c509636484715f33a96', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_scheme` VALUES ('6ae1f00bc407465ca22240209597e901', '官网SEO', 'curd', 'com.thinkgem.jeesite.modules', 'seo', '', '官网SEO', '官网SEO', 'shiyanjun', '69dbf991d4c4439984f734937b655e3b', '1', '2018-10-07 09:33:11', '1', '2018-10-07 18:13:00', '', '0');
INSERT INTO `gen_scheme` VALUES ('9c9de9db6da743bb899036c6546061ac', '单表', 'curd', 'com.thinkgem.jeesite.modules', 'test', NULL, '单表生成', '单表', 'ThinkGem', 'aef6f1fc948f4c9ab1c1b780bc471cc2', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_scheme` VALUES ('e6d905fd236b46d1af581dd32bdfb3b0', '主子表', 'curd_many', 'com.thinkgem.jeesite.modules', 'test', NULL, '主子表生成', '主子表', 'ThinkGem', '43d6d5acffa14c258340ce6765e46c6f', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_scheme` VALUES ('faaae26b4c8849d08196408bb1927eab', '论坛分区', 'curd', 'com.baidu.cms.modules', 'board', '', '论坛分区', '论坛分区', 'shiyanjun', '020f35a60d3940f686053e0b12f2f0ad', '1', '2018-10-10 18:06:14', '1', '2018-10-10 18:06:31', '', '0');
COMMIT;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` VALUES ('020f35a60d3940f686053e0b12f2f0ad', 'pf_board', '论坛分区表', 'PfBoard', '', '', '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', '', '1');
INSERT INTO `gen_table` VALUES ('040d6843ee83464fafdb9c28cad51f5a', 'p_weapp', 'p_weapp', 'PWeapp', '', '', '1', '2018-10-10 21:25:28', '1', '2018-10-10 21:25:28', '', '1');
INSERT INTO `gen_table` VALUES ('43d6d5acffa14c258340ce6765e46c6f', 'test_data_main', '业务数据表', 'TestDataMain', NULL, NULL, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table` VALUES ('69dbf991d4c4439984f734937b655e3b', 'test_seo', '官网SEO', 'TestSeo', '', '', '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', '', '0');
INSERT INTO `gen_table` VALUES ('6e05c389f3c6415ea34e55e9dfb28934', 'test_data_child', '业务数据子表', 'TestDataChild', 'test_data_main', 'test_data_main_id', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table` VALUES ('7ef1dce6041a44ca8c4e6650d3bdee95', 'pf_topic_tag', 'pf_topic_tag', 'PfTopicTag', '', '', '1', '2018-10-09 13:44:20', '1', '2018-10-09 14:14:27', '', '1');
INSERT INTO `gen_table` VALUES ('aef6f1fc948f4c9ab1c1b780bc471cc2', 'test_data', '业务数据表', 'TestData', NULL, NULL, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table` VALUES ('b7fbf3232f794618aca40ad1904df5c1', 'test_site', '测试站点', 'TestSite', '', '', '1', '2018-10-10 11:05:14', '1', '2018-10-10 21:26:02', '', '0');
INSERT INTO `gen_table` VALUES ('b9c148e175d74831b4bcdf5a997b7bc3', 'pf_tag', '标签表', 'PfTag', '', '', '1', '2018-10-10 18:09:34', '1', '2018-10-10 18:09:34', '', '1');
INSERT INTO `gen_table` VALUES ('ccc80dd998c74231a699a7bd79045917', 'p_seo', '官网SEO', 'PSeo', '', '', '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', '', '1');
INSERT INTO `gen_table` VALUES ('d397e5a4db604e37abe0827de34dd7b5', 'act_evt_log', 'act_evt_log', 'ActEvtLog', '', '', '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', '', '1');
INSERT INTO `gen_table` VALUES ('f304fd15722948c786b17a1c3fb304d7', 'test_seo', '官网SEO', 'TestSeo', '', '', '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:24', '', '1');
INSERT INTO `gen_table` VALUES ('f6e4dafaa72f4c509636484715f33a96', 'test_tree', '树结构表', 'TestTree', NULL, NULL, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_column` VALUES ('01f3a36549554d85ad0ca631b10a04c8', 'd397e5a4db604e37abe0827de34dd7b5', 'proc_inst_id_', 'proc_inst_id_', 'varchar(64)', 'String', 'procInstId', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 40, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('05775138940745bca2d43f4d1caaa03c', '040d6843ee83464fafdb9c28cad51f5a', 'weapp_key', 'weapp_key', 'varchar(50)', 'String', 'weappKey', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 100, '1', '2018-10-10 21:25:28', '1', '2018-10-10 21:25:28', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('0902a0cb3e8f434280c20e9d771d0658', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '1', '1', '1', '1', '1', '=', 'radiobox', 'sex', NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('09e991bd33744710b0051b181afe6f6f', '69dbf991d4c4439984f734937b655e3b', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '1', '=', 'textarea', '', NULL, 120, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('103fc05c88ff40639875c2111881996a', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('12d379d139014698b4ad17dd962a0a9f', 'ccc80dd998c74231a699a7bd79045917', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '1', 'like', 'textarea', '', NULL, 120, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('12fa38dd986e41908f7fefa5839d1220', '6e05c389f3c6415ea34e55e9dfb28934', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('135b79c7a4a5472cbe1542e5a6f1ed55', '7ef1dce6041a44ca8c4e6650d3bdee95', 'id', '主键', 'bigint(10)', 'Long', 'id', '1', '0', '0', '0', '1', '0', '=', 'input', '', NULL, 10, '1', '2018-10-09 13:44:20', '1', '2018-10-09 14:14:27', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('153338f92e254d23951c4d37a909a763', 'ccc80dd998c74231a699a7bd79045917', 'seo_title', 'seo标题', 'varchar(64)', 'String', 'seoTitle', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 30, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('158716361c28465387c7a293df130268', 'd397e5a4db604e37abe0827de34dd7b5', 'lock_time_', 'lock_time_', 'timestamp(3)', 'java.util.Date', 'lockTime', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 110, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('16603cac629f4dbea858ed58a4432992', '020f35a60d3940f686053e0b12f2f0ad', 'notice_email', '通知邮箱', 'varchar(200)', 'String', 'noticeEmail', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 200, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('195ee9241f954d008fe01625f4adbfef', 'f6e4dafaa72f4c509636484715f33a96', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('19c6478b8ff54c60910c2e4fc3d27503', '43d6d5acffa14c258340ce6765e46c6f', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1ac6562f753d4e599693840651ab2bf7', '43d6d5acffa14c258340ce6765e46c6f', 'in_date', '加入日期', 'date(7)', 'java.util.Date', 'inDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1ace4cdbc7724048973a9c4cc7b455e3', '69dbf991d4c4439984f734937b655e3b', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy.id', '0', '1', '1', '0', '1', '1', '=', 'input', '', NULL, 70, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1b8eb55f65284fa6b0a5879b6d8ad3ec', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'in_date', '加入日期', 'date(7)', 'java.util.Date', 'inDate', '0', '1', '1', '1', '0', '1', 'between', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1bef4058ecb949ff8ebbe33c80d11c51', 'ccc80dd998c74231a699a7bd79045917', 'url_path', '路径', 'varchar(64)', 'String', 'urlPath', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 20, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('1cd5e87772554e1b9764d6f124d6a7a0', '69dbf991d4c4439984f734937b655e3b', 'seo_title', '标题', 'varchar(64)', 'String', 'seoTitle', '0', '1', '1', '1', '1', '1', '=', 'input', '', NULL, 30, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1d5ca4d114be41e99f8dc42a682ba609', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'user_id', '归属用户', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'user.id|name', '0', '1', '1', '1', '1', '1', '=', 'userselect', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('21756504ffdc487eb167a823f89c0c06', '43d6d5acffa14c258340ce6765e46c6f', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 10, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('24bbdc0a555e4412a106ab1c5f03008e', 'f6e4dafaa72f4c509636484715f33a96', 'parent_ids', '所有父级编号', 'varchar2(2000)', 'String', 'parentIds', '0', '0', '1', '1', '0', '0', 'like', 'input', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('24c014840e6b42ca914526db2db6fdc5', 'd397e5a4db604e37abe0827de34dd7b5', 'lock_owner_', 'lock_owner_', 'varchar(255)', 'String', 'lockOwner', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 100, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('266ff1fb54ac4c548151f2f06dbcb685', 'f304fd15722948c786b17a1c3fb304d7', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '0', '1', '1', '&gt;=', 'dateselect', '', NULL, 80, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:25', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('307533842216442ca735790aa1fa7e05', 'f304fd15722948c786b17a1c3fb304d7', 'seo_img_json', '图片地址json数组', 'varchar(6000)', 'String', 'seoImgJson', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 110, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:25', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('33152ce420904594b3eac796a27f0560', '6e05c389f3c6415ea34e55e9dfb28934', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3588490fa83646fd995fa4e852d9dca5', '020f35a60d3940f686053e0b12f2f0ad', 'topic_count', '帖子总数', 'int(11)', 'String', 'topicCount', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 60, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('35af241859624a01917ab64c3f4f0813', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 13, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('39236a84d4a7483a85b1702eaea60126', '020f35a60d3940f686053e0b12f2f0ad', 'is_private', '是否只允许版主发帖', 'smallint(3)', 'String', 'isPrivate', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 100, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('398b4a03f06940bfb979ca574e1911e3', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3a01df65f5ab45a0aa7e27f0f3c1c6b4', '020f35a60d3940f686053e0b12f2f0ad', 'id', '讨论区编号', 'bigint(20)', 'Long', 'id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('3a41b0ceb30a408eaecc55fe4e2e3999', 'd397e5a4db604e37abe0827de34dd7b5', 'time_stamp_', 'time_stamp_', 'timestamp(3)', 'java.util.Date', 'timeStamp', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 70, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('3a5b01d188cd4959838e23dd008055e6', '020f35a60d3940f686053e0b12f2f0ad', 'announcement', '公告', 'varchar(1000)', 'String', 'announcement', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 110, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('3a7cf23ae48a4c849ceb03feffc7a524', '43d6d5acffa14c258340ce6765e46c6f', 'area_id', '归属区域', 'nvarchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Area', 'area.id|name', '0', '1', '1', '1', '0', '0', '=', 'areaselect', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3adae0e1f63044058d4b39cbbc5156bc', '040d6843ee83464fafdb9c28cad51f5a', 'weapp_service', 'weapp_service', 'bigint(10)', 'Integer', 'weappService', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 30, '1', '2018-10-10 21:25:28', '1', '2018-10-10 21:25:28', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('3cd865ec5be246249659bd887ae3efed', '69dbf991d4c4439984f734937b655e3b', 'seo_desc', '描述', 'varchar(64)', 'String', 'seoDesc', '0', '1', '1', '1', '1', '1', '=', 'input', '', NULL, 50, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3d9c32865bb44e85af73381df0ffbf3d', '43d6d5acffa14c258340ce6765e46c6f', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 11, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3e06c50b66d447328dda25d8e5aedef0', '69dbf991d4c4439984f734937b655e3b', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '1', '1', '=', 'dateselect', '', NULL, 60, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('3e554c84beb74e43ab68e455273ce7fc', 'f304fd15722948c786b17a1c3fb304d7', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '1', '1', '&gt;=', 'dateselect', '', NULL, 60, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:25', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('401c15b8107c4ebe9c7e38a3c8156f51', 'b9c148e175d74831b4bcdf5a997b7bc3', 'enabled', '状态 1可用0不可用', 'tinyint(1)', 'String', 'enabled', '0', '0', '1', '1', '1', '0', '=', 'input', '', NULL, 50, '1', '2018-10-10 18:09:34', '1', '2018-10-10 18:09:34', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('40795d470f8941768ffa2b1a2e342479', '040d6843ee83464fafdb9c28cad51f5a', 'update_by', 'update_by', 'varchar(50)', 'com.baidu.cms.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 80, '1', '2018-10-10 21:25:28', '1', '2018-10-10 21:25:28', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('416c76d2019b4f76a96d8dc3a8faf84c', 'f6e4dafaa72f4c509636484715f33a96', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('418113091fc4442f81bdab7e2975d813', 'f304fd15722948c786b17a1c3fb304d7', 'url_path', '路径', 'varchar(64)', 'String', 'urlPath', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 20, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:24', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('419b50e74fe744f6a33739b49c88973e', 'f304fd15722948c786b17a1c3fb304d7', 'seo_desc', 'seo desc', 'varchar(64)', 'String', 'seoDesc', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 50, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:25', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('467ed603282b46498ee2d49aa0014c0a', '020f35a60d3940f686053e0b12f2f0ad', 'category_id', '分类ID', 'bigint(20)', 'Long', 'categoryId', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 20, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('46e319c35c86430a956b088ec9fce77e', '020f35a60d3940f686053e0b12f2f0ad', 'seo_title', 'seotitle', 'varchar(200)', 'String', 'seoTitle', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 170, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('46e6d8283270493687085d29efdecb05', 'f6e4dafaa72f4c509636484715f33a96', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 11, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('4a0a1fff86ca46519477d66b82e01991', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('4a465183c4d1463c99cfea86624b7680', '040d6843ee83464fafdb9c28cad51f5a', 'id', 'id', 'bigint(10)', 'Integer', 'id', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2018-10-10 21:25:28', '1', '2018-10-10 21:25:28', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('4b6bb38161c04a6986c5f752b1db5a2d', '040d6843ee83464fafdb9c28cad51f5a', 'create_by', 'create_by', 'varchar(50)', 'com.baidu.cms.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', NULL, 60, '1', '2018-10-10 21:25:28', '1', '2018-10-10 21:25:28', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('4c8ef12cb6924b9ba44048ba9913150b', '43d6d5acffa14c258340ce6765e46c6f', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('4dff26adde55414abf9a2a88db6bf38b', '020f35a60d3940f686053e0b12f2f0ad', 'enabled', '是否激活', 'smallint(3)', 'String', 'enabled', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 90, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('531b3e2abfe14c089cf1a467a8d4e239', '69dbf991d4c4439984f734937b655e3b', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '0', '1', '1', '=', 'dateselect', '', NULL, 80, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('53d65a3d306d4fac9e561db9d3c66912', '6e05c389f3c6415ea34e55e9dfb28934', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 9, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('5490a164ae834053810f18024b8dd4bb', 'b9c148e175d74831b4bcdf5a997b7bc3', 'object_id', '类型ID', 'bigint(10)', 'Long', 'objectId', '0', '0', '1', '1', '1', '1', '=', 'input', '', NULL, 40, '1', '2018-10-10 18:09:34', '1', '2018-10-10 18:09:34', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('55ada6f39bb74106aebbac8f039d989f', 'ccc80dd998c74231a699a7bd79045917', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '0', '0', '1', '0', '=', 'dateselect', '', NULL, 80, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('56fa71c0bd7e4132931874e548dc9ba5', '6e05c389f3c6415ea34e55e9dfb28934', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('5a4a1933c9c844fdba99de043dc8205e', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 10, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('5c06868f6f3747baa0ff549041739a1f', '020f35a60d3940f686053e0b12f2f0ad', 'name', '讨论区名字', 'varchar(256)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', '', NULL, 40, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('5e5c69bd3eaa4dcc9743f361f3771c08', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('6114b536ca494ad384d8d3eea742199f', 'f304fd15722948c786b17a1c3fb304d7', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy.id', '0', '1', '1', '0', '1', '1', 'like', 'input', '', NULL, 70, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:25', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('633f5a49ec974c099158e7b3e6bfa930', 'f6e4dafaa72f4c509636484715f33a96', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('652491500f2641ffa7caf95a93e64d34', '6e05c389f3c6415ea34e55e9dfb28934', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('66bfe7b9203a4c41bffebdc0b06f1f01', '7ef1dce6041a44ca8c4e6650d3bdee95', 'tag_id', 'tag id', 'bigint(10)', 'Long', 'tagId', '0', '1', '1', '1', '1', '1', '=', 'input', '', NULL, 20, '1', '2018-10-09 13:44:20', '1', '2018-10-09 14:14:27', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('6763ff6dc7cd4c668e76cf9b697d3ff6', 'f6e4dafaa72f4c509636484715f33a96', 'sort', '排序', 'number(10)', 'Integer', 'sort', '0', '0', '1', '1', '1', '0', '=', 'input', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('67d0331f809a48ee825602659f0778e8', '43d6d5acffa14c258340ce6765e46c6f', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('67e4a7f9f0f44af88f0fd6bf497b9238', 'd397e5a4db604e37abe0827de34dd7b5', 'execution_id_', 'execution_id_', 'varchar(64)', 'String', 'executionId', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 50, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('68345713bef3445c906f70e68f55de38', '6e05c389f3c6415ea34e55e9dfb28934', 'test_data_main_id', '业务主表', 'varchar2(64)', 'String', 'testDataMain.id', '0', '1', '1', '1', '0', '0', '=', 'input', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('6b6a94167c7849c4ae5e40b3c70b9fbc', '020f35a60d3940f686053e0b12f2f0ad', 'homepage_url', '外链地址', 'varchar(512)', 'String', 'homepageUrl', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 50, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('6ebfe6ffb09c46e883a52b6cd171a6f3', '69dbf991d4c4439984f734937b655e3b', 'status_code', '状态码', 'int(2)', 'String', 'statusCode', '0', '1', '1', '1', '1', '0', '=', 'radiobox', 'status_code', NULL, 100, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('705d10e70f6f4198a4bc811043175bac', '040d6843ee83464fafdb9c28cad51f5a', 'create_time', 'create_time', 'datetime', 'java.util.Date', 'createTime', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 50, '1', '2018-10-10 21:25:28', '1', '2018-10-10 21:25:28', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('70b024af4bc84e0a8ad5df1d37bd9672', '7ef1dce6041a44ca8c4e6650d3bdee95', 'topic_id', 'topic id', 'bigint(10)', 'Long', 'topicId', '0', '1', '1', '1', '1', '1', '=', 'input', '', NULL, 30, '1', '2018-10-09 13:44:20', '1', '2018-10-09 14:14:27', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('7108ea72efe24e2580ff3e361645380e', '020f35a60d3940f686053e0b12f2f0ad', 'today_count', '今日新帖数', 'bigint(10)', 'Integer', 'todayCount', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 150, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('71ea4bc10d274911b405f3165fc1bb1a', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'area_id', '归属区域', 'nvarchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Area', 'area.id|name', '0', '1', '1', '1', '1', '1', '=', 'areaselect', NULL, NULL, 4, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('74b82e85ef5d4ca8ae2b6b7774ca9353', 'f304fd15722948c786b17a1c3fb304d7', 'status_code', '状态码', 'int(2)', 'String', 'statusCode', '0', '1', '1', '1', '1', '1', '=', 'input', '', NULL, 100, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:25', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('75f6cac492694e59b06b7406fe7dbfc8', 'b9c148e175d74831b4bcdf5a997b7bc3', 'show_index', '列表展示', 'int(2)', 'Integer', 'showIndex', '0', '0', '1', '1', '1', '0', '=', 'input', '', NULL, 60, '1', '2018-10-10 18:09:34', '1', '2018-10-10 18:09:34', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('7a03fb04af7e4c1eb4af86a81c9396a6', '69dbf991d4c4439984f734937b655e3b', 'url_path', '路径', 'varchar(64)', 'String', 'urlPath', '0', '1', '1', '1', '1', '1', '=', 'input', '', NULL, 20, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('7c9fbdfe745e4144911834ff968ef414', '020f35a60d3940f686053e0b12f2f0ad', 'icon_file_id', '头图ID', 'bigint(20)', 'Long', 'iconFileId', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 30, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('7f3183b5207c4fdba226a6682b01ba36', '020f35a60d3940f686053e0b12f2f0ad', 'reply_count', '回帖总数', 'int(11)', 'String', 'replyCount', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 70, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('7f871058d94c4d9a89084be7c9ce806d', '6e05c389f3c6415ea34e55e9dfb28934', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8012bdf3aaa84e1c9139bd4c259d6c0c', '69dbf991d4c4439984f734937b655e3b', 'seo_keyword', '关键字', 'varchar(64)', 'String', 'seoKeyword', '0', '1', '1', '1', '1', '1', '=', 'input', '', NULL, 40, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('81cfaa59b6de49a9acdf11e00894d2f1', 'b9c148e175d74831b4bcdf5a997b7bc3', 'tag_type', '1 公共 2板块', 'tinyint(2)', 'String', 'tagType', '0', '0', '1', '1', '1', '0', '=', 'input', '', NULL, 30, '1', '2018-10-10 18:09:34', '1', '2018-10-10 18:09:34', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('8388c074a5c4459c875d6c12734f4e83', '040d6843ee83464fafdb9c28cad51f5a', 'update_time', 'update_time', 'timestamp', 'java.util.Date', 'updateTime', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 70, '1', '2018-10-10 21:25:28', '1', '2018-10-10 21:25:28', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('83cae65b7bd343b2aad00bc0f93c31b9', '69dbf991d4c4439984f734937b655e3b', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '1', '0', '=', 'radiobox', 'del_flag', NULL, 130, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('845a2840ffbc49b8a8a67949ac27ad95', '020f35a60d3940f686053e0b12f2f0ad', 'recommend', '推荐帖子', 'varchar(1000)', 'String', 'recommend', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 120, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('86ab9db513b24cd696ec4a260f0362d7', 'ccc80dd998c74231a699a7bd79045917', 'status_code', '状态码', 'int(2)', 'String', 'statusCode', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 100, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('893ef9d5e3f043c582956017821f6470', 'ccc80dd998c74231a699a7bd79045917', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy.id', '0', '1', '0', '0', '1', '0', '=', 'input', '', NULL, 90, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('8b48774cfe184913b8b5eb17639cf12d', '43d6d5acffa14c258340ce6765e46c6f', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8b7cf0525519474ebe1de9e587eb7067', '6e05c389f3c6415ea34e55e9dfb28934', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 5, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8b9de88df53e485d8ef461c4b1824bc1', '43d6d5acffa14c258340ce6765e46c6f', 'user_id', '归属用户', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'user.id|name', '0', '1', '1', '1', '1', '1', '=', 'userselect', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8da38dbe5fe54e9bb1f9682c27fbf403', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', NULL, NULL, 12, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8db75011308a4ba291979e13138eeb92', '020f35a60d3940f686053e0b12f2f0ad', 'seo_keywords', 'seo_keywords', 'varchar(500)', 'String', 'seoKeywords', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 180, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('910890f7f71f42f38eff4d3d21e6ddd7', '040d6843ee83464fafdb9c28cad51f5a', 'weapp_name', 'weapp_name', 'varchar(100)', 'String', 'weappName', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 20, '1', '2018-10-10 21:25:28', '1', '2018-10-10 21:25:28', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('92481c16a0b94b0e8bba16c3c54eb1e4', 'f6e4dafaa72f4c509636484715f33a96', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', NULL, NULL, 7, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('95fe94819c3244e2a453fad8fd138086', 'ccc80dd998c74231a699a7bd79045917', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '1', '1', '=', 'radiobox', 'del_flag', NULL, 130, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('9939045c6bb94be9a13e109937b8287f', 'f304fd15722948c786b17a1c3fb304d7', 'seo_keyword', 'seokeyword', 'varchar(64)', 'String', 'seoKeyword', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 40, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:25', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('99ba4e22dc76469dbacb033fc6e949ae', 'f304fd15722948c786b17a1c3fb304d7', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '1', '1', '=', 'radiobox', 'del_flag', NULL, 130, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:25', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('9a012c1d2f934dbf996679adb7cc827a', 'f6e4dafaa72f4c509636484715f33a96', 'parent_id', '父级编号', 'varchar2(64)', 'This', 'parent.id|name', '0', '0', '1', '1', '0', '0', '=', 'treeselect', NULL, NULL, 2, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('9b516de94e604c499fd0601f196447b2', 'd397e5a4db604e37abe0827de34dd7b5', 'type_', 'type_', 'varchar(64)', 'String', 'type', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 20, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('a0ed2c578bff47a2b12e83acc817a6f4', '69dbf991d4c4439984f734937b655e3b', 'id', 'id', 'bigint(20)', 'Long', 'id', '1', '0', '0', '0', '1', '0', '=', 'input', '', NULL, 10, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('a20c4f63e69f40a78804c28f32eb5edb', 'b9c148e175d74831b4bcdf5a997b7bc3', 'id', '主键', 'bigint(10)', 'Long', 'id', '1', '0', '1', '0', '1', '1', '=', 'input', '', NULL, 10, '1', '2018-10-10 18:09:34', '1', '2018-10-10 18:09:34', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('a69dbaf9c62141e9bcbfcbf65b14cbc6', 'ccc80dd998c74231a699a7bd79045917', 'seo_keyword', 'seokeyword', 'varchar(64)', 'String', 'seoKeyword', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 40, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('a738227ac461493e84b64baa8bc80140', 'b7fbf3232f794618aca40ad1904df5c1', 'id', 'id', 'bigint(20)', 'Long', 'id', '1', '0', '0', '0', '1', '0', '=', 'input', '', NULL, 10, '1', '2018-10-10 11:05:14', '1', '2018-10-10 21:26:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('a8a74f88a7f94d59a26c9da76b6ac537', 'ccc80dd998c74231a699a7bd79045917', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '0', '0', '0', '0', '=', 'dateselect', '', NULL, 60, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('aa38a0f10c384cadba5482b76e867b1d', 'f304fd15722948c786b17a1c3fb304d7', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '1', 'like', 'textarea', '', NULL, 120, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:25', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('aa988c0646394b848a538d032db797db', '020f35a60d3940f686053e0b12f2f0ad', 'abs', '板块描述', 'varchar(500)', 'String', 'abs', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 140, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('aab6ee2f1bc8420bb8826a109203fcb8', 'ccc80dd998c74231a699a7bd79045917', 'seo_img_json', '图片地址json数组', 'varchar(6000)', 'String', 'seoImgJson', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 110, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('ad3bf0d4b44b4528a5211a66af88f322', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'office_id', '归属部门', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Office', 'office.id|name', '0', '1', '1', '1', '1', '1', '=', 'officeselect', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ae9f219734084bc5b49b36dc2bd797e5', 'f304fd15722948c786b17a1c3fb304d7', 'seo_title', 'seo标题', 'varchar(64)', 'String', 'seoTitle', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 30, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:24', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('af03bdd85cec41b48c6dd95480cb937a', 'ccc80dd998c74231a699a7bd79045917', 'create_by', '创建人', 'varchar(64)', 'String', 'createBy.id', '0', '1', '0', '0', '0', '0', '=', 'input', '', NULL, 70, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('b49d2fddd02940db911061b861a12788', '040d6843ee83464fafdb9c28cad51f5a', 'status_code', 'status_code', 'int(2)', 'String', 'statusCode', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 90, '1', '2018-10-10 21:25:28', '1', '2018-10-10 21:25:28', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('b4fd5c83cec34dbfae4458504779c390', 'f304fd15722948c786b17a1c3fb304d7', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:24', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('b79509f9f73c4ac5b6188af409575286', 'b7fbf3232f794618aca40ad1904df5c1', 'site_name', 'site_name', 'varchar(100)', 'String', 'siteName', '0', '0', '1', '1', '1', '1', 'like', 'input', '', NULL, 20, '1', '2018-10-10 11:05:14', '1', '2018-10-10 21:26:02', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('bb1256a8d1b741f6936d8fed06f45eed', 'f6e4dafaa72f4c509636484715f33a96', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', NULL, NULL, 8, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('bfa7e6380e7e4e3096fd087b9871161c', 'f304fd15722948c786b17a1c3fb304d7', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy.id', '0', '1', '1', '0', '1', '1', 'like', 'input', '', NULL, 90, '1', '2018-10-05 21:22:16', '1', '2018-10-06 21:55:25', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('c081555d53ca4fba92bc173b7c6e0262', '020f35a60d3940f686053e0b12f2f0ad', 'today', '今天日期', 'bigint(13)', 'Long', 'today', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 160, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('c5ad102df19044ec9f3773821383d17a', 'ccc80dd998c74231a699a7bd79045917', 'seo_desc', 'seo desc', 'varchar(64)', 'String', 'seoDesc', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 50, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('ca68a2d403f0449cbaa1d54198c6f350', '43d6d5acffa14c258340ce6765e46c6f', 'office_id', '归属部门', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Office', 'office.id|name', '0', '1', '1', '1', '0', '0', '=', 'officeselect', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('cb9c0ec3da26432d9cbac05ede0fd1d0', '43d6d5acffa14c258340ce6765e46c6f', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', NULL, NULL, 12, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('cfcfa06ea61749c9b4c4dbc507e0e580', 'f6e4dafaa72f4c509636484715f33a96', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', NULL, NULL, 1, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('d4733f5174a24b82a102d7ca906cf5b8', 'd397e5a4db604e37abe0827de34dd7b5', 'data_', 'data_', 'longblob', 'String', 'data', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 90, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('d5c2d932ae904aa8a9f9ef34cd36fb0b', '43d6d5acffa14c258340ce6765e46c6f', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '1', '1', '1', '0', '1', '=', 'select', 'sex', NULL, 6, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('d76e13225e694aba8b4039198e7b3ffd', '69dbf991d4c4439984f734937b655e3b', 'update_by', '更新人', 'varchar(64)', 'String', 'updateBy.id', '0', '1', '1', '0', '1', '1', '=', 'input', '', NULL, 90, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('d7a8603d54c64d70a1b89c2ef9140d3c', '020f35a60d3940f686053e0b12f2f0ad', 'icon_path', '头图地址', 'varchar(255)', 'String', 'iconPath', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 130, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('dd80026ad5074f168825afa8a9cf99e7', '69dbf991d4c4439984f734937b655e3b', 'seo_img_json', '图片地址', 'varchar(6000)', 'String', 'seoImgJson', '0', '1', '1', '1', '1', '1', '=', 'input', '', NULL, 110, '1', '2018-10-07 09:31:30', '1', '2018-10-07 18:12:56', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e47e1cd67cc54c599b62934a4304d5a2', 'b9c148e175d74831b4bcdf5a997b7bc3', 'tag_name', 'tag名称', 'varchar(100)', 'String', 'tagName', '0', '0', '1', '1', '1', '1', '=', 'input', '', NULL, 20, '1', '2018-10-10 18:09:34', '1', '2018-10-10 18:09:34', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('e62526639df446ae961a972032f0e7c0', 'd397e5a4db604e37abe0827de34dd7b5', 'user_id_', 'user_id_', 'varchar(255)', 'com.baidu.cms.modules.sys.entity.User', 'user.id|name', '0', '1', '1', '1', '0', '0', '=', 'userselect', '', NULL, 80, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('e64050a2ebf041faa16f12dda5dcf784', '6e05c389f3c6415ea34e55e9dfb28934', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', NULL, NULL, 3, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e8af2b2acf704ae5ab62833524e1e83f', '020f35a60d3940f686053e0b12f2f0ad', 'sort_order', '排序顺序', 'int(11)', 'String', 'sortOrder', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 80, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('e8d11127952d4aa288bb3901fc83127f', '43d6d5acffa14c258340ce6765e46c6f', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 13, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('eb2e5afd13f147a990d30e68e7f64e12', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', NULL, NULL, 11, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ee282de4edd44f0da24cb7947eb14fb9', 'd397e5a4db604e37abe0827de34dd7b5', 'proc_def_id_', 'proc_def_id_', 'varchar(64)', 'String', 'procDefId', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 30, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('ef6c20a9f3674c1dbadc3df674c37560', 'd397e5a4db604e37abe0827de34dd7b5', 'task_id_', 'task_id_', 'varchar(64)', 'String', 'taskId', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 60, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('f1fed3ef020f4b54875b5a27af4ba2d0', '020f35a60d3940f686053e0b12f2f0ad', 'seo_description', 'description', 'varchar(500)', 'String', 'seoDescription', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 190, '1', '2018-10-10 18:04:48', '1', '2018-10-10 18:04:48', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('f242fc399aca46c6a641ffb65734c0ad', 'd397e5a4db604e37abe0827de34dd7b5', 'is_processed_', 'is_processed_', 'tinyint(4)', 'String', 'isProcessed', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 120, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('f5ed8c82bad0413fbfcccefa95931358', 'f6e4dafaa72f4c509636484715f33a96', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', NULL, NULL, 10, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('f701cf04312d45cb912a149cfa1510cd', '040d6843ee83464fafdb9c28cad51f5a', 'weapp_abs', 'weapp_abs', 'varchar(255)', 'String', 'weappAbs', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 40, '1', '2018-10-10 21:25:28', '1', '2018-10-10 21:25:28', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('f825d8067e62411c920c3ec097396d58', 'ccc80dd998c74231a699a7bd79045917', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '0', '0', '1', '0', '=', 'input', '', NULL, 10, '1', '2018-10-05 09:46:07', '1', '2018-10-05 10:27:42', NULL, '1');
INSERT INTO `gen_table_column` VALUES ('fbe408a4b6954035bb44f7a33b9ddaac', 'd397e5a4db604e37abe0827de34dd7b5', 'log_nr_', 'log_nr_', 'bigint(20)', 'Long', 'logNr', '1', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 10, '1', '2018-10-11 14:09:01', '1', '2018-10-11 14:09:01', NULL, '1');
COMMIT;

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '生成文件名',
  `content` text COLLATE utf8_bin COMMENT '内容',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='代码模板表';

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区域编码',
  `type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
BEGIN;
INSERT INTO `sys_area` VALUES ('1', '0', '0,', '中国', 10, '100000', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_area` VALUES ('2', '1', '0,1,', '北京', 20, '110000', '2', '1', '2013-05-27 08:00:00', '1', '2018-10-11 14:23:48', '', '0');
INSERT INTO `sys_area` VALUES ('3', '2', '0,1,2,', '北京市', 30, '110101', '3', '1', '2013-05-27 08:00:00', '1', '2018-10-11 14:18:38', '', '0');
INSERT INTO `sys_area` VALUES ('4', '3', '0,1,2,3,', '海淀区', 40, '110102', '4', '1', '2013-05-27 08:00:00', '1', '2018-10-11 14:18:48', '', '0');
INSERT INTO `sys_area` VALUES ('5', '3', '0,1,2,3,', '历下区', 50, '110104', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_area` VALUES ('6', '3', '0,1,2,3,', '高新区', 60, '110105', '4', '1', '2013-05-27 08:00:00', '1', '2018-10-07 17:46:22', 'bbb', '1');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `value` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '数据值',
  `label` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '标签名',
  `type` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '类型',
  `description` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) COLLATE utf8_bin DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('10', 'yellow', '黄色', 'color', '颜色值', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('101', 'com.thinkgem.jeesite.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('102', 'com.thinkgem.jeesite.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('103', 'com.thinkgem.jeesite.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('105', '1', '会议通告', 'oa_notify_type', '通知通告类型', 10, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('106', '2', '奖惩通告', 'oa_notify_type', '通知通告类型', 20, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('107', '3', '活动通告', 'oa_notify_type', '通知通告类型', 30, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('108', '0', '草稿', 'oa_notify_status', '通知通告状态', 10, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('109', '1', '发布', 'oa_notify_status', '通知通告状态', 20, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('11', 'orange', '橙色', 'color', '颜色值', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('110', '0', '未读', 'oa_notify_read', '通知通告状态', 10, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('111', '1', '已读', 'oa_notify_read', '通知通告状态', 20, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('12', 'default', '默认主题', 'theme', '主题方案', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('14', 'readable', '橙色主题', 'theme', '主题方案', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('15', 'united', '红色主题', 'theme', '主题方案', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('16', 'flat', 'Flat主题', 'theme', '主题方案', 60, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('17', '1', '国家', 'sys_area_type', '区域类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('19', '3', '地市', 'sys_area_type', '区域类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('2', '1', '删除', 'del_flag', '删除标记', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('20', '4', '区县', 'sys_area_type', '区域类型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('21', '1', '公司', 'sys_office_type', '机构类型', 60, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('22', '2', '部门', 'sys_office_type', '机构类型', 70, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('23', '3', '小组', 'sys_office_type', '机构类型', 80, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('24', '4', '其它', 'sys_office_type', '机构类型', 90, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('25', '1', '综合部', 'sys_office_common', '快捷通用部门', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('26', '2', '开发部', 'sys_office_common', '快捷通用部门', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('27', '3', '人力部', 'sys_office_common', '快捷通用部门', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('28', '1', '一级', 'sys_office_grade', '机构等级', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('29', '2', '二级', 'sys_office_grade', '机构等级', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('30', '3', '三级', 'sys_office_grade', '机构等级', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('31', '4', '四级', 'sys_office_grade', '机构等级', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('32', '1', '所有数据', 'sys_data_scope', '数据范围', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', 90, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('38', '9', '按明细设置', 'sys_data_scope', '数据范围', 100, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('3dee288aad8f461cbb8e3a2e0182a341', '\'\'', '所有', 'del_flag', '删除标记', 1, '0', '1', '2018-10-06 22:34:05', '1', '2018-10-06 22:36:33', '', '1');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('41', '2', '普通用户', 'sys_user_type', '用户类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2018-10-11 15:05:47', '', '0');
INSERT INTO `sys_dict` VALUES ('42', 'basic', '基础主题', 'cms_theme', '站点主题', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('43', 'blue', '蓝色主题', 'cms_theme', '站点主题', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('44', 'red', '红色主题', 'cms_theme', '站点主题', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('45', 'article', '文章模型', 'cms_module', '栏目模型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('46', 'picture', '图片模型', 'cms_module', '栏目模型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('47', 'download', '下载模型', 'cms_module', '栏目模型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('48', 'link', '链接模型', 'cms_module', '栏目模型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('49', 'special', '专题模型', 'cms_module', '栏目模型', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('50', '0', '默认展现方式', 'cms_show_modes', '展现方式', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('51', '1', '首栏目内容列表', 'cms_show_modes', '展现方式', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('52', '2', '栏目第一条内容', 'cms_show_modes', '展现方式', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('53', '0', '发布', 'cms_del_flag', '内容状态', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('54', '1', '删除', 'cms_del_flag', '内容状态', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('55', '2', '审核', 'cms_del_flag', '内容状态', 15, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('56', '1', '首页焦点图', 'cms_posid', '推荐位', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('57', '2', '栏目页文章推荐', 'cms_posid', '推荐位', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('58', '1', '咨询', 'cms_guestbook', '留言板分类', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('59', '2', '建议', 'cms_guestbook', '留言板分类', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('6', '0', '否', 'yes_no', '是/否', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('60', '3', '投诉', 'cms_guestbook', '留言板分类', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('61', '4', '其它', 'cms_guestbook', '留言板分类', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('61afbe6b7dcc430a85e7e407cdbd5c39', '1', '无', 'status_code', '状态码', 20, '0', '1', '2018-10-07 09:31:22', '1', '2018-10-07 10:04:06', '', '0');
INSERT INTO `sys_dict` VALUES ('62', '1', '公休', 'oa_leave_type', '请假类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('63', '2', '病假', 'oa_leave_type', '请假类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('64', '3', '事假', 'oa_leave_type', '请假类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('65', '4', '调休', 'oa_leave_type', '请假类型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('66', '5', '婚假', 'oa_leave_type', '请假类型', 60, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', 30, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', 40, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('69', 'leave', '请假流程', 'act_type', '流程类型', 10, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('7', 'red', '红色', 'color', '颜色值', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('70', 'test_audit', '审批测试流程', 'act_type', '流程类型', 20, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('71', '1', '分类1', 'act_category', '流程分类', 10, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('72', '2', '分类2', 'act_category', '流程分类', 20, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('75', 'tree', '树结构', 'gen_category', '代码生成分类', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('76', '=', '=', 'gen_query_type', '查询方式', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('77', '!=', '!=', 'gen_query_type', '查询方式', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('8', 'green', '绿色', 'color', '颜色值', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('80', 'between', 'Between', 'gen_query_type', '查询方式', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('81', 'like', 'Like', 'gen_query_type', '查询方式', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('9', 'blue', '蓝色', 'color', '颜色值', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('90', 'userselect', '人员选择', 'gen_show_type', '字段生成方案', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('93', 'String', 'String', 'gen_java_type', 'Java类型', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('96', '1', '男', 'sex', '性别', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('97', '2', '女', 'sex', '性别', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('99', 'Double', 'Double', 'gen_java_type', 'Java类型', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('d01d612f7cb048d2aa5631d494ca9efd', '0', '有', 'status_code', '状态码', 10, '0', '1', '2018-10-07 09:31:12', '1', '2018-10-07 10:04:01', '', '0');
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `type` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '操作方式',
  `params` text COLLATE utf8_bin COMMENT '操作提交的数据',
  `exception` text COLLATE utf8_bin COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='日志表';

-- ----------------------------
-- Table structure for sys_mdict
-- ----------------------------
DROP TABLE IF EXISTS `sys_mdict`;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='多级字典表';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '链接',
  `target` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '图标',
  `is_show` char(1) COLLATE utf8_bin NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES ('0b2ebd4d639e4c2b83c2dd0764522f24', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,2,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '编辑', 60, '', '', '', '0', 'test:testData:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('0ca004d6b1bf4bcab9670a5060d82a55', '3c92c17886944d0687e73e286cada573', '0,1,2,79,3c92c17886944d0687e73e286cada573,', '树结构', 90, '/test/testTree', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('0d93997d88684ed082ca6ba25a864acf', '15a826e8449445dea77e48b7c2a57ed3', '0,1,15a826e8449445dea77e48b7c2a57ed3,', '测试站点', 30, '', '', '', '1', '', '1', '2018-10-10 11:12:40', '1', '2018-10-10 11:12:40', '', '0');
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '功能菜单', 0, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('10', '3', '0,1,2,3,', '字典管理', 60, '/sys/dict/', NULL, 'th-list', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('10dde3a3688c44bb8cd7e89ab9cc1cda', '7b563e5e347d4c7aaa2116e45a2179d1', '0,1,15a826e8449445dea77e48b7c2a57ed3,e0e38c3e5d77480bbb8b26a2e0519b8e,7b563e5e347d4c7aaa2116e45a2179d1,', '查看', 30, '', '', '', '0', 'seo:testSeo:view', '1', '2018-10-07 09:39:09', '1', '2018-10-07 09:39:09', '', '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '0,1,2,3,10,', '查看', 30, NULL, NULL, NULL, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('11a5d5d266634fdbb150853ad03b6864', 'c01391671cef47d5a3374d9288ad4602', '0,1,15a826e8449445dea77e48b7c2a57ed3,5ad2594a34be41fbaeee1c5cdd6d6e2b,c01391671cef47d5a3374d9288ad4602,', '查看', 30, '', '', '', '0', 'forumtag:pfTopicTag:view', '1', '2018-10-09 14:20:20', '1', '2018-10-09 14:20:20', '', '1');
INSERT INTO `sys_menu` VALUES ('12', '10', '0,1,2,3,10,', '修改', 40, NULL, NULL, NULL, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('13', '2', '0,1,2,', '机构用户', 970, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('14', '13', '0,1,2,13,', '区域管理', 50, '/sys/area/', NULL, 'th', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('15', '14', '0,1,2,13,14,', '查看', 30, NULL, NULL, NULL, '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('15a826e8449445dea77e48b7c2a57ed3', '1', '0,1,', '官网CMS', 100, '', '', '', '1', '', '1', '2018-10-07 09:37:02', '1', '2018-10-07 10:14:12', '', '0');
INSERT INTO `sys_menu` VALUES ('16', '14', '0,1,2,13,14,', '修改', 40, NULL, NULL, NULL, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('17', '13', '0,1,2,13,', '机构管理', 40, '/sys/office/', NULL, 'th-large', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('18', '17', '0,1,2,13,17,', '查看', 30, NULL, NULL, NULL, '0', 'sys:office:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('19', '17', '0,1,2,13,17,', '修改', 40, NULL, NULL, NULL, '0', 'sys:office:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('1b654ae3d8be4fa8b123796bff4911df', '7b563e5e347d4c7aaa2116e45a2179d1', '0,1,15a826e8449445dea77e48b7c2a57ed3,e0e38c3e5d77480bbb8b26a2e0519b8e,7b563e5e347d4c7aaa2116e45a2179d1,', '修改', 60, '', '', '', '0', 'seo:testSeo:edit', '1', '2018-10-07 09:39:28', '1', '2018-10-07 09:39:28', '', '0');
INSERT INTO `sys_menu` VALUES ('1dcf3e0727804a3e8654b89f22cde7d9', '1', '0,1,', 'CMS管理', 5030, '', '', '', '1', '', '1', '2018-10-05 09:55:28', '1', '2018-10-05 09:55:28', '', '1');
INSERT INTO `sys_menu` VALUES ('2', '1', '0,1,', '系统设置', 200, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', 30, '/sys/user/index', NULL, 'user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', 30, '', '', '', '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2018-10-07 19:35:28', '', '0');
INSERT INTO `sys_menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', 40, NULL, NULL, NULL, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('23', '2', '0,1,2,', '关于帮助', 990, '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-10-07 21:14:45', '', '0');
INSERT INTO `sys_menu` VALUES ('24', '23', '0,1,2,23,', '官方首页', 30, 'http://ai.baidu.com/', '_blank', 'circle-blank', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-10-11 14:29:51', '', '0');
INSERT INTO `sys_menu` VALUES ('25', '23', '0,1,2,23', '项目支持', 50, 'http://jeesite.com/donation.html', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('26', '23', '0,1,2,23', '论坛交流', 80, 'http://bbs.jeesite.com', '_blank', NULL, '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('27', '2', '0,1,2,', '我的面板', 100, '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-10-07 11:10:26', '', '0');
INSERT INTO `sys_menu` VALUES ('28', '27', '0,1,2,27,', '个人信息', 30, '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-10-03 22:53:00', '', '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,1,2,27,28,', '个人信息', 30, '/sys/user/info', NULL, 'user', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,1,2,', '系统设置', 980, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,1,2,27,28,', '修改密码', 40, '/sys/user/modifyPwd', NULL, 'lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('31', '2', '0,1,2,', '内容管理', 500, '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-10-07 11:10:41', '', '1');
INSERT INTO `sys_menu` VALUES ('32', '31', '0,1,2,31,', '栏目设置', 990, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('33', '32', '0,1,2,31,32', '栏目管理', 30, '/cms/category/', NULL, 'align-justify', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('34', '33', '0,1,2,31,32,33,', '查看', 30, NULL, NULL, NULL, '0', 'cms:category:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('35', '33', '0,1,2,31,32,33,', '修改', 40, NULL, NULL, NULL, '0', 'cms:category:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('35577552544c4c70a2055420ce548e06', 'cc1c0a8adb614e22a97f45a33c24d9e9', '0,1,15a826e8449445dea77e48b7c2a57ed3,0d93997d88684ed082ca6ba25a864acf,cc1c0a8adb614e22a97f45a33c24d9e9,', '修改', 60, '', '', '', '0', 'site:testSite:edit', '1', '2018-10-10 11:14:40', '1', '2018-10-10 11:18:17', '', '0');
INSERT INTO `sys_menu` VALUES ('35cbf784d4a546ba81fca52b61d1c36a', 'ae567dc4092c44adada1faf7e5b80f6a', '0,1,af31cca8de8147d3a362ba3bcaccfda5,e5a7a28e5d6b4602a38bafde0234a3f1,ae567dc4092c44adada1faf7e5b80f6a,', '修改', 60, '', '', '', '0', 'seo:testSeo:edit', '1', '2018-10-05 21:28:24', '1', '2018-10-05 21:28:24', '', '1');
INSERT INTO `sys_menu` VALUES ('36', '32', '0,1,2,31,32', '站点设置', 40, '/cms/site/', NULL, 'certificate', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('37', '36', '0,1,2,31,32,36,', '查看', 30, NULL, NULL, NULL, '0', 'cms:site:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('38', '36', '0,1,2,31,32,36,', '修改', 40, NULL, NULL, NULL, '0', 'cms:site:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('39', '32', '0,1,2,31,32', '切换站点', 50, '/cms/site/select', NULL, 'retweet', '1', 'cms:site:select', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('3c92c17886944d0687e73e286cada573', '79', '0,1,2,79,', '生成示例', 120, '', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', 30, '/sys/menu/', NULL, 'list-alt', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('40', '31', '0,1,2,31,', '内容管理', 500, NULL, NULL, NULL, '1', 'cms:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('41', '40', '0,1,2,31,40,', '内容发布', 30, '/cms/', NULL, 'briefcase', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('42', '41', '0,1,2,31,40,41,', '文章模型', 40, '/cms/article/', NULL, 'file', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('43', '42', '0,1,2,31,40,41,42,', '查看', 30, NULL, NULL, NULL, '0', 'cms:article:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('43cb3ec5487847bb808f2acc377392f7', 'cc1c0a8adb614e22a97f45a33c24d9e9', '0,1,15a826e8449445dea77e48b7c2a57ed3,0d93997d88684ed082ca6ba25a864acf,cc1c0a8adb614e22a97f45a33c24d9e9,', '查看', 30, '', '', '', '0', 'site:testSite:view', '1', '2018-10-10 11:14:21', '1', '2018-10-10 11:18:09', '', '0');
INSERT INTO `sys_menu` VALUES ('44', '42', '0,1,2,31,40,41,42,', '修改', 40, NULL, NULL, NULL, '0', 'cms:article:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('45', '42', '0,1,2,31,40,41,42,', '审核', 50, NULL, NULL, NULL, '0', 'cms:article:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('46', '41', '0,1,2,31,40,41,', '链接模型', 60, '/cms/link/', NULL, 'random', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('47', '46', '0,1,2,31,40,41,46,', '查看', 30, NULL, NULL, NULL, '0', 'cms:link:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('477ea83bec514a16a6302fe37afebf75', 'cc1c0a8adb614e22a97f45a33c24d9e9', '0,1,15a826e8449445dea77e48b7c2a57ed3,0d93997d88684ed082ca6ba25a864acf,cc1c0a8adb614e22a97f45a33c24d9e9,', '测试站点', 30, '', '', '', '1', '', '1', '2018-10-10 11:13:13', '1', '2018-10-10 11:13:13', '', '1');
INSERT INTO `sys_menu` VALUES ('48', '46', '0,1,2,31,40,41,46,', '修改', 40, NULL, NULL, NULL, '0', 'cms:link:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('4855cf3b25c244fb8500a380db189d97', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,2,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '查看', 30, '', '', '', '0', 'test:testDataMain:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('49', '46', '0,1,2,31,40,41,46,', '审核', 50, NULL, NULL, NULL, '0', 'cms:link:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', 30, NULL, NULL, NULL, '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('50', '40', '0,1,2,31,40,', '评论管理', 40, '/cms/comment/?status=2', NULL, 'comment', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('51', '50', '0,1,2,31,40,50,', '查看', 30, NULL, NULL, NULL, '0', 'cms:comment:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('52', '50', '0,1,2,31,40,50,', '审核', 40, NULL, NULL, NULL, '0', 'cms:comment:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('53', '40', '0,1,2,31,40,', '公共留言', 80, '/cms/guestbook/?status=2', NULL, 'glass', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('54', '53', '0,1,2,31,40,53,', '查看', 30, NULL, NULL, NULL, '0', 'cms:guestbook:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('55', '53', '0,1,2,31,40,53,', '审核', 40, NULL, NULL, NULL, '0', 'cms:guestbook:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('56', '71', '0,1,2,27,71,', '文件管理', 90, '/../static/ckfinder/ckfinder.html', NULL, 'folder-open', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('57', '56', '0,1,2,27,40,56,', '查看', 30, NULL, NULL, NULL, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('58', '56', '0,1,2,27,40,56,', '上传', 40, NULL, NULL, NULL, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('59', '56', '0,1,2,27,40,56,', '修改', 50, NULL, NULL, NULL, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('5ad2594a34be41fbaeee1c5cdd6d6e2b', '15a826e8449445dea77e48b7c2a57ed3', '0,1,15a826e8449445dea77e48b7c2a57ed3,', '官网论坛标签', 90, '', '', '', '1', '', '1', '2018-10-09 14:19:06', '1', '2018-10-09 14:19:06', '', '1');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', 40, NULL, NULL, NULL, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('60', '31', '0,1,2,31,', '统计分析', 600, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('61', '60', '0,1,2,31,60,', '信息量统计', 30, '/cms/stats/article', NULL, 'tasks', '1', 'cms:stats:article', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('62', '2', '0,1,2,', '在线办公', 200, '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-10-07 11:11:17', '', '1');
INSERT INTO `sys_menu` VALUES ('63', '62', '0,1,2,62,', '个人办公', 30, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('64', '63', '0,1,2,62,63,', '请假办理', 300, '/oa/leave', NULL, 'leaf', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('65', '64', '0,1,2,62,63,64,', '查看', 30, NULL, NULL, NULL, '0', 'oa:leave:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('66', '64', '0,1,2,62,63,64,', '修改', 40, NULL, NULL, NULL, '0', 'oa:leave:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('67', '2', '0,1,2,', '日志查询', 985, '', '', '', '1', '', '1', '2013-06-03 08:00:00', '1', '2018-10-03 22:52:23', '', '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,1,2,67,', '日志查询', 30, '/sys/log', NULL, 'pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('69', '62', '0,1,2,62,', '流程管理', 300, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', 50, '/sys/role/', NULL, 'lock', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('70', '69', '0,1,2,62,69,', '流程管理', 50, '/act/process', NULL, 'road', '1', 'act:process:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('71', '27', '0,1,2,27,', '文件管理', 90, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('72', '69', '0,1,2,62,69,', '模型管理', 100, '/act/model', NULL, 'road', '1', 'act:model:edit', '1', '2013-09-20 08:00:00', '1', '2013-09-20 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('73', '63', '0,1,2,62,63,', '我的任务', 50, '/act/task/todo/', NULL, 'tasks', '1', NULL, '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('74', '63', '0,1,2,62,63,', '审批测试', 100, '/oa/testAudit', NULL, NULL, '1', 'oa:testAudit:view,oa:testAudit:edit', '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('75', '1', '0,1,', '在线演示', 3000, NULL, NULL, NULL, '1', NULL, '1', '2013-10-08 08:00:00', '1', '2013-10-08 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('79', '2', '0,1,2,', '代码生成', 5000, '', '', '', '1', '', '1', '2013-10-16 08:00:00', '1', '2018-10-07 11:10:53', '', '0');
INSERT INTO `sys_menu` VALUES ('7acba400e73d4dc28e225ef42dab49b9', 'dfbd55c13f444159b36164f847efad01', '0,1,1dcf3e0727804a3e8654b89f22cde7d9,a19b8a5d1b604592a7421403276950bd,dfbd55c13f444159b36164f847efad01,', '查看', 30, '', '', '', '0', 'pseo:pSeo:view', '1', '2018-10-05 09:57:30', '1', '2018-10-05 10:32:57', '', '1');
INSERT INTO `sys_menu` VALUES ('7b563e5e347d4c7aaa2116e45a2179d1', 'e0e38c3e5d77480bbb8b26a2e0519b8e', '0,1,15a826e8449445dea77e48b7c2a57ed3,e0e38c3e5d77480bbb8b26a2e0519b8e,', '官网SEO', 30, '/seo/testSeo', '', '', '1', '', '1', '2018-10-07 09:38:50', '1', '2018-10-09 19:35:05', '', '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', 30, NULL, NULL, NULL, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('80', '79', '0,1,2,79,', '代码生成', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('81', '80', '0,1,2,79,80,', '生成方案配置', 30, '/gen/genScheme', NULL, NULL, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('82', '80', '0,1,2,79,80,', '业务表配置', 20, '/gen/genTable', NULL, NULL, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('83', '80', '0,1,79,80,', '代码模板管理', 90, '/gen/genTemplate', NULL, NULL, '1', 'gen:genTemplate:view,gen:genTemplate:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('84', '67', '0,1,2,67,', '连接池监视', 40, '/../druid', NULL, NULL, '1', NULL, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('85', '76', '0,1,75,76,', '行政区域', 80, '/../static/map/map-city.html', NULL, NULL, '1', NULL, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('86', '75', '0,1,75,', '组件演示', 50, NULL, NULL, NULL, '1', NULL, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('87', '86', '0,1,75,86,', '组件演示', 30, '/test/test/form', NULL, NULL, '1', 'test:test:view,test:test:edit', '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('88', '62', '0,1,2,62,', '通知通告', 20, '', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('89', '88', '0,1,2,62,88,', '我的通告', 30, '/oa/oaNotify/self', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', 40, NULL, NULL, NULL, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('90', '88', '0,1,2,62,88,', '通告管理', 50, '/oa/oaNotify', '', '', '1', 'oa:oaNotify:view,oa:oaNotify:edit', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '1');
INSERT INTO `sys_menu` VALUES ('99cdc6b5099a433694df2ee9b5c36a84', 'dfbd55c13f444159b36164f847efad01', '0,1,1dcf3e0727804a3e8654b89f22cde7d9,a19b8a5d1b604592a7421403276950bd,dfbd55c13f444159b36164f847efad01,', '修改', 60, '', '', '', '0', 'pseo:pSeo:edit', '1', '2018-10-05 09:58:06', '1', '2018-10-05 10:33:14', '', '1');
INSERT INTO `sys_menu` VALUES ('a19b8a5d1b604592a7421403276950bd', '1dcf3e0727804a3e8654b89f22cde7d9', '0,1,1dcf3e0727804a3e8654b89f22cde7d9,', '官网SEO', 30, '', '', '', '1', '', '1', '2018-10-05 09:55:44', '1', '2018-10-05 09:55:44', '', '1');
INSERT INTO `sys_menu` VALUES ('ae567dc4092c44adada1faf7e5b80f6a', 'e5a7a28e5d6b4602a38bafde0234a3f1', '0,1,af31cca8de8147d3a362ba3bcaccfda5,e5a7a28e5d6b4602a38bafde0234a3f1,', '官网SEO', 30, '/seo/testSeo', '', '', '1', '', '1', '2018-10-05 21:27:23', '1', '2018-10-05 21:27:23', '', '1');
INSERT INTO `sys_menu` VALUES ('af31cca8de8147d3a362ba3bcaccfda5', '1', '0,1,', '官网SEO', 5030, '', '', '', '1', '', '1', '2018-10-05 21:26:30', '1', '2018-10-05 21:26:30', '', '1');
INSERT INTO `sys_menu` VALUES ('afab2db430e2457f9cf3a11feaa8b869', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,2,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '编辑', 60, '', '', '', '0', 'test:testTree:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('b1f6d1b86ba24365bae7fd86c5082317', '3c92c17886944d0687e73e286cada573', '0,1,2,79,3c92c17886944d0687e73e286cada573,', '主子表', 60, '/test/testDataMain', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('ba8092291b40482db8fe7fc006ea3d76', '3c92c17886944d0687e73e286cada573', '0,1,2,79,3c92c17886944d0687e73e286cada573,', '单表', 30, '/test/testData', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('be5db77747c441d19d581f83602b9673', 'ae567dc4092c44adada1faf7e5b80f6a', '0,1,af31cca8de8147d3a362ba3bcaccfda5,e5a7a28e5d6b4602a38bafde0234a3f1,ae567dc4092c44adada1faf7e5b80f6a,', '查看', 30, '', '', '', '0', 'seo:testSeo:view', '1', '2018-10-05 21:28:02', '1', '2018-10-05 21:28:02', '', '1');
INSERT INTO `sys_menu` VALUES ('c01391671cef47d5a3374d9288ad4602', '5ad2594a34be41fbaeee1c5cdd6d6e2b', '0,1,15a826e8449445dea77e48b7c2a57ed3,5ad2594a34be41fbaeee1c5cdd6d6e2b,', '官网论坛标签', 30, '/forumtag/pfTopicTag', '', '', '1', '', '1', '2018-10-09 14:19:33', '1', '2018-10-09 14:19:49', '', '1');
INSERT INTO `sys_menu` VALUES ('c2e4d9082a0b4386884a0b203afe2c5c', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,2,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '查看', 30, '', '', '', '0', 'test:testTree:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('cc1c0a8adb614e22a97f45a33c24d9e9', '0d93997d88684ed082ca6ba25a864acf', '0,1,15a826e8449445dea77e48b7c2a57ed3,0d93997d88684ed082ca6ba25a864acf,', '测试站点', 230, '/site/testSite', '', '', '1', '', '1', '2018-10-10 11:12:53', '1', '2018-10-10 11:18:01', '', '0');
INSERT INTO `sys_menu` VALUES ('d15ec45a4c5449c3bbd7a61d5f9dd1d2', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,2,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '编辑', 60, '', '', '', '0', 'test:testDataMain:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('da8954b5f01d47fdb1752abfe61144be', 'c01391671cef47d5a3374d9288ad4602', '0,1,15a826e8449445dea77e48b7c2a57ed3,5ad2594a34be41fbaeee1c5cdd6d6e2b,c01391671cef47d5a3374d9288ad4602,', '修改', 60, '', '', '', '0', 'forumtag:pfTopicTag:edit', '1', '2018-10-09 14:20:39', '1', '2018-10-09 14:20:39', '', '1');
INSERT INTO `sys_menu` VALUES ('dbee335f442446d2bf1df14ed9b91c18', '80', '0,1,2,79,80,', '代码模板管理', 60, '/gen/genTemplate', '', '', '1', 'gen:genTemplate:view,gen:genTemplate:edit', '1', '2018-10-10 19:30:20', '1', '2018-10-10 19:31:06', '', '0');
INSERT INTO `sys_menu` VALUES ('df7ce823c5b24ff9bada43d992f373e2', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,2,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '查看', 30, '', '', '', '0', 'test:testData:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('dfbd55c13f444159b36164f847efad01', 'a19b8a5d1b604592a7421403276950bd', '0,1,1dcf3e0727804a3e8654b89f22cde7d9,a19b8a5d1b604592a7421403276950bd,', '官网SEO', 30, '/pseo/pSeo', '', '', '1', '', '1', '2018-10-05 09:56:59', '1', '2018-10-05 10:32:34', '', '1');
INSERT INTO `sys_menu` VALUES ('e0e38c3e5d77480bbb8b26a2e0519b8e', '15a826e8449445dea77e48b7c2a57ed3', '0,1,15a826e8449445dea77e48b7c2a57ed3,', 'SEO管理', 60, '', '', '', '1', '', '1', '2018-10-07 09:38:40', '1', '2018-10-07 10:15:59', '', '0');
INSERT INTO `sys_menu` VALUES ('e5a7a28e5d6b4602a38bafde0234a3f1', 'af31cca8de8147d3a362ba3bcaccfda5', '0,1,af31cca8de8147d3a362ba3bcaccfda5,', '官网SEO', 30, '', '', '', '1', '', '1', '2018-10-05 21:26:58', '1', '2018-10-05 21:26:58', '', '1');
COMMIT;

-- ----------------------------
-- Table structure for sys_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '归属区域',
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区域编码',
  `type` char(1) COLLATE utf8_bin NOT NULL COMMENT '机构类型',
  `grade` char(1) COLLATE utf8_bin NOT NULL COMMENT '机构等级',
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '传真',
  `email` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='机构表';

-- ----------------------------
-- Records of sys_office
-- ----------------------------
BEGIN;
INSERT INTO `sys_office` VALUES ('1', '0', '0,', '百度总部', 10, '2', '100000', '1', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2018-10-11 14:19:17', '', '0');
INSERT INTO `sys_office` VALUES ('10', '7', '0,1,7,', '市场部', 30, '3', '200003', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('11', '7', '0,1,7,', '技术部', 40, '3', '200004', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('12', '7', '0,1,7,', '历城区分公司', 0, '4', '201000', '1', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('13', '12', '0,1,7,12,', '公司领导', 10, '4', '201001', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('14', '12', '0,1,7,12,', '综合部', 20, '4', '201002', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('15', '12', '0,1,7,12,', '市场部', 30, '4', '201003', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('16', '12', '0,1,7,12,', '技术部', 40, '4', '201004', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('17', '7', '0,1,7,', '历下区分公司', 40, '5', '201010', '1', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('18', '17', '0,1,7,17,', '公司领导', 10, '5', '201011', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('19', '17', '0,1,7,17,', '综合部', 20, '5', '201012', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('2', '1', '0,1,', '公司领导', 10, '2', '100001', '2', '1', '', '', '', '15623221289', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2018-10-07 17:46:12', '', '1');
INSERT INTO `sys_office` VALUES ('20', '17', '0,1,7,17,', '市场部', 30, '5', '201013', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('21', '17', '0,1,7,17,', '技术部', 40, '5', '201014', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('22', '7', '0,1,7,', '高新区分公司', 50, '6', '201010', '1', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('23', '22', '0,1,7,22,', '公司领导', 10, '6', '201011', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('24', '22', '0,1,7,22,', '综合部', 20, '6', '201012', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('25', '22', '0,1,7,22,', '市场部', 30, '6', '201013', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('26', '22', '0,1,7,22,', '技术部', 40, '6', '201014', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('3', '1', '0,1,', '综合部', 20, '2', '100002', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('4', '1', '0,1,', '市场部', 30, '2', '100003', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('5', '1', '0,1,', '技术部', 40, '2', '100004', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('6', '95ec0763f12f4aaf9575ac81d069b260', '0,1,95ec0763f12f4aaf9575ac81d069b260,', '研发部', 50, '4', '100005', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2018-10-11 14:21:17', '', '1');
INSERT INTO `sys_office` VALUES ('7', '1', '0,1,', '济南市分公司', 20, '3', '200000', '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('7ac766af4ac749a89e015d1d1e3c20f1', '1', '0,1,', 'AI技术生态部', 30, '4', '100000001', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2018-10-11 14:23:13', '1', '2018-10-11 14:23:13', '', '0');
INSERT INTO `sys_office` VALUES ('8', '7', '0,1,7,', '公司领导', 10, '3', '200001', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('9', '7', '0,1,7,', '综合部', 20, '3', '200002', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_office` VALUES ('95ec0763f12f4aaf9575ac81d069b260', '1', '0,1,', '百度总部', 30, '4', '100000006', '1', '1', '', '', '', '', '', '', '1', '', '', '1', '2018-10-11 14:20:12', '1', '2018-10-11 14:21:01', '', '1');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `office_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `enname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES ('1', '7ac766af4ac749a89e015d1d1e3c20f1', '系统管理员', 'dept', 'assignment', '1', '1', '1', '1', '2013-05-27 08:00:00', '1', '2018-10-11 14:46:39', '', '0');
INSERT INTO `sys_role` VALUES ('2', '1', '公司管理员', 'hr', 'assignment', '2', NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_role` VALUES ('3', '1', '本公司管理员', 'a', 'assignment', '3', NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_role` VALUES ('4', '1', '部门管理员', 'b', 'assignment', '4', NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_role` VALUES ('5', '2', '本部门管理员', 'c', 'assignment', '5', '1', '1', '1', '2013-05-27 08:00:00', '1', '2018-10-09 19:57:32', '', '1');
INSERT INTO `sys_role` VALUES ('6', '7ac766af4ac749a89e015d1d1e3c20f1', '普通用户', 'd', 'assignment', '8', '1', '1', '1', '2013-05-27 08:00:00', '1', '2018-10-11 14:46:22', '', '0');
INSERT INTO `sys_role` VALUES ('7', '7', '济南市管理员', 'e', 'assignment', '9', NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES ('1', '0b2ebd4d639e4c2b83c2dd0764522f24');
INSERT INTO `sys_role_menu` VALUES ('1', '0ca004d6b1bf4bcab9670a5060d82a55');
INSERT INTO `sys_role_menu` VALUES ('1', '0d93997d88684ed082ca6ba25a864acf');
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '10dde3a3688c44bb8cd7e89ab9cc1cda');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '15a826e8449445dea77e48b7c2a57ed3');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '1b654ae3d8be4fa8b123796bff4911df');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '23');
INSERT INTO `sys_role_menu` VALUES ('1', '24');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '29');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '35577552544c4c70a2055420ce548e06');
INSERT INTO `sys_role_menu` VALUES ('1', '3c92c17886944d0687e73e286cada573');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '43cb3ec5487847bb808f2acc377392f7');
INSERT INTO `sys_role_menu` VALUES ('1', '4855cf3b25c244fb8500a380db189d97');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '57');
INSERT INTO `sys_role_menu` VALUES ('1', '58');
INSERT INTO `sys_role_menu` VALUES ('1', '59');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '68');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '71');
INSERT INTO `sys_role_menu` VALUES ('1', '79');
INSERT INTO `sys_role_menu` VALUES ('1', '7b563e5e347d4c7aaa2116e45a2179d1');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '80');
INSERT INTO `sys_role_menu` VALUES ('1', '81');
INSERT INTO `sys_role_menu` VALUES ('1', '82');
INSERT INTO `sys_role_menu` VALUES ('1', '84');
INSERT INTO `sys_role_menu` VALUES ('1', '85');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', 'afab2db430e2457f9cf3a11feaa8b869');
INSERT INTO `sys_role_menu` VALUES ('1', 'b1f6d1b86ba24365bae7fd86c5082317');
INSERT INTO `sys_role_menu` VALUES ('1', 'ba8092291b40482db8fe7fc006ea3d76');
INSERT INTO `sys_role_menu` VALUES ('1', 'c2e4d9082a0b4386884a0b203afe2c5c');
INSERT INTO `sys_role_menu` VALUES ('1', 'cc1c0a8adb614e22a97f45a33c24d9e9');
INSERT INTO `sys_role_menu` VALUES ('1', 'd15ec45a4c5449c3bbd7a61d5f9dd1d2');
INSERT INTO `sys_role_menu` VALUES ('1', 'dbee335f442446d2bf1df14ed9b91c18');
INSERT INTO `sys_role_menu` VALUES ('1', 'df7ce823c5b24ff9bada43d992f373e2');
INSERT INTO `sys_role_menu` VALUES ('1', 'e0e38c3e5d77480bbb8b26a2e0519b8e');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '10');
INSERT INTO `sys_role_menu` VALUES ('2', '11');
INSERT INTO `sys_role_menu` VALUES ('2', '12');
INSERT INTO `sys_role_menu` VALUES ('2', '13');
INSERT INTO `sys_role_menu` VALUES ('2', '14');
INSERT INTO `sys_role_menu` VALUES ('2', '15');
INSERT INTO `sys_role_menu` VALUES ('2', '16');
INSERT INTO `sys_role_menu` VALUES ('2', '17');
INSERT INTO `sys_role_menu` VALUES ('2', '18');
INSERT INTO `sys_role_menu` VALUES ('2', '19');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '20');
INSERT INTO `sys_role_menu` VALUES ('2', '21');
INSERT INTO `sys_role_menu` VALUES ('2', '22');
INSERT INTO `sys_role_menu` VALUES ('2', '23');
INSERT INTO `sys_role_menu` VALUES ('2', '24');
INSERT INTO `sys_role_menu` VALUES ('2', '25');
INSERT INTO `sys_role_menu` VALUES ('2', '26');
INSERT INTO `sys_role_menu` VALUES ('2', '27');
INSERT INTO `sys_role_menu` VALUES ('2', '28');
INSERT INTO `sys_role_menu` VALUES ('2', '29');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '30');
INSERT INTO `sys_role_menu` VALUES ('2', '31');
INSERT INTO `sys_role_menu` VALUES ('2', '32');
INSERT INTO `sys_role_menu` VALUES ('2', '33');
INSERT INTO `sys_role_menu` VALUES ('2', '34');
INSERT INTO `sys_role_menu` VALUES ('2', '35');
INSERT INTO `sys_role_menu` VALUES ('2', '36');
INSERT INTO `sys_role_menu` VALUES ('2', '37');
INSERT INTO `sys_role_menu` VALUES ('2', '38');
INSERT INTO `sys_role_menu` VALUES ('2', '39');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '40');
INSERT INTO `sys_role_menu` VALUES ('2', '41');
INSERT INTO `sys_role_menu` VALUES ('2', '42');
INSERT INTO `sys_role_menu` VALUES ('2', '43');
INSERT INTO `sys_role_menu` VALUES ('2', '44');
INSERT INTO `sys_role_menu` VALUES ('2', '45');
INSERT INTO `sys_role_menu` VALUES ('2', '46');
INSERT INTO `sys_role_menu` VALUES ('2', '47');
INSERT INTO `sys_role_menu` VALUES ('2', '48');
INSERT INTO `sys_role_menu` VALUES ('2', '49');
INSERT INTO `sys_role_menu` VALUES ('2', '5');
INSERT INTO `sys_role_menu` VALUES ('2', '50');
INSERT INTO `sys_role_menu` VALUES ('2', '51');
INSERT INTO `sys_role_menu` VALUES ('2', '52');
INSERT INTO `sys_role_menu` VALUES ('2', '53');
INSERT INTO `sys_role_menu` VALUES ('2', '54');
INSERT INTO `sys_role_menu` VALUES ('2', '55');
INSERT INTO `sys_role_menu` VALUES ('2', '56');
INSERT INTO `sys_role_menu` VALUES ('2', '57');
INSERT INTO `sys_role_menu` VALUES ('2', '58');
INSERT INTO `sys_role_menu` VALUES ('2', '59');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '60');
INSERT INTO `sys_role_menu` VALUES ('2', '61');
INSERT INTO `sys_role_menu` VALUES ('2', '62');
INSERT INTO `sys_role_menu` VALUES ('2', '63');
INSERT INTO `sys_role_menu` VALUES ('2', '64');
INSERT INTO `sys_role_menu` VALUES ('2', '65');
INSERT INTO `sys_role_menu` VALUES ('2', '66');
INSERT INTO `sys_role_menu` VALUES ('2', '67');
INSERT INTO `sys_role_menu` VALUES ('2', '68');
INSERT INTO `sys_role_menu` VALUES ('2', '69');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '70');
INSERT INTO `sys_role_menu` VALUES ('2', '71');
INSERT INTO `sys_role_menu` VALUES ('2', '72');
INSERT INTO `sys_role_menu` VALUES ('2', '73');
INSERT INTO `sys_role_menu` VALUES ('2', '74');
INSERT INTO `sys_role_menu` VALUES ('2', '75');
INSERT INTO `sys_role_menu` VALUES ('2', '76');
INSERT INTO `sys_role_menu` VALUES ('2', '77');
INSERT INTO `sys_role_menu` VALUES ('2', '78');
INSERT INTO `sys_role_menu` VALUES ('2', '79');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '80');
INSERT INTO `sys_role_menu` VALUES ('2', '81');
INSERT INTO `sys_role_menu` VALUES ('2', '82');
INSERT INTO `sys_role_menu` VALUES ('2', '83');
INSERT INTO `sys_role_menu` VALUES ('2', '84');
INSERT INTO `sys_role_menu` VALUES ('2', '85');
INSERT INTO `sys_role_menu` VALUES ('2', '86');
INSERT INTO `sys_role_menu` VALUES ('2', '87');
INSERT INTO `sys_role_menu` VALUES ('2', '88');
INSERT INTO `sys_role_menu` VALUES ('2', '89');
INSERT INTO `sys_role_menu` VALUES ('2', '9');
INSERT INTO `sys_role_menu` VALUES ('2', '90');
INSERT INTO `sys_role_menu` VALUES ('3', '1');
INSERT INTO `sys_role_menu` VALUES ('3', '10');
INSERT INTO `sys_role_menu` VALUES ('3', '11');
INSERT INTO `sys_role_menu` VALUES ('3', '12');
INSERT INTO `sys_role_menu` VALUES ('3', '13');
INSERT INTO `sys_role_menu` VALUES ('3', '14');
INSERT INTO `sys_role_menu` VALUES ('3', '15');
INSERT INTO `sys_role_menu` VALUES ('3', '16');
INSERT INTO `sys_role_menu` VALUES ('3', '17');
INSERT INTO `sys_role_menu` VALUES ('3', '18');
INSERT INTO `sys_role_menu` VALUES ('3', '19');
INSERT INTO `sys_role_menu` VALUES ('3', '2');
INSERT INTO `sys_role_menu` VALUES ('3', '20');
INSERT INTO `sys_role_menu` VALUES ('3', '21');
INSERT INTO `sys_role_menu` VALUES ('3', '22');
INSERT INTO `sys_role_menu` VALUES ('3', '23');
INSERT INTO `sys_role_menu` VALUES ('3', '24');
INSERT INTO `sys_role_menu` VALUES ('3', '25');
INSERT INTO `sys_role_menu` VALUES ('3', '26');
INSERT INTO `sys_role_menu` VALUES ('3', '27');
INSERT INTO `sys_role_menu` VALUES ('3', '28');
INSERT INTO `sys_role_menu` VALUES ('3', '29');
INSERT INTO `sys_role_menu` VALUES ('3', '3');
INSERT INTO `sys_role_menu` VALUES ('3', '30');
INSERT INTO `sys_role_menu` VALUES ('3', '31');
INSERT INTO `sys_role_menu` VALUES ('3', '32');
INSERT INTO `sys_role_menu` VALUES ('3', '33');
INSERT INTO `sys_role_menu` VALUES ('3', '34');
INSERT INTO `sys_role_menu` VALUES ('3', '35');
INSERT INTO `sys_role_menu` VALUES ('3', '36');
INSERT INTO `sys_role_menu` VALUES ('3', '37');
INSERT INTO `sys_role_menu` VALUES ('3', '38');
INSERT INTO `sys_role_menu` VALUES ('3', '39');
INSERT INTO `sys_role_menu` VALUES ('3', '4');
INSERT INTO `sys_role_menu` VALUES ('3', '40');
INSERT INTO `sys_role_menu` VALUES ('3', '41');
INSERT INTO `sys_role_menu` VALUES ('3', '42');
INSERT INTO `sys_role_menu` VALUES ('3', '43');
INSERT INTO `sys_role_menu` VALUES ('3', '44');
INSERT INTO `sys_role_menu` VALUES ('3', '45');
INSERT INTO `sys_role_menu` VALUES ('3', '46');
INSERT INTO `sys_role_menu` VALUES ('3', '47');
INSERT INTO `sys_role_menu` VALUES ('3', '48');
INSERT INTO `sys_role_menu` VALUES ('3', '49');
INSERT INTO `sys_role_menu` VALUES ('3', '5');
INSERT INTO `sys_role_menu` VALUES ('3', '50');
INSERT INTO `sys_role_menu` VALUES ('3', '51');
INSERT INTO `sys_role_menu` VALUES ('3', '52');
INSERT INTO `sys_role_menu` VALUES ('3', '53');
INSERT INTO `sys_role_menu` VALUES ('3', '54');
INSERT INTO `sys_role_menu` VALUES ('3', '55');
INSERT INTO `sys_role_menu` VALUES ('3', '56');
INSERT INTO `sys_role_menu` VALUES ('3', '57');
INSERT INTO `sys_role_menu` VALUES ('3', '58');
INSERT INTO `sys_role_menu` VALUES ('3', '59');
INSERT INTO `sys_role_menu` VALUES ('3', '6');
INSERT INTO `sys_role_menu` VALUES ('3', '60');
INSERT INTO `sys_role_menu` VALUES ('3', '61');
INSERT INTO `sys_role_menu` VALUES ('3', '62');
INSERT INTO `sys_role_menu` VALUES ('3', '63');
INSERT INTO `sys_role_menu` VALUES ('3', '64');
INSERT INTO `sys_role_menu` VALUES ('3', '65');
INSERT INTO `sys_role_menu` VALUES ('3', '66');
INSERT INTO `sys_role_menu` VALUES ('3', '67');
INSERT INTO `sys_role_menu` VALUES ('3', '68');
INSERT INTO `sys_role_menu` VALUES ('3', '69');
INSERT INTO `sys_role_menu` VALUES ('3', '7');
INSERT INTO `sys_role_menu` VALUES ('3', '70');
INSERT INTO `sys_role_menu` VALUES ('3', '71');
INSERT INTO `sys_role_menu` VALUES ('3', '72');
INSERT INTO `sys_role_menu` VALUES ('3', '73');
INSERT INTO `sys_role_menu` VALUES ('3', '74');
INSERT INTO `sys_role_menu` VALUES ('3', '75');
INSERT INTO `sys_role_menu` VALUES ('3', '76');
INSERT INTO `sys_role_menu` VALUES ('3', '77');
INSERT INTO `sys_role_menu` VALUES ('3', '78');
INSERT INTO `sys_role_menu` VALUES ('3', '79');
INSERT INTO `sys_role_menu` VALUES ('3', '8');
INSERT INTO `sys_role_menu` VALUES ('3', '80');
INSERT INTO `sys_role_menu` VALUES ('3', '81');
INSERT INTO `sys_role_menu` VALUES ('3', '82');
INSERT INTO `sys_role_menu` VALUES ('3', '83');
INSERT INTO `sys_role_menu` VALUES ('3', '84');
INSERT INTO `sys_role_menu` VALUES ('3', '85');
INSERT INTO `sys_role_menu` VALUES ('3', '86');
INSERT INTO `sys_role_menu` VALUES ('3', '87');
INSERT INTO `sys_role_menu` VALUES ('3', '88');
INSERT INTO `sys_role_menu` VALUES ('3', '89');
INSERT INTO `sys_role_menu` VALUES ('3', '9');
INSERT INTO `sys_role_menu` VALUES ('3', '90');
INSERT INTO `sys_role_menu` VALUES ('6', '0d93997d88684ed082ca6ba25a864acf');
INSERT INTO `sys_role_menu` VALUES ('6', '1');
INSERT INTO `sys_role_menu` VALUES ('6', '10dde3a3688c44bb8cd7e89ab9cc1cda');
INSERT INTO `sys_role_menu` VALUES ('6', '15a826e8449445dea77e48b7c2a57ed3');
INSERT INTO `sys_role_menu` VALUES ('6', '1b654ae3d8be4fa8b123796bff4911df');
INSERT INTO `sys_role_menu` VALUES ('6', '35577552544c4c70a2055420ce548e06');
INSERT INTO `sys_role_menu` VALUES ('6', '43cb3ec5487847bb808f2acc377392f7');
INSERT INTO `sys_role_menu` VALUES ('6', '7b563e5e347d4c7aaa2116e45a2179d1');
INSERT INTO `sys_role_menu` VALUES ('6', 'cc1c0a8adb614e22a97f45a33c24d9e9');
INSERT INTO `sys_role_menu` VALUES ('6', 'e0e38c3e5d77480bbb8b26a2e0519b8e');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-机构';

-- ----------------------------
-- Records of sys_role_office
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_office` VALUES ('7', '10');
INSERT INTO `sys_role_office` VALUES ('7', '11');
INSERT INTO `sys_role_office` VALUES ('7', '12');
INSERT INTO `sys_role_office` VALUES ('7', '13');
INSERT INTO `sys_role_office` VALUES ('7', '14');
INSERT INTO `sys_role_office` VALUES ('7', '15');
INSERT INTO `sys_role_office` VALUES ('7', '16');
INSERT INTO `sys_role_office` VALUES ('7', '17');
INSERT INTO `sys_role_office` VALUES ('7', '18');
INSERT INTO `sys_role_office` VALUES ('7', '19');
INSERT INTO `sys_role_office` VALUES ('7', '20');
INSERT INTO `sys_role_office` VALUES ('7', '21');
INSERT INTO `sys_role_office` VALUES ('7', '22');
INSERT INTO `sys_role_office` VALUES ('7', '23');
INSERT INTO `sys_role_office` VALUES ('7', '24');
INSERT INTO `sys_role_office` VALUES ('7', '25');
INSERT INTO `sys_role_office` VALUES ('7', '26');
INSERT INTO `sys_role_office` VALUES ('7', '7');
INSERT INTO `sys_role_office` VALUES ('7', '8');
INSERT INTO `sys_role_office` VALUES ('7', '9');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `company_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '登录名',
  `password` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `no` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `email` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '手机',
  `user_type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', '1', '7ac766af4ac749a89e015d1d1e3c20f1', 'admin', 'a5eaa537ee49eeb81ddeb7b4d327f98fcef83943b0cd442f06b6e3a2', '0001', '系统管理员', 'xbs1019@126.com', '17610639158', '17610639158', '1', '/userfiles/1/images/photo/2018/10/05de1b07.jpeg', '0:0:0:0:0:0:0:1', '2018-10-11 15:06:05', '1', '1', '2013-05-27 08:00:00', '1', '2018-10-11 15:06:05', '最高管理员', '0');
INSERT INTO `sys_user` VALUES ('10', '7', '11', 'jn_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0010', '济南技术部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_user` VALUES ('11', '12', '13', 'lc_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0011', '济南历城领导', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_user` VALUES ('12', '12', '18', 'lx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0012', '济南历下领导', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_user` VALUES ('13', '22', '23', 'gx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0013', '济南高新领导', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_user` VALUES ('2', '1', '2', 'sd_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0002', '管理员', '', '', '', '', '/userfiles/1/images/photo/2018/10/93a27ccc.jpeg', NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2018-10-06 21:41:03', '', '1');
INSERT INTO `sys_user` VALUES ('3', '1', '3', 'sd_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0003', '综合部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_user` VALUES ('4', '1', '4', 'sd_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0004', '市场部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_user` VALUES ('5', '1', '5', 'sd_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0005', '技术部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_user` VALUES ('6', '1', '6', 'sd_yfb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0006', '研发部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_user` VALUES ('6aed48bd6d83477589f74ede00d5f4a7', '1', '7ac766af4ac749a89e015d1d1e3c20f1', 'user', 'c03972532854b436bd79c7454e63ddeb49392389f578a478501ac2c0', '1019', '史艳军', '', '18978675645', '', '3', '/userfiles/1/images/photo/2018/10/93a27ccc.jpeg', '0:0:0:0:0:0:0:1', '2018-10-11 14:33:22', '1', '1', '2018-10-07 10:13:04', '1', '2018-10-11 15:05:03', '', '0');
INSERT INTO `sys_user` VALUES ('7', '7', '8', 'jn_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0007', '济南领导', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_user` VALUES ('8', '7', '9', 'jn_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0008', '济南综合部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_user` VALUES ('9', '7', '10', 'jn_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0009', '济南市场部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('10', '2');
INSERT INTO `sys_user_role` VALUES ('11', '3');
INSERT INTO `sys_user_role` VALUES ('12', '4');
INSERT INTO `sys_user_role` VALUES ('13', '5');
INSERT INTO `sys_user_role` VALUES ('14', '6');
INSERT INTO `sys_user_role` VALUES ('2', '1');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('4', '3');
INSERT INTO `sys_user_role` VALUES ('5', '4');
INSERT INTO `sys_user_role` VALUES ('6', '5');
INSERT INTO `sys_user_role` VALUES ('6aed48bd6d83477589f74ede00d5f4a7', '6');
INSERT INTO `sys_user_role` VALUES ('7', '2');
INSERT INTO `sys_user_role` VALUES ('7', '7');
INSERT INTO `sys_user_role` VALUES ('8', '2');
INSERT INTO `sys_user_role` VALUES ('9', '1');
COMMIT;

-- ----------------------------
-- Table structure for test_data
-- ----------------------------
DROP TABLE IF EXISTS `test_data`;
CREATE TABLE `test_data` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `user_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `sex` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务数据表';

-- ----------------------------
-- Table structure for test_data_child
-- ----------------------------
DROP TABLE IF EXISTS `test_data_child`;
CREATE TABLE `test_data_child` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `test_data_main_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '业务主表ID',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_child_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务数据子表';

-- ----------------------------
-- Table structure for test_data_main
-- ----------------------------
DROP TABLE IF EXISTS `test_data_main`;
CREATE TABLE `test_data_main` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `user_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `sex` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_main_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务数据表';

-- ----------------------------
-- Table structure for test_seo
-- ----------------------------
DROP TABLE IF EXISTS `test_seo`;
CREATE TABLE `test_seo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url_path` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '路径',
  `seo_title` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'seo标题',
  `seo_keyword` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'seokeyword',
  `seo_desc` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'seo desc',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `status_code` int(2) DEFAULT '0' COMMENT '状态码',
  `seo_img_json` varchar(6000) COLLATE utf8_bin DEFAULT NULL COMMENT '图片地址json数组',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='官网SEO';

-- ----------------------------
-- Records of test_seo
-- ----------------------------
BEGIN;
INSERT INTO `test_seo` VALUES (1, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 0, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (2, '路径2', 'db_master_myjeesite', '关键字2', '描述2', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 0, '图片地址2', '备注信息2', '0');
INSERT INTO `test_seo` VALUES (3, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (4, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (5, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (6, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (7, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (8, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (9, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (10, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (11, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (12, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (13, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (14, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (15, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (16, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (17, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (18, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (19, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (20, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (21, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (22, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (23, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (24, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (25, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (26, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (27, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (28, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (29, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (30, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (31, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
INSERT INTO `test_seo` VALUES (32, '路径1', 'db_master_myjeesite', '关键字1', '描述1', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', '2018-10-07 10:57:29', '6aed48bd6d83477589f74ede00d5f4a7', 1, '图片地址1', '备注信息1', '0');
COMMIT;

-- ----------------------------
-- Table structure for test_site
-- ----------------------------
DROP TABLE IF EXISTS `test_site`;
CREATE TABLE `test_site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of test_site
-- ----------------------------
BEGIN;
INSERT INTO `test_site` VALUES (1, 'master测试site名称1');
INSERT INTO `test_site` VALUES (2, '测试添加');
COMMIT;

-- ----------------------------
-- Table structure for test_tree
-- ----------------------------
DROP TABLE IF EXISTS `test_tree`;
CREATE TABLE `test_tree` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_tree_del_flag` (`del_flag`),
  KEY `test_data_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='树结构表';

SET FOREIGN_KEY_CHECKS = 1;
