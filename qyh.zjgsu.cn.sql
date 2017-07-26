/*
Navicat MySQL Data Transfer

Source Server         : 120.92.162.72
Source Server Version : 50552
Source Host           : 120.92.162.72:3306
Source Database       : qyh.zjgsu.cn

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2017-07-26 12:45:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_ad`
-- ----------------------------
DROP TABLE IF EXISTS `sys_ad`;
CREATE TABLE `sys_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL COMMENT '广告名称',
  `ad_url` varchar(255) DEFAULT NULL,
  `ad_icon` varchar(255) DEFAULT NULL,
  `ad_position` varchar(255) DEFAULT NULL,
  `ad_content` text COMMENT '广告内容',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(11) DEFAULT '0',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_admin`
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(128) NOT NULL DEFAULT '' COMMENT '登录密码；sp_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `avatar_cdn` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `last_login_ip` varchar(16) DEFAULT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_admin
-- ----------------------------
INSERT INTO `sys_admin` VALUES ('1', 'admin', '###0b43054be4eeb0bbb69268247f8af39131c5a61a', 'admin', '1107811460@qq.com', null, null, '0', '221.12.10.218', '2017-06-08 13:20:24', '2017-04-21 08:27:28', '1', '1', '15757129357');
INSERT INTO `sys_admin` VALUES ('2', 'qyh', '###0b43054be4eeb0bbb69268247f8af39131c5a61a', '信电学院管理员', '23232@qq.com', null, null, '0', '221.12.10.218', '2017-05-13 11:25:20', '2017-04-22 10:02:21', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('3', 'glgcydzswxy', '###cad1c2993101648a53ba485340062fc16249566d', '管理工程与电子商务学院管理员', 'gl@qq.com', null, null, '0', '221.12.10.218', '2017-06-10 15:03:02', '2017-05-12 22:33:29', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('4', 'spyswgcxy', '###fe4097f6a3b0389126af79307c36b193ba903470', '食品与生物工程学院管理员', 'sp@qq.com', null, null, '0', '221.12.10.218', '2017-06-16 11:07:48', '2017-05-12 22:40:02', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('5', 'jsjyxxgcxy', '###29c006f088e5eb23d361a9e4f97d6c7507e4e341', '计算机与信息工程学院管理员', 'jsj@qq.com', null, null, '0', '221.12.10.218', '2017-06-22 14:26:19', '2017-05-12 22:40:36', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('6', 'fxyzscqxy', '###746c2a0af6f58f8d4f379ce1399756718754ac51', '法学院、知识产权学院管理员', 'fxy@qq.com', null, null, '0', '221.12.10.218', '2017-06-06 16:31:29', '2017-05-12 22:41:08', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('7', 'ggglxy', '###b112a83345da2702984bff18ff1a5660eac58121', '公共管理学院管理员', 'gg@qq.com', null, null, '0', '221.12.10.218', '2017-07-17 15:18:23', '2017-05-12 22:41:47', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('8', 'lyycxghxy', '###abb3977c0c5537f21b7127c987980423f5be4919', '旅游与城乡规划学院管理员', 'ly@qq.com', null, null, '0', '221.12.10.218', '2017-06-23 09:47:59', '2017-05-12 22:43:12', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('9', 'cwykjxy', '###aac59681907763db9fa368fafc5085ae9d4035e1', '财务与会计学院管理员', 'cw@qq.com', null, null, '0', '221.12.10.218', '2017-06-21 11:03:21', '2017-05-12 22:43:35', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('10', 'gsglxy', '###92e156036228ad4d3a14458057e6e998ab7c3a3f', '工商管理学院管理员', 'gs@qq.com', null, null, '0', '221.12.10.218', '2017-06-09 14:31:43', '2017-05-12 22:44:01', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('11', 'jjxy', '###446d299e978a189334a32d7ae1e9b0038b113641', '经济学院管理员', 'jj@qq.com', null, null, '0', '221.12.10.218', '2017-06-08 08:23:25', '2017-05-12 22:44:25', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('12', 'tjysxxy', '###7a99d6713f365131ca1b1aff6fc3850c0b527b36', '统计与数学学院管理员', 'tj@qq.com', null, null, '0', '221.12.10.218', '2017-06-16 14:23:11', '2017-05-12 22:44:51', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('13', 'jrxy', '###edc66555173c8cb6d156a09f1c03c1b0ce7c7ed4', '金融学院管理员', 'jr@qq.com', null, null, '0', '221.12.10.218', '2017-06-08 10:37:55', '2017-05-12 22:45:17', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('14', 'yssjxy', '###364518cac26033b514733b7e15fada67878d5081', '艺术设计学院管理员', 'ys@qq.com', null, null, '0', '221.12.10.218', '2017-06-23 14:57:31', '2017-05-12 22:45:42', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('15', 'rwycbxy', '###b9385e8b3319c5c3cb37bfe5fd8a12289d56b80a', '人文与传播学院管理员', 'rw@qq.com', null, null, '0', '221.12.10.218', '2017-06-09 14:30:43', '2017-05-12 22:46:06', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('16', 'xxydzgcxy', '###9be17fe3762abd0cc63080e05faf5e0200a84deb', '信息与电子工程学院管理员', 'siee@qq.com', null, null, '0', '221.12.10.218', '2017-06-28 09:37:04', '2017-05-12 22:46:46', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('17', 'wgyxy', '###ffe3f25507604064adbf44eddbc9a46b6e4df0c7', '外国语学院管理员', 'wgy@qq.com', null, null, '0', '221.12.10.218', '2017-06-19 14:54:57', '2017-05-12 22:47:08', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('18', 'dfyywhxy', '###6e4ff2b50034b65f6ab9cf59de207acac40a2932', '东方语言文化学院管理员', 'df@qq.com', null, null, '0', '221.12.10.218', '2017-06-23 10:47:32', '2017-05-12 22:47:35', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('19', 'rmwzxy', '###c3f71e41604aff71ba3236678f30f69d46dcf9dd', '人民武装学院管理员', 'rm@qq.com', null, null, '0', null, '2000-01-01 00:00:00', '2017-05-12 22:47:57', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('20', 'hjkxygcxy', '###8da810334425b29956ee5182e0f65feb14082d17', '环境科学与工程学院管理员', 'hj@qq.com', null, null, '0', '221.12.10.218', '2017-07-18 09:41:05', '2017-05-12 22:48:18', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('21', 'mkszyxy', '###f4f76c8ea42f9c66bf4370125dbba432cf21cd87', '马克思主义学院管理员', 'mks@qq.com', null, null, '0', '112.17.240.41', '2017-06-08 20:00:00', '2017-05-12 22:48:42', '1', '1', '');
INSERT INTO `sys_admin` VALUES ('22', 'hzsxy', '###9296ccef4aaa4cbe31edd52b68dd17f7a1d480d3', '杭州商学院管理员', '45@qq.com', null, null, '0', '202.96.99.60', '2017-06-13 10:16:09', '2017-06-05 12:33:52', '1', '1', '');

-- ----------------------------
-- Table structure for `sys_auth_access`
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_access`;
CREATE TABLE `sys_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
-- Records of sys_auth_access
-- ----------------------------
INSERT INTO `sys_auth_access` VALUES ('2', 'admin/db/pass', 'admin_url');
INSERT INTO `sys_auth_access` VALUES ('2', 'admin/db/notpass', 'admin_url');

-- ----------------------------
-- Table structure for `sys_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_rule`;
CREATE TABLE `sys_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '1' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='权限规则表';

-- ----------------------------
-- Records of sys_auth_rule
-- ----------------------------
INSERT INTO `sys_auth_rule` VALUES ('1', 'Admin', 'admin_url', 'admin/menu/index', '', '后台菜单', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('2', 'Admin', 'admin_url', 'admin/menu/add', '', '添加菜单', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('3', 'Admin', 'admin_url', 'admin/menu/add_post', '', '提交添加', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('4', 'Admin', 'admin_url', 'admin/menu/listorders', '', '后台菜单排序', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('5', 'Admin', 'admin_url', 'admin/menu/edit', '', '编辑菜单', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('6', 'Admin', 'admin_url', 'admin/menu/edit_post', '', '提交编辑', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('7', 'Admin', 'admin_url', 'admin/menu/delete', '', '删除菜单', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('8', 'Admin', 'admin_url', 'admin/menu/lists', '', '所有菜单', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('9', 'Admin', 'admin_url', 'admin/setting/default', '', '设置', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('10', 'Admin', 'admin_url', 'admin/setting/userdefault', '', '个人信息', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('11', 'Admin', 'admin_url', 'admin/setting/userinfo', '', '修改信息', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('12', 'Admin', 'admin_url', 'admin/setting/userinfo_post', '', '修改信息提交', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('13', 'Admin', 'admin_url', 'admin/setting/password', '', '修改密码', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('14', 'Admin', 'admin_url', 'admin/setting/password_post', '', '提交修改', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('15', 'Admin', 'admin_url', 'admin/setting/site', '', '网站信息', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('16', 'Admin', 'admin_url', 'admin/setting/site_post', '', '提交修改', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('17', 'Admin', 'admin_url', 'admin/setting/clearcache', '', '清除缓存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('18', 'User', 'admin_url', 'user/indexadmin/default', '', '用户管理', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('19', 'User', 'admin_url', 'user/indexadmin/default3', '', '管理组', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('20', 'Admin', 'admin_url', 'admin/rbac/index', '', '角色管理', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('21', 'Admin', 'admin_url', 'admin/rbac/member', '', '成员管理', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('22', 'Admin', 'admin_url', 'admin/rbac/authorize', '', '权限设置', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('23', 'Admin', 'admin_url', 'admin/rbac/authorize_post', '', '提交设置', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('24', 'Admin', 'admin_url', 'admin/rbac/roleedit', '', '编辑角色', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('25', 'Admin', 'admin_url', 'admin/rbac/roleedit_post', '', '提交编辑', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('26', 'Admin', 'admin_url', 'admin/rbac/roledelete', '', '删除角色', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('27', 'Admin', 'admin_url', 'admin/rbac/roleadd', '', '添加角色', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('28', 'Admin', 'admin_url', 'admin/rbac/roleadd_post', '', '提交添加', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('29', 'Admin', 'admin_url', 'admin/admin/index', '', '管理员', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('30', 'Admin', 'admin_url', 'admin/admin/delete', '', '删除管理员', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('31', 'Admin', 'admin_url', 'admin/admin/edit', '', '管理员编辑', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('32', 'Admin', 'admin_url', 'admin/admin/edit_post', '', '编辑提交', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('33', 'Admin', 'admin_url', 'admin/admin/add', '', '管理员添加', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('34', 'Admin', 'admin_url', 'admin/admin/add_post', '', '添加提交', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('36', 'Admin', 'admin_url', 'admin/nav/add', '', '添加菜单', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('37', 'Admin', 'admin_url', 'admin/nav/add_post', '', '菜单提交', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('38', 'Admin', 'admin_url', 'admin/nav/edit', '', '编辑菜单', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('39', 'Admin', 'admin_url', 'admin/nav/edit_post', '', '提交保存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('40', 'Admin', 'admin_url', 'admin/nav/listorders', '', '菜单排序', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('41', 'Admin', 'admin_url', 'admin/nav/delete', '', '删除菜单', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('42', 'Admin', 'admin_url', 'admin/navcat/index', '', '菜单分类', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('43', 'Admin', 'admin_url', 'admin/navcat/add', '', '添加分类', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('44', 'Admin', 'admin_url', 'admin/navcat/add_post', '', '提交', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('45', 'Admin', 'admin_url', 'admin/navcat/edit', '', '编辑分类', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('46', 'Admin', 'admin_url', 'admin/navcat/edit_post', '', '提交', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('47', 'Admin', 'admin_url', 'admin/navcat/delete', '', '删除分类', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('48', 'Admin', 'admin_url', 'admin/default/default', '', '内容管理', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('49', 'Admin', 'admin_url', 'admin/adminterm/index', '', '分类管理', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('50', 'Admin', 'admin_url', 'admin/adminterm/add', '', '添加分类', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('51', 'Admin', 'admin_url', 'admin/adminterm/add_post', '', '提交保存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('52', 'Admin', 'admin_url', 'admin/adminterm/edit', '', '编辑分类', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('53', 'Admin', 'admin_url', 'admin/adminterm/edit_post', '', '提交保存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('54', 'Admin', 'admin_url', 'admin/adminterm/listorders', '', '分类排序', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('55', 'Admin', 'admin_url', 'admin/adminterm/delete', '', '删除分类', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('56', 'Admin', 'admin_url', 'admin/adminpost/index', '', '文章管理', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('57', 'Admin', 'admin_url', 'admin/adminpost/add', '', '新增文章', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('58', 'Admin', 'admin_url', 'admin/adminpost/add_post', '', '提交保存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('59', 'Admin', 'admin_url', 'admin/adminpost/edit', '', '编辑文章', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('60', 'Admin', 'admin_url', 'admin/adminpost/edit_post', '', '保存提交', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('61', 'Admin', 'admin_url', 'admin/adminpost/listorders', '', '文章排序', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('62', 'Admin', 'admin_url', 'admin/adminpost/delete', '', '删除文章', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('63', 'Admin', 'admin_url', 'admin/adminpost/check', '', '文章审核', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('64', 'Admin', 'admin_url', 'admin/adminpost/top', '', '文章置顶', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('65', 'Admin', 'admin_url', 'admin/adminpost/move', '', '批量移动', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('66', 'Admin', 'admin_url', 'admin/adminpost/recyclebin', '', '回收站', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('67', 'Admin', 'admin_url', 'admin/adminpost/clean', '', '彻底删除', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('68', 'Admin', 'admin_url', 'admin/adminpost/restore', '', '文章还原', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('69', 'Admin', 'admin_url', 'admin/adminpage/index', '', '页面管理', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('70', 'Admin', 'admin_url', 'admin/adminpage/add', '', '添加页面', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('71', 'Admin', 'admin_url', 'admin/adminpage/add_post', '', '页面提交', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('72', 'Admin', 'admin_url', 'admin/adminpage/edit', '', '编辑页面', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('73', 'Admin', 'admin_url', 'admin/adminpage/edit_post', '', '编辑保存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('74', 'Admin', 'admin_url', 'admin/adminpage/delete', '', '删除页面', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('75', 'Admin', 'admin_url', 'admin/adminpage/recyclebin', '', '页面回收', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('76', 'Admin', 'admin_url', 'admin/adminpost/default', '', '回收站', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('77', 'Admin', 'admin_url', 'admin/adminpage/restore', '', '页面还原', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('78', 'Admin', 'admin_url', 'admin/adminpage/clean', '', '页面删除', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('79', 'Admin', 'admin_url', 'admin/ad/index', '', '广告管理', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('80', 'Admin', 'admin_url', 'admin/ad/add', '', '添加广告', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('81', 'Admin', 'admin_url', 'admin/ad/add_post', '', '保存提交', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('82', 'Admin', 'admin_url', 'admin/ad/edit', '', '编辑广告', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('83', 'Admin', 'admin_url', 'admin/ad/edit_post', '', '编辑保存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('84', 'Admin', 'admin_url', 'admin/ad/delete', '', '删除广告', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('85', 'Admin', 'admin_url', 'admin/ad/toggle', '', '显示/隐藏', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('86', 'Admin', 'admin_url', 'admin/ad/listorders', '', '广告排序', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('87', 'Admin', 'admin_url', 'admin/slide/default', '', '轮播图管理', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('88', 'Admin', 'admin_url', 'admin/slidecat/index', '', '轮播图分类', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('89', 'Admin', 'admin_url', 'admin/slidecat/add', '', '添加分类', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('90', 'Admin', 'admin_url', 'admin/slidecat/add_post', '', '添加提交', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('91', 'Admin', 'admin_url', 'admin/slidecat/edit', '', '分类编辑', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('92', 'Admin', 'admin_url', 'admin/slidecat/edit_post', '', '编辑保存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('93', 'Admin', 'admin_url', 'admin/slidecat/delete', '', '删除分类', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('94', 'Admin', 'admin_url', 'admin/slide/index', '', '图片管理', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('95', 'Admin', 'admin_url', 'admin/slide/add', '', '添加图片', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('96', 'Admin', 'admin_url', 'admin/slide/edit', '', '编辑图片', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('97', 'Admin', 'admin_url', 'admin/slide/delete', '', '删除图片', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('98', 'Admin', 'admin_url', 'admin/slide/toggle', '', '批量隐藏/显示', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('99', 'Admin', 'admin_url', 'admin/slide/ban', '', '单个隐藏', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('100', 'Admin', 'admin_url', 'admin/slide/cancelban', '', '单个显示', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('101', 'Admin', 'admin_url', 'admin/slide/listorders', '', '图片排序', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('102', 'Admin', 'admin_url', 'admin/slide/edit_post', '', '编辑保存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('103', 'Admin', 'admin_url', 'admin/slide/add_post', '', '添加保存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('105', 'Admin', 'admin_url', 'admin/backup/default', '', '备份管理', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('106', 'Admin', 'admin_url', 'admin/backup/index', '', '数据备份', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('107', 'Admin', 'admin_url', 'admin/backup/restore', '', '数据恢复', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('108', 'Admin', 'admin_url', 'admin/backup/del_backup', null, '删除备份', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('109', 'Admin', 'admin_url', 'admin/backup/download', null, '下载备份', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('110', 'Admin', 'admin_url', 'admin/backup/import', null, '数据导入', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('111', 'Admin', 'admin_url', 'admin/log/index', null, '系统日志', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('112', 'Admin', 'admin_url', 'admin/link/index', null, '常用链接', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('113', 'Admin', 'admin_url', 'admin/link/add', null, '添加链接', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('114', 'Admin', 'admin_url', 'admin/link/edit', null, '编辑链接', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('115', 'Admin', 'admin_url', 'admin/link/toggle', null, '显示隐藏', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('116', 'Admin', 'admin_url', 'admin/link/delete', null, '删除链接', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('117', 'Admin', 'admin_url', 'admin/link/listorders', null, '排序', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('118', 'Admin', 'admin_url', 'admin/link/add_post', null, '提交保存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('119', 'Admin', 'admin_url', 'admin/link/edit_post', null, '编辑保存', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('120', 'Admin', 'admin_url', 'admin/adminpost/unindex', null, '未审核文章', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('121', 'Admin', 'admin_url', 'admin/dbcontroller/pass', null, '已通过确认', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('122', 'Admin', 'admin_url', 'admin/db/pass', null, '未通过确认', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('123', 'Admin', 'admin_url', 'admin/db/notpass', null, '通过学院确认名单', '1', '');

-- ----------------------------
-- Table structure for `sys_links`
-- ----------------------------
DROP TABLE IF EXISTS `sys_links`;
CREATE TABLE `sys_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `link_type` varchar(255) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT NULL COMMENT '链接与网站的关系',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of sys_links
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` char(20) NOT NULL COMMENT '应用名称app',
  `model` char(20) NOT NULL COMMENT '控制器',
  `action` char(20) NOT NULL COMMENT '操作名称',
  `data` char(50) NOT NULL COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', 'Admin', 'Menu', 'default', '', '1', '1', '菜单管理', 'list', '', '20');
INSERT INTO `sys_menu` VALUES ('2', '1', 'Admin', 'Menu', 'index', '', '1', '1', '后台菜单', '', '', '0');
INSERT INTO `sys_menu` VALUES ('3', '2', 'Admin', 'Menu', 'add', '', '1', '0', '添加菜单', '', '', '0');
INSERT INTO `sys_menu` VALUES ('4', '3', 'Admin', 'Menu', 'add_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `sys_menu` VALUES ('5', '2', 'Admin', 'Menu', 'listorders', '', '1', '0', '后台菜单排序', '', '', '0');
INSERT INTO `sys_menu` VALUES ('6', '2', 'Admin', 'Menu', 'export_menu', '', '1', '0', '菜单备份', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('7', '2', 'Admin', 'Menu', 'edit', '', '1', '0', '编辑菜单', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('8', '7', 'Admin', 'Menu', 'edit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `sys_menu` VALUES ('9', '2', 'Admin', 'Menu', 'delete', '', '1', '0', '删除菜单', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('10', '2', 'Admin', 'Menu', 'lists', '', '1', '0', '所有菜单', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('21', '20', 'User', 'Indexadmin', 'default3', '', '1', '1', '管理组', '', '', '0');
INSERT INTO `sys_menu` VALUES ('20', '0', 'User', 'Indexadmin', 'default', '', '1', '1', '用户管理', 'group', '', '10');
INSERT INTO `sys_menu` VALUES ('22', '21', 'Admin', 'Rbac', 'index', '', '1', '1', '角色管理', '', '', '0');
INSERT INTO `sys_menu` VALUES ('23', '22', 'Admin', 'Rbac', 'member', '', '1', '0', '成员管理', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('24', '22', 'Admin', 'Rbac', 'authorize', '', '1', '0', '权限设置', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('25', '24', 'Admin', 'Rbac', 'authorize_post', '', '1', '0', '提交设置', '', '', '0');
INSERT INTO `sys_menu` VALUES ('26', '22', 'Admin', 'Rbac', 'roleedit', '', '1', '0', '编辑角色', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('27', '26', 'Admin', 'Rbac', 'roleedit_post', '', '1', '0', '提交编辑', '', '', '0');
INSERT INTO `sys_menu` VALUES ('28', '22', 'Admin', 'Rbac', 'roledelete', '', '1', '1', '删除角色', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('29', '22', 'Admin', 'Rbac', 'roleadd', '', '1', '1', '添加角色', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('30', '29', 'Admin', 'Rbac', 'roleadd_post', '', '1', '0', '提交添加', '', '', '0');
INSERT INTO `sys_menu` VALUES ('31', '21', 'Admin', 'Admin', 'index', '', '1', '1', '管理员', '', '', '0');
INSERT INTO `sys_menu` VALUES ('32', '31', 'Admin', 'Admin', 'delete', '', '1', '0', '删除管理员', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('33', '31', 'Admin', 'Admin', 'edit', '', '1', '0', '管理员编辑', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('34', '33', 'Admin', 'Admin', 'edit_post', '', '1', '0', '编辑提交', '', '', '0');
INSERT INTO `sys_menu` VALUES ('35', '31', 'Admin', 'Admin', 'add', '', '1', '0', '管理员添加', '', '', '1000');
INSERT INTO `sys_menu` VALUES ('36', '35', 'Admin', 'Admin', 'add_post', '', '1', '0', '添加提交', '', '', '0');
INSERT INTO `sys_menu` VALUES ('38', '37', 'Admin', 'Nav', 'add', '', '1', '0', '添加菜单', '', '', '0');
INSERT INTO `sys_menu` VALUES ('39', '38', 'Admin', 'Nav', 'add_post', '', '0', '0', '菜单提交', '', '', '0');
INSERT INTO `sys_menu` VALUES ('40', '37', 'Admin', 'Nav', 'edit', '', '1', '0', '编辑菜单', '', '', '0');
INSERT INTO `sys_menu` VALUES ('41', '40', 'Admin', 'Nav', 'edit_post', '', '0', '0', '提交保存', '', '', '0');
INSERT INTO `sys_menu` VALUES ('42', '37', 'Admin', 'Nav', 'listorders', '', '1', '0', '菜单排序', '', '', '0');
INSERT INTO `sys_menu` VALUES ('43', '37', 'Admin', 'Nav', 'delete', '', '1', '0', '删除菜单', '', '', '0');
INSERT INTO `sys_menu` VALUES ('125', '0', 'Admin', 'Db', 'notpass', '', '1', '1', '通过学院确认名单', 'cc', '', '0');
INSERT INTO `sys_menu` VALUES ('45', '44', 'Admin', 'Navcat', 'add', '', '1', '0', '添加分类', '', '', '0');
INSERT INTO `sys_menu` VALUES ('46', '45', 'Admin', 'Navcat', 'add_post', '', '0', '0', '提交', '', '', '0');
INSERT INTO `sys_menu` VALUES ('47', '44', 'Admin', 'Navcat', 'edit', '', '1', '0', '编辑分类', '', '', '0');
INSERT INTO `sys_menu` VALUES ('48', '47', 'Admin', 'Navcat', 'edit_post', '', '0', '0', '提交', '', '', '0');
INSERT INTO `sys_menu` VALUES ('49', '44', 'Admin', 'Navcat', 'delete', '', '1', '0', '删除分类', '', '', '0');
INSERT INTO `sys_menu` VALUES ('51', '50', 'Admin', 'AdminTerm', 'index', '', '1', '1', '分类管理', '', '', '2');
INSERT INTO `sys_menu` VALUES ('52', '51', 'Admin', 'AdminTerm', 'add', '', '1', '0', '添加分类', '', '', '0');
INSERT INTO `sys_menu` VALUES ('53', '52', 'Admin', 'AdminTerm', 'add_post', '', '0', '0', '提交保存', '', '', '0');
INSERT INTO `sys_menu` VALUES ('54', '51', 'Admin', 'AdminTerm', 'edit', '', '1', '0', '编辑分类', '', '', '0');
INSERT INTO `sys_menu` VALUES ('55', '54', 'Admin', 'AdminTerm', 'edit_post', '', '0', '0', '提交保存', '', '', '0');
INSERT INTO `sys_menu` VALUES ('56', '51', 'Admin', 'AdminTerm', 'listorders', '', '1', '0', '分类排序', '', '', '0');
INSERT INTO `sys_menu` VALUES ('57', '51', 'Admin', 'AdminTerm', 'delete', '', '1', '0', '删除分类', '', '', '0');
INSERT INTO `sys_menu` VALUES ('58', '50', 'Admin', 'AdminPost', 'index', '', '1', '1', '文章管理', '', '', '1');
INSERT INTO `sys_menu` VALUES ('59', '58', 'Admin', 'AdminPost', 'add', '', '1', '0', '新增文章', '', '', '0');
INSERT INTO `sys_menu` VALUES ('60', '59', 'Admin', 'AdminPost', 'add_post', '', '0', '0', '提交保存', '', '', '0');
INSERT INTO `sys_menu` VALUES ('61', '58', 'Admin', 'AdminPost', 'edit', '', '1', '0', '编辑文章', '', '', '0');
INSERT INTO `sys_menu` VALUES ('62', '61', 'Admin', 'AdminPost', 'edit_post', '', '0', '0', '保存提交', '', '', '0');
INSERT INTO `sys_menu` VALUES ('63', '58', 'Admin', 'AdminPost', 'listorders', '', '1', '0', '文章排序', '', '', '0');
INSERT INTO `sys_menu` VALUES ('64', '58', 'Admin', 'AdminPost', 'delete', '', '1', '0', '删除文章', '', '', '0');
INSERT INTO `sys_menu` VALUES ('65', '58', 'Admin', 'AdminPost', 'check', '', '1', '0', '文章审核', '', '', '0');
INSERT INTO `sys_menu` VALUES ('66', '58', 'Admin', 'AdminPost', 'top', '', '1', '0', '文章置顶', '', '', '0');
INSERT INTO `sys_menu` VALUES ('67', '58', 'Admin', 'AdminPost', 'move', '', '1', '0', '批量移动', '', '', '0');
INSERT INTO `sys_menu` VALUES ('68', '50', 'Admin', 'AdminPost', 'default', '', '1', '1', '回收站', '', '', '4');
INSERT INTO `sys_menu` VALUES ('69', '78', 'Admin', 'AdminPost', 'clean', '', '1', '0', '彻底删除', '', '', '0');
INSERT INTO `sys_menu` VALUES ('70', '78', 'Admin', 'AdminPost', 'restore', '', '1', '0', '文章还原', '', '', '0');
INSERT INTO `sys_menu` VALUES ('71', '50', 'Admin', 'AdminPage', 'index', '', '1', '1', '页面管理', '', '', '3');
INSERT INTO `sys_menu` VALUES ('72', '71', 'Admin', 'AdminPage', 'add', '', '1', '0', '添加页面', '', '', '0');
INSERT INTO `sys_menu` VALUES ('73', '72', 'Admin', 'AdminPage', 'add_post', '', '0', '0', '页面提交', '', '', '0');
INSERT INTO `sys_menu` VALUES ('74', '71', 'Admin', 'AdminPage', 'edit', '', '1', '0', '编辑页面', '', '', '0');
INSERT INTO `sys_menu` VALUES ('75', '74', 'Admin', 'AdminPage', 'edit_post', '', '0', '0', '编辑保存', '', '', '0');
INSERT INTO `sys_menu` VALUES ('76', '71', 'Admin', 'AdminPage', 'delete', '', '1', '0', '删除页面', '', '', '0');
INSERT INTO `sys_menu` VALUES ('77', '68', 'Admin', 'AdminPage', 'recyclebin', '', '1', '1', '页面回收', '', '', '0');
INSERT INTO `sys_menu` VALUES ('78', '68', 'Admin', 'AdminPost', 'recyclebin', '', '1', '1', '文章回收', '', '', '0');
INSERT INTO `sys_menu` VALUES ('79', '77', 'Admin', 'AdminPage', 'restore', '', '1', '0', '页面还原', '', '', '0');
INSERT INTO `sys_menu` VALUES ('80', '77', 'Admin', 'AdminPage', 'clean', '', '1', '0', '页面删除', '', '', '0');
INSERT INTO `sys_menu` VALUES ('82', '81', 'Admin', 'Ad', 'add', '', '1', '0', '添加广告', '', '', '0');
INSERT INTO `sys_menu` VALUES ('83', '81', 'Admin', 'Ad', 'add_post', '', '0', '0', '保存提交', '', '', '0');
INSERT INTO `sys_menu` VALUES ('84', '81', 'Admin', 'Ad', 'edit', '', '1', '0', '编辑广告', '', '', '0');
INSERT INTO `sys_menu` VALUES ('85', '81', 'Admin', 'Ad', 'edit_post', '', '0', '0', '编辑保存', '', '', '0');
INSERT INTO `sys_menu` VALUES ('86', '81', 'Admin', 'Ad', 'delete', '', '1', '0', '删除广告', '', '', '0');
INSERT INTO `sys_menu` VALUES ('87', '81', 'Admin', 'Ad', 'toggle', '', '1', '0', '显示/隐藏', '', '', '0');
INSERT INTO `sys_menu` VALUES ('88', '81', 'Admin', 'Ad', 'listorders', '', '1', '0', '广告排序', '', '', '0');
INSERT INTO `sys_menu` VALUES ('124', '0', 'Admin', 'Db', 'pass', '', '1', '1', '未通过确认', '', '', '0');
INSERT INTO `sys_menu` VALUES ('90', '89', 'Admin', 'Slidecat', 'index', '', '1', '1', '轮播图分类', '', '', '0');
INSERT INTO `sys_menu` VALUES ('91', '90', 'Admin', 'Slidecat', 'add', '', '1', '0', '添加分类', '', '', '0');
INSERT INTO `sys_menu` VALUES ('92', '91', 'Admin', 'Slidecat', 'add_post', '', '0', '0', '添加提交', '', '', '0');
INSERT INTO `sys_menu` VALUES ('93', '90', 'Admin', 'Slidecat', 'edit', '', '1', '0', '分类编辑', '', '', '0');
INSERT INTO `sys_menu` VALUES ('94', '93', 'Admin', 'Slidecat', 'edit_post', '', '0', '0', '编辑保存', '', '', '0');
INSERT INTO `sys_menu` VALUES ('95', '90', 'Admin', 'Slidecat', 'delete', '', '1', '0', '删除分类', '', '', '0');
INSERT INTO `sys_menu` VALUES ('96', '89', 'Admin', 'Slide', 'index', '', '1', '1', '图片管理', '', '', '0');
INSERT INTO `sys_menu` VALUES ('97', '96', 'Admin', 'Slide', 'add', '', '1', '0', '添加图片', '', '', '0');
INSERT INTO `sys_menu` VALUES ('98', '96', 'Admin', 'Slide', 'edit', '', '1', '0', '编辑图片', '', '', '0');
INSERT INTO `sys_menu` VALUES ('99', '96', 'Admin', 'Slide', 'delete', '', '1', '0', '删除图片', '', '', '0');
INSERT INTO `sys_menu` VALUES ('100', '96', 'Admin', 'Slide', 'toggle', '', '1', '0', '批量隐藏/显示', '', '', '0');
INSERT INTO `sys_menu` VALUES ('101', '96', 'Admin', 'Slide', 'ban', '', '1', '0', '单个隐藏', '', '', '0');
INSERT INTO `sys_menu` VALUES ('102', '96', 'Admin', 'Slide', 'cancelban', '', '1', '0', '单个显示', '', '', '0');
INSERT INTO `sys_menu` VALUES ('103', '96', 'Admin', 'Slide', 'listorders', '', '1', '0', '图片排序', '', '', '0');
INSERT INTO `sys_menu` VALUES ('104', '98', 'Admin', 'Slide', 'edit_post', '', '0', '0', '编辑保存', '', '', '0');
INSERT INTO `sys_menu` VALUES ('105', '97', 'Admin', 'Slide', 'add_post', '', '1', '0', '添加保存', '', '', '0');
INSERT INTO `sys_menu` VALUES ('108', '107', 'Admin', 'Backup', 'index', '', '1', '1', '数据备份', '', '', '0');
INSERT INTO `sys_menu` VALUES ('109', '107', 'Admin', 'Backup', 'restore', '', '1', '1', '数据恢复', '', '', '0');
INSERT INTO `sys_menu` VALUES ('110', '109', 'Admin', 'Backup', 'del_backup', '', '1', '0', '删除备份', '', '', '0');
INSERT INTO `sys_menu` VALUES ('111', '109', 'Admin', 'Backup', 'download', '', '1', '0', '下载备份', '', '', '0');
INSERT INTO `sys_menu` VALUES ('112', '109', 'Admin', 'Backup', 'import', '', '1', '0', '数据导入', '', '', '0');
INSERT INTO `sys_menu` VALUES ('123', '58', 'Admin', 'AdminPost', 'unindex', '', '1', '0', '未审核文章', '', '', '0');

-- ----------------------------
-- Table structure for `sys_nav`
-- ----------------------------
DROP TABLE IF EXISTS `sys_nav`;
CREATE TABLE `sys_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '导航分类 id',
  `parentid` int(11) NOT NULL COMMENT '导航父 id',
  `label` varchar(255) NOT NULL COMMENT '导航标题',
  `target` varchar(50) DEFAULT NULL COMMENT '打开方式',
  `href` varchar(255) NOT NULL COMMENT '导航链接',
  `icon` varchar(255) NOT NULL COMMENT '导航图标',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(6) DEFAULT '0' COMMENT '排序',
  `path` varchar(255) NOT NULL DEFAULT '0' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_nav
-- ----------------------------
INSERT INTO `sys_nav` VALUES ('1', '1', '0', '首页', '', '/index.php', '', '1', '0', '0-1');

-- ----------------------------
-- Table structure for `sys_nav_cat`
-- ----------------------------
DROP TABLE IF EXISTS `sys_nav_cat`;
CREATE TABLE `sys_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '导航分类名',
  `active` int(1) NOT NULL DEFAULT '1' COMMENT '是否为主菜单，1是，0不是',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`navcid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_nav_cat
-- ----------------------------
INSERT INTO `sys_nav_cat` VALUES ('1', '主导航', '1', '主导航');

-- ----------------------------
-- Table structure for `sys_options`
-- ----------------------------
DROP TABLE IF EXISTS `sys_options`;
CREATE TABLE `sys_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL COMMENT '配置名',
  `option_value` longtext NOT NULL COMMENT '配置值',
  `autoload` int(2) NOT NULL DEFAULT '1' COMMENT '是否自动加载',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of sys_options
-- ----------------------------
INSERT INTO `sys_options` VALUES ('2', 'site_options', '            {\n            		\"site_name\":\"请以“系统”结尾\",\n            		\"site_host\":\"http://localhost/\",\n            		\"site_root\":\"\",\n            		\"site_icp\":\"\",\n            		\"site_admin_email\":\"1107811460@qq.com\",\n            		\"site_tongji\":\"\",\n            		\"site_copyright\":\"\",\n            		\"site_seo_title\":\"请以“系统”结尾\",\n            		\"site_seo_keywords\":\"\",\n            		\"site_seo_description\":\"\",\n            		\"site_icon\":\"/test1/Static/img/system/system_icon.png\",\n            		\"site_admin_phone\":\"15757129357\",\n        }', '1');

-- ----------------------------
-- Table structure for `sys_posts`
-- ----------------------------
DROP TABLE IF EXISTS `sys_posts`;
CREATE TABLE `sys_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
  `post_source` varchar(150) DEFAULT NULL COMMENT '转载文章的来源',
  `post_date` datetime DEFAULT '2016-01-01 00:00:00' COMMENT 'post创建日期，永久不变，一般不显示给用户',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核',
  `post_modified` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_type` varchar(50) NOT NULL,
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `status2` tinyint(1) DEFAULT '1' COMMENT '正常 1  2不显示 删除 0',
  `listorder2` int(11) NOT NULL DEFAULT '1',
  `post_verify` int(1) NOT NULL DEFAULT '0' COMMENT '是否推荐0一般1推荐',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`) USING BTREE,
  KEY `post_author` (`post_author`) USING BTREE,
  KEY `post_date` (`post_date`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of sys_posts
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '0', '1', '拥有最高管理员权限', '1329633709', '1329633709', '0');
INSERT INTO `sys_role` VALUES ('2', '学院管理员', null, '1', '', '1492826423', '0', '0');

-- ----------------------------
-- Table structure for `sys_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user` (
  `role_id` int(11) unsigned DEFAULT '0' COMMENT '角色 id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES ('2', '2');
INSERT INTO `sys_role_user` VALUES ('2', '3');
INSERT INTO `sys_role_user` VALUES ('2', '4');
INSERT INTO `sys_role_user` VALUES ('2', '5');
INSERT INTO `sys_role_user` VALUES ('2', '6');
INSERT INTO `sys_role_user` VALUES ('2', '7');
INSERT INTO `sys_role_user` VALUES ('2', '8');
INSERT INTO `sys_role_user` VALUES ('2', '9');
INSERT INTO `sys_role_user` VALUES ('2', '10');
INSERT INTO `sys_role_user` VALUES ('2', '11');
INSERT INTO `sys_role_user` VALUES ('2', '12');
INSERT INTO `sys_role_user` VALUES ('2', '13');
INSERT INTO `sys_role_user` VALUES ('2', '14');
INSERT INTO `sys_role_user` VALUES ('2', '15');
INSERT INTO `sys_role_user` VALUES ('2', '16');
INSERT INTO `sys_role_user` VALUES ('2', '17');
INSERT INTO `sys_role_user` VALUES ('2', '18');
INSERT INTO `sys_role_user` VALUES ('2', '19');
INSERT INTO `sys_role_user` VALUES ('2', '20');
INSERT INTO `sys_role_user` VALUES ('2', '21');
INSERT INTO `sys_role_user` VALUES ('2', '22');

-- ----------------------------
-- Table structure for `sys_slide`
-- ----------------------------
DROP TABLE IF EXISTS `sys_slide`;
CREATE TABLE `sys_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` int(11) NOT NULL COMMENT 'id',
  `slide_name` varchar(255) NOT NULL COMMENT '名称',
  `slide_pic` varchar(255) DEFAULT NULL COMMENT '图片',
  `slide_url` varchar(255) DEFAULT NULL COMMENT '链接',
  `slide_des` varchar(255) DEFAULT NULL COMMENT '描述',
  `slide_content` text COMMENT '轮播图内容',
  `slide_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='轮播图表';

-- ----------------------------
-- Records of sys_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_slide_cat`
-- ----------------------------
DROP TABLE IF EXISTS `sys_slide_cat`;
CREATE TABLE `sys_slide_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL COMMENT '分类',
  `cat_idname` varchar(255) NOT NULL COMMENT '分类标识',
  `cat_remark` text COMMENT '分类备注',
  `cat_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='轮播图分类表';

-- ----------------------------
-- Records of sys_slide_cat
-- ----------------------------
INSERT INTO `sys_slide_cat` VALUES ('1', '首页轮播图', 'index', '首页轮播图', '1');

-- ----------------------------
-- Table structure for `sys_sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_sys_log`;
CREATE TABLE `sys_sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT '0' COMMENT '用户id',
  `user` varchar(20) DEFAULT NULL,
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `last_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '最后访问的时间戳',
  `text` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL COMMENT '访问地区',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  `type` varchar(15) DEFAULT 'log',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`uid`,`object`,`action`),
  KEY `user_object_action_ip` (`uid`,`object`,`action`,`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=753 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_sys_log
-- ----------------------------
INSERT INTO `sys_sys_log` VALUES ('752', '20', 'hjkxygcxy[环境科学与工程学院管', 'Admin', 'Public/dologin', '2017-07-18 09:41:05', '登录成功', '浙江省杭州市/浙江工商大学下沙校区', '221.12.10.218', 'login');

-- ----------------------------
-- Table structure for `sys_term_relationships`
-- ----------------------------
DROP TABLE IF EXISTS `sys_term_relationships`;
CREATE TABLE `sys_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章分类对应表';

-- ----------------------------
-- Records of sys_term_relationships
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_terms`
-- ----------------------------
DROP TABLE IF EXISTS `sys_terms`;
CREATE TABLE `sys_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `slide_idname` varchar(50) DEFAULT NULL COMMENT '轮播背景标识',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`term_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章分类表';

-- ----------------------------
-- Records of sys_terms
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `account` varchar(11) CHARACTER SET utf8 NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `academy` text CHARACTER SET utf8 NOT NULL,
  `major` text CHARACTER SET utf8 NOT NULL,
  `class` text CHARACTER SET utf8 NOT NULL,
  `password` varchar(11) CHARACTER SET utf8 NOT NULL,
  `sex` text CHARACTER SET utf8 NOT NULL,
  `xykzh` varchar(11) NOT NULL,
  `flag` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `requirement1` varchar(10) CHARACTER SET utf8 NOT NULL,
  `requirement2` varchar(10) CHARACTER SET utf8 NOT NULL,
  `requirement3` varchar(10) CHARACTER SET utf8 NOT NULL,
  `requirement4` varchar(10) CHARACTER SET utf8 NOT NULL,
  `requirement5` varchar(11) CHARACTER SET utf8 NOT NULL,
  `requirement6` varchar(11) CHARACTER SET utf8 NOT NULL,
  `requirement7` varchar(11) CHARACTER SET utf8 NOT NULL,
  `requirement8` varchar(11) CHARACTER SET utf8 NOT NULL,
  `more1` varchar(11) CHARACTER SET utf8 NOT NULL,
  `more2` varchar(11) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`account`),
  KEY `account` (`account`),
  KEY `account_2` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1104600112', '郭俊勤', '公共管理学院', '劳动与社会保障', '社保1301', '126950', '男', '102061', null, '通过', '通过', '通过', '通过', '通过', '通过', '通过', '通过', '', '');
INSERT INTO `sys_user` VALUES ('1112200106', '盛军辉', '管理工程与电子商务学院 ', '电子商务', '商务1301', '62836', '男', '103817', null, '通过', '通过', '通过', '通过', '通过', '通过', '通过', '通过', '', '');
