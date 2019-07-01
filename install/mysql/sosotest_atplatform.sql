/*
 Navicat Premium Data Transfer

 Source Server         : 10.26.9.107-sosotest
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 10.26.9.107:3306
 Source Schema         : sosotest_atplatform_test

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 07/04/2019 23:36:05
*/

CREATE DATABASE IF NOT EXISTS `sosotest_atplatform`;
USE `sosotest_atplatform`;
/*
-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=448 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add tb admin interface permission relation', 7, 'add_tbadmininterfacepermissionrelation');
INSERT INTO `auth_permission` VALUES (20, 'Can change tb admin interface permission relation', 7, 'change_tbadmininterfacepermissionrelation');
INSERT INTO `auth_permission` VALUES (21, 'Can delete tb admin interface permission relation', 7, 'delete_tbadmininterfacepermissionrelation');
INSERT INTO `auth_permission` VALUES (22, 'Can add tb admin manage permission', 8, 'add_tbadminmanagepermission');
INSERT INTO `auth_permission` VALUES (23, 'Can change tb admin manage permission', 8, 'change_tbadminmanagepermission');
INSERT INTO `auth_permission` VALUES (24, 'Can delete tb admin manage permission', 8, 'delete_tbadminmanagepermission');
INSERT INTO `auth_permission` VALUES (25, 'Can add tb admin manage user permission relation', 9, 'add_tbadminmanageuserpermissionrelation');
INSERT INTO `auth_permission` VALUES (26, 'Can change tb admin manage user permission relation', 9, 'change_tbadminmanageuserpermissionrelation');
INSERT INTO `auth_permission` VALUES (27, 'Can delete tb admin manage user permission relation', 9, 'delete_tbadminmanageuserpermissionrelation');
INSERT INTO `auth_permission` VALUES (28, 'Can add tb admin platform permission', 10, 'add_tbadminplatformpermission');
INSERT INTO `auth_permission` VALUES (29, 'Can change tb admin platform permission', 10, 'change_tbadminplatformpermission');
INSERT INTO `auth_permission` VALUES (30, 'Can delete tb admin platform permission', 10, 'delete_tbadminplatformpermission');
INSERT INTO `auth_permission` VALUES (31, 'Can add tb admin platform permission user relation', 11, 'add_tbadminplatformpermissionuserrelation');
INSERT INTO `auth_permission` VALUES (32, 'Can change tb admin platform permission user relation', 11, 'change_tbadminplatformpermissionuserrelation');
INSERT INTO `auth_permission` VALUES (33, 'Can delete tb admin platform permission user relation', 11, 'delete_tbadminplatformpermissionuserrelation');
INSERT INTO `auth_permission` VALUES (34, 'Can add tb admin role', 12, 'add_tbadminrole');
INSERT INTO `auth_permission` VALUES (35, 'Can change tb admin role', 12, 'change_tbadminrole');
INSERT INTO `auth_permission` VALUES (36, 'Can delete tb admin role', 12, 'delete_tbadminrole');
INSERT INTO `auth_permission` VALUES (37, 'Can add tb admin role permission relation', 13, 'add_tbadminrolepermissionrelation');
INSERT INTO `auth_permission` VALUES (38, 'Can change tb admin role permission relation', 13, 'change_tbadminrolepermissionrelation');
INSERT INTO `auth_permission` VALUES (39, 'Can delete tb admin role permission relation', 13, 'delete_tbadminrolepermissionrelation');
INSERT INTO `auth_permission` VALUES (40, 'Can add tb admin team', 14, 'add_tbadminteam');
INSERT INTO `auth_permission` VALUES (41, 'Can change tb admin team', 14, 'change_tbadminteam');
INSERT INTO `auth_permission` VALUES (42, 'Can delete tb admin team', 14, 'delete_tbadminteam');
INSERT INTO `auth_permission` VALUES (43, 'Can add tb admin team permission relation', 15, 'add_tbadminteampermissionrelation');
INSERT INTO `auth_permission` VALUES (44, 'Can change tb admin team permission relation', 15, 'change_tbadminteampermissionrelation');
INSERT INTO `auth_permission` VALUES (45, 'Can delete tb admin team permission relation', 15, 'delete_tbadminteampermissionrelation');
INSERT INTO `auth_permission` VALUES (46, 'Can add tb admin user', 16, 'add_tbadminuser');
INSERT INTO `auth_permission` VALUES (47, 'Can change tb admin user', 16, 'change_tbadminuser');
INSERT INTO `auth_permission` VALUES (48, 'Can delete tb admin user', 16, 'delete_tbadminuser');
INSERT INTO `auth_permission` VALUES (49, 'Can add tb admin user permission relation', 17, 'add_tbadminuserpermissionrelation');
INSERT INTO `auth_permission` VALUES (50, 'Can change tb admin user permission relation', 17, 'change_tbadminuserpermissionrelation');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tb admin user permission relation', 17, 'delete_tbadminuserpermissionrelation');
INSERT INTO `auth_permission` VALUES (52, 'Can add tb admin user role relation', 18, 'add_tbadminuserrolerelation');
INSERT INTO `auth_permission` VALUES (53, 'Can change tb admin user role relation', 18, 'change_tbadminuserrolerelation');
INSERT INTO `auth_permission` VALUES (54, 'Can delete tb admin user role relation', 18, 'delete_tbadminuserrolerelation');
INSERT INTO `auth_permission` VALUES (55, 'Can add tb admin user team relation', 19, 'add_tbadminuserteamrelation');
INSERT INTO `auth_permission` VALUES (56, 'Can change tb admin user team relation', 19, 'change_tbadminuserteamrelation');
INSERT INTO `auth_permission` VALUES (57, 'Can delete tb admin user team relation', 19, 'delete_tbadminuserteamrelation');
INSERT INTO `auth_permission` VALUES (58, 'Can add 任务批量执行', 20, 'add_tbbatchtask');
INSERT INTO `auth_permission` VALUES (59, 'Can change 任务批量执行', 20, 'change_tbbatchtask');
INSERT INTO `auth_permission` VALUES (60, 'Can delete 任务批量执行', 20, 'delete_tbbatchtask');
INSERT INTO `auth_permission` VALUES (61, 'Can add 03业务线', 21, 'add_tbbusinessline');
INSERT INTO `auth_permission` VALUES (62, 'Can change 03业务线', 21, 'change_tbbusinessline');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 03业务线', 21, 'delete_tbbusinessline');
INSERT INTO `auth_permission` VALUES (64, 'Can add 业务线模块关系表', 22, 'add_tbbusinesslinemodulerelation');
INSERT INTO `auth_permission` VALUES (65, 'Can change 业务线模块关系表', 22, 'change_tbbusinesslinemodulerelation');
INSERT INTO `auth_permission` VALUES (66, 'Can delete 业务线模块关系表', 22, 'delete_tbbusinesslinemodulerelation');
INSERT INTO `auth_permission` VALUES (67, 'Can add 环境配置', 23, 'add_tbconfighttp');
INSERT INTO `auth_permission` VALUES (68, 'Can change 环境配置', 23, 'change_tbconfighttp');
INSERT INTO `auth_permission` VALUES (69, 'Can delete 环境配置', 23, 'delete_tbconfighttp');
INSERT INTO `auth_permission` VALUES (70, 'Can add 数据服务器', 24, 'add_tbconfigservice');
INSERT INTO `auth_permission` VALUES (71, 'Can change 数据服务器', 24, 'change_tbconfigservice');
INSERT INTO `auth_permission` VALUES (72, 'Can delete 数据服务器', 24, 'delete_tbconfigservice');
INSERT INTO `auth_permission` VALUES (73, 'Can add URI管理', 25, 'add_tbconfiguri');
INSERT INTO `auth_permission` VALUES (74, 'Can change URI管理', 25, 'change_tbconfiguri');
INSERT INTO `auth_permission` VALUES (75, 'Can delete URI管理', 25, 'delete_tbconfiguri');
INSERT INTO `auth_permission` VALUES (76, 'Can add 环境服务配置', 26, 'add_tbenvuriconf');
INSERT INTO `auth_permission` VALUES (77, 'Can change 环境服务配置', 26, 'change_tbenvuriconf');
INSERT INTO `auth_permission` VALUES (78, 'Can delete 环境服务配置', 26, 'delete_tbenvuriconf');
INSERT INTO `auth_permission` VALUES (79, 'Can add 执行python代码管理', 27, 'add_tbexecpythonattrs');
INSERT INTO `auth_permission` VALUES (80, 'Can change 执行python代码管理', 27, 'change_tbexecpythonattrs');
INSERT INTO `auth_permission` VALUES (81, 'Can delete 执行python代码管理', 27, 'delete_tbexecpythonattrs');
INSERT INTO `auth_permission` VALUES (82, 'Can add tb global text', 28, 'add_tbglobaltext');
INSERT INTO `auth_permission` VALUES (83, 'Can change tb global text', 28, 'change_tbglobaltext');
INSERT INTO `auth_permission` VALUES (84, 'Can delete tb global text', 28, 'delete_tbglobaltext');
INSERT INTO `auth_permission` VALUES (85, 'Can add tb global vars', 29, 'add_tbglobalvars');
INSERT INTO `auth_permission` VALUES (86, 'Can change tb global vars', 29, 'change_tbglobalvars');
INSERT INTO `auth_permission` VALUES (87, 'Can delete tb global vars', 29, 'delete_tbglobalvars');
INSERT INTO `auth_permission` VALUES (88, 'Can add tb http interface', 30, 'add_tbhttpinterface');
INSERT INTO `auth_permission` VALUES (89, 'Can change tb http interface', 30, 'change_tbhttpinterface');
INSERT INTO `auth_permission` VALUES (90, 'Can delete tb http interface', 30, 'delete_tbhttpinterface');
INSERT INTO `auth_permission` VALUES (91, 'Can add 接口调试', 31, 'add_tbhttpinterfacedebug');
INSERT INTO `auth_permission` VALUES (92, 'Can change 接口调试', 31, 'change_tbhttpinterfacedebug');
INSERT INTO `auth_permission` VALUES (93, 'Can delete 接口调试', 31, 'delete_tbhttpinterfacedebug');
INSERT INTO `auth_permission` VALUES (94, 'Can add tb http interface tag', 32, 'add_tbhttpinterfacetag');
INSERT INTO `auth_permission` VALUES (95, 'Can change tb http interface tag', 32, 'change_tbhttpinterfacetag');
INSERT INTO `auth_permission` VALUES (96, 'Can delete tb http interface tag', 32, 'delete_tbhttpinterfacetag');
INSERT INTO `auth_permission` VALUES (97, 'Can add tb http testcase', 33, 'add_tbhttptestcase');
INSERT INTO `auth_permission` VALUES (98, 'Can change tb http testcase', 33, 'change_tbhttptestcase');
INSERT INTO `auth_permission` VALUES (99, 'Can delete tb http testcase', 33, 'delete_tbhttptestcase');
INSERT INTO `auth_permission` VALUES (100, 'Can add 用例调试', 34, 'add_tbhttptestcasedebug');
INSERT INTO `auth_permission` VALUES (101, 'Can change 用例调试', 34, 'change_tbhttptestcasedebug');
INSERT INTO `auth_permission` VALUES (102, 'Can delete 用例调试', 34, 'delete_tbhttptestcasedebug');
INSERT INTO `auth_permission` VALUES (103, 'Can add tb http testcase step', 35, 'add_tbhttptestcasestep');
INSERT INTO `auth_permission` VALUES (104, 'Can change tb http testcase step', 35, 'change_tbhttptestcasestep');
INSERT INTO `auth_permission` VALUES (105, 'Can delete tb http testcase step', 35, 'delete_tbhttptestcasestep');
INSERT INTO `auth_permission` VALUES (106, 'Can add 用例步骤调试', 36, 'add_tbhttptestcasestepdebug');
INSERT INTO `auth_permission` VALUES (107, 'Can change 用例步骤调试', 36, 'change_tbhttptestcasestepdebug');
INSERT INTO `auth_permission` VALUES (108, 'Can delete 用例步骤调试', 36, 'delete_tbhttptestcasestepdebug');
INSERT INTO `auth_permission` VALUES (109, 'Can add tb http testcase tag', 37, 'add_tbhttptestcasetag');
INSERT INTO `auth_permission` VALUES (110, 'Can change tb http testcase tag', 37, 'change_tbhttptestcasetag');
INSERT INTO `auth_permission` VALUES (111, 'Can delete tb http testcase tag', 37, 'delete_tbhttptestcasetag');
INSERT INTO `auth_permission` VALUES (112, 'Can add tb interface execute history', 38, 'add_tbinterfaceexecutehistory');
INSERT INTO `auth_permission` VALUES (113, 'Can change tb interface execute history', 38, 'change_tbinterfaceexecutehistory');
INSERT INTO `auth_permission` VALUES (114, 'Can delete tb interface execute history', 38, 'delete_tbinterfaceexecutehistory');
INSERT INTO `auth_permission` VALUES (115, 'Can add jira业务线', 39, 'add_tbjirabusinessline');
INSERT INTO `auth_permission` VALUES (116, 'Can change jira业务线', 39, 'change_tbjirabusinessline');
INSERT INTO `auth_permission` VALUES (117, 'Can delete jira业务线', 39, 'delete_tbjirabusinessline');
INSERT INTO `auth_permission` VALUES (118, 'Can add jira业务线与平台对应关系表', 40, 'add_tbjirabusinesslineplatformrelation');
INSERT INTO `auth_permission` VALUES (119, 'Can change jira业务线与平台对应关系表', 40, 'change_tbjirabusinesslineplatformrelation');
INSERT INTO `auth_permission` VALUES (120, 'Can delete jira业务线与平台对应关系表', 40, 'delete_tbjirabusinesslineplatformrelation');
INSERT INTO `auth_permission` VALUES (121, 'Can add jira模块', 41, 'add_tbjiramodule');
INSERT INTO `auth_permission` VALUES (122, 'Can change jira模块', 41, 'change_tbjiramodule');
INSERT INTO `auth_permission` VALUES (123, 'Can delete jira模块', 41, 'delete_tbjiramodule');
INSERT INTO `auth_permission` VALUES (124, 'Can add jira模块与平台对应关系表', 42, 'add_tbjiramoduleplatformrelation');
INSERT INTO `auth_permission` VALUES (125, 'Can change jira模块与平台对应关系表', 42, 'change_tbjiramoduleplatformrelation');
INSERT INTO `auth_permission` VALUES (126, 'Can delete jira模块与平台对应关系表', 42, 'delete_tbjiramoduleplatformrelation');
INSERT INTO `auth_permission` VALUES (127, 'Can add 04模块', 43, 'add_tbmodules');
INSERT INTO `auth_permission` VALUES (128, 'Can change 04模块', 43, 'change_tbmodules');
INSERT INTO `auth_permission` VALUES (129, 'Can delete 04模块', 43, 'delete_tbmodules');
INSERT INTO `auth_permission` VALUES (130, 'Can add openApi业务线', 44, 'add_tbopenapibusinessline');
INSERT INTO `auth_permission` VALUES (131, 'Can change openApi业务线', 44, 'change_tbopenapibusinessline');
INSERT INTO `auth_permission` VALUES (132, 'Can delete openApi业务线', 44, 'delete_tbopenapibusinessline');
INSERT INTO `auth_permission` VALUES (133, 'Can add openApi_uri', 45, 'add_tbopenapiuri');
INSERT INTO `auth_permission` VALUES (134, 'Can change openApi_uri', 45, 'change_tbopenapiuri');
INSERT INTO `auth_permission` VALUES (135, 'Can delete openApi_uri', 45, 'delete_tbopenapiuri');
INSERT INTO `auth_permission` VALUES (136, 'Can add tb permission', 46, 'add_tbpermission');
INSERT INTO `auth_permission` VALUES (137, 'Can change tb permission', 46, 'change_tbpermission');
INSERT INTO `auth_permission` VALUES (138, 'Can delete tb permission', 46, 'delete_tbpermission');
INSERT INTO `auth_permission` VALUES (139, 'Can add tb run server conf', 47, 'add_tbrunserverconf');
INSERT INTO `auth_permission` VALUES (140, 'Can change tb run server conf', 47, 'change_tbrunserverconf');
INSERT INTO `auth_permission` VALUES (141, 'Can delete tb run server conf', 47, 'delete_tbrunserverconf');
INSERT INTO `auth_permission` VALUES (142, 'Can add 来源', 48, 'add_tbsource');
INSERT INTO `auth_permission` VALUES (143, 'Can change 来源', 48, 'change_tbsource');
INSERT INTO `auth_permission` VALUES (144, 'Can delete 来源', 48, 'delete_tbsource');
INSERT INTO `auth_permission` VALUES (145, 'Can add tb standard interface', 49, 'add_tbstandardinterface');
INSERT INTO `auth_permission` VALUES (146, 'Can change tb standard interface', 49, 'change_tbstandardinterface');
INSERT INTO `auth_permission` VALUES (147, 'Can delete tb standard interface', 49, 'delete_tbstandardinterface');
INSERT INTO `auth_permission` VALUES (148, 'Can add tb tag', 50, 'add_tbtag');
INSERT INTO `auth_permission` VALUES (149, 'Can change tb tag', 50, 'change_tbtag');
INSERT INTO `auth_permission` VALUES (150, 'Can delete tb tag', 50, 'delete_tbtag');
INSERT INTO `auth_permission` VALUES (151, 'Can add 任务', 51, 'add_tbtask');
INSERT INTO `auth_permission` VALUES (152, 'Can change 任务', 51, 'change_tbtask');
INSERT INTO `auth_permission` VALUES (153, 'Can delete 任务', 51, 'delete_tbtask');
INSERT INTO `auth_permission` VALUES (154, 'Can add 任务执行', 52, 'add_tbtaskexecute');
INSERT INTO `auth_permission` VALUES (155, 'Can change 任务执行', 52, 'change_tbtaskexecute');
INSERT INTO `auth_permission` VALUES (156, 'Can delete 任务执行', 52, 'delete_tbtaskexecute');
INSERT INTO `auth_permission` VALUES (157, 'Can add 任务集', 53, 'add_tbtasksuite');
INSERT INTO `auth_permission` VALUES (158, 'Can change 任务集', 53, 'change_tbtasksuite');
INSERT INTO `auth_permission` VALUES (159, 'Can delete 任务集', 53, 'delete_tbtasksuite');
INSERT INTO `auth_permission` VALUES (160, 'Can add tb task suite execute', 54, 'add_tbtasksuiteexecute');
INSERT INTO `auth_permission` VALUES (161, 'Can change tb task suite execute', 54, 'change_tbtasksuiteexecute');
INSERT INTO `auth_permission` VALUES (162, 'Can delete tb task suite execute', 54, 'delete_tbtasksuiteexecute');
INSERT INTO `auth_permission` VALUES (163, 'Can add tb team', 55, 'add_tbteam');
INSERT INTO `auth_permission` VALUES (164, 'Can change tb team', 55, 'change_tbteam');
INSERT INTO `auth_permission` VALUES (165, 'Can delete tb team', 55, 'delete_tbteam');
INSERT INTO `auth_permission` VALUES (166, 'Can add tb team permission relation', 56, 'add_tbteampermissionrelation');
INSERT INTO `auth_permission` VALUES (167, 'Can change tb team permission relation', 56, 'change_tbteampermissionrelation');
INSERT INTO `auth_permission` VALUES (168, 'Can delete tb team permission relation', 56, 'delete_tbteampermissionrelation');
INSERT INTO `auth_permission` VALUES (169, 'Can add tb ui auto upload package', 57, 'add_tbuiautouploadpackage');
INSERT INTO `auth_permission` VALUES (170, 'Can change tb ui auto upload package', 57, 'change_tbuiautouploadpackage');
INSERT INTO `auth_permission` VALUES (171, 'Can delete tb ui auto upload package', 57, 'delete_tbuiautouploadpackage');
INSERT INTO `auth_permission` VALUES (172, 'Can add tb ui functions', 58, 'add_tbuifunctions');
INSERT INTO `auth_permission` VALUES (173, 'Can change tb ui functions', 58, 'change_tbuifunctions');
INSERT INTO `auth_permission` VALUES (174, 'Can delete tb ui functions', 58, 'delete_tbuifunctions');
INSERT INTO `auth_permission` VALUES (175, 'Can add tb ui functions testcase', 59, 'add_tbuifunctionstestcase');
INSERT INTO `auth_permission` VALUES (176, 'Can change tb ui functions testcase', 59, 'change_tbuifunctionstestcase');
INSERT INTO `auth_permission` VALUES (177, 'Can delete tb ui functions testcase', 59, 'delete_tbuifunctionstestcase');
INSERT INTO `auth_permission` VALUES (178, 'Can add tb ui functions testcase step', 60, 'add_tbuifunctionstestcasestep');
INSERT INTO `auth_permission` VALUES (179, 'Can change tb ui functions testcase step', 60, 'change_tbuifunctionstestcasestep');
INSERT INTO `auth_permission` VALUES (180, 'Can delete tb ui functions testcase step', 60, 'delete_tbuifunctionstestcasestep');
INSERT INTO `auth_permission` VALUES (181, 'Can add tb ui global text', 61, 'add_tbuiglobaltext');
INSERT INTO `auth_permission` VALUES (182, 'Can change tb ui global text', 61, 'change_tbuiglobaltext');
INSERT INTO `auth_permission` VALUES (183, 'Can delete tb ui global text', 61, 'delete_tbuiglobaltext');
INSERT INTO `auth_permission` VALUES (184, 'Can add tb ui global vars', 62, 'add_tbuiglobalvars');
INSERT INTO `auth_permission` VALUES (185, 'Can change tb ui global vars', 62, 'change_tbuiglobalvars');
INSERT INTO `auth_permission` VALUES (186, 'Can delete tb ui global vars', 62, 'delete_tbuiglobalvars');
INSERT INTO `auth_permission` VALUES (187, 'Can add ui移动端服务', 63, 'add_tbuimobileserver');
INSERT INTO `auth_permission` VALUES (188, 'Can change ui移动端服务', 63, 'change_tbuimobileserver');
INSERT INTO `auth_permission` VALUES (189, 'Can delete ui移动端服务', 63, 'delete_tbuimobileserver');
INSERT INTO `auth_permission` VALUES (190, 'Can add ui服务log', 64, 'add_tbuimobileserverlog');
INSERT INTO `auth_permission` VALUES (191, 'Can change ui服务log', 64, 'change_tbuimobileserverlog');
INSERT INTO `auth_permission` VALUES (192, 'Can delete ui服务log', 64, 'delete_tbuimobileserverlog');
INSERT INTO `auth_permission` VALUES (193, 'Can add tb ui package', 65, 'add_tbuipackage');
INSERT INTO `auth_permission` VALUES (194, 'Can change tb ui package', 65, 'change_tbuipackage');
INSERT INTO `auth_permission` VALUES (195, 'Can delete tb ui package', 65, 'delete_tbuipackage');
INSERT INTO `auth_permission` VALUES (196, 'Can add tb ui page object', 66, 'add_tbuipageobject');
INSERT INTO `auth_permission` VALUES (197, 'Can change tb ui page object', 66, 'change_tbuipageobject');
INSERT INTO `auth_permission` VALUES (198, 'Can delete tb ui page object', 66, 'delete_tbuipageobject');
INSERT INTO `auth_permission` VALUES (199, 'Can add tb ui page object elements', 67, 'add_tbuipageobjectelements');
INSERT INTO `auth_permission` VALUES (200, 'Can change tb ui page object elements', 67, 'change_tbuipageobjectelements');
INSERT INTO `auth_permission` VALUES (201, 'Can delete tb ui page object elements', 67, 'delete_tbuipageobjectelements');
INSERT INTO `auth_permission` VALUES (202, 'Can add tb ui task', 68, 'add_tbuitask');
INSERT INTO `auth_permission` VALUES (203, 'Can change tb ui task', 68, 'change_tbuitask');
INSERT INTO `auth_permission` VALUES (204, 'Can delete tb ui task', 68, 'delete_tbuitask');
INSERT INTO `auth_permission` VALUES (205, 'Can add UI任务执行', 69, 'add_tbuitaskexecute');
INSERT INTO `auth_permission` VALUES (206, 'Can change UI任务执行', 69, 'change_tbuitaskexecute');
INSERT INTO `auth_permission` VALUES (207, 'Can delete UI任务执行', 69, 'delete_tbuitaskexecute');
INSERT INTO `auth_permission` VALUES (208, 'Can add tb ui task simple', 70, 'add_tbuitasksimple');
INSERT INTO `auth_permission` VALUES (209, 'Can change tb ui task simple', 70, 'change_tbuitasksimple');
INSERT INTO `auth_permission` VALUES (210, 'Can delete tb ui task simple', 70, 'delete_tbuitasksimple');
INSERT INTO `auth_permission` VALUES (211, 'Can add tb ui test case', 71, 'add_tbuitestcase');
INSERT INTO `auth_permission` VALUES (212, 'Can change tb ui test case', 71, 'change_tbuitestcase');
INSERT INTO `auth_permission` VALUES (213, 'Can delete tb ui test case', 71, 'delete_tbuitestcase');
INSERT INTO `auth_permission` VALUES (214, 'Can add tb ui test case step', 72, 'add_tbuitestcasestep');
INSERT INTO `auth_permission` VALUES (215, 'Can change tb ui test case step', 72, 'change_tbuitestcasestep');
INSERT INTO `auth_permission` VALUES (216, 'Can delete tb ui test case step', 72, 'delete_tbuitestcasestep');
INSERT INTO `auth_permission` VALUES (217, 'Can add tb ui test excel', 73, 'add_tbuitestexcel');
INSERT INTO `auth_permission` VALUES (218, 'Can change tb ui test excel', 73, 'change_tbuitestexcel');
INSERT INTO `auth_permission` VALUES (219, 'Can delete tb ui test excel', 73, 'delete_tbuitestexcel');
INSERT INTO `auth_permission` VALUES (220, 'Can add tb ui test execute', 74, 'add_tbuitestexecute');
INSERT INTO `auth_permission` VALUES (221, 'Can change tb ui test execute', 74, 'change_tbuitestexecute');
INSERT INTO `auth_permission` VALUES (222, 'Can delete tb ui test execute', 74, 'delete_tbuitestexecute');
INSERT INTO `auth_permission` VALUES (223, 'Can add tb ui version functions', 75, 'add_tbuiversionfunctions');
INSERT INTO `auth_permission` VALUES (224, 'Can change tb ui version functions', 75, 'change_tbuiversionfunctions');
INSERT INTO `auth_permission` VALUES (225, 'Can delete tb ui version functions', 75, 'delete_tbuiversionfunctions');
INSERT INTO `auth_permission` VALUES (226, 'Can add tb ui version functions testcase', 76, 'add_tbuiversionfunctionstestcase');
INSERT INTO `auth_permission` VALUES (227, 'Can change tb ui version functions testcase', 76, 'change_tbuiversionfunctionstestcase');
INSERT INTO `auth_permission` VALUES (228, 'Can delete tb ui version functions testcase', 76, 'delete_tbuiversionfunctionstestcase');
INSERT INTO `auth_permission` VALUES (229, 'Can add tb ui version functions testcase step', 77, 'add_tbuiversionfunctionstestcasestep');
INSERT INTO `auth_permission` VALUES (230, 'Can change tb ui version functions testcase step', 77, 'change_tbuiversionfunctionstestcasestep');
INSERT INTO `auth_permission` VALUES (231, 'Can delete tb ui version functions testcase step', 77, 'delete_tbuiversionfunctionstestcasestep');
INSERT INTO `auth_permission` VALUES (232, 'Can add tb ui version global text', 78, 'add_tbuiversionglobaltext');
INSERT INTO `auth_permission` VALUES (233, 'Can change tb ui version global text', 78, 'change_tbuiversionglobaltext');
INSERT INTO `auth_permission` VALUES (234, 'Can delete tb ui version global text', 78, 'delete_tbuiversionglobaltext');
INSERT INTO `auth_permission` VALUES (235, 'Can add tb ui version global vars', 79, 'add_tbuiversionglobalvars');
INSERT INTO `auth_permission` VALUES (236, 'Can change tb ui version global vars', 79, 'change_tbuiversionglobalvars');
INSERT INTO `auth_permission` VALUES (237, 'Can delete tb ui version global vars', 79, 'delete_tbuiversionglobalvars');
INSERT INTO `auth_permission` VALUES (238, 'Can add tb ui version page object', 80, 'add_tbuiversionpageobject');
INSERT INTO `auth_permission` VALUES (239, 'Can change tb ui version page object', 80, 'change_tbuiversionpageobject');
INSERT INTO `auth_permission` VALUES (240, 'Can delete tb ui version page object', 80, 'delete_tbuiversionpageobject');
INSERT INTO `auth_permission` VALUES (241, 'Can add tb ui version page object elements', 81, 'add_tbuiversionpageobjectelements');
INSERT INTO `auth_permission` VALUES (242, 'Can change tb ui version page object elements', 81, 'change_tbuiversionpageobjectelements');
INSERT INTO `auth_permission` VALUES (243, 'Can delete tb ui version page object elements', 81, 'delete_tbuiversionpageobjectelements');
INSERT INTO `auth_permission` VALUES (244, 'Can add tb ui version task', 82, 'add_tbuiversiontask');
INSERT INTO `auth_permission` VALUES (245, 'Can change tb ui version task', 82, 'change_tbuiversiontask');
INSERT INTO `auth_permission` VALUES (246, 'Can delete tb ui version task', 82, 'delete_tbuiversiontask');
INSERT INTO `auth_permission` VALUES (247, 'Can add tb ui version test case', 83, 'add_tbuiversiontestcase');
INSERT INTO `auth_permission` VALUES (248, 'Can change tb ui version test case', 83, 'change_tbuiversiontestcase');
INSERT INTO `auth_permission` VALUES (249, 'Can delete tb ui version test case', 83, 'delete_tbuiversiontestcase');
INSERT INTO `auth_permission` VALUES (250, 'Can add tb ui version test case step', 84, 'add_tbuiversiontestcasestep');
INSERT INTO `auth_permission` VALUES (251, 'Can change tb ui version test case step', 84, 'change_tbuiversiontestcasestep');
INSERT INTO `auth_permission` VALUES (252, 'Can delete tb ui version test case step', 84, 'delete_tbuiversiontestcasestep');
INSERT INTO `auth_permission` VALUES (253, 'Can add 用户', 85, 'add_tbuser');
INSERT INTO `auth_permission` VALUES (254, 'Can change 用户', 85, 'change_tbuser');
INSERT INTO `auth_permission` VALUES (255, 'Can delete 用户', 85, 'delete_tbuser');
INSERT INTO `auth_permission` VALUES (256, 'Can add tb user change log', 86, 'add_tbuserchangelog');
INSERT INTO `auth_permission` VALUES (257, 'Can change tb user change log', 86, 'change_tbuserchangelog');
INSERT INTO `auth_permission` VALUES (258, 'Can delete tb user change log', 86, 'delete_tbuserchangelog');
INSERT INTO `auth_permission` VALUES (259, 'Can add tb user deployment tool', 87, 'add_tbuserdeploymenttool');
INSERT INTO `auth_permission` VALUES (260, 'Can change tb user deployment tool', 87, 'change_tbuserdeploymenttool');
INSERT INTO `auth_permission` VALUES (261, 'Can delete tb user deployment tool', 87, 'delete_tbuserdeploymenttool');
INSERT INTO `auth_permission` VALUES (262, 'Can add tb user httpconf', 88, 'add_tbuserhttpconf');
INSERT INTO `auth_permission` VALUES (263, 'Can change tb user httpconf', 88, 'change_tbuserhttpconf');
INSERT INTO `auth_permission` VALUES (264, 'Can delete tb user httpconf', 88, 'delete_tbuserhttpconf');
INSERT INTO `auth_permission` VALUES (265, 'Can add 用户操作日志', 89, 'add_tbuserlog');
INSERT INTO `auth_permission` VALUES (266, 'Can change 用户操作日志', 89, 'change_tbuserlog');
INSERT INTO `auth_permission` VALUES (267, 'Can delete 用户操作日志', 89, 'delete_tbuserlog');
INSERT INTO `auth_permission` VALUES (268, 'Can add tb user permission relation', 90, 'add_tbuserpermissionrelation');
INSERT INTO `auth_permission` VALUES (269, 'Can change tb user permission relation', 90, 'change_tbuserpermissionrelation');
INSERT INTO `auth_permission` VALUES (270, 'Can delete tb user permission relation', 90, 'delete_tbuserpermissionrelation');
INSERT INTO `auth_permission` VALUES (271, 'Can add tb user team relation', 91, 'add_tbuserteamrelation');
INSERT INTO `auth_permission` VALUES (272, 'Can change tb user team relation', 91, 'change_tbuserteamrelation');
INSERT INTO `auth_permission` VALUES (273, 'Can delete tb user team relation', 91, 'delete_tbuserteamrelation');
INSERT INTO `auth_permission` VALUES (274, 'Can add tb user uri', 92, 'add_tbuseruri');
INSERT INTO `auth_permission` VALUES (275, 'Can change tb user uri', 92, 'change_tbuseruri');
INSERT INTO `auth_permission` VALUES (276, 'Can delete tb user uri', 92, 'delete_tbuseruri');
INSERT INTO `auth_permission` VALUES (277, 'Can add 版本', 93, 'add_tbversion');
INSERT INTO `auth_permission` VALUES (278, 'Can change 版本', 93, 'change_tbversion');
INSERT INTO `auth_permission` VALUES (279, 'Can delete 版本', 93, 'delete_tbversion');
INSERT INTO `auth_permission` VALUES (280, 'Can add tb version global text', 94, 'add_tbversionglobaltext');
INSERT INTO `auth_permission` VALUES (281, 'Can change tb version global text', 94, 'change_tbversionglobaltext');
INSERT INTO `auth_permission` VALUES (282, 'Can delete tb version global text', 94, 'delete_tbversionglobaltext');
INSERT INTO `auth_permission` VALUES (283, 'Can add tb version global vars', 95, 'add_tbversionglobalvars');
INSERT INTO `auth_permission` VALUES (284, 'Can change tb version global vars', 95, 'change_tbversionglobalvars');
INSERT INTO `auth_permission` VALUES (285, 'Can delete tb version global vars', 95, 'delete_tbversionglobalvars');
INSERT INTO `auth_permission` VALUES (286, 'Can add tb version http interface', 96, 'add_tbversionhttpinterface');
INSERT INTO `auth_permission` VALUES (287, 'Can change tb version http interface', 96, 'change_tbversionhttpinterface');
INSERT INTO `auth_permission` VALUES (288, 'Can delete tb version http interface', 96, 'delete_tbversionhttpinterface');
INSERT INTO `auth_permission` VALUES (289, 'Can add tb version http testcase', 97, 'add_tbversionhttptestcase');
INSERT INTO `auth_permission` VALUES (290, 'Can change tb version http testcase', 97, 'change_tbversionhttptestcase');
INSERT INTO `auth_permission` VALUES (291, 'Can delete tb version http testcase', 97, 'delete_tbversionhttptestcase');
INSERT INTO `auth_permission` VALUES (292, 'Can add tb version http testcase step', 98, 'add_tbversionhttptestcasestep');
INSERT INTO `auth_permission` VALUES (293, 'Can change tb version http testcase step', 98, 'change_tbversionhttptestcasestep');
INSERT INTO `auth_permission` VALUES (294, 'Can delete tb version http testcase step', 98, 'delete_tbversionhttptestcasestep');
INSERT INTO `auth_permission` VALUES (295, 'Can add tb version standard interface', 99, 'add_tbversionstandardinterface');
INSERT INTO `auth_permission` VALUES (296, 'Can change tb version standard interface', 99, 'change_tbversionstandardinterface');
INSERT INTO `auth_permission` VALUES (297, 'Can delete tb version standard interface', 99, 'delete_tbversionstandardinterface');
INSERT INTO `auth_permission` VALUES (298, 'Can add tb version task', 100, 'add_tbversiontask');
INSERT INTO `auth_permission` VALUES (299, 'Can change tb version task', 100, 'change_tbversiontask');
INSERT INTO `auth_permission` VALUES (300, 'Can delete tb version task', 100, 'delete_tbversiontask');
INSERT INTO `auth_permission` VALUES (301, 'Can add 任务集', 101, 'add_tbversiontasksuite');
INSERT INTO `auth_permission` VALUES (302, 'Can change 任务集', 101, 'change_tbversiontasksuite');
INSERT INTO `auth_permission` VALUES (303, 'Can delete 任务集', 101, 'delete_tbversiontasksuite');
INSERT INTO `auth_permission` VALUES (304, 'Can add tb web por rmi service test', 102, 'add_tbwebporrmiservicetest');
INSERT INTO `auth_permission` VALUES (305, 'Can change tb web por rmi service test', 102, 'change_tbwebporrmiservicetest');
INSERT INTO `auth_permission` VALUES (306, 'Can delete tb web por rmi service test', 102, 'delete_tbwebporrmiservicetest');
INSERT INTO `auth_permission` VALUES (307, 'Can add tb web portal action interface general situation', 103, 'add_tbwebportalactioninterfacegeneralsituation');
INSERT INTO `auth_permission` VALUES (308, 'Can change tb web portal action interface general situation', 103, 'change_tbwebportalactioninterfacegeneralsituation');
INSERT INTO `auth_permission` VALUES (309, 'Can delete tb web portal action interface general situation', 103, 'delete_tbwebportalactioninterfacegeneralsituation');
INSERT INTO `auth_permission` VALUES (310, 'Can add tb web portal action interface test', 104, 'add_tbwebportalactioninterfacetest');
INSERT INTO `auth_permission` VALUES (311, 'Can change tb web portal action interface test', 104, 'change_tbwebportalactioninterfacetest');
INSERT INTO `auth_permission` VALUES (312, 'Can delete tb web portal action interface test', 104, 'delete_tbwebportalactioninterfacetest');
INSERT INTO `auth_permission` VALUES (313, 'Can add tb web portal all pass rate', 105, 'add_tbwebportalallpassrate');
INSERT INTO `auth_permission` VALUES (314, 'Can change tb web portal all pass rate', 105, 'change_tbwebportalallpassrate');
INSERT INTO `auth_permission` VALUES (315, 'Can delete tb web portal all pass rate', 105, 'delete_tbwebportalallpassrate');
INSERT INTO `auth_permission` VALUES (316, 'Can add tb web portal business line', 106, 'add_tbwebportalbusinessline');
INSERT INTO `auth_permission` VALUES (317, 'Can change tb web portal business line', 106, 'change_tbwebportalbusinessline');
INSERT INTO `auth_permission` VALUES (318, 'Can delete tb web portal business line', 106, 'delete_tbwebportalbusinessline');
INSERT INTO `auth_permission` VALUES (319, 'Can add tb web portal business line action pass rate', 107, 'add_tbwebportalbusinesslineactionpassrate');
INSERT INTO `auth_permission` VALUES (320, 'Can change tb web portal business line action pass rate', 107, 'change_tbwebportalbusinesslineactionpassrate');
INSERT INTO `auth_permission` VALUES (321, 'Can delete tb web portal business line action pass rate', 107, 'delete_tbwebportalbusinesslineactionpassrate');
INSERT INTO `auth_permission` VALUES (322, 'Can add 通过率环境配置', 108, 'add_tbwebportalpassingrateenv');
INSERT INTO `auth_permission` VALUES (323, 'Can change 通过率环境配置', 108, 'change_tbwebportalpassingrateenv');
INSERT INTO `auth_permission` VALUES (324, 'Can delete 通过率环境配置', 108, 'delete_tbwebportalpassingrateenv');
INSERT INTO `auth_permission` VALUES (325, 'Can add tb web portal platform interface covered', 109, 'add_tbwebportalplatforminterfacecovered');
INSERT INTO `auth_permission` VALUES (326, 'Can change tb web portal platform interface covered', 109, 'change_tbwebportalplatforminterfacecovered');
INSERT INTO `auth_permission` VALUES (327, 'Can delete tb web portal platform interface covered', 109, 'delete_tbwebportalplatforminterfacecovered');
INSERT INTO `auth_permission` VALUES (328, 'Can add tb web portal rmi standard service', 110, 'add_tbwebportalrmistandardservice');
INSERT INTO `auth_permission` VALUES (329, 'Can change tb web portal rmi standard service', 110, 'change_tbwebportalrmistandardservice');
INSERT INTO `auth_permission` VALUES (330, 'Can delete tb web portal rmi standard service', 110, 'delete_tbwebportalrmistandardservice');
INSERT INTO `auth_permission` VALUES (331, 'Can add tb web portal service interface covered', 111, 'add_tbwebportalserviceinterfacecovered');
INSERT INTO `auth_permission` VALUES (332, 'Can change tb web portal service interface covered', 111, 'change_tbwebportalserviceinterfacecovered');
INSERT INTO `auth_permission` VALUES (333, 'Can delete tb web portal service interface covered', 111, 'delete_tbwebportalserviceinterfacecovered');
INSERT INTO `auth_permission` VALUES (334, 'Can add 通过率环境版本配置', 112, 'add_tbwebportalstandardenv');
INSERT INTO `auth_permission` VALUES (335, 'Can change 通过率环境版本配置', 112, 'change_tbwebportalstandardenv');
INSERT INTO `auth_permission` VALUES (336, 'Can delete 通过率环境版本配置', 112, 'delete_tbwebportalstandardenv');
INSERT INTO `auth_permission` VALUES (337, 'Can add 标准任务版本管理', 113, 'add_tbwebportalstandardtask');
INSERT INTO `auth_permission` VALUES (338, 'Can change 标准任务版本管理', 113, 'change_tbwebportalstandardtask');
INSERT INTO `auth_permission` VALUES (339, 'Can delete 标准任务版本管理', 113, 'delete_tbwebportalstandardtask');
INSERT INTO `auth_permission` VALUES (340, 'Can add 标准任务', 114, 'add_tbwebportaltask');
INSERT INTO `auth_permission` VALUES (341, 'Can change 标准任务', 114, 'change_tbwebportaltask');
INSERT INTO `auth_permission` VALUES (342, 'Can delete 标准任务', 114, 'delete_tbwebportaltask');
INSERT INTO `auth_permission` VALUES (343, 'Can add tb web portal ui covered', 115, 'add_tbwebportaluicovered');
INSERT INTO `auth_permission` VALUES (344, 'Can change tb web portal ui covered', 115, 'change_tbwebportaluicovered');
INSERT INTO `auth_permission` VALUES (345, 'Can delete tb web portal ui covered', 115, 'delete_tbwebportaluicovered');
INSERT INTO `auth_permission` VALUES (346, 'Can add tb web portal ui general situation', 116, 'add_tbwebportaluigeneralsituation');
INSERT INTO `auth_permission` VALUES (347, 'Can change tb web portal ui general situation', 116, 'change_tbwebportaluigeneralsituation');
INSERT INTO `auth_permission` VALUES (348, 'Can delete tb web portal ui general situation', 116, 'delete_tbwebportaluigeneralsituation');
INSERT INTO `auth_permission` VALUES (349, 'Can add tb web portal ui test', 117, 'add_tbwebportaluitest');
INSERT INTO `auth_permission` VALUES (350, 'Can change tb web portal ui test', 117, 'change_tbwebportaluitest');
INSERT INTO `auth_permission` VALUES (351, 'Can delete tb web portal ui test', 117, 'delete_tbwebportaluitest');
INSERT INTO `auth_permission` VALUES (352, 'Can add tb web portal ui test general situation', 118, 'add_tbwebportaluitestgeneralsituation');
INSERT INTO `auth_permission` VALUES (353, 'Can change tb web portal ui test general situation', 118, 'change_tbwebportaluitestgeneralsituation');
INSERT INTO `auth_permission` VALUES (354, 'Can delete tb web portal ui test general situation', 118, 'delete_tbwebportaluitestgeneralsituation');
INSERT INTO `auth_permission` VALUES (355, 'Can add tb web portal unit test general situation', 119, 'add_tbwebportalunittestgeneralsituation');
INSERT INTO `auth_permission` VALUES (356, 'Can change tb web portal unit test general situation', 119, 'change_tbwebportalunittestgeneralsituation');
INSERT INTO `auth_permission` VALUES (357, 'Can delete tb web portal unit test general situation', 119, 'delete_tbwebportalunittestgeneralsituation');
INSERT INTO `auth_permission` VALUES (358, 'Can add 单元测试service', 120, 'add_tbwebportalunittestservice');
INSERT INTO `auth_permission` VALUES (359, 'Can change 单元测试service', 120, 'change_tbwebportalunittestservice');
INSERT INTO `auth_permission` VALUES (360, 'Can delete 单元测试service', 120, 'delete_tbwebportalunittestservice');
INSERT INTO `auth_permission` VALUES (361, 'Can add tb web port open api bl test', 121, 'add_tbwebportopenapibltest');
INSERT INTO `auth_permission` VALUES (362, 'Can change tb web port open api bl test', 121, 'change_tbwebportopenapibltest');
INSERT INTO `auth_permission` VALUES (363, 'Can delete tb web port open api bl test', 121, 'delete_tbwebportopenapibltest');
INSERT INTO `auth_permission` VALUES (364, 'Can add tb web port open api general situation', 122, 'add_tbwebportopenapigeneralsituation');
INSERT INTO `auth_permission` VALUES (365, 'Can change tb web port open api general situation', 122, 'change_tbwebportopenapigeneralsituation');
INSERT INTO `auth_permission` VALUES (366, 'Can delete tb web port open api general situation', 122, 'delete_tbwebportopenapigeneralsituation');
INSERT INTO `auth_permission` VALUES (367, 'Can add tb web port open api interface test', 123, 'add_tbwebportopenapiinterfacetest');
INSERT INTO `auth_permission` VALUES (368, 'Can change tb web port open api interface test', 123, 'change_tbwebportopenapiinterfacetest');
INSERT INTO `auth_permission` VALUES (369, 'Can delete tb web port open api interface test', 123, 'delete_tbwebportopenapiinterfacetest');
INSERT INTO `auth_permission` VALUES (370, 'Can add tb web port rmi general situation', 124, 'add_tbwebportrmigeneralsituation');
INSERT INTO `auth_permission` VALUES (371, 'Can change tb web port rmi general situation', 124, 'change_tbwebportrmigeneralsituation');
INSERT INTO `auth_permission` VALUES (372, 'Can delete tb web port rmi general situation', 124, 'delete_tbwebportrmigeneralsituation');
INSERT INTO `auth_permission` VALUES (373, 'Can add tb web port rmi interface test', 125, 'add_tbwebportrmiinterfacetest');
INSERT INTO `auth_permission` VALUES (374, 'Can change tb web port rmi interface test', 125, 'change_tbwebportrmiinterfacetest');
INSERT INTO `auth_permission` VALUES (375, 'Can delete tb web port rmi interface test', 125, 'delete_tbwebportrmiinterfacetest');
INSERT INTO `auth_permission` VALUES (376, 'Can add 00系统错误日志表', 126, 'add_tb0errorlog');
INSERT INTO `auth_permission` VALUES (377, 'Can change 00系统错误日志表', 126, 'change_tb0errorlog');
INSERT INTO `auth_permission` VALUES (378, 'Can delete 00系统错误日志表', 126, 'delete_tb0errorlog');
INSERT INTO `auth_permission` VALUES (379, 'Can add 914DUBBO任务批量执行', 127, 'add_tb2dubbobatchtask');
INSERT INTO `auth_permission` VALUES (380, 'Can change 914DUBBO任务批量执行', 127, 'change_tb2dubbobatchtask');
INSERT INTO `auth_permission` VALUES (381, 'Can delete 914DUBBO任务批量执行', 127, 'delete_tb2dubbobatchtask');
INSERT INTO `auth_permission` VALUES (382, 'Can add tb2 dubbo interface', 128, 'add_tb2dubbointerface');
INSERT INTO `auth_permission` VALUES (383, 'Can change tb2 dubbo interface', 128, 'change_tb2dubbointerface');
INSERT INTO `auth_permission` VALUES (384, 'Can delete tb2 dubbo interface', 128, 'delete_tb2dubbointerface');
INSERT INTO `auth_permission` VALUES (385, 'Can add tb2 dubbo interface debug', 129, 'add_tb2dubbointerfacedebug');
INSERT INTO `auth_permission` VALUES (386, 'Can change tb2 dubbo interface debug', 129, 'change_tb2dubbointerfacedebug');
INSERT INTO `auth_permission` VALUES (387, 'Can delete tb2 dubbo interface debug', 129, 'delete_tb2dubbointerfacedebug');
INSERT INTO `auth_permission` VALUES (388, 'Can add 913DUBBO任务接口执行历史', 130, 'add_tb2dubbointerfaceexecutehistory');
INSERT INTO `auth_permission` VALUES (389, 'Can change 913DUBBO任务接口执行历史', 130, 'change_tb2dubbointerfaceexecutehistory');
INSERT INTO `auth_permission` VALUES (390, 'Can delete 913DUBBO任务接口执行历史', 130, 'delete_tb2dubbointerfaceexecutehistory');
INSERT INTO `auth_permission` VALUES (391, 'Can add tb2 dubbo quick debug', 131, 'add_tb2dubboquickdebug');
INSERT INTO `auth_permission` VALUES (392, 'Can change tb2 dubbo quick debug', 131, 'change_tb2dubboquickdebug');
INSERT INTO `auth_permission` VALUES (393, 'Can delete tb2 dubbo quick debug', 131, 'delete_tb2dubboquickdebug');
INSERT INTO `auth_permission` VALUES (394, 'Can add 911DUBBO任务表', 132, 'add_tb2dubbotask');
INSERT INTO `auth_permission` VALUES (395, 'Can change 911DUBBO任务表', 132, 'change_tb2dubbotask');
INSERT INTO `auth_permission` VALUES (396, 'Can delete 911DUBBO任务表', 132, 'delete_tb2dubbotask');
INSERT INTO `auth_permission` VALUES (397, 'Can add 912DUBBO任务执行', 133, 'add_tb2dubbotaskexecute');
INSERT INTO `auth_permission` VALUES (398, 'Can change 912DUBBO任务执行', 133, 'change_tb2dubbotaskexecute');
INSERT INTO `auth_permission` VALUES (399, 'Can delete 912DUBBO任务执行', 133, 'delete_tb2dubbotaskexecute');
INSERT INTO `auth_permission` VALUES (400, 'Can add 任务集', 134, 'add_tb2dubbotasksuite');
INSERT INTO `auth_permission` VALUES (401, 'Can change 任务集', 134, 'change_tb2dubbotasksuite');
INSERT INTO `auth_permission` VALUES (402, 'Can delete 任务集', 134, 'delete_tb2dubbotasksuite');
INSERT INTO `auth_permission` VALUES (403, 'Can add tb2dubbo task suite execute', 135, 'add_tb2dubbotasksuiteexecute');
INSERT INTO `auth_permission` VALUES (404, 'Can change tb2dubbo task suite execute', 135, 'change_tb2dubbotasksuiteexecute');
INSERT INTO `auth_permission` VALUES (405, 'Can delete tb2dubbo task suite execute', 135, 'delete_tb2dubbotasksuiteexecute');
INSERT INTO `auth_permission` VALUES (406, 'Can add tb2 dubbo testcase', 136, 'add_tb2dubbotestcase');
INSERT INTO `auth_permission` VALUES (407, 'Can change tb2 dubbo testcase', 136, 'change_tb2dubbotestcase');
INSERT INTO `auth_permission` VALUES (408, 'Can delete tb2 dubbo testcase', 136, 'delete_tb2dubbotestcase');
INSERT INTO `auth_permission` VALUES (409, 'Can add DUBBO用例调试', 137, 'add_tb2dubbotestcasedebug');
INSERT INTO `auth_permission` VALUES (410, 'Can change DUBBO用例调试', 137, 'change_tb2dubbotestcasedebug');
INSERT INTO `auth_permission` VALUES (411, 'Can delete DUBBO用例调试', 137, 'delete_tb2dubbotestcasedebug');
INSERT INTO `auth_permission` VALUES (412, 'Can add tb2 dubbo testcase step', 138, 'add_tb2dubbotestcasestep');
INSERT INTO `auth_permission` VALUES (413, 'Can change tb2 dubbo testcase step', 138, 'change_tb2dubbotestcasestep');
INSERT INTO `auth_permission` VALUES (414, 'Can delete tb2 dubbo testcase step', 138, 'delete_tb2dubbotestcasestep');
INSERT INTO `auth_permission` VALUES (415, 'Can add 用例步骤调试', 139, 'add_tb2dubbotestcasestepdebug');
INSERT INTO `auth_permission` VALUES (416, 'Can change 用例步骤调试', 139, 'change_tb2dubbotestcasestepdebug');
INSERT INTO `auth_permission` VALUES (417, 'Can delete 用例步骤调试', 139, 'delete_tb2dubbotestcasestepdebug');
INSERT INTO `auth_permission` VALUES (418, 'Can add tb3ui global text', 140, 'add_tb3uiglobaltext');
INSERT INTO `auth_permission` VALUES (419, 'Can change tb3ui global text', 140, 'change_tb3uiglobaltext');
INSERT INTO `auth_permission` VALUES (420, 'Can delete tb3ui global text', 140, 'delete_tb3uiglobaltext');
INSERT INTO `auth_permission` VALUES (421, 'Can add tb3ui global vars', 141, 'add_tb3uiglobalvars');
INSERT INTO `auth_permission` VALUES (422, 'Can change tb3ui global vars', 141, 'change_tb3uiglobalvars');
INSERT INTO `auth_permission` VALUES (423, 'Can delete tb3ui global vars', 141, 'delete_tb3uiglobalvars');
INSERT INTO `auth_permission` VALUES (424, 'Can add tb3ui page element', 142, 'add_tb3uipageelement');
INSERT INTO `auth_permission` VALUES (425, 'Can change tb3ui page element', 142, 'change_tb3uipageelement');
INSERT INTO `auth_permission` VALUES (426, 'Can delete tb3ui page element', 142, 'delete_tb3uipageelement');
INSERT INTO `auth_permission` VALUES (427, 'Can add tb3ui page object', 143, 'add_tb3uipageobject');
INSERT INTO `auth_permission` VALUES (428, 'Can change tb3ui page object', 143, 'change_tb3uipageobject');
INSERT INTO `auth_permission` VALUES (429, 'Can delete tb3ui page object', 143, 'delete_tb3uipageobject');
INSERT INTO `auth_permission` VALUES (430, 'Can add tb4 data keyword', 144, 'add_tb4datakeyword');
INSERT INTO `auth_permission` VALUES (431, 'Can change tb4 data keyword', 144, 'change_tb4datakeyword');
INSERT INTO `auth_permission` VALUES (432, 'Can delete tb4 data keyword', 144, 'delete_tb4datakeyword');
INSERT INTO `auth_permission` VALUES (433, 'Can add tb4 mock http', 145, 'add_tb4mockhttp');
INSERT INTO `auth_permission` VALUES (434, 'Can change tb4 mock http', 145, 'change_tb4mockhttp');
INSERT INTO `auth_permission` VALUES (435, 'Can delete tb4 mock http', 145, 'delete_tb4mockhttp');
INSERT INTO `auth_permission` VALUES (436, 'Can add tb4 mock http invoke history', 146, 'add_tb4mockhttpinvokehistory');
INSERT INTO `auth_permission` VALUES (437, 'Can change tb4 mock http invoke history', 146, 'change_tb4mockhttpinvokehistory');
INSERT INTO `auth_permission` VALUES (438, 'Can delete tb4 mock http invoke history', 146, 'delete_tb4mockhttpinvokehistory');
INSERT INTO `auth_permission` VALUES (439, 'Can add tb4 mock tag', 147, 'add_tb4mocktag');
INSERT INTO `auth_permission` VALUES (440, 'Can change tb4 mock tag', 147, 'change_tb4mocktag');
INSERT INTO `auth_permission` VALUES (441, 'Can delete tb4 mock tag', 147, 'delete_tb4mocktag');
INSERT INTO `auth_permission` VALUES (442, 'Can add tb4 statistic task', 148, 'add_tb4statistictask');
INSERT INTO `auth_permission` VALUES (443, 'Can change tb4 statistic task', 148, 'change_tb4statistictask');
INSERT INTO `auth_permission` VALUES (444, 'Can delete tb4 statistic task', 148, 'delete_tb4statistictask');
INSERT INTO `auth_permission` VALUES (445, 'Can add tb4 statistic task execute info', 149, 'add_tb4statistictaskexecuteinfo');
INSERT INTO `auth_permission` VALUES (446, 'Can change tb4 statistic task execute info', 149, 'change_tb4statistictaskexecuteinfo');
INSERT INTO `auth_permission` VALUES (447, 'Can delete tb4 statistic task execute info', 149, 'delete_tb4statistictaskexecuteinfo');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (7, 'all_models', 'tbadmininterfacepermissionrelation');
INSERT INTO `django_content_type` VALUES (8, 'all_models', 'tbadminmanagepermission');
INSERT INTO `django_content_type` VALUES (9, 'all_models', 'tbadminmanageuserpermissionrelation');
INSERT INTO `django_content_type` VALUES (10, 'all_models', 'tbadminplatformpermission');
INSERT INTO `django_content_type` VALUES (11, 'all_models', 'tbadminplatformpermissionuserrelation');
INSERT INTO `django_content_type` VALUES (12, 'all_models', 'tbadminrole');
INSERT INTO `django_content_type` VALUES (13, 'all_models', 'tbadminrolepermissionrelation');
INSERT INTO `django_content_type` VALUES (14, 'all_models', 'tbadminteam');
INSERT INTO `django_content_type` VALUES (15, 'all_models', 'tbadminteampermissionrelation');
INSERT INTO `django_content_type` VALUES (16, 'all_models', 'tbadminuser');
INSERT INTO `django_content_type` VALUES (17, 'all_models', 'tbadminuserpermissionrelation');
INSERT INTO `django_content_type` VALUES (18, 'all_models', 'tbadminuserrolerelation');
INSERT INTO `django_content_type` VALUES (19, 'all_models', 'tbadminuserteamrelation');
INSERT INTO `django_content_type` VALUES (20, 'all_models', 'tbbatchtask');
INSERT INTO `django_content_type` VALUES (21, 'all_models', 'tbbusinessline');
INSERT INTO `django_content_type` VALUES (22, 'all_models', 'tbbusinesslinemodulerelation');
INSERT INTO `django_content_type` VALUES (23, 'all_models', 'tbconfighttp');
INSERT INTO `django_content_type` VALUES (24, 'all_models', 'tbconfigservice');
INSERT INTO `django_content_type` VALUES (25, 'all_models', 'tbconfiguri');
INSERT INTO `django_content_type` VALUES (26, 'all_models', 'tbenvuriconf');
INSERT INTO `django_content_type` VALUES (27, 'all_models', 'tbexecpythonattrs');
INSERT INTO `django_content_type` VALUES (28, 'all_models', 'tbglobaltext');
INSERT INTO `django_content_type` VALUES (29, 'all_models', 'tbglobalvars');
INSERT INTO `django_content_type` VALUES (30, 'all_models', 'tbhttpinterface');
INSERT INTO `django_content_type` VALUES (31, 'all_models', 'tbhttpinterfacedebug');
INSERT INTO `django_content_type` VALUES (32, 'all_models', 'tbhttpinterfacetag');
INSERT INTO `django_content_type` VALUES (33, 'all_models', 'tbhttptestcase');
INSERT INTO `django_content_type` VALUES (34, 'all_models', 'tbhttptestcasedebug');
INSERT INTO `django_content_type` VALUES (35, 'all_models', 'tbhttptestcasestep');
INSERT INTO `django_content_type` VALUES (36, 'all_models', 'tbhttptestcasestepdebug');
INSERT INTO `django_content_type` VALUES (37, 'all_models', 'tbhttptestcasetag');
INSERT INTO `django_content_type` VALUES (38, 'all_models', 'tbinterfaceexecutehistory');
INSERT INTO `django_content_type` VALUES (39, 'all_models', 'tbjirabusinessline');
INSERT INTO `django_content_type` VALUES (40, 'all_models', 'tbjirabusinesslineplatformrelation');
INSERT INTO `django_content_type` VALUES (41, 'all_models', 'tbjiramodule');
INSERT INTO `django_content_type` VALUES (42, 'all_models', 'tbjiramoduleplatformrelation');
INSERT INTO `django_content_type` VALUES (43, 'all_models', 'tbmodules');
INSERT INTO `django_content_type` VALUES (44, 'all_models', 'tbopenapibusinessline');
INSERT INTO `django_content_type` VALUES (45, 'all_models', 'tbopenapiuri');
INSERT INTO `django_content_type` VALUES (46, 'all_models', 'tbpermission');
INSERT INTO `django_content_type` VALUES (47, 'all_models', 'tbrunserverconf');
INSERT INTO `django_content_type` VALUES (48, 'all_models', 'tbsource');
INSERT INTO `django_content_type` VALUES (49, 'all_models', 'tbstandardinterface');
INSERT INTO `django_content_type` VALUES (50, 'all_models', 'tbtag');
INSERT INTO `django_content_type` VALUES (51, 'all_models', 'tbtask');
INSERT INTO `django_content_type` VALUES (52, 'all_models', 'tbtaskexecute');
INSERT INTO `django_content_type` VALUES (53, 'all_models', 'tbtasksuite');
INSERT INTO `django_content_type` VALUES (54, 'all_models', 'tbtasksuiteexecute');
INSERT INTO `django_content_type` VALUES (55, 'all_models', 'tbteam');
INSERT INTO `django_content_type` VALUES (56, 'all_models', 'tbteampermissionrelation');
INSERT INTO `django_content_type` VALUES (57, 'all_models', 'tbuiautouploadpackage');
INSERT INTO `django_content_type` VALUES (58, 'all_models', 'tbuifunctions');
INSERT INTO `django_content_type` VALUES (59, 'all_models', 'tbuifunctionstestcase');
INSERT INTO `django_content_type` VALUES (60, 'all_models', 'tbuifunctionstestcasestep');
INSERT INTO `django_content_type` VALUES (61, 'all_models', 'tbuiglobaltext');
INSERT INTO `django_content_type` VALUES (62, 'all_models', 'tbuiglobalvars');
INSERT INTO `django_content_type` VALUES (63, 'all_models', 'tbuimobileserver');
INSERT INTO `django_content_type` VALUES (64, 'all_models', 'tbuimobileserverlog');
INSERT INTO `django_content_type` VALUES (65, 'all_models', 'tbuipackage');
INSERT INTO `django_content_type` VALUES (66, 'all_models', 'tbuipageobject');
INSERT INTO `django_content_type` VALUES (67, 'all_models', 'tbuipageobjectelements');
INSERT INTO `django_content_type` VALUES (68, 'all_models', 'tbuitask');
INSERT INTO `django_content_type` VALUES (69, 'all_models', 'tbuitaskexecute');
INSERT INTO `django_content_type` VALUES (70, 'all_models', 'tbuitasksimple');
INSERT INTO `django_content_type` VALUES (71, 'all_models', 'tbuitestcase');
INSERT INTO `django_content_type` VALUES (72, 'all_models', 'tbuitestcasestep');
INSERT INTO `django_content_type` VALUES (73, 'all_models', 'tbuitestexcel');
INSERT INTO `django_content_type` VALUES (74, 'all_models', 'tbuitestexecute');
INSERT INTO `django_content_type` VALUES (75, 'all_models', 'tbuiversionfunctions');
INSERT INTO `django_content_type` VALUES (76, 'all_models', 'tbuiversionfunctionstestcase');
INSERT INTO `django_content_type` VALUES (77, 'all_models', 'tbuiversionfunctionstestcasestep');
INSERT INTO `django_content_type` VALUES (78, 'all_models', 'tbuiversionglobaltext');
INSERT INTO `django_content_type` VALUES (79, 'all_models', 'tbuiversionglobalvars');
INSERT INTO `django_content_type` VALUES (80, 'all_models', 'tbuiversionpageobject');
INSERT INTO `django_content_type` VALUES (81, 'all_models', 'tbuiversionpageobjectelements');
INSERT INTO `django_content_type` VALUES (82, 'all_models', 'tbuiversiontask');
INSERT INTO `django_content_type` VALUES (83, 'all_models', 'tbuiversiontestcase');
INSERT INTO `django_content_type` VALUES (84, 'all_models', 'tbuiversiontestcasestep');
INSERT INTO `django_content_type` VALUES (85, 'all_models', 'tbuser');
INSERT INTO `django_content_type` VALUES (86, 'all_models', 'tbuserchangelog');
INSERT INTO `django_content_type` VALUES (87, 'all_models', 'tbuserdeploymenttool');
INSERT INTO `django_content_type` VALUES (88, 'all_models', 'tbuserhttpconf');
INSERT INTO `django_content_type` VALUES (89, 'all_models', 'tbuserlog');
INSERT INTO `django_content_type` VALUES (90, 'all_models', 'tbuserpermissionrelation');
INSERT INTO `django_content_type` VALUES (91, 'all_models', 'tbuserteamrelation');
INSERT INTO `django_content_type` VALUES (92, 'all_models', 'tbuseruri');
INSERT INTO `django_content_type` VALUES (93, 'all_models', 'tbversion');
INSERT INTO `django_content_type` VALUES (94, 'all_models', 'tbversionglobaltext');
INSERT INTO `django_content_type` VALUES (95, 'all_models', 'tbversionglobalvars');
INSERT INTO `django_content_type` VALUES (96, 'all_models', 'tbversionhttpinterface');
INSERT INTO `django_content_type` VALUES (97, 'all_models', 'tbversionhttptestcase');
INSERT INTO `django_content_type` VALUES (98, 'all_models', 'tbversionhttptestcasestep');
INSERT INTO `django_content_type` VALUES (99, 'all_models', 'tbversionstandardinterface');
INSERT INTO `django_content_type` VALUES (100, 'all_models', 'tbversiontask');
INSERT INTO `django_content_type` VALUES (101, 'all_models', 'tbversiontasksuite');
INSERT INTO `django_content_type` VALUES (102, 'all_models', 'tbwebporrmiservicetest');
INSERT INTO `django_content_type` VALUES (103, 'all_models', 'tbwebportalactioninterfacegeneralsituation');
INSERT INTO `django_content_type` VALUES (104, 'all_models', 'tbwebportalactioninterfacetest');
INSERT INTO `django_content_type` VALUES (105, 'all_models', 'tbwebportalallpassrate');
INSERT INTO `django_content_type` VALUES (106, 'all_models', 'tbwebportalbusinessline');
INSERT INTO `django_content_type` VALUES (107, 'all_models', 'tbwebportalbusinesslineactionpassrate');
INSERT INTO `django_content_type` VALUES (108, 'all_models', 'tbwebportalpassingrateenv');
INSERT INTO `django_content_type` VALUES (109, 'all_models', 'tbwebportalplatforminterfacecovered');
INSERT INTO `django_content_type` VALUES (110, 'all_models', 'tbwebportalrmistandardservice');
INSERT INTO `django_content_type` VALUES (111, 'all_models', 'tbwebportalserviceinterfacecovered');
INSERT INTO `django_content_type` VALUES (112, 'all_models', 'tbwebportalstandardenv');
INSERT INTO `django_content_type` VALUES (113, 'all_models', 'tbwebportalstandardtask');
INSERT INTO `django_content_type` VALUES (114, 'all_models', 'tbwebportaltask');
INSERT INTO `django_content_type` VALUES (115, 'all_models', 'tbwebportaluicovered');
INSERT INTO `django_content_type` VALUES (116, 'all_models', 'tbwebportaluigeneralsituation');
INSERT INTO `django_content_type` VALUES (117, 'all_models', 'tbwebportaluitest');
INSERT INTO `django_content_type` VALUES (118, 'all_models', 'tbwebportaluitestgeneralsituation');
INSERT INTO `django_content_type` VALUES (119, 'all_models', 'tbwebportalunittestgeneralsituation');
INSERT INTO `django_content_type` VALUES (120, 'all_models', 'tbwebportalunittestservice');
INSERT INTO `django_content_type` VALUES (121, 'all_models', 'tbwebportopenapibltest');
INSERT INTO `django_content_type` VALUES (122, 'all_models', 'tbwebportopenapigeneralsituation');
INSERT INTO `django_content_type` VALUES (123, 'all_models', 'tbwebportopenapiinterfacetest');
INSERT INTO `django_content_type` VALUES (124, 'all_models', 'tbwebportrmigeneralsituation');
INSERT INTO `django_content_type` VALUES (125, 'all_models', 'tbwebportrmiinterfacetest');
INSERT INTO `django_content_type` VALUES (126, 'all_models_for_dubbo', 'tb0errorlog');
INSERT INTO `django_content_type` VALUES (127, 'all_models_for_dubbo', 'tb2dubbobatchtask');
INSERT INTO `django_content_type` VALUES (128, 'all_models_for_dubbo', 'tb2dubbointerface');
INSERT INTO `django_content_type` VALUES (129, 'all_models_for_dubbo', 'tb2dubbointerfacedebug');
INSERT INTO `django_content_type` VALUES (130, 'all_models_for_dubbo', 'tb2dubbointerfaceexecutehistory');
INSERT INTO `django_content_type` VALUES (131, 'all_models_for_dubbo', 'tb2dubboquickdebug');
INSERT INTO `django_content_type` VALUES (132, 'all_models_for_dubbo', 'tb2dubbotask');
INSERT INTO `django_content_type` VALUES (133, 'all_models_for_dubbo', 'tb2dubbotaskexecute');
INSERT INTO `django_content_type` VALUES (134, 'all_models_for_dubbo', 'tb2dubbotasksuite');
INSERT INTO `django_content_type` VALUES (135, 'all_models_for_dubbo', 'tb2dubbotasksuiteexecute');
INSERT INTO `django_content_type` VALUES (136, 'all_models_for_dubbo', 'tb2dubbotestcase');
INSERT INTO `django_content_type` VALUES (137, 'all_models_for_dubbo', 'tb2dubbotestcasedebug');
INSERT INTO `django_content_type` VALUES (138, 'all_models_for_dubbo', 'tb2dubbotestcasestep');
INSERT INTO `django_content_type` VALUES (139, 'all_models_for_dubbo', 'tb2dubbotestcasestepdebug');
INSERT INTO `django_content_type` VALUES (144, 'all_models_for_mock', 'tb4datakeyword');
INSERT INTO `django_content_type` VALUES (145, 'all_models_for_mock', 'tb4mockhttp');
INSERT INTO `django_content_type` VALUES (146, 'all_models_for_mock', 'tb4mockhttpinvokehistory');
INSERT INTO `django_content_type` VALUES (147, 'all_models_for_mock', 'tb4mocktag');
INSERT INTO `django_content_type` VALUES (148, 'all_models_for_mock', 'tb4statistictask');
INSERT INTO `django_content_type` VALUES (149, 'all_models_for_mock', 'tb4statistictaskexecuteinfo');
INSERT INTO `django_content_type` VALUES (140, 'all_models_for_ui', 'tb3uiglobaltext');
INSERT INTO `django_content_type` VALUES (141, 'all_models_for_ui', 'tb3uiglobalvars');
INSERT INTO `django_content_type` VALUES (142, 'all_models_for_ui', 'tb3uipageelement');
INSERT INTO `django_content_type` VALUES (143, 'all_models_for_ui', 'tb3uipageobject');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-04-18 10:02:30.106004');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2019-04-18 10:02:30.329829');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2019-04-18 10:02:30.397414');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-04-18 10:02:30.427282');
INSERT INTO `django_migrations` VALUES (5, 'all_models', '0001_initial', '2019-04-18 10:02:38.554405');
INSERT INTO `django_migrations` VALUES (6, 'all_models_for_dubbo', '0001_initial', '2019-04-18 10:02:40.672891');
INSERT INTO `django_migrations` VALUES (7, 'all_models_for_mock', '0001_initial', '2019-04-18 10:02:40.839157');
INSERT INTO `django_migrations` VALUES (8, 'all_models_for_ui', '0001_initial', '2019-04-18 10:02:40.941054');
INSERT INTO `django_migrations` VALUES (9, 'contenttypes', '0002_remove_content_type_name', '2019-04-18 10:02:41.231128');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0002_alter_permission_name_max_length', '2019-04-18 10:02:41.270443');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0003_alter_user_email_max_length', '2019-04-18 10:02:41.308526');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0004_alter_user_username_opts', '2019-04-18 10:02:41.336596');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0005_alter_user_last_login_null', '2019-04-18 10:02:41.381756');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0006_require_contenttypes_0002', '2019-04-18 10:02:41.388011');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0007_alter_validators_add_error_messages', '2019-04-18 10:02:41.403141');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0008_alter_user_username_max_length', '2019-04-18 10:02:41.452175');
INSERT INTO `django_migrations` VALUES (17, 'sessions', '0001_initial', '2019-04-18 10:02:41.472969');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb0_error_log
-- ----------------------------
DROP TABLE IF EXISTS `tb0_error_log`;
CREATE TABLE `tb0_error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `errorLogText` longtext NOT NULL,
  `logLevel` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_batch_execute_task
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_batch_execute_task`;
CREATE TABLE `tb2_dubbo_batch_execute_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessLine` varchar(200) NOT NULL,
  `httpConfKey` varchar(20) NOT NULL,
  `taskLevel` int(11) NOT NULL,
  `caseLevel` int(11) NOT NULL,
  `taskIdList` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `isSendEmail` int(11) NOT NULL,
  `isCodeRate` int(11) NOT NULL,
  `isSaveHistory` int(11) NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `executeMsg` longtext NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_interface
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_interface`;
CREATE TABLE `tb2_dubbo_interface` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` longtext NOT NULL,
  `caselevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseType` int(11) NOT NULL,
  `varsPre` longtext NOT NULL,
  `dubboSystem` varchar(100) NOT NULL,
  `dubboService` varchar(200) NOT NULL,
  `dubboMethod` varchar(100) NOT NULL,
  `dubboParams` longtext NOT NULL,
  `encoding` varchar(10) NOT NULL,
  `timeout` int(11) NOT NULL,
  `varsPost` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `interfaceId` (`interfaceId`),
  KEY `tb2_dubbo_interface_addBy_4350c7a1_fk_tb_user_loginName` (`addBy`),
  KEY `tb2_dubbo_interface_businessLineId_4a0d1905_fk_tb_busine` (`businessLineId`),
  KEY `tb2_dubbo_interface_moduleId_41ea43c3_fk_tb_modules_id` (`moduleId`),
  CONSTRAINT `tb2_dubbo_interface_addBy_4350c7a1_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb2_dubbo_interface_businessLineId_4a0d1905_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb2_dubbo_interface_moduleId_41ea43c3_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_interface_debug
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_interface_debug`;
CREATE TABLE `tb2_dubbo_interface_debug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` longtext NOT NULL,
  `caselevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseType` int(11) NOT NULL,
  `varsPre` longtext NOT NULL,
  `dubboSystem` varchar(100) NOT NULL,
  `dubboService` varchar(200) NOT NULL,
  `dubboMethod` varchar(100) NOT NULL,
  `dubboParams` longtext NOT NULL,
  `encoding` varchar(10) NOT NULL,
  `timeout` int(11) NOT NULL,
  `varsPost` longtext NOT NULL,
  `execStatus` int(11) NOT NULL,
  `actualResult` longtext NOT NULL,
  `assertResult` longtext NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `beforeExecuteTakeTime` int(11) NOT NULL,
  `afterExecuteTakeTime` int(11) NOT NULL,
  `executeTakeTime` int(11) NOT NULL,
  `totalTakeTime` int(11) NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  `moduleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb2_dubbo_interface_debug_addBy_9a0ae6aa_fk_tb_user_loginName` (`addBy`),
  KEY `tb2_dubbo_interface__businessLineId_fe99cdd8_fk_tb_busine` (`businessLineId`),
  KEY `tb2_dubbo_interface__httpConfKey_ec2ea794_fk_tb_config` (`httpConfKey`),
  KEY `tb2_dubbo_interface_debug_moduleId_8cad7c84_fk_tb_modules_id` (`moduleId`),
  CONSTRAINT `tb2_dubbo_interface__businessLineId_fe99cdd8_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb2_dubbo_interface__httpConfKey_ec2ea794_fk_tb_config` FOREIGN KEY (`httpConfKey`) REFERENCES `tb_config_http` (`httpconfkey`),
  CONSTRAINT `tb2_dubbo_interface_debug_addBy_9a0ae6aa_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb2_dubbo_interface_debug_moduleId_8cad7c84_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_interface_execute_history
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_interface_execute_history`;
CREATE TABLE `tb2_dubbo_interface_execute_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceUrl` varchar(200) NOT NULL,
  `requestHost` varchar(200) NOT NULL,
  `totalCount` int(11) NOT NULL,
  `passCount` int(11) NOT NULL,
  `failCount` int(11) NOT NULL,
  `errorCount` int(11) NOT NULL,
  `exceptionCount` int(11) NOT NULL,
  `taskId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `testReportUrl` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `execBy` varchar(20) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  `taskExecuteId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb2_dubbo_interface_exec_interfaceUrl_taskExecute_2089e973_uniq` (`interfaceUrl`,`taskExecuteId`),
  KEY `tb2_dubbo_interface__addBy_3e87b9bd_fk_tb_user_l` (`addBy`),
  KEY `tb2_dubbo_interface__execBy_a49c2e31_fk_tb_user_l` (`execBy`),
  KEY `tb2_dubbo_interface__httpConfKey_91623e8e_fk_tb_config` (`httpConfKey`),
  KEY `tb2_dubbo_interface__taskExecuteId_03180417_fk_tb2_dubbo` (`taskExecuteId`),
  CONSTRAINT `tb2_dubbo_interface__addBy_3e87b9bd_fk_tb_user_l` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb2_dubbo_interface__execBy_a49c2e31_fk_tb_user_l` FOREIGN KEY (`execBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb2_dubbo_interface__httpConfKey_91623e8e_fk_tb_config` FOREIGN KEY (`httpConfKey`) REFERENCES `tb_config_http` (`httpconfkey`),
  CONSTRAINT `tb2_dubbo_interface__taskExecuteId_03180417_fk_tb2_dubbo` FOREIGN KEY (`taskExecuteId`) REFERENCES `tb2_dubbo_task_execute` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_quick_debug
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_quick_debug`;
CREATE TABLE `tb2_dubbo_quick_debug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requestAddr` varchar(200) NOT NULL,
  `dubboService` varchar(200) NOT NULL,
  `dubboMethod` varchar(100) NOT NULL,
  `dubboParams` longtext NOT NULL,
  `encoding` varchar(10) NOT NULL,
  `actualResult` longtext NOT NULL,
  `executeTakeTime` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_task
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_task`;
CREATE TABLE `tb2_dubbo_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `businessLineGroup` varchar(1000) NOT NULL,
  `modulesGroup` varchar(1000) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `taskLevel` int(11) NOT NULL,
  `highPriorityVARS` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `interfaceCount` int(11) NOT NULL,
  `taskInterfaces` longtext NOT NULL,
  `caseCount` int(11) NOT NULL,
  `taskTestcases` longtext NOT NULL,
  `interfaceNum` int(11) NOT NULL,
  `isCI` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskId` (`taskId`),
  KEY `tb2_dubbo_task_addBy_7d775fbe_fk_tb_user_loginName` (`addBy`),
  CONSTRAINT `tb2_dubbo_task_addBy_7d775fbe_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_task_execute
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_task_execute`;
CREATE TABLE `tb2_dubbo_task_execute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `businessLineGroup` varchar(1000) NOT NULL,
  `modulesGroup` varchar(1000) NOT NULL,
  `taskLevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `highPriorityVARS` longtext NOT NULL,
  `interfaceCount` int(11) NOT NULL,
  `taskInterfaces` longtext NOT NULL,
  `caseCount` int(11) NOT NULL,
  `taskTestcases` longtext NOT NULL,
  `interfaceNum` int(11) NOT NULL,
  `isCI` int(11) NOT NULL,
  `caseLevel` int(11) NOT NULL,
  `isSendEmail` int(11) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `isCodeRate` int(11) NOT NULL,
  `isSaveHistory` int(11) NOT NULL,
  `execComments` varchar(400) NOT NULL,
  `retryCount` int(11) NOT NULL,
  `execType` int(11) NOT NULL,
  `execTime` datetime(6) NOT NULL,
  `execFinishTime` datetime(6) NOT NULL,
  `execTakeTime` int(11) NOT NULL,
  `execStatus` int(11) NOT NULL,
  `execProgressData` varchar(30) NOT NULL,
  `execPlatform` int(11) NOT NULL,
  `execLevel` int(11) NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `testResultMsg` longtext NOT NULL,
  `testReportUrl` varchar(200) NOT NULL,
  `taskSuiteExecuteId` int(11) NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `execBy` varchar(20) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb2_dubbo_task_execute_addBy_0d2ae424_fk_tb_user_loginName` (`addBy`),
  KEY `tb2_dubbo_task_execute_execBy_895030f5_fk_tb_user_loginName` (`execBy`),
  KEY `tb2_dubbo_task_execu_httpConfKey_7ae8eb76_fk_tb_config` (`httpConfKey`),
  CONSTRAINT `tb2_dubbo_task_execu_httpConfKey_7ae8eb76_fk_tb_config` FOREIGN KEY (`httpConfKey`) REFERENCES `tb_config_http` (`httpconfkey`),
  CONSTRAINT `tb2_dubbo_task_execute_addBy_0d2ae424_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb2_dubbo_task_execute_execBy_895030f5_fk_tb_user_loginName` FOREIGN KEY (`execBy`) REFERENCES `tb_user` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_task_suite
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_task_suite`;
CREATE TABLE `tb2_dubbo_task_suite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskSuiteId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskSuiteDesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `status` int(11) NOT NULL,
  `taskCount` int(11) NOT NULL,
  `taskList` longtext NOT NULL,
  `isCI` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskSuiteId` (`taskSuiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_task_suite_execute
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_task_suite_execute`;
CREATE TABLE `tb2_dubbo_task_suite_execute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskSuiteId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskSuiteDesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `taskCount` int(11) NOT NULL,
  `taskList` varchar(300) NOT NULL,
  `isCI` int(11) NOT NULL,
  `httpConfKeyList` varchar(300) NOT NULL,
  `httpConfKeyAliasList` varchar(300) NOT NULL,
  `caseLevel` int(11) NOT NULL,
  `isSendEmail` int(11) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `isCodeRate` int(11) NOT NULL,
  `isSaveHistory` int(11) NOT NULL,
  `execComments` varchar(400) NOT NULL,
  `retryCount` int(11) NOT NULL,
  `execType` int(11) NOT NULL,
  `execTime` datetime(6) NOT NULL,
  `execFinishTime` datetime(6) NOT NULL,
  `execTakeTime` int(11) NOT NULL,
  `execBy` varchar(30) NOT NULL,
  `execStatus` int(11) NOT NULL,
  `execProgressData` varchar(30) NOT NULL,
  `execPlatform` int(11) NOT NULL,
  `execLevel` int(11) NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `testResultMsg` longtext NOT NULL,
  `testReportUrl` varchar(200) NOT NULL,
  `taskExecuteIdList` varchar(200) NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_testcase
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_testcase`;
CREATE TABLE `tb2_dubbo_testcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` longtext NOT NULL,
  `caselevel` int(11) NOT NULL,
  `stepCount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseType` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `caseId` (`caseId`),
  KEY `tb2_dubbo_testcase_addBy_a3261d1b_fk_tb_user_loginName` (`addBy`),
  KEY `tb2_dubbo_testcase_businessLineId_963e529e_fk_tb_busine` (`businessLineId`),
  KEY `tb2_dubbo_testcase_moduleId_9167ec16_fk_tb_modules_id` (`moduleId`),
  CONSTRAINT `tb2_dubbo_testcase_addBy_a3261d1b_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb2_dubbo_testcase_businessLineId_963e529e_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb2_dubbo_testcase_moduleId_9167ec16_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_testcase_debug
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_testcase_debug`;
CREATE TABLE `tb2_dubbo_testcase_debug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` longtext NOT NULL,
  `caselevel` int(11) NOT NULL,
  `stepCount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseType` int(11) NOT NULL,
  `execStatus` int(11) NOT NULL,
  `assertResult` longtext NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `beforeExecuteTakeTime` int(11) NOT NULL,
  `afterExecuteTakeTime` int(11) NOT NULL,
  `executeTakeTime` int(11) NOT NULL,
  `totalTakeTime` int(11) NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  `moduleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb2_dubbo_testcase_debug_addBy_f4bfb016_fk_tb_user_loginName` (`addBy`),
  KEY `tb2_dubbo_testcase_d_businessLineId_b1b2f54c_fk_tb_busine` (`businessLineId`),
  KEY `tb2_dubbo_testcase_d_httpConfKey_bcd1c151_fk_tb_config` (`httpConfKey`),
  KEY `tb2_dubbo_testcase_debug_moduleId_19291e9c_fk_tb_modules_id` (`moduleId`),
  CONSTRAINT `tb2_dubbo_testcase_d_businessLineId_b1b2f54c_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb2_dubbo_testcase_d_httpConfKey_bcd1c151_fk_tb_config` FOREIGN KEY (`httpConfKey`) REFERENCES `tb_config_http` (`httpconfkey`),
  CONSTRAINT `tb2_dubbo_testcase_debug_addBy_f4bfb016_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb2_dubbo_testcase_debug_moduleId_19291e9c_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_testcase_step
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_testcase_step`;
CREATE TABLE `tb2_dubbo_testcase_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stepNum` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `stepDesc` longtext NOT NULL,
  `caseType` int(11) NOT NULL,
  `fromInterfaceId` varchar(30) NOT NULL,
  `isSync` int(11) NOT NULL,
  `varsPre` longtext NOT NULL,
  `dubboSystem` varchar(100) NOT NULL,
  `dubboService` varchar(200) NOT NULL,
  `dubboMethod` varchar(100) NOT NULL,
  `dubboParams` longtext NOT NULL,
  `encoding` varchar(10) NOT NULL,
  `timeout` int(11) NOT NULL,
  `varsPost` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `caseId` varchar(25) NOT NULL,
  `moduleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb2_dubbo_testcase_step_caseId_stepNum_83dd8c41_uniq` (`caseId`,`stepNum`),
  KEY `tb2_dubbo_testcase_step_addBy_e6c8f09d_fk_tb_user_loginName` (`addBy`),
  KEY `tb2_dubbo_testcase_s_businessLineId_f1e4b811_fk_tb_busine` (`businessLineId`),
  KEY `tb2_dubbo_testcase_step_moduleId_0e5dc9c6_fk_tb_modules_id` (`moduleId`),
  CONSTRAINT `tb2_dubbo_testcase_s_businessLineId_f1e4b811_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb2_dubbo_testcase_s_caseId_6f2a291a_fk_tb2_dubbo` FOREIGN KEY (`caseId`) REFERENCES `tb2_dubbo_testcase` (`caseid`),
  CONSTRAINT `tb2_dubbo_testcase_step_addBy_e6c8f09d_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb2_dubbo_testcase_step_moduleId_0e5dc9c6_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb2_dubbo_testcase_step_debug
-- ----------------------------
DROP TABLE IF EXISTS `tb2_dubbo_testcase_step_debug`;
CREATE TABLE `tb2_dubbo_testcase_step_debug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` varchar(25) NOT NULL,
  `stepNum` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `stepDesc` longtext NOT NULL,
  `caseType` int(11) NOT NULL,
  `fromInterfaceId` varchar(30) NOT NULL,
  `isSync` int(11) NOT NULL,
  `varsPre` longtext NOT NULL,
  `dubboSystem` varchar(100) NOT NULL,
  `dubboService` varchar(200) NOT NULL,
  `dubboMethod` varchar(100) NOT NULL,
  `dubboParams` longtext NOT NULL,
  `encoding` varchar(10) NOT NULL,
  `timeout` int(11) NOT NULL,
  `varsPost` longtext NOT NULL,
  `execStatus` int(11) NOT NULL,
  `actualResult` longtext NOT NULL,
  `assertResult` longtext NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `beforeExecuteTakeTime` int(11) NOT NULL,
  `afterExecuteTakeTime` int(11) NOT NULL,
  `executeTakeTime` int(11) NOT NULL,
  `totalTakeTime` int(11) NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  `moduleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb2_dubbo_testcase_s_addBy_a6be5b8a_fk_tb_user_l` (`addBy`),
  KEY `tb2_dubbo_testcase_s_businessLineId_01eb303d_fk_tb_busine` (`businessLineId`),
  KEY `tb2_dubbo_testcase_s_httpConfKey_1efa97b1_fk_tb_config` (`httpConfKey`),
  KEY `tb2_dubbo_testcase_step_debug_moduleId_15edadcb_fk_tb_modules_id` (`moduleId`),
  CONSTRAINT `tb2_dubbo_testcase_s_addBy_a6be5b8a_fk_tb_user_l` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb2_dubbo_testcase_s_businessLineId_01eb303d_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb2_dubbo_testcase_s_httpConfKey_1efa97b1_fk_tb_config` FOREIGN KEY (`httpConfKey`) REFERENCES `tb_config_http` (`httpconfkey`),
  CONSTRAINT `tb2_dubbo_testcase_step_debug_moduleId_15edadcb_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb3_ui_global_text
-- ----------------------------
DROP TABLE IF EXISTS `tb3_ui_global_text`;
CREATE TABLE `tb3_ui_global_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `textDesc` varchar(5000) NOT NULL,
  `textKey` varchar(100) NOT NULL,
  `textValue` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `textKey` (`textKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb3_ui_global_vars
-- ----------------------------
DROP TABLE IF EXISTS `tb3_ui_global_vars`;
CREATE TABLE `tb3_ui_global_vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `varDesc` varchar(5000) NOT NULL,
  `varKey` varchar(100) NOT NULL,
  `varValue` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `varKey` (`varKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb3_ui_page_element
-- ----------------------------
DROP TABLE IF EXISTS `tb3_ui_page_element`;
CREATE TABLE `tb3_ui_page_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poKey` varchar(100) NOT NULL,
  `elementTitle` varchar(200) NOT NULL,
  `elementDesc` varchar(2000) NOT NULL,
  `elementKey` varchar(100) NOT NULL,
  `elementType` varchar(20) NOT NULL,
  `elementValue` varchar(1000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb3_ui_page_element_poKey_elementKey_1025b4bb_uniq` (`poKey`,`elementKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb3_ui_page_object
-- ----------------------------
DROP TABLE IF EXISTS `tb3_ui_page_object`;
CREATE TABLE `tb3_ui_page_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poKey` varchar(100) NOT NULL,
  `poTitle` varchar(500) NOT NULL,
  `poDesc` varchar(2000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `poKey` (`poKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb4_data_keyword
-- ----------------------------
DROP TABLE IF EXISTS `tb4_data_keyword`;
CREATE TABLE `tb4_data_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `descText` varchar(2000) NOT NULL,
  `keywordKey` varchar(255) NOT NULL,
  `keywordCode` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keywordKey` (`keywordKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb4_mock_http
-- ----------------------------
DROP TABLE IF EXISTS `tb4_mock_http`;
CREATE TABLE `tb4_mock_http` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mockId` varchar(50) NOT NULL,
  `title` varchar(500) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `uriKey` varchar(50) NOT NULL,
  `tagKey` varchar(50) NOT NULL,
  `reqMethod` varchar(20) NOT NULL,
  `reqUrl` varchar(255) NOT NULL,
  `reqParam` varchar(255) NOT NULL,
  `reqHeader` varchar(3000) NOT NULL,
  `reqBody` longtext NOT NULL,
  `respStatusCode` varchar(5) NOT NULL,
  `respStatusReason` varchar(50) NOT NULL,
  `respContentType` varchar(100) NOT NULL,
  `respBody` longtext NOT NULL,
  `respCookie` varchar(2048) NOT NULL,
  `respHeader` varchar(2048) NOT NULL,
  `respCharset` varchar(20) NOT NULL,
  `mockMode` int(11) NOT NULL,
  `advancedPythonCode` longtext NOT NULL,
  `interfaceIds` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mockId` (`mockId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb4_mock_http_invoke_history
-- ----------------------------
DROP TABLE IF EXISTS `tb4_mock_http_invoke_history`;
CREATE TABLE `tb4_mock_http_invoke_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mockId` varchar(50) NOT NULL,
  `title` varchar(500) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `uriKey` varchar(50) NOT NULL,
  `tagKey` varchar(50) NOT NULL,
  `reqMethod` varchar(20) NOT NULL,
  `reqUrl` varchar(255) NOT NULL,
  `reqParam` varchar(255) NOT NULL,
  `reqHeader` varchar(3000) NOT NULL,
  `reqBody` longtext NOT NULL,
  `respStatusCode` varchar(5) NOT NULL,
  `respStatusReason` varchar(50) NOT NULL,
  `respContentType` varchar(100) NOT NULL,
  `respBody` longtext NOT NULL,
  `respCookie` varchar(2048) NOT NULL,
  `respHeader` varchar(2048) NOT NULL,
  `respCharset` varchar(20) NOT NULL,
  `mockMode` int(11) NOT NULL,
  `advancedPythonCode` longtext NOT NULL,
  `fromHostIp` varchar(16) NOT NULL,
  `httpConfKey` varchar(16) NOT NULL,
  `actualReqUrl` varchar(255) NOT NULL,
  `actualReqParam` varchar(255) NOT NULL,
  `actualReqHeader` varchar(3000) NOT NULL,
  `actualReqBody` longtext NOT NULL,
  `actualRespStatusCode` varchar(5) NOT NULL,
  `actualRespStatusReason` varchar(50) NOT NULL,
  `actualRespContentType` varchar(100) NOT NULL,
  `actualRespBody` longtext NOT NULL,
  `actualRespCookie` varchar(2048) NOT NULL,
  `actualRespCharset` varchar(20) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb4_mock_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb4_mock_tag`;
CREATE TABLE `tb4_mock_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagKey` varchar(50) NOT NULL,
  `tagAlias` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagKey` (`tagKey`),
  UNIQUE KEY `tagAlias` (`tagAlias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb4_statistic_task
-- ----------------------------
DROP TABLE IF EXISTS `tb4_statistic_task`;
CREATE TABLE `tb4_statistic_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descText` varchar(2000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb4_statistic_task_execute_info
-- ----------------------------
DROP TABLE IF EXISTS `tb4_statistic_task_execute_info`;
CREATE TABLE `tb4_statistic_task_execute_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statisticTaskId` int(11) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descText` varchar(2000) NOT NULL,
  `executeDetailText` longtext NOT NULL,
  `testResult` varchar(10) NOT NULL,
  `codeCoverage` double NOT NULL,
  `executeStartTime` datetime(6) NOT NULL,
  `executeTaketime` int(11) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  `executeType` varchar(20) NOT NULL,
  `executeBy` varchar(30) NOT NULL,
  `comments` varchar(4000) NOT NULL,
  `reason` varchar(4000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_admin_interface_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_interface_permission_relation`;
CREATE TABLE `tb_admin_interface_permission_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(255) NOT NULL,
  `permissionKey` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `isDefault` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissionKey` (`permissionKey`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin_interface_permission_relation
-- ----------------------------
BEGIN;
INSERT INTO `tb_admin_interface_permission_relation` VALUES (1, 'HTTP单接口_可进入[查看]页面', 'HTTP_INTERFACE_CHECK', '/interfaceTest/HTTP_operationInterface', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.868576', '2019-04-18 10:03:55.868917');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (2, 'HTTP单接口_可进入[拷贝]页面', 'HTTP_INTERFACE_COPY', '/interfaceTest/HTTP_operationInterface', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.886879', '2019-04-18 10:03:55.886902');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (3, 'HTTP单接口_可进入[编辑]页面', 'HTTP_INTERFACE_EDIT', '/interfaceTest/HTTP_operationInterface', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.888144', '2019-04-18 10:03:55.888161');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (4, 'HTTP单接口_可进入[添加]页面', 'HTTP_INTERFACE_ADD', '/interfaceTest/HTTP_InterfaceAddPage', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.889196', '2019-04-18 10:03:55.889212');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (5, 'HTTP单接口_列表页显示[查看]按钮', 'HTTP_INTERFACE_LIST_CHECK', '/interfaceTest/HTTP_InterfaceListCheck', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.890146', '2019-04-18 10:03:55.890161');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (6, 'HTTP单接口_列表页显示[拷贝]按钮', 'HTTP_INTERFACE_LIST_COPY', '/interfaceTest/HTTP_InterfaceListCheck', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.891192', '2019-04-18 10:03:55.891208');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (7, 'HTTP单接口_列表页显示[编辑]按钮', 'HTTP_INTERFACE_LIST_EDIT', '/interfaceTest/HTTP_InterfaceListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.892168', '2019-04-18 10:03:55.892182');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (8, 'HTTP单接口_列表页显示[删除]按钮', 'HTTP_INTERFACE_LIST_DELETE', '/interfaceTest/HTTP_InterfaceListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.893221', '2019-04-18 10:03:55.893236');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (9, 'HTTP单接口_数据[添加]权限', 'HTTP_INTERFACE_DATA_ADD', '/interfaceTest/HTTP_InterfaceAdd', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.894244', '2019-04-18 10:03:55.894259');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (10, 'HTTP单接口_数据[编辑]权限', 'HTTP_INTERFACE_DATA_EDIT', '/interfaceTest/HTTP_InterfaceSaveEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.895279', '2019-04-18 10:03:55.895294');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (11, 'HTTP单接口_数据[删除]权限', 'HTTP_INTERFACE_DATA_DELETE', '/interfaceTest/HTTP_InterfaceDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.896273', '2019-04-18 10:03:55.896288');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (12, 'HTTP业务流_可进入[查看]页面', 'HTTP_TESTCASE_CHECK', '/interfaceTest/HTTP_operationTestCase', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.897336', '2019-04-18 10:03:55.897355');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (13, 'HTTP业务流_可进入[拷贝]页面', 'HTTP_TESTCASE_COPY', '/interfaceTest/HTTP_operationTestCase', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.898292', '2019-04-18 10:03:55.898307');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (14, 'HTTP业务流_可进入[编辑]页面', 'HTTP_TESTCASE_EDIT', '/interfaceTest/HTTP_operationTestCase', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.899210', '2019-04-18 10:03:55.899225');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (15, 'HTTP业务流_可进入[添加]页面', 'HTTP_TESTCASE_ADD', '/interfaceTest/HTTP_TestCaseAddPage', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.900281', '2019-04-18 10:03:55.900295');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (16, 'HTTP业务流_列表页显示[查看]按钮', 'HTTP_TESTCASE_LIST_CHECK', '/interfaceTest/HTTP_TestCaseListCheck', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.901253', '2019-04-18 10:03:55.901268');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (17, 'HTTP业务流_列表页显示[拷贝]按钮', 'HTTP_TESTCASE_LIST_COPY', '/interfaceTest/HTTP_TestCaseListCheck', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.902299', '2019-04-18 10:03:55.902314');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (18, 'HTTP业务流_列表页显示[编辑]按钮', 'HTTP_TESTCASE_LIST_EDIT', '/interfaceTest/HTTP_TestCaseListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.903329', '2019-04-18 10:03:55.903344');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (19, 'HTTP业务流_列表页显示[删除]按钮', 'HTTP_TESTCASE_LIST_DELETE', '/interfaceTest/HTTP_TestCaseListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.904334', '2019-04-18 10:03:55.904349');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (20, 'HTTP业务流_数据[添加]权限', 'HTTP_TESTCASE_DATA_ADD', '/interfaceTest/HTTP_TestCaseAdd', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.905338', '2019-04-18 10:03:55.905352');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (21, 'HTTP业务流_数据[编辑]权限', 'HTTP_TESTCASE_DATA_EDIT', '/interfaceTest/HTTP_TestCaseSaveEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.906614', '2019-04-18 10:03:55.906631');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (22, 'HTTP业务流_数据[删除]权限', 'HTTP_TESTCASE_DATA_DELETE', '/interfaceTest/HTTP_TestCaseDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.907815', '2019-04-18 10:03:55.907833');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (23, 'HTTP业务流步骤_列表页显示[查看]按钮', 'HTTP_INTERFACE_STEP_LIST_CHECK', '/interfaceTest/HTTP_TestCaseStepListCheck', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.908868', '2019-04-18 10:03:55.908885');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (24, 'HTTP业务流步骤_列表页显示[拷贝]按钮', 'HTTP_INTERFACE_STEP_LIST_COPY', '/interfaceTest/HTTP_TestCaseStepListCheck', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.909861', '2019-04-18 10:03:55.909876');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (25, 'HTTP业务流步骤_列表页显示[编辑]按钮', 'HTTP_INTERFACE_STEP_LIST_EDIT', '/interfaceTest/HTTP_TestCaseStepListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.910874', '2019-04-18 10:03:55.910888');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (26, 'HTTP业务流步骤_列表页显示[删除]按钮', 'HTTP_INTERFACE_STEP_LIST_DELETE', '/interfaceTest/HTTP_TestCaseStepListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.911847', '2019-04-18 10:03:55.911862');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (27, 'HTTP任务_可进入[查看]页面', 'HTTP_TASK_CHECK', '/interfaceTest/HTTP_operationTask', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.913000', '2019-04-18 10:03:55.913021');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (28, 'HTTP任务_可进入[拷贝]页面', 'HTTP_TASK_COPY', '/interfaceTest/HTTP_operationTask', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.914147', '2019-04-18 10:03:55.914166');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (29, 'HTTP任务_可进入[编辑]页面', 'HTTP_TASK_EDIT', '/interfaceTest/HTTP_operationTask', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.915219', '2019-04-18 10:03:55.915236');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (30, 'HTTP任务_可进入[添加]页面', 'HTTP_TASK_ADD', '/interfaceTest/HTTP_TaskAddPage', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.916212', '2019-04-18 10:03:55.916227');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (31, 'HTTP任务_列表页显示[查看]按钮', 'HTTP_TASK_LIST_CHECK', '/interfaceTest/HTTP_TaskListCheck', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.917163', '2019-04-18 10:03:55.917177');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (32, 'HTTP任务_列表页显示[拷贝]按钮', 'HTTP_TASK_LIST_COPY', '/interfaceTest/HTTP_TaskListCheck', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.918203', '2019-04-18 10:03:55.918219');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (33, 'HTTP任务_列表页显示[编辑]按钮', 'HTTP_TASK_LIST_EDIT', '/interfaceTest/HTTP_TaskListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.919208', '2019-04-18 10:03:55.919225');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (34, 'HTTP任务_列表页显示[删除]按钮', 'HTTP_TASK_LIST_DELETE', '/interfaceTest/HTTP_TaskListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.920301', '2019-04-18 10:03:55.920318');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (35, 'HTTP任务_列表页显示[执行]按钮', 'HTTP_TASK_LIST_RUN', '/interfaceTest/HTTP_TaskListCheck', 'run', 1, 1, NULL, NULL, '2019-04-18 10:03:55.921458', '2019-04-18 10:03:55.921477');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (36, 'HTTP任务_列表页显示[去重]按钮', 'HTTP_TASK_LIST_DISTINCT', '/interfaceTest/HTTP_TaskListCheck', 'distinct', 0, 1, NULL, NULL, '2019-04-18 10:03:55.922911', '2019-04-18 10:03:55.922931');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (37, 'HTTP任务_数据[添加]权限', 'HTTP_TASK_DATA_ADD', '/interfaceTest/HTTP_TaskAddData', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.924024', '2019-04-18 10:03:55.924039');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (38, 'HTTP任务_数据[编辑]权限', 'HTTP_TASK_DATA_EDIT', '/interfaceTest/HTTP_TaskSaveEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.925149', '2019-04-18 10:03:55.925164');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (39, 'HTTP任务_数据[删除]权限', 'HTTP_TASK_DATA_DELETE', '/interfaceTest/HTTP_TaskDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.926206', '2019-04-18 10:03:55.926221');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (40, 'HTTP任务集_可进入[查看]页面', 'HTTP_TASK_SUITE_CHECK', '/interfaceTest/HTTP_operationTaskSuite', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.927352', '2019-04-18 10:03:55.927370');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (41, 'HTTP任务集_可进入[拷贝]页面', 'HTTP_TASK_SUITE_COPY', '/interfaceTest/HTTP_operationTaskSuite', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.928670', '2019-04-18 10:03:55.928687');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (42, 'HTTP任务集_可进入[编辑]页面', 'HTTP_TASK_SUITE_EDIT', '/interfaceTest/HTTP_operationTaskSuite', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.929848', '2019-04-18 10:03:55.929866');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (43, 'HTTP任务集_可进入[添加]页面', 'HTTP_TASK_SUITE_ADD', '/interfaceTest/HTTP_TaskSuiteAddPage', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.931232', '2019-04-18 10:03:55.931251');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (44, 'HTTP任务集_列表页显示[查看]按钮', 'HTTP_TASK_SUITE_LIST_CHECK', '/interfaceTest/HTTP_TaskSuiteListCheck', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.932371', '2019-04-18 10:03:55.932392');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (45, 'HTTP任务集_列表页显示[拷贝]按钮', 'HTTP_TASK_SUITE_LIST_COPY', '/interfaceTest/HTTP_TaskSuiteListCheck', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.933715', '2019-04-18 10:03:55.933736');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (46, 'HTTP任务集_列表页显示[编辑]按钮', 'HTTP_TASK_SUITE_LIST_EDIT', '/interfaceTest/HTTP_TaskSuiteListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.935123', '2019-04-18 10:03:55.935142');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (47, 'HTTP任务集_列表页显示[删除]按钮', 'HTTP_TASK_SUITE_LIST_DELETE', '/interfaceTest/HTTP_TaskSuiteListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.937267', '2019-04-18 10:03:55.937296');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (48, 'HTTP任务集_列表页显示[执行]按钮', 'HTTP_TASK_SUITE_LIST_RUN', '/interfaceTest/HTTP_TaskSuiteListCheck', 'run', 1, 1, NULL, NULL, '2019-04-18 10:03:55.939195', '2019-04-18 10:03:55.939224');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (49, 'HTTP任务集_数据[添加]权限', 'HTTP_TASK_SUITE_DATA_ADD', '/interfaceTest/HTTP_TaskSuiteAddData', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.940846', '2019-04-18 10:03:55.940867');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (50, 'HTTP任务集_数据[编辑]权限', 'HTTP_TASK_SUITE_DATA_EDIT', '/interfaceTest/HTTP_TaskSuiteSaveEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.942757', '2019-04-18 10:03:55.942781');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (51, 'HTTP任务集_数据[删除]权限', 'HTTP_TASK_SUITE_DATA_DELETE', '/interfaceTest/HTTP_TaskSuiteDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.944498', '2019-04-18 10:03:55.944516');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (52, 'DUBBO单接口_可进入[查看]页面', 'DUBBO_INTERFACE_CHECK', '/dubbo/operationInterface', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.946364', '2019-04-18 10:03:55.946386');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (53, 'DUBBO单接口_可进入[拷贝]页面', 'DUBBO_INTERFACE_COPY', '/dubbo/operationInterface', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.947892', '2019-04-18 10:03:55.947909');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (54, 'DUBBO单接口_可进入[编辑]页面', 'DUBBO_INTERFACE_EDIT', '/dubbo/operationInterface', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.949714', '2019-04-18 10:03:55.949731');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (55, 'DUBBO单接口_可进入[添加]页面', 'DUBBO_INTERFACE_ADD', '/dubbo/interfaceAddPage', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.951658', '2019-04-18 10:03:55.951675');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (56, 'DUBBO单接口_列表页显示[查看]按钮', 'DUBBO_INTERFACE_LIST_CHECK', '/dubbo/interfaceListDesc', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.953181', '2019-04-18 10:03:55.953200');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (57, 'DUBBO单接口_列表页显示[拷贝]按钮', 'DUBBO_INTERFACE_LIST_COPY', '/dubbo/interfaceListDesc', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.959749', '2019-04-18 10:03:55.959777');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (58, 'DUBBO单接口_列表页显示[编辑]按钮', 'DUBBO_INTERFACE_LIST_EDIT', '/dubbo/interfaceListDesc', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.961422', '2019-04-18 10:03:55.961443');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (59, 'DUBBO单接口_列表页显示[删除]按钮', 'DUBBO_INTERFACE_LIST_DELETE', '/dubbo/interfaceListDesc', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.962728', '2019-04-18 10:03:55.962745');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (60, 'DUBBO单接口_数据[添加]权限', 'DUBBO_INTERFACE_DATA_ADD', '/dubbo/interfaceAdd', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.963922', '2019-04-18 10:03:55.963938');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (61, 'DUBBO单接口_数据[编辑]权限', 'DUBBO_INTERFACE_DATA_EDIT', '/dubbo/interfaceSaveEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.965173', '2019-04-18 10:03:55.965188');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (62, 'DUBBO单接口_数据[删除]权限', 'DUBBO_INTERFACE_DATA_DELETE', '/dubbo/interfaceDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.966635', '2019-04-18 10:03:55.966649');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (63, 'DUBBO业务流_可进入[查看]页面', 'DUBBO_TESTCASE_CHECK', '/dubbo/operationTestCase', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.967895', '2019-04-18 10:03:55.967908');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (64, 'DUBBO业务流_可进入[拷贝]页面', 'DUBBO_TESTCASE_COPY', '/dubbo/operationTestCase', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.969129', '2019-04-18 10:03:55.969145');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (65, 'DUBBO业务流_可进入[编辑]页面', 'DUBBO_TESTCASE_EDIT', '/dubbo/operationTestCase', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.970260', '2019-04-18 10:03:55.970274');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (66, 'DUBBO业务流_可进入[添加]页面', 'DUBBO_TESTCASE_ADD', '/dubbo/testCaseAddPage', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.971373', '2019-04-18 10:03:55.971387');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (67, 'DUBBO业务流_列表页显示[查看]按钮', 'DUBBO_TESTCASE_LIST_CHECK', '/dubbo/TestcaseListCheck', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.972488', '2019-04-18 10:03:55.972502');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (68, 'DUBBO业务流_列表页显示[拷贝]按钮', 'DUBBO_TESTCASE_LIST_COPY', '/dubbo/TestcaseListCheck', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.973594', '2019-04-18 10:03:55.973611');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (69, 'DUBBO业务流_列表页显示[编辑]按钮', 'DUBBO_TESTCASE_LIST_EDIT', '/dubbo/TestcaseListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.974849', '2019-04-18 10:03:55.974866');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (70, 'DUBBO业务流_列表页显示[删除]按钮', 'DUBBO_TESTCASE_LIST_DELETE', '/dubbo/TestcaseListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.975868', '2019-04-18 10:03:55.975882');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (71, 'DUBBO业务流_数据[添加]权限', 'DUBBO_TESTCASE_DATA_ADD', '/dubbo/TestCaseAdd', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.976964', '2019-04-18 10:03:55.976978');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (72, 'DUBBO业务流_数据[编辑]权限', 'DUBBO_TESTCASE_DATA_EDIT', '/dubbo/TestCaseSaveEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.977959', '2019-04-18 10:03:55.977972');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (73, 'DUBBO业务流_数据[删除]权限', 'DUBBO_TESTCASE_DATA_DELETE', '/dubbo/TestCaseDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.978993', '2019-04-18 10:03:55.979006');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (74, 'DUBBO任务_可进入[查看]页面', 'DUBBO_TASK_CHECK', '/dubbo/operationTask', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.980084', '2019-04-18 10:03:55.980100');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (75, 'DUBBO任务_可进入[拷贝]页面', 'DUBBO_TASK_COPY', '/dubbo/operationTask', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.981179', '2019-04-18 10:03:55.981194');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (76, 'DUBBO任务_可进入[编辑]页面', 'DUBBO_TASK_EDIT', '/dubbo/operationTask', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.982263', '2019-04-18 10:03:55.982277');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (77, 'DUBBO任务_可进入[添加]页面', 'DUBBO_TASK_ADD', '/dubbo/TaskAddPage', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.983397', '2019-04-18 10:03:55.983412');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (78, 'DUBBO任务_列表页显示[查看]按钮', 'DUBBO_TASK_LIST_CHECK', '/dubbo/TaskListCheck', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.984418', '2019-04-18 10:03:55.984432');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (79, 'DUBBO任务_列表页显示[拷贝]按钮', 'DUBBO_TASK_LIST_COPY', '/dubbo/TaskListCheck', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.985424', '2019-04-18 10:03:55.985438');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (80, 'DUBBO任务_列表页显示[编辑]按钮', 'DUBBO_TASK_LIST_EDIT', '/dubbo/TaskListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.986446', '2019-04-18 10:03:55.986460');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (81, 'DUBBO任务_列表页显示[删除]按钮', 'DUBBO_TASK_LIST_DELETE', '/dubbo/TaskListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.987479', '2019-04-18 10:03:55.987492');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (82, 'DUBBO任务_列表页显示[执行]按钮', 'DUBBO_TASK_LIST_RUN', '/dubbo/TaskListCheck', 'run', 1, 1, NULL, NULL, '2019-04-18 10:03:55.988567', '2019-04-18 10:03:55.988581');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (83, 'DUBBO任务_列表页显示[去重]按钮', 'DUBBO_TASK_LIST_DISTINCT', '/dubbo/TaskListCheck', 'distinct', 0, 1, NULL, NULL, '2019-04-18 10:03:55.989583', '2019-04-18 10:03:55.989597');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (84, 'DUBBO任务_数据[添加]权限', 'DUBBO_TASK_DATA_ADD', '/dubbo/TaskAddData', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:55.990584', '2019-04-18 10:03:55.990598');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (85, 'DUBBO任务_数据[编辑]权限', 'DUBBO_TASK_DATA_EDIT', '/dubbo/TaskSaveEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:55.995807', '2019-04-18 10:03:55.995840');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (86, 'DUBBO任务_数据[删除]权限', 'DUBBO_TASK_DATA_DELETE', '/dubbo/TaskDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:55.997341', '2019-04-18 10:03:55.997361');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (87, 'DUBBO任务集_可进入[查看]页面', 'DUBBO_TASK_SUITE_CHECK', '/dubbo/operationTaskSuite', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:55.998654', '2019-04-18 10:03:55.998671');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (88, 'DUBBO任务集_可进入[拷贝]页面', 'DUBBO_TASK_SUITE_COPY', '/dubbo/operationTaskSuite', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:55.999943', '2019-04-18 10:03:55.999961');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (89, 'DUBBO任务集_可进入[编辑]页面', 'DUBBO_TASK_SUITE_EDIT', '/dubbo/operationTaskSuite', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.001013', '2019-04-18 10:03:56.001027');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (90, 'DUBBO任务集_可进入[添加]页面', 'DUBBO_TASK_SUITE_ADD', '/dubbo/TaskSuiteAddPage', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:56.002376', '2019-04-18 10:03:56.002392');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (91, 'DUBBO任务集_列表页显示[查看]按钮', 'DUBBO_TASK_SUITE_LIST_CHECK', '/dubbo/TaskSuiteListCheck', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:56.003454', '2019-04-18 10:03:56.003468');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (92, 'DUBBO任务集_列表页显示[拷贝]按钮', 'DUBBO_TASK_SUITE_LIST_COPY', '/dubbo/TaskSuiteListCheck', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:56.004530', '2019-04-18 10:03:56.004544');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (93, 'DUBBO任务集_列表页显示[编辑]按钮', 'DUBBO_TASK_SUITE_LIST_EDIT', '/dubbo/TaskSuiteListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.005518', '2019-04-18 10:03:56.005531');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (94, 'DUBBO任务集_列表页显示[删除]按钮', 'DUBBO_TASK_SUITE_LIST_DELETE', '/dubbo/TaskSuiteListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.006597', '2019-04-18 10:03:56.006611');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (95, 'DUBBO任务集_列表页显示[执行]按钮', 'DUBBO_TASK_SUITE_LIST_RUN', '/dubbo/TaskSuiteListCheck', 'run', 1, 1, NULL, NULL, '2019-04-18 10:03:56.007634', '2019-04-18 10:03:56.007647');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (96, 'DUBBO任务集_数据[添加]权限', 'DUBBO_TASK_SUITE_DATA_ADD', '/dubbo/TaskSuiteAddData', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:56.008724', '2019-04-18 10:03:56.008737');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (97, 'DUBBO任务集_数据[编辑]权限', 'DUBBO_TASK_SUITE_DATA_EDIT', '/dubbo/TaskSuiteSaveEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.009800', '2019-04-18 10:03:56.009814');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (98, 'DUBBO任务集_数据[删除]权限', 'DUBBO_TASK_SUITE_DATA_DELETE', '/dubbo/TaskSuiteDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.010912', '2019-04-18 10:03:56.010927');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (99, '全局变量_列表页显示[查看]按钮', 'GLOBAL_VALS_LIST_CHECK', '/interfaceTest/HTTP_GlobalVarsConfListPage', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:56.012013', '2019-04-18 10:03:56.012027');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (100, '全局变量_列表页显示[编辑]按钮', 'GLOBAL_VALS_LIST_EDIT', '/interfaceTest/HTTP_GlobalVarsConfListPage', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.013109', '2019-04-18 10:03:56.013123');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (101, '全局变量_列表页显示[删除]按钮', 'GLOBAL_VALS_LIST_DELETE', '/interfaceTest/HTTP_GlobalVarsConfListPage', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.014085', '2019-04-18 10:03:56.014099');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (102, '全局变量_数据[添加]权限', 'GLOBAL_VALS_DATA_ADD', '/interfaceTest/HTTP_GlobalVarsAdd', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:56.015156', '2019-04-18 10:03:56.015170');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (103, '全局变量_数据[编辑]权限', 'GLOBAL_VALS_DATA_EDIT', '/interfaceTest/HTTP_GlobalVarsEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.016159', '2019-04-18 10:03:56.016177');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (104, '全局变量_数据[删除]权限', 'GLOBAL_VALS_DATA_DELETE', '/interfaceTest/HTTP_GlobalVarsDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.017207', '2019-04-18 10:03:56.017220');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (105, '组合文本_列表页显示[查看]按钮', 'GLOBAL_TEXT_LIST_CHECK', '/interfaceTest/HTTP_GlobalTextConfListPage', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:56.018913', '2019-04-18 10:03:56.018928');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (106, '组合文本_列表页显示[编辑]按钮', 'GLOBAL_TEXT_LIST_EDIT', '/interfaceTest/HTTP_GlobalTextConfListPage', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.020090', '2019-04-18 10:03:56.020108');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (107, '组合文本_列表页显示[删除]按钮', 'GLOBAL_TEXT_LIST_DELETE', '/interfaceTest/HTTP_GlobalTextConfListPage', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.021318', '2019-04-18 10:03:56.021333');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (108, '组合文本_数据[添加]权限', 'GLOBAL_TEXT_DATA_ADD', '/interfaceTest/HTTP_GlobalTextAdd', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:56.022509', '2019-04-18 10:03:56.022527');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (109, '组合文本_数据[编辑]权限', 'GLOBAL_TEXT_DATA_EDIT', '/interfaceTest/HTTP_GlobalTextEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.023902', '2019-04-18 10:03:56.023926');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (110, '组合文本_数据[删除]权限', 'GLOBAL_TEXT_DATA_DELETE', '/interfaceTest/HTTP_GlobalTextDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.025678', '2019-04-18 10:03:56.025765');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (111, '请求地址_列表页显示[编辑]按钮', 'ENVURICONF_LIST_EDIT', '/interfaceTest/HTTP_UserEnvUriConfListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.026973', '2019-04-18 10:03:56.026990');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (112, '请求地址_列表页显示[删除]按钮', 'ENVURICONF_LIST_DELETE', '/interfaceTest/HTTP_UserEnvUriConfListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.028422', '2019-04-18 10:03:56.028443');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (113, '请求地址_数据[添加]权限', 'ENVURICONF_DATA_ADD', '/interfaceTest/HTTP_saveEnvUri', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:56.029668', '2019-04-18 10:03:56.029687');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (114, '请求地址_数据[编辑]权限', 'ENVURICONF_DATA_EDIT', '/interfaceTest/HTTP_SaveEditEnvUri', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.031565', '2019-04-18 10:03:56.031586');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (115, '请求地址_数据[删除]权限', 'ENVURICONF_DATA_DELETE', '/interfaceTest/HTTP_DelEnvUri', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.032653', '2019-04-18 10:03:56.032669');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (116, '环境配置_列表页显示[编辑]按钮', 'HTTP_CONF_LIST_EDIT', '/interfaceTest/HTTP_UserHttpConfListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.033762', '2019-04-18 10:03:56.033776');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (117, '环境配置_列表页显示[删除]按钮', 'HTTP_CONF_LIST_DELETE', '/interfaceTest/HTTP_UserHttpConfListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.034861', '2019-04-18 10:03:56.034875');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (118, '环境配置_数据[添加]权限', 'HTTP_CONF_DATA_ADD', '/interfaceTest/HTTP_HttpConfAdd', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:56.035912', '2019-04-18 10:03:56.035926');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (119, '环境配置_数据[编辑]权限', 'HTTP_CONF_DATA_EDIT', '/interfaceTest/HTTP_HttpConfEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.036938', '2019-04-18 10:03:56.036951');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (120, '环境配置_数据[删除]权限', 'HTTP_CONF_DATA_DELETE', '/interfaceTest/HTTP_HttpConfDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.037897', '2019-04-18 10:03:56.037910');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (121, '服务配置_列表页显示[编辑]按钮', 'HTTP_URI_CONF_LIST_EDIT', '/interfaceTest/HTTP_UserUriConfListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.038971', '2019-04-18 10:03:56.038984');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (122, '服务配置_列表页显示[编辑]按钮', 'HTTP_URI_CONF_LIST_DELETE', '/interfaceTest/HTTP_UserUriConfListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.040035', '2019-04-18 10:03:56.040049');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (123, '服务配置_数据[添加]权限', 'HTTP_URI_CONF_DATA_ADD', '/interfaceTest/HTTP_HttpUriAddApply', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:56.041103', '2019-04-18 10:03:56.041118');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (124, '服务配置_数据[编辑]权限', 'HTTP_URI_CONF_DATA_EDIT', '/interfaceTest/HTTP_UriConfEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.042292', '2019-04-18 10:03:56.042307');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (125, '服务配置_数据[删除]权限', 'HTTP_URI_CONF_DATA_DELETE', '/interfaceTest/HTTP_UriConfDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.043315', '2019-04-18 10:03:56.043329');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (126, 'mockServer_列表页显示[查看]按钮', 'HTTP_MOCK_SERVER_LIST_CHECK', '/mockserver/HTTP_InterfaceListCheck', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:56.044366', '2019-04-18 10:03:56.044379');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (127, 'mockServer_列表页显示[拷贝]按钮', 'HTTP_MOCK_SERVER_LIST_COPY', '/mockserver/HTTP_InterfaceListCheck', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:56.045418', '2019-04-18 10:03:56.045432');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (128, 'mockServer_列表页显示[编辑]按钮', 'HTTP_MOCK_SERVER_LIST_EDIT', '/mockserver/HTTP_InterfaceListCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.046622', '2019-04-18 10:03:56.046639');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (129, 'mockServer_列表页显示[删除]按钮', 'HTTP_MOCK_SERVER_LIST_DELETE', '/mockserver/HTTP_InterfaceListCheck', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.047726', '2019-04-18 10:03:56.047741');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (130, 'mockServer_列表页显示[录制]按钮', 'HTTP_MOCK_SERVER_LIST_RECORD', '/mockserver/HTTP_InterfaceListCheck', 'record', 1, 1, NULL, NULL, '2019-04-18 10:03:56.048838', '2019-04-18 10:03:56.048852');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (131, 'mockServer_数据[添加]权限', 'HTTP_MOCK_DATA_ADD', '/mockserver/HTTP_InterfaceAdd', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:56.049921', '2019-04-18 10:03:56.049934');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (132, 'mockServer_数据[编辑]权限', 'HTTP_MOCK_DATA_EDIT', '/mockserver/HTTP_InterfaceSaveEdit', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.050990', '2019-04-18 10:03:56.051002');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (133, 'mockServer_数据[删除]权限', 'HTTP_MOCK_DATA_DELETE', '/mockserver/HTTP_InterfaceDel', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.053285', '2019-04-18 10:03:56.053306');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (134, 'mockServer_可进入[查看]页面', 'HTTP_MOCK_CHECK', '/mockserver/HTTP_operationInterface', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:56.054544', '2019-04-18 10:03:56.054563');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (135, 'mockServer_可进入[拷贝]页面', 'HTTP_MOCK_COPY', '/mockserver/HTTP_operationInterface', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:56.055786', '2019-04-18 10:03:56.055801');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (136, 'mockServer_可进入[编辑]页面', 'HTTP_MOCK_EDIT', '/mockserver/HTTP_operationInterface', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.056907', '2019-04-18 10:03:56.056921');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (137, 'mockServer_可进入[添加]页面', 'HTTP_MOCK_ADD', '/mockserver/HTTP_InterfaceAddPage', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:56.057915', '2019-04-18 10:03:56.057929');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (138, '自定义关键字_可进入[查看]页面', 'DATA_KEYWORD_CHECK', '/datakeyword/operationCheck', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:56.058987', '2019-04-18 10:03:56.059001');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (139, '自定义关键字_可进入[拷贝]页面', 'DATA_KEYWORD_COPY', '/datakeyword/operationCheck', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:56.059975', '2019-04-18 10:03:56.059989');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (140, '自定义关键字_可进入[编辑]页面', 'DATA_KEYWORD_EDIT', '/datakeyword/operationCheck', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.061194', '2019-04-18 10:03:56.061209');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (141, '自定义关键字_可进入[添加]页面', 'DATA_KEYWORD_ADD', '/datakeyword/operationCheck', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:56.062333', '2019-04-18 10:03:56.062348');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (142, '自定义关键字_列表页显示[查看]按钮', 'DATA_KEYWORD_LIST_CHECK', '/datakeyword/listData', 'check', 1, 1, NULL, NULL, '2019-04-18 10:03:56.063409', '2019-04-18 10:03:56.063423');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (143, '自定义关键字_列表页显示[拷贝]按钮', 'DATA_KEYWORD_LIST_COPY', '/datakeyword/listData', 'copy', 1, 1, NULL, NULL, '2019-04-18 10:03:56.064567', '2019-04-18 10:03:56.064582');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (144, '自定义关键字_列表页显示[编辑]按钮', 'DATA_KEYWORD_LIST_EDIT', '/datakeyword/listData', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.065619', '2019-04-18 10:03:56.065633');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (145, '自定义关键字_列表页显示[删除]按钮', 'DATA_KEYWORD_LIST_DELETE', '/datakeyword/listData', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.066634', '2019-04-18 10:03:56.066648');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (146, '自定义关键字_数据[添加]权限', 'DATA_KEYWORD_DATA_ADD', '/datakeyword/addData', 'add', 1, 1, NULL, NULL, '2019-04-18 10:03:56.067815', '2019-04-18 10:03:56.067829');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (147, '自定义关键字_数据[编辑]权限', 'DATA_KEYWORD_DATA_EDIT', '/datakeyword/saveEditData', 'edit', 0, 1, NULL, NULL, '2019-04-18 10:03:56.068796', '2019-04-18 10:03:56.068809');
INSERT INTO `tb_admin_interface_permission_relation` VALUES (148, '自定义关键字_数据[删除]权限', 'DATA_KEYWORD_DATA_DELETE', '/datakeyword/delData', 'delete', 0, 1, NULL, NULL, '2019-04-18 10:03:56.069786', '2019-04-18 10:03:56.069800');
COMMIT;

-- ----------------------------
-- Table structure for tb_admin_manage_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_manage_permission`;
CREATE TABLE `tb_admin_manage_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(100) NOT NULL,
  `permissionKey` varchar(100) NOT NULL,
  `permissionValue` varchar(200) NOT NULL,
  `isDefaultPermission` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissionKey` (`permissionKey`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin_manage_permission
-- ----------------------------
BEGIN;
INSERT INTO `tb_admin_manage_permission` VALUES (1, ' 用户管理', 'AdminUser', '/myadmin/user/check', 0, 1, '', '', '2019-04-18 10:03:53.734634', '2019-04-18 10:03:53.734955');
INSERT INTO `tb_admin_manage_permission` VALUES (2, ' 小组管理', 'AdminTeam', '/myadmin/team/check', 0, 1, '', '', '2019-04-18 10:03:53.739092', '2019-04-18 10:03:53.739110');
INSERT INTO `tb_admin_manage_permission` VALUES (3, ' 权限管理', 'AdminPermission', '/myadmin/permission/check', 0, 1, '', '', '2019-04-18 10:03:53.740561', '2019-04-18 10:03:53.740580');
INSERT INTO `tb_admin_manage_permission` VALUES (4, ' 接口页面管理', 'AdminInterfaceModule', '/myadmin/interfaceModule/check', 0, 1, '', '', '2019-04-18 10:03:53.741800', '2019-04-18 10:03:53.741816');
INSERT INTO `tb_admin_manage_permission` VALUES (5, ' 接口权限管理', 'AdminInterfacePermission', '/myadmin/interfacePermission/check', 0, 1, '', '', '2019-04-18 10:03:53.742948', '2019-04-18 10:03:53.742963');
INSERT INTO `tb_admin_manage_permission` VALUES (6, ' 后台权限管理', 'AdminManagePermission', '/myadmin/adminManagePermission/check', 0, 1, '', '', '2019-04-18 10:03:53.744092', '2019-04-18 10:03:53.744106');
INSERT INTO `tb_admin_manage_permission` VALUES (7, ' 管理员管理', 'AdminManager', '/myadmin/admin/check', 0, 1, '', '', '2019-04-18 10:03:53.745207', '2019-04-18 10:03:53.745223');
INSERT INTO `tb_admin_manage_permission` VALUES (8, ' 业务线管理', 'AdminBusinessLine', '/myadmin/businessLine/check', 0, 1, '', '', '2019-04-18 10:03:53.746338', '2019-04-18 10:03:53.746351');
INSERT INTO `tb_admin_manage_permission` VALUES (9, ' 模块管理', 'AdminModuleManage', '/myadmin/moduleManage/check', 0, 1, '', '', '2019-04-18 10:03:53.747356', '2019-04-18 10:03:53.747370');
INSERT INTO `tb_admin_manage_permission` VALUES (10, ' 业务线模块管理', 'AdminBusinessLineModule', '/myadmin/businessLineModule/check', 0, 1, '', '', '2019-04-18 10:03:53.748344', '2019-04-18 10:03:53.748357');
INSERT INTO `tb_admin_manage_permission` VALUES (11, ' 来源管理', 'AdminSource', '/myadmin/source/check', 0, 1, '', '', '2019-04-18 10:03:53.749378', '2019-04-18 10:03:53.749391');
INSERT INTO `tb_admin_manage_permission` VALUES (12, ' 数据服务器管理', 'AdminConfigService', '/myadmin/configService/check', 0, 1, '', '', '2019-04-18 10:03:53.750373', '2019-04-18 10:03:53.750385');
INSERT INTO `tb_admin_manage_permission` VALUES (13, ' URI管理', 'AdminConfigURI', '/myadmin/configUri/check', 0, 1, '', '', '2019-04-18 10:03:53.751626', '2019-04-18 10:03:53.751645');
INSERT INTO `tb_admin_manage_permission` VALUES (14, ' 环境配置管理', 'AdminConfigHttp', '/myadmin/configHttp/check', 0, 1, '', '', '2019-04-18 10:03:53.752786', '2019-04-18 10:03:53.752803');
INSERT INTO `tb_admin_manage_permission` VALUES (15, ' 执行python代码管理', 'AdminExePython', '/myadmin/exePython/check', 0, 1, '', '', '2019-04-18 10:03:53.753817', '2019-04-18 10:03:53.753833');
INSERT INTO `tb_admin_manage_permission` VALUES (16, ' 操作记录管理', 'AdminChangeLog', '/myadmin/changeLog/check', 1, 1, '', '', '2019-04-18 10:03:53.754835', '2019-04-18 10:03:53.754850');
INSERT INTO `tb_admin_manage_permission` VALUES (17, ' 用户操作日志管理', 'AdminUserLog', '/myadmin/userLog/check', 1, 1, '', '', '2019-04-18 10:03:53.755924', '2019-04-18 10:03:53.755939');
INSERT INTO `tb_admin_manage_permission` VALUES (18, ' 缓存管理', 'AdminCacheManage', '/myadmin/cacheManage/check', 0, 1, '', '', '2019-04-18 10:03:53.757055', '2019-04-18 10:03:53.757070');
INSERT INTO `tb_admin_manage_permission` VALUES (19, ' 前台数据管理', 'AdminDataStorage', '/myadmin/dataStorage/check', 1, 1, '', '', '2019-04-18 10:03:53.758218', '2019-04-18 10:03:53.758234');
COMMIT;

-- ----------------------------
-- Table structure for tb_admin_manage_user_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_manage_user_permission_relation`;
CREATE TABLE `tb_admin_manage_user_permission_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(20) NOT NULL,
  `permissionKey` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_admin_platform_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_platform_permission`;
CREATE TABLE `tb_admin_platform_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(255) NOT NULL,
  `permissionKey` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissionKey` (`permissionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_admin_platform_permission_user_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_platform_permission_user_relation`;
CREATE TABLE `tb_admin_platform_permission_user_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(100) NOT NULL,
  `permissionKey` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_role`;
CREATE TABLE `tb_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(100) NOT NULL,
  `roleKey` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roleKey` (`roleKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_admin_role_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_role_permission_relation`;
CREATE TABLE `tb_admin_role_permission_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleKey` varchar(100) NOT NULL,
  `permissionKey` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roleKey` (`roleKey`),
  UNIQUE KEY `permissionKey` (`permissionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_admin_team
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_team`;
CREATE TABLE `tb_admin_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(100) NOT NULL,
  `teamKey` varchar(100) NOT NULL,
  `teamDesc` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamKey` (`teamKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_admin_team_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_team_permission_relation`;
CREATE TABLE `tb_admin_team_permission_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamKey` varchar(100) NOT NULL,
  `permissionKey` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_user`;
CREATE TABLE `tb_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(100) NOT NULL,
  `passWord` varchar(100) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `superManager` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginName` (`loginName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_admin_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_admin_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '系统管理员', '', 1, 1, NULL, NULL, '2019-04-18 10:03:53.049389', '2019-04-18 10:03:53.049751');
COMMIT;

-- ----------------------------
-- Table structure for tb_admin_user_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_user_permission_relation`;
CREATE TABLE `tb_admin_user_permission_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(20) NOT NULL,
  `permissionKey` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_admin_user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_user_role_relation`;
CREATE TABLE `tb_admin_user_role_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleKey` varchar(100) NOT NULL,
  `loginName` varchar(100) NOT NULL,
  `teamKey` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_admin_user_team_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin_user_team_relation`;
CREATE TABLE `tb_admin_user_team_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(100) NOT NULL,
  `teamKey` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_batch_execute_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_batch_execute_task`;
CREATE TABLE `tb_batch_execute_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessLine` varchar(200) NOT NULL,
  `httpConfKey` varchar(20) NOT NULL,
  `taskLevel` int(11) NOT NULL,
  `caseLevel` int(11) NOT NULL,
  `taskIdList` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `isSendEmail` int(11) NOT NULL,
  `isCodeRate` int(11) NOT NULL,
  `isSaveHistory` int(11) NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `executeMsg` longtext NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_business_line
-- ----------------------------
DROP TABLE IF EXISTS `tb_business_line`;
CREATE TABLE `tb_business_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bussinessLineName` varchar(25) NOT NULL,
  `bussinessLineDesc` varchar(2000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bussinessLineName` (`bussinessLineName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_businessLine_module_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_businessLine_module_relation`;
CREATE TABLE `tb_businessLine_module_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_businessLine_module_r_businessLineId_moduleId_814209c2_uniq` (`businessLineId`,`moduleId`),
  KEY `tb_businessLine_modu_moduleId_9dd837b9_fk_tb_module` (`moduleId`),
  CONSTRAINT `tb_businessLine_modu_businessLineId_3d1a4ad2_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_businessLine_modu_moduleId_9dd837b9_fk_tb_module` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_config_http
-- ----------------------------
DROP TABLE IF EXISTS `tb_config_http`;
CREATE TABLE `tb_config_http` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `httpConfKey` varchar(50) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `httpConfDesc` varchar(5000) NOT NULL,
  `apiRunState` int(11) NOT NULL,
  `uiRunState` int(11) NOT NULL,
  `dubboRunState` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `serviceConfKey` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `httpConfKey` (`httpConfKey`),
  UNIQUE KEY `alias` (`alias`),
  KEY `tb_config_http_serviceConfKey_00872e31_fk_tb_config` (`serviceConfKey`),
  CONSTRAINT `tb_config_http_serviceConfKey_00872e31_fk_tb_config` FOREIGN KEY (`serviceConfKey`) REFERENCES `tb_config_service` (`serviceconfkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_config_service
-- ----------------------------
DROP TABLE IF EXISTS `tb_config_service`;
CREATE TABLE `tb_config_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serviceConfKey` varchar(50) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `serviceConfDesc` varchar(5000) NOT NULL,
  `serviceConf` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serviceConfKey` (`serviceConfKey`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_config_uri
-- ----------------------------
DROP TABLE IF EXISTS `tb_config_uri`;
CREATE TABLE `tb_config_uri` (
  `id` int(11) NOT NULL,
  `uriKey` varchar(100) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `uriDesc` varchar(5000) NOT NULL,
  `level` int(11) NOT NULL,
  `protocol` varchar(300) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`uriKey`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_env_uri_conf
-- ----------------------------
DROP TABLE IF EXISTS `tb_env_uri_conf`;
CREATE TABLE `tb_env_uri_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `httpConfKey` varchar(50) NOT NULL,
  `uriKey` varchar(100) NOT NULL,
  `requestAddr` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_env_uri_conf_httpConfKey_uriKey_9bf254b5_uniq` (`httpConfKey`,`uriKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_exec_python_attrs
-- ----------------------------
DROP TABLE IF EXISTS `tb_exec_python_attrs`;
CREATE TABLE `tb_exec_python_attrs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `execPythonAttr` varchar(200) NOT NULL,
  `execPythonDesc` varchar(1000) NOT NULL,
  `execPythonValue` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `execPythonAttr` (`execPythonAttr`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_exec_python_attrs
-- ----------------------------
BEGIN;
INSERT INTO `tb_exec_python_attrs` VALUES (1, 'importString', 'import的第三方库在所有的package中', '#字符串处理相关的库\nimport json,re,jsonpath,hashlib,ast\nfrom urllib import parse\nfrom functools import reduce\nfrom bs4 import BeautifulSoup\n#时间处理相关的库\nimport datetime,time,calendar\n#数学处理\nimport math,cmath,decimal\n#web请求相关\nimport requests\n#异常处理\nimport traceback\n#数据库相关\nimport pymysql,redis\nfrom kafka import KafkaProducer\nfrom kafka import KafkaConsumer\nfrom kafka.errors import KafkaError', 1, '2019-04-18 10:03:54.000000', '2019-04-18 10:03:54.000000');
INSERT INTO `tb_exec_python_attrs` VALUES (2, 'timeoutString', 'timeout在关键字EXEC_PYTHON中', '10', 1, '2019-04-18 10:03:54.000000', '2019-04-18 10:03:54.000000');
INSERT INTO `tb_exec_python_attrs` VALUES (3, 'timoutForPythonMode', 'timeout for python模式', '300', 1, '2019-04-18 10:03:54.000000', '2019-04-18 10:03:54.000000');
INSERT INTO `tb_exec_python_attrs` VALUES (4, 'timoutForSelfKeyword', 'timeout for 自定义关键字', '60', 1, '2019-04-18 10:03:54.000000', '2019-04-18 10:03:54.000000');
INSERT INTO `tb_exec_python_attrs` VALUES (5, 'timoutForMockAdvancedMode', 'timeout for mock的高级模式', '30', 1, '2019-04-18 10:03:54.000000', '2019-04-18 10:03:54.000000');
COMMIT;

-- ----------------------------
-- Table structure for tb_global_text
-- ----------------------------
DROP TABLE IF EXISTS `tb_global_text`;
CREATE TABLE `tb_global_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `textDesc` varchar(5000) NOT NULL,
  `textKey` varchar(100) NOT NULL,
  `textValue` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `textKey` (`textKey`),
  KEY `tb_global_text_addBy_1e2e8da7_fk_tb_user_loginName` (`addBy`),
  CONSTRAINT `tb_global_text_addBy_1e2e8da7_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_global_vars
-- ----------------------------
DROP TABLE IF EXISTS `tb_global_vars`;
CREATE TABLE `tb_global_vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `varDesc` varchar(5000) NOT NULL,
  `varKey` varchar(100) NOT NULL,
  `varValue` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `varKey` (`varKey`),
  KEY `tb_global_vars_addBy_d3f3ff01_fk_tb_user_loginName` (`addBy`),
  CONSTRAINT `tb_global_vars_addBy_d3f3ff01_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_http_interface
-- ----------------------------
DROP TABLE IF EXISTS `tb_http_interface`;
CREATE TABLE `tb_http_interface` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` longtext NOT NULL,
  `caselevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseType` int(11) NOT NULL,
  `varsPre` longtext NOT NULL,
  `uri` varchar(50) NOT NULL,
  `method` varchar(20) NOT NULL,
  `header` longtext NOT NULL,
  `url` varchar(250) NOT NULL,
  `params` longtext NOT NULL,
  `bodyType` varchar(200) NOT NULL,
  `bodyContent` longtext NOT NULL,
  `timeout` int(11) NOT NULL,
  `varsPost` longtext NOT NULL,
  `performanceTime` double NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `interfaceId` (`interfaceId`),
  KEY `tb_http_interface_addBy_5bc2c23e_fk_tb_user_loginName` (`addBy`),
  KEY `tb_http_interface_businessLineId_7ec2e6d1_fk_tb_business_line_id` (`businessLineId`),
  KEY `tb_http_interface_moduleId_3ad062be_fk_tb_modules_id` (`moduleId`),
  KEY `tb_http_interface_sourceId_8d049614_fk_tb_source_id` (`sourceId`),
  CONSTRAINT `tb_http_interface_addBy_5bc2c23e_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_http_interface_businessLineId_7ec2e6d1_fk_tb_business_line_id` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_http_interface_moduleId_3ad062be_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`),
  CONSTRAINT `tb_http_interface_sourceId_8d049614_fk_tb_source_id` FOREIGN KEY (`sourceId`) REFERENCES `tb_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_http_interface_debug
-- ----------------------------
DROP TABLE IF EXISTS `tb_http_interface_debug`;
CREATE TABLE `tb_http_interface_debug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` longtext NOT NULL,
  `caselevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseType` int(11) NOT NULL,
  `varsPre` longtext NOT NULL,
  `uri` varchar(50) NOT NULL,
  `method` varchar(20) NOT NULL,
  `header` longtext NOT NULL,
  `url` varchar(250) NOT NULL,
  `params` longtext NOT NULL,
  `bodyType` varchar(200) NOT NULL,
  `bodyContent` longtext NOT NULL,
  `timeout` int(11) NOT NULL,
  `varsPost` longtext NOT NULL,
  `performanceTime` double NOT NULL,
  `execStatus` int(11) NOT NULL,
  `actualResult` longtext NOT NULL,
  `assertResult` longtext NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `beforeExecuteTakeTime` int(11) NOT NULL,
  `afterExecuteTakeTime` int(11) NOT NULL,
  `executeTakeTime` int(11) NOT NULL,
  `totalTakeTime` int(11) NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_http_interface_debug_addBy_47eec10a_fk_tb_user_loginName` (`addBy`),
  KEY `tb_http_interface_de_businessLineId_04e1a133_fk_tb_busine` (`businessLineId`),
  KEY `tb_http_interface_de_httpConfKey_41966b67_fk_tb_config` (`httpConfKey`),
  KEY `tb_http_interface_debug_moduleId_12f8bedc_fk_tb_modules_id` (`moduleId`),
  KEY `tb_http_interface_debug_sourceId_631c2496_fk_tb_source_id` (`sourceId`),
  CONSTRAINT `tb_http_interface_de_businessLineId_04e1a133_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_http_interface_de_httpConfKey_41966b67_fk_tb_config` FOREIGN KEY (`httpConfKey`) REFERENCES `tb_config_http` (`httpconfkey`),
  CONSTRAINT `tb_http_interface_debug_addBy_47eec10a_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_http_interface_debug_moduleId_12f8bedc_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`),
  CONSTRAINT `tb_http_interface_debug_sourceId_631c2496_fk_tb_source_id` FOREIGN KEY (`sourceId`) REFERENCES `tb_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_http_interface_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb_http_interface_tag`;
CREATE TABLE `tb_http_interface_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `interfaceId` varchar(25) NOT NULL,
  `tagId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_http_interface_tag_interfaceId_tagId_53e5a2a3_uniq` (`interfaceId`,`tagId`),
  KEY `tb_http_interface_tag_addBy_ca20eafb_fk_tb_user_loginName` (`addBy`),
  KEY `tb_http_interface_tag_tagId_229ce722_fk_tb_tag_id` (`tagId`),
  CONSTRAINT `tb_http_interface_ta_interfaceId_992f5b60_fk_tb_http_i` FOREIGN KEY (`interfaceId`) REFERENCES `tb_http_interface` (`interfaceid`),
  CONSTRAINT `tb_http_interface_tag_addBy_ca20eafb_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_http_interface_tag_tagId_229ce722_fk_tb_tag_id` FOREIGN KEY (`tagId`) REFERENCES `tb_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_http_testcase
-- ----------------------------
DROP TABLE IF EXISTS `tb_http_testcase`;
CREATE TABLE `tb_http_testcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` longtext NOT NULL,
  `caselevel` int(11) NOT NULL,
  `stepCount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseType` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `caseId` (`caseId`),
  KEY `tb_http_testcase_addBy_97ac819b_fk_tb_user_loginName` (`addBy`),
  KEY `tb_http_testcase_businessLineId_017037e3_fk_tb_business_line_id` (`businessLineId`),
  KEY `tb_http_testcase_moduleId_c5daae6e_fk_tb_modules_id` (`moduleId`),
  KEY `tb_http_testcase_sourceId_3350a006_fk_tb_source_id` (`sourceId`),
  CONSTRAINT `tb_http_testcase_addBy_97ac819b_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_http_testcase_businessLineId_017037e3_fk_tb_business_line_id` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_http_testcase_moduleId_c5daae6e_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`),
  CONSTRAINT `tb_http_testcase_sourceId_3350a006_fk_tb_source_id` FOREIGN KEY (`sourceId`) REFERENCES `tb_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_http_testcase_debug
-- ----------------------------
DROP TABLE IF EXISTS `tb_http_testcase_debug`;
CREATE TABLE `tb_http_testcase_debug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` longtext NOT NULL,
  `caselevel` int(11) NOT NULL,
  `stepCount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseType` int(11) NOT NULL,
  `execStatus` int(11) NOT NULL,
  `assertResult` longtext NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `beforeExecuteTakeTime` int(11) NOT NULL,
  `afterExecuteTakeTime` int(11) NOT NULL,
  `executeTakeTime` int(11) NOT NULL,
  `totalTakeTime` int(11) NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_http_testcase_debug_addBy_89908624_fk_tb_user_loginName` (`addBy`),
  KEY `tb_http_testcase_deb_businessLineId_04ec992f_fk_tb_busine` (`businessLineId`),
  KEY `tb_http_testcase_deb_httpConfKey_b1249007_fk_tb_config` (`httpConfKey`),
  KEY `tb_http_testcase_debug_moduleId_16fffff0_fk_tb_modules_id` (`moduleId`),
  KEY `tb_http_testcase_debug_sourceId_a85a5796_fk_tb_source_id` (`sourceId`),
  CONSTRAINT `tb_http_testcase_deb_businessLineId_04ec992f_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_http_testcase_deb_httpConfKey_b1249007_fk_tb_config` FOREIGN KEY (`httpConfKey`) REFERENCES `tb_config_http` (`httpconfkey`),
  CONSTRAINT `tb_http_testcase_debug_addBy_89908624_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_http_testcase_debug_moduleId_16fffff0_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`),
  CONSTRAINT `tb_http_testcase_debug_sourceId_a85a5796_fk_tb_source_id` FOREIGN KEY (`sourceId`) REFERENCES `tb_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_http_testcase_step
-- ----------------------------
DROP TABLE IF EXISTS `tb_http_testcase_step`;
CREATE TABLE `tb_http_testcase_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stepNum` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `stepDesc` longtext NOT NULL,
  `caseType` int(11) NOT NULL,
  `fromInterfaceId` varchar(30) NOT NULL,
  `isSync` int(11) NOT NULL,
  `varsPre` longtext NOT NULL,
  `uri` varchar(50) NOT NULL,
  `method` varchar(20) NOT NULL,
  `header` longtext NOT NULL,
  `url` varchar(250) NOT NULL,
  `params` longtext NOT NULL,
  `bodyType` varchar(200) NOT NULL,
  `bodyContent` longtext NOT NULL,
  `timeout` int(11) NOT NULL,
  `varsPost` longtext NOT NULL,
  `performanceTime` double NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `caseId` varchar(25) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_http_testcase_step_caseId_stepNum_d76c58a2_uniq` (`caseId`,`stepNum`),
  KEY `tb_http_testcase_step_addBy_3b69e768_fk_tb_user_loginName` (`addBy`),
  KEY `tb_http_testcase_ste_businessLineId_c8cc59ab_fk_tb_busine` (`businessLineId`),
  KEY `tb_http_testcase_step_moduleId_fe1bfcc8_fk_tb_modules_id` (`moduleId`),
  KEY `tb_http_testcase_step_sourceId_929006e9_fk_tb_source_id` (`sourceId`),
  CONSTRAINT `tb_http_testcase_ste_businessLineId_c8cc59ab_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_http_testcase_step_addBy_3b69e768_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_http_testcase_step_caseId_f0cddcd9_fk_tb_http_testcase_caseId` FOREIGN KEY (`caseId`) REFERENCES `tb_http_testcase` (`caseid`),
  CONSTRAINT `tb_http_testcase_step_moduleId_fe1bfcc8_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`),
  CONSTRAINT `tb_http_testcase_step_sourceId_929006e9_fk_tb_source_id` FOREIGN KEY (`sourceId`) REFERENCES `tb_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_http_testcase_step_debug
-- ----------------------------
DROP TABLE IF EXISTS `tb_http_testcase_step_debug`;
CREATE TABLE `tb_http_testcase_step_debug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` varchar(25) NOT NULL,
  `stepNum` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `stepDesc` longtext NOT NULL,
  `caseType` int(11) NOT NULL,
  `fromInterfaceId` varchar(30) NOT NULL,
  `isSync` int(11) NOT NULL,
  `varsPre` longtext NOT NULL,
  `uri` varchar(50) NOT NULL,
  `method` varchar(20) NOT NULL,
  `header` longtext NOT NULL,
  `url` varchar(250) NOT NULL,
  `params` longtext NOT NULL,
  `bodyType` varchar(200) NOT NULL,
  `bodyContent` longtext NOT NULL,
  `timeout` int(11) NOT NULL,
  `varsPost` longtext NOT NULL,
  `performanceTime` double NOT NULL,
  `execStatus` int(11) NOT NULL,
  `actualResult` longtext NOT NULL,
  `assertResult` longtext NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `beforeExecuteTakeTime` int(11) NOT NULL,
  `afterExecuteTakeTime` int(11) NOT NULL,
  `executeTakeTime` int(11) NOT NULL,
  `totalTakeTime` int(11) NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_http_testcase_step_debug_addBy_0ca9cb2c_fk_tb_user_loginName` (`addBy`),
  KEY `tb_http_testcase_ste_businessLineId_8dcda4c7_fk_tb_busine` (`businessLineId`),
  KEY `tb_http_testcase_ste_httpConfKey_31877246_fk_tb_config` (`httpConfKey`),
  KEY `tb_http_testcase_step_debug_moduleId_d24af98e_fk_tb_modules_id` (`moduleId`),
  KEY `tb_http_testcase_step_debug_sourceId_4f127ef5_fk_tb_source_id` (`sourceId`),
  CONSTRAINT `tb_http_testcase_ste_businessLineId_8dcda4c7_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_http_testcase_ste_httpConfKey_31877246_fk_tb_config` FOREIGN KEY (`httpConfKey`) REFERENCES `tb_config_http` (`httpconfkey`),
  CONSTRAINT `tb_http_testcase_step_debug_addBy_0ca9cb2c_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_http_testcase_step_debug_moduleId_d24af98e_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`),
  CONSTRAINT `tb_http_testcase_step_debug_sourceId_4f127ef5_fk_tb_source_id` FOREIGN KEY (`sourceId`) REFERENCES `tb_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_http_testcase_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb_http_testcase_tag`;
CREATE TABLE `tb_http_testcase_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `caseId` varchar(25) NOT NULL,
  `tagId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_http_testcase_tag_caseId_tagId_c3973803_uniq` (`caseId`,`tagId`),
  KEY `tb_http_testcase_tag_addBy_caa9ae79_fk_tb_user_loginName` (`addBy`),
  KEY `tb_http_testcase_tag_tagId_8c1f29d0_fk_tb_tag_id` (`tagId`),
  CONSTRAINT `tb_http_testcase_tag_addBy_caa9ae79_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_http_testcase_tag_caseId_94115f06_fk_tb_http_testcase_caseId` FOREIGN KEY (`caseId`) REFERENCES `tb_http_testcase` (`caseid`),
  CONSTRAINT `tb_http_testcase_tag_tagId_8c1f29d0_fk_tb_tag_id` FOREIGN KEY (`tagId`) REFERENCES `tb_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_interface_execute_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_interface_execute_history`;
CREATE TABLE `tb_interface_execute_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceUrl` varchar(200) NOT NULL,
  `requestHost` varchar(200) NOT NULL,
  `totalCount` int(11) NOT NULL,
  `passCount` int(11) NOT NULL,
  `failCount` int(11) NOT NULL,
  `errorCount` int(11) NOT NULL,
  `exceptionCount` int(11) NOT NULL,
  `taskId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `testReportUrl` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `execBy` varchar(20) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  `taskExecuteId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_interface_execute_history_addBy_3f733841_fk_tb_user_loginName` (`addBy`),
  KEY `tb_interface_execute_execBy_fe430bc6_fk_tb_user_l` (`execBy`),
  KEY `tb_interface_execute_httpConfKey_1851a356_fk_tb_config` (`httpConfKey`),
  KEY `tb_interface_execute_taskExecuteId_abb6688c_fk_tb_task_e` (`taskExecuteId`),
  CONSTRAINT `tb_interface_execute_execBy_fe430bc6_fk_tb_user_l` FOREIGN KEY (`execBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_interface_execute_history_addBy_3f733841_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_interface_execute_httpConfKey_1851a356_fk_tb_config` FOREIGN KEY (`httpConfKey`) REFERENCES `tb_config_http` (`httpconfkey`),
  CONSTRAINT `tb_interface_execute_taskExecuteId_abb6688c_fk_tb_task_e` FOREIGN KEY (`taskExecuteId`) REFERENCES `tb_task_execute` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_modules
-- ----------------------------
DROP TABLE IF EXISTS `tb_modules`;
CREATE TABLE `tb_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moduleName` varchar(25) NOT NULL,
  `moduleDesc` varchar(2000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `moduleName` (`moduleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_permissions
-- ----------------------------
DROP TABLE IF EXISTS `tb_permissions`;
CREATE TABLE `tb_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissionName` (`permissionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_run_server_conf
-- ----------------------------
DROP TABLE IF EXISTS `tb_run_server_conf`;
CREATE TABLE `tb_run_server_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(30) NOT NULL,
  `serviceIp` varchar(30) NOT NULL,
  `servicePort` int(11) NOT NULL,
  `maxTaskProgressNum` int(11) NOT NULL,
  `maxCaseProgressNum` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_source
-- ----------------------------
DROP TABLE IF EXISTS `tb_source`;
CREATE TABLE `tb_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceName` varchar(25) NOT NULL,
  `sourceDesc` varchar(2000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sourceName` (`sourceName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_source
-- ----------------------------
BEGIN;
INSERT INTO `tb_source` VALUES (1, 'WEB', 'WEB', 1, NULL, NULL, '2019-04-18 10:03:55.096903', '2019-04-18 10:03:55.097297');
INSERT INTO `tb_source` VALUES (2, 'APP', 'APP', 1, NULL, NULL, '2019-04-18 10:03:55.182502', '2019-04-18 10:03:55.182577');
INSERT INTO `tb_source` VALUES (3, 'Android', 'Android', 1, NULL, NULL, '2019-04-18 10:03:55.185810', '2019-04-18 10:03:55.185843');
INSERT INTO `tb_source` VALUES (4, 'iOS', 'iOS', 1, NULL, NULL, '2019-04-18 10:03:55.188133', '2019-04-18 10:03:55.188158');
INSERT INTO `tb_source` VALUES (5, '所有', '所有', 1, NULL, NULL, '2019-04-18 10:03:55.190079', '2019-04-18 10:03:55.190104');
INSERT INTO `tb_source` VALUES (6, 'API', 'API', 1, NULL, NULL, '2019-04-18 10:03:55.192008', '2019-04-18 10:03:55.192034');
COMMIT;

-- ----------------------------
-- Table structure for tb_standard_interface
-- ----------------------------
DROP TABLE IF EXISTS `tb_standard_interface`;
CREATE TABLE `tb_standard_interface` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(3000) NOT NULL,
  `interfaceUrl` varchar(9999) NOT NULL,
  `interfaceCreateBy` varchar(100) NOT NULL,
  `interfaceCreateTime` datetime(6) NOT NULL,
  `interfaceUpdateBy` varchar(100) NOT NULL,
  `interfaceUpdateTime` datetime(6) NOT NULL,
  `authorEmail` varchar(200) NOT NULL,
  `apiStatus` int(11) NOT NULL,
  `serviceName` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_standard_interface_addBy_06752a07_fk_tb_user_loginName` (`addBy`),
  KEY `tb_standard_interfac_businessLineId_61866c4e_fk_tb_busine` (`businessLineId`),
  KEY `tb_standard_interface_moduleId_ee52f8b5_fk_tb_modules_id` (`moduleId`),
  CONSTRAINT `tb_standard_interfac_businessLineId_61866c4e_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_standard_interface_addBy_06752a07_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_standard_interface_moduleId_ee52f8b5_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_tag
-- ----------------------------
DROP TABLE IF EXISTS `tb_tag`;
CREATE TABLE `tb_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(30) NOT NULL,
  `usecount` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`),
  KEY `tb_tag_addBy_7289bef6_fk_tb_user_loginName` (`addBy`),
  CONSTRAINT `tb_tag_addBy_7289bef6_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_task`;
CREATE TABLE `tb_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `businessLineGroup` varchar(1000) NOT NULL,
  `modulesGroup` varchar(1000) NOT NULL,
  `sourceGroup` varchar(1000) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `taskLevel` int(11) NOT NULL,
  `highPriorityVARS` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `interfaceCount` int(11) NOT NULL,
  `taskInterfaces` longtext NOT NULL,
  `caseCount` int(11) NOT NULL,
  `taskTestcases` longtext NOT NULL,
  `interfaceNum` int(11) NOT NULL,
  `isCI` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addByName` varchar(25) NOT NULL,
  `modByName` varchar(25) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskId` (`taskId`),
  KEY `tb_task_addBy_55ca0c91_fk_tb_user_loginName` (`addBy`),
  CONSTRAINT `tb_task_addBy_55ca0c91_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_task_execute
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_execute`;
CREATE TABLE `tb_task_execute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `businessLineGroup` varchar(1000) NOT NULL,
  `modulesGroup` varchar(1000) NOT NULL,
  `sourceGroup` varchar(1000) NOT NULL,
  `taskLevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `highPriorityVARS` longtext NOT NULL,
  `interfaceCount` int(11) NOT NULL,
  `taskInterfaces` longtext NOT NULL,
  `caseCount` int(11) NOT NULL,
  `taskTestcases` longtext NOT NULL,
  `interfaceNum` int(11) NOT NULL,
  `isCI` int(11) NOT NULL,
  `caseLevel` int(11) NOT NULL,
  `isSendEmail` int(11) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `isCodeRate` int(11) NOT NULL,
  `isSaveHistory` int(11) NOT NULL,
  `execComments` varchar(400) NOT NULL,
  `retryCount` int(11) NOT NULL,
  `execType` int(11) NOT NULL,
  `execTime` datetime(6) NOT NULL,
  `execFinishTime` datetime(6) NOT NULL,
  `execTakeTime` int(11) NOT NULL,
  `execStatus` int(11) NOT NULL,
  `execProgressData` varchar(30) NOT NULL,
  `execPlatform` int(11) NOT NULL,
  `execLevel` int(11) NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `testResultMsg` longtext NOT NULL,
  `testReportUrl` varchar(200) NOT NULL,
  `performanceResult` varchar(20) NOT NULL,
  `taskSuiteExecuteId` int(11) NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addByName` varchar(25) NOT NULL,
  `modByName` varchar(25) NOT NULL,
  `execByName` varchar(25) NOT NULL,
  `httpConfKeyAlias` varchar(200) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `execBy` varchar(20) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_task_execute_addBy_000105aa_fk_tb_user_loginName` (`addBy`),
  KEY `tb_task_execute_execBy_812117be_fk_tb_user_loginName` (`execBy`),
  KEY `tb_task_execute_httpConfKey_0af469a0_fk_tb_config` (`httpConfKey`),
  CONSTRAINT `tb_task_execute_addBy_000105aa_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_task_execute_execBy_812117be_fk_tb_user_loginName` FOREIGN KEY (`execBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_task_execute_httpConfKey_0af469a0_fk_tb_config` FOREIGN KEY (`httpConfKey`) REFERENCES `tb_config_http` (`httpconfkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_task_suite
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_suite`;
CREATE TABLE `tb_task_suite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskSuiteId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskSuiteDesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `status` int(11) NOT NULL,
  `taskCount` int(11) NOT NULL,
  `taskList` longtext NOT NULL,
  `isCI` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskSuiteId` (`taskSuiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_task_suite_execute
-- ----------------------------
DROP TABLE IF EXISTS `tb_task_suite_execute`;
CREATE TABLE `tb_task_suite_execute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskSuiteId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskSuiteDesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `taskCount` int(11) NOT NULL,
  `taskList` longtext NOT NULL,
  `isCI` int(11) NOT NULL,
  `httpConfKeyList` varchar(300) NOT NULL,
  `httpConfKeyAliasList` varchar(300) NOT NULL,
  `caseLevel` int(11) NOT NULL,
  `isSendEmail` int(11) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `isCodeRate` int(11) NOT NULL,
  `isSaveHistory` int(11) NOT NULL,
  `execComments` varchar(400) NOT NULL,
  `execType` int(11) NOT NULL,
  `execTime` datetime(6) NOT NULL,
  `execFinishTime` datetime(6) NOT NULL,
  `execTakeTime` int(11) NOT NULL,
  `execBy` varchar(30) NOT NULL,
  `execStatus` int(11) NOT NULL,
  `execProgressData` varchar(30) NOT NULL,
  `execPlatform` int(11) NOT NULL,
  `execLevel` int(11) NOT NULL,
  `testResult` varchar(20) NOT NULL,
  `testResultMsg` longtext NOT NULL,
  `testReportUrl` varchar(200) NOT NULL,
  `taskExecuteIdList` longtext NOT NULL,
  `version` varchar(25) NOT NULL,
  `retryCount` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_team
-- ----------------------------
DROP TABLE IF EXISTS `tb_team`;
CREATE TABLE `tb_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(100) NOT NULL,
  `teamDesc` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teamName` (`teamName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_team_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_team_permission_relation`;
CREATE TABLE `tb_team_permission_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamName` varchar(100) NOT NULL,
  `permissionName` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_auto_upload_package
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_auto_upload_package`;
CREATE TABLE `tb_ui_auto_upload_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appType` varchar(300) NOT NULL,
  `uploadResult` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_functions
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_functions`;
CREATE TABLE `tb_ui_functions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commonFuncKey` varchar(100) NOT NULL,
  `commonFuncTitle` varchar(500) NOT NULL,
  `commonFuncDesc` varchar(5000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_ui_functions_commonFuncKey_d4dd1796_uniq` (`commonFuncKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_functions_testcase
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_functions_testcase`;
CREATE TABLE `tb_ui_functions_testcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commonFuncKey` varchar(100) NOT NULL,
  `functionName` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` varchar(1000) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `caseLevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_ui_functions_testcase_commonFuncKey_functionNa_c64970ef_uniq` (`commonFuncKey`,`functionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_functions_testcase_step
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_functions_testcase_step`;
CREATE TABLE `tb_ui_functions_testcase_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commonFuncKey` varchar(100) NOT NULL,
  `functionName` varchar(25) NOT NULL,
  `stepNum` int(11) NOT NULL,
  `stepTitle` varchar(200) NOT NULL,
  `stepDesc` varchar(2000) NOT NULL,
  `specialTag` varchar(25) NOT NULL,
  `operate` varchar(100) NOT NULL,
  `params` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_global_text
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_global_text`;
CREATE TABLE `tb_ui_global_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `textDesc` varchar(5000) NOT NULL,
  `textKey` varchar(100) NOT NULL,
  `textValue` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `textKey` (`textKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_global_vars
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_global_vars`;
CREATE TABLE `tb_ui_global_vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `varDesc` varchar(5000) NOT NULL,
  `varKey` varchar(100) NOT NULL,
  `varValue` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `varKey` (`varKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_mobile_server
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_mobile_server`;
CREATE TABLE `tb_ui_mobile_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serverName` varchar(30) NOT NULL,
  `serverDesc` varchar(100) NOT NULL,
  `serverType` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `executeTaskId` varchar(30) DEFAULT NULL,
  `serverIp` varchar(30) NOT NULL,
  `serverPort` varchar(30) NOT NULL,
  `udid` varchar(100) NOT NULL,
  `deviceName` varchar(100) NOT NULL,
  `wdaLocalPort` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serverName` (`serverName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_mobile_server_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_mobile_server_log`;
CREATE TABLE `tb_ui_mobile_server_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(30) NOT NULL,
  `executeTaskId` varchar(30) NOT NULL,
  `executeBy` varchar(25) DEFAULT NULL,
  `startTime` datetime(6) NOT NULL,
  `endTime` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_package
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_package`;
CREATE TABLE `tb_ui_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `packageId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `packageDesc` varchar(1000) NOT NULL,
  `packageType` int(11) NOT NULL,
  `appFileName` varchar(300) NOT NULL,
  `appPackage` varchar(300) NOT NULL,
  `appActivity` varchar(300) NOT NULL,
  `bundleId` varchar(300) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `packageId` (`packageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_page_object
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_page_object`;
CREATE TABLE `tb_ui_page_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poKey` varchar(100) NOT NULL,
  `poTitle` varchar(200) NOT NULL,
  `poDesc` varchar(5000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `poKey` (`poKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_page_object_elements
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_page_object_elements`;
CREATE TABLE `tb_ui_page_object_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poKey` varchar(100) NOT NULL,
  `poTitle` varchar(200) NOT NULL,
  `poDesc` varchar(5000) NOT NULL,
  `elementKey` varchar(100) NOT NULL,
  `elementType` varchar(50) NOT NULL,
  `elementValue` varchar(5000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_ui_page_object_elements_poKey_elementKey_ca7f43fb_uniq` (`poKey`,`elementKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_task`;
CREATE TABLE `tb_ui_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `businessLineGroup` varchar(1000) NOT NULL,
  `modulesGroup` varchar(1000) NOT NULL,
  `sourceGroup` varchar(1000) NOT NULL,
  `tasklevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseCount` int(11) NOT NULL,
  `taskTestcases` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskId` (`taskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_task_execute
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_task_execute`;
CREATE TABLE `tb_ui_task_execute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `businessLineGroup` varchar(1000) NOT NULL,
  `modulesGroup` varchar(1000) NOT NULL,
  `sourceGroup` varchar(1000) NOT NULL,
  `tasklevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseCount` int(11) NOT NULL,
  `taskTestcases` longtext NOT NULL,
  `taskExcelFileName` varchar(200) NOT NULL,
  `taskExcelFileGenerateTime` datetime(6) NOT NULL,
  `httpConfKey` varchar(300) NOT NULL,
  `reportDir` varchar(100) NOT NULL,
  `packageId` varchar(25) NOT NULL,
  `execStatus` int(11) NOT NULL,
  `execCommand` varchar(5000) NOT NULL,
  `execStartTime` datetime(6) NOT NULL,
  `execEndTime` datetime(6) NOT NULL,
  `execTakeTime` varchar(100) NOT NULL,
  `execProgressString` longtext NOT NULL,
  `execComments` varchar(400) NOT NULL,
  `isSendEmail` int(11) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `testResult` varchar(300) NOT NULL,
  `testResultMessage` longtext NOT NULL,
  `version` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskId` (`taskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_task_simple
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_task_simple`;
CREATE TABLE `tb_ui_task_simple` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceGroup` varchar(1000) NOT NULL,
  `tasklevel` int(11) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `status` int(11) NOT NULL,
  `fileName` varchar(300) NOT NULL,
  `sheetName` varchar(300) NOT NULL,
  `fileAddBy` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskId` (`taskId`),
  KEY `tb_ui_task_simple_addBy_9bec6dba_fk_tb_user_loginName` (`addBy`),
  CONSTRAINT `tb_ui_task_simple_addBy_9bec6dba_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_test_excel
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_test_excel`;
CREATE TABLE `tb_ui_test_excel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(300) NOT NULL,
  `sheetNames` varchar(500) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_ui_test_excel_fileName_addBy_b260fd3b_uniq` (`fileName`,`addBy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_test_execute
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_test_execute`;
CREATE TABLE `tb_ui_test_execute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceGroup` varchar(1000) NOT NULL,
  `tasklevel` int(11) NOT NULL,
  `fileName` varchar(300) NOT NULL,
  `sheetName` varchar(300) NOT NULL,
  `fileAddBy` varchar(100) NOT NULL,
  `httpConfKey` varchar(300) NOT NULL,
  `reportDir` varchar(100) NOT NULL,
  `packageId` varchar(25) NOT NULL,
  `serverId` int(11) NOT NULL,
  `execStatus` int(11) NOT NULL,
  `execCommand` varchar(5000) NOT NULL,
  `execStartTime` datetime(6) NOT NULL,
  `execEndTime` datetime(6) NOT NULL,
  `execTakeTime` varchar(100) NOT NULL,
  `execProgressString` longtext NOT NULL,
  `execComments` varchar(400) NOT NULL,
  `isSendEmail` int(11) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `testResult` varchar(300) NOT NULL,
  `testResultMessage` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_testcase
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_testcase`;
CREATE TABLE `tb_ui_testcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` varchar(1000) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `caseLevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `caseId` (`caseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_testcase_step
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_testcase_step`;
CREATE TABLE `tb_ui_testcase_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` varchar(25) NOT NULL,
  `stepNum` int(11) NOT NULL,
  `stepTitle` varchar(200) NOT NULL,
  `stepDesc` varchar(2000) NOT NULL,
  `specialTag` varchar(25) NOT NULL,
  `operate` varchar(100) NOT NULL,
  `params` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_version_functions
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_version_functions`;
CREATE TABLE `tb_ui_version_functions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(25) NOT NULL,
  `commonFuncKey` varchar(100) NOT NULL,
  `commonFuncTitle` varchar(500) NOT NULL,
  `commonFuncDesc` varchar(5000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_ui_version_functions_versionName_commonFuncKey_99da78ab_uniq` (`versionName`,`commonFuncKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_version_functions_testcase
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_version_functions_testcase`;
CREATE TABLE `tb_ui_version_functions_testcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(25) NOT NULL,
  `commonFuncKey` varchar(100) NOT NULL,
  `functionName` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` varchar(1000) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `caseLevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_ui_version_functions__versionName_commonFuncKe_562b1187_uniq` (`versionName`,`commonFuncKey`,`functionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_version_functions_testcase_step
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_version_functions_testcase_step`;
CREATE TABLE `tb_ui_version_functions_testcase_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(25) NOT NULL,
  `commonFuncKey` varchar(100) NOT NULL,
  `functionName` varchar(25) NOT NULL,
  `stepNum` int(11) NOT NULL,
  `stepTitle` varchar(200) NOT NULL,
  `stepDesc` varchar(2000) NOT NULL,
  `specialTag` varchar(25) NOT NULL,
  `operate` varchar(100) NOT NULL,
  `params` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_version_global_text
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_version_global_text`;
CREATE TABLE `tb_ui_version_global_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(25) NOT NULL,
  `textDesc` varchar(5000) NOT NULL,
  `textKey` varchar(100) NOT NULL,
  `textValue` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_ui_version_global_text_versionName_textKey_16ccf804_uniq` (`versionName`,`textKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_version_global_vars
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_version_global_vars`;
CREATE TABLE `tb_ui_version_global_vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(25) NOT NULL,
  `varDesc` varchar(5000) NOT NULL,
  `varKey` varchar(100) NOT NULL,
  `varValue` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_ui_version_global_vars_versionName_varKey_0fce428c_uniq` (`versionName`,`varKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_version_page_object
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_version_page_object`;
CREATE TABLE `tb_ui_version_page_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(25) NOT NULL,
  `poKey` varchar(100) NOT NULL,
  `poTitle` varchar(200) NOT NULL,
  `poDesc` varchar(5000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_ui_version_page_object_versionName_poKey_2fe40eeb_uniq` (`versionName`,`poKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_version_page_object_elements
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_version_page_object_elements`;
CREATE TABLE `tb_ui_version_page_object_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(25) NOT NULL,
  `poKey` varchar(100) NOT NULL,
  `poTitle` varchar(200) NOT NULL,
  `poDesc` varchar(5000) NOT NULL,
  `elementKey` varchar(100) NOT NULL,
  `elementType` varchar(50) NOT NULL,
  `elementValue` varchar(5000) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_ui_version_page_objec_versionName_poKey_elemen_2c105d78_uniq` (`versionName`,`poKey`,`elementKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_version_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_version_task`;
CREATE TABLE `tb_ui_version_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(25) NOT NULL,
  `taskId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `businessLineGroup` varchar(1000) NOT NULL,
  `modulesGroup` varchar(1000) NOT NULL,
  `sourceGroup` varchar(1000) NOT NULL,
  `tasklevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseCount` int(11) NOT NULL,
  `taskTestcases` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_ui_version_task_versionName_taskId_1eec3bea_uniq` (`versionName`,`taskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_version_testcase
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_version_testcase`;
CREATE TABLE `tb_ui_version_testcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(25) NOT NULL,
  `caseId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` varchar(1000) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `caseLevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_ui_version_testcase_step
-- ----------------------------
DROP TABLE IF EXISTS `tb_ui_version_testcase_step`;
CREATE TABLE `tb_ui_version_testcase_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(25) NOT NULL,
  `caseId` varchar(25) NOT NULL,
  `stepNum` int(11) NOT NULL,
  `stepTitle` varchar(200) NOT NULL,
  `stepDesc` varchar(2000) NOT NULL,
  `specialTag` varchar(25) NOT NULL,
  `operate` varchar(100) NOT NULL,
  `params` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `userName` varchar(10) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `token` varchar(200) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `audit` int(11) NOT NULL,
  `defaultPermission` int(11) NOT NULL,
  `language` varchar(10) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginName` (`loginName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_user_change_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_change_log`;
CREATE TABLE `tb_user_change_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(20) NOT NULL,
  `otherLoginName` varchar(20) NOT NULL,
  `beforeChangeData` longtext NOT NULL,
  `afterChangeData` longtext NOT NULL,
  `dataId` varchar(500) NOT NULL,
  `changeDataId` varchar(500) NOT NULL,
  `testStepId` varchar(500) NOT NULL,
  `type` int(11) NOT NULL,
  `version` varchar(500) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_user_deployment_tool
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_deployment_tool`;
CREATE TABLE `tb_user_deployment_tool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redisKey` varchar(1000) NOT NULL,
  `opsList` varchar(1000) NOT NULL,
  `strongCheckSuccessList` varchar(1000) NOT NULL,
  `weakCheckSuccessList` varchar(1000) NOT NULL,
  `strongCheckFailedList` varchar(1000) NOT NULL,
  `weakCheckFailedList` varchar(1000) NOT NULL,
  `opsDeploySuccessList` varchar(1000) NOT NULL,
  `serviceDeployList` varchar(1000) NOT NULL,
  `serviceDeploySuccessList` varchar(1000) NOT NULL,
  `serviceDeployFailedList` varchar(1000) NOT NULL,
  `detail` longtext NOT NULL,
  `remark` varchar(1000) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `report` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL,
  `autoFlag` int(11) NOT NULL,
  `execResult` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_user_httpconf
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_httpconf`;
CREATE TABLE `tb_user_httpconf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conflevel` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `httpConfKey` varchar(50) NOT NULL,
  `loginName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_user_httpconf_loginName_httpConfKey_7d700ea3_uniq` (`loginName`,`httpConfKey`),
  KEY `tb_user_httpconf_addBy_fe6f1843_fk_tb_user_loginName` (`addBy`),
  KEY `tb_user_httpconf_httpConfKey_4b48d315_fk_tb_config` (`httpConfKey`),
  CONSTRAINT `tb_user_httpconf_addBy_fe6f1843_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_user_httpconf_httpConfKey_4b48d315_fk_tb_config` FOREIGN KEY (`httpConfKey`) REFERENCES `tb_config_http` (`httpconfkey`),
  CONSTRAINT `tb_user_httpconf_loginName_3e3a7d21_fk_tb_user_loginName` FOREIGN KEY (`loginName`) REFERENCES `tb_user` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_user_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_log`;
CREATE TABLE `tb_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(20) NOT NULL,
  `userName` varchar(10) NOT NULL,
  `operationUrl` varchar(500) NOT NULL,
  `operationDesc` longtext NOT NULL,
  `operationResult` varchar(1000) NOT NULL,
  `fromHostIp` varchar(500) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_user_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_permission_relation`;
CREATE TABLE `tb_user_permission_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(100) NOT NULL,
  `permissionKey` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_user_team_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_team_relation`;
CREATE TABLE `tb_user_team_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) NOT NULL,
  `teamName` varchar(100) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_user_uri
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_uri`;
CREATE TABLE `tb_user_uri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conflevel` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `loginName` varchar(20) NOT NULL,
  `uriKey` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_user_uri_loginName_uriKey_96a5c848_uniq` (`loginName`,`uriKey`),
  KEY `tb_user_uri_uriKey_0a8e5c3a_fk_tb_config_uri_uriKey` (`uriKey`),
  CONSTRAINT `tb_user_uri_loginName_e33b827e_fk_tb_user_loginName` FOREIGN KEY (`loginName`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_user_uri_uriKey_0a8e5c3a_fk_tb_config_uri_uriKey` FOREIGN KEY (`uriKey`) REFERENCES `tb_config_uri` (`urikey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_version
-- ----------------------------
DROP TABLE IF EXISTS `tb_version`;
CREATE TABLE `tb_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versionName` varchar(25) NOT NULL,
  `versionDesc` longtext NOT NULL,
  `type` int(11) NOT NULL,
  `closeTime` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `versionName` (`versionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_version_global_text
-- ----------------------------
DROP TABLE IF EXISTS `tb_version_global_text`;
CREATE TABLE `tb_version_global_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `textDesc` varchar(5000) NOT NULL,
  `textKey` varchar(100) NOT NULL,
  `textValue` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `versionName` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_version_global_text_versionName_textKey_b3e4012f_uniq` (`versionName`,`textKey`),
  KEY `tb_version_global_text_addBy_83941e83_fk_tb_user_loginName` (`addBy`),
  CONSTRAINT `tb_version_global_te_versionName_ac78fbc8_fk_tb_versio` FOREIGN KEY (`versionName`) REFERENCES `tb_version` (`versionname`),
  CONSTRAINT `tb_version_global_text_addBy_83941e83_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_version_global_vars
-- ----------------------------
DROP TABLE IF EXISTS `tb_version_global_vars`;
CREATE TABLE `tb_version_global_vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `varDesc` varchar(5000) NOT NULL,
  `varKey` varchar(100) NOT NULL,
  `varValue` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `versionName` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_version_global_vars_versionName_varKey_fde7b6d7_uniq` (`versionName`,`varKey`),
  KEY `tb_version_global_vars_addBy_d6dc22cb_fk_tb_user_loginName` (`addBy`),
  CONSTRAINT `tb_version_global_va_versionName_b03cb6fa_fk_tb_versio` FOREIGN KEY (`versionName`) REFERENCES `tb_version` (`versionname`),
  CONSTRAINT `tb_version_global_vars_addBy_d6dc22cb_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_version_http_interface
-- ----------------------------
DROP TABLE IF EXISTS `tb_version_http_interface`;
CREATE TABLE `tb_version_http_interface` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` varchar(1000) NOT NULL,
  `caselevel` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseType` int(11) NOT NULL,
  `varsPre` longtext NOT NULL,
  `uri` varchar(50) NOT NULL,
  `method` varchar(20) NOT NULL,
  `header` longtext NOT NULL,
  `url` varchar(250) NOT NULL,
  `params` longtext NOT NULL,
  `bodyType` varchar(200) NOT NULL,
  `bodyContent` longtext NOT NULL,
  `timeout` int(11) NOT NULL,
  `varsPost` longtext NOT NULL,
  `performanceTime` double NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `versionName` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_version_http_interface_versionName_interfaceId_e1882e96_uniq` (`versionName`,`interfaceId`),
  KEY `tb_version_http_interface_addBy_688e188b_fk_tb_user_loginName` (`addBy`),
  KEY `tb_version_http_inte_businessLineId_c82f2147_fk_tb_busine` (`businessLineId`),
  KEY `tb_version_http_interface_moduleId_361a0118_fk_tb_modules_id` (`moduleId`),
  KEY `tb_version_http_interface_sourceId_3c6d8610_fk_tb_source_id` (`sourceId`),
  CONSTRAINT `tb_version_http_inte_businessLineId_c82f2147_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_version_http_inte_versionName_50b30c56_fk_tb_versio` FOREIGN KEY (`versionName`) REFERENCES `tb_version` (`versionname`),
  CONSTRAINT `tb_version_http_interface_addBy_688e188b_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_version_http_interface_moduleId_361a0118_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`),
  CONSTRAINT `tb_version_http_interface_sourceId_3c6d8610_fk_tb_source_id` FOREIGN KEY (`sourceId`) REFERENCES `tb_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_version_http_testcase
-- ----------------------------
DROP TABLE IF EXISTS `tb_version_http_testcase`;
CREATE TABLE `tb_version_http_testcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `casedesc` varchar(1000) NOT NULL,
  `caselevel` int(11) NOT NULL,
  `stepCount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `caseType` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `versionName` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_version_http_testcase_versionName_caseId_e90d73bb_uniq` (`versionName`,`caseId`),
  KEY `tb_version_http_testcase_addBy_69933650_fk_tb_user_loginName` (`addBy`),
  KEY `tb_version_http_test_businessLineId_0dfb16e1_fk_tb_busine` (`businessLineId`),
  KEY `tb_version_http_testcase_moduleId_90e14153_fk_tb_modules_id` (`moduleId`),
  KEY `tb_version_http_testcase_sourceId_15f567fa_fk_tb_source_id` (`sourceId`),
  CONSTRAINT `tb_version_http_test_businessLineId_0dfb16e1_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_version_http_test_versionName_cc045625_fk_tb_versio` FOREIGN KEY (`versionName`) REFERENCES `tb_version` (`versionname`),
  CONSTRAINT `tb_version_http_testcase_addBy_69933650_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_version_http_testcase_moduleId_90e14153_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`),
  CONSTRAINT `tb_version_http_testcase_sourceId_15f567fa_fk_tb_source_id` FOREIGN KEY (`sourceId`) REFERENCES `tb_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_version_http_testcase_step
-- ----------------------------
DROP TABLE IF EXISTS `tb_version_http_testcase_step`;
CREATE TABLE `tb_version_http_testcase_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` varchar(25) NOT NULL,
  `stepNum` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `stepDesc` varchar(1000) NOT NULL,
  `caseType` int(11) NOT NULL,
  `fromInterfaceId` varchar(30) NOT NULL,
  `isSync` int(11) NOT NULL,
  `varsPre` longtext NOT NULL,
  `uri` varchar(50) NOT NULL,
  `method` varchar(20) NOT NULL,
  `header` longtext NOT NULL,
  `url` varchar(250) NOT NULL,
  `params` longtext NOT NULL,
  `bodyType` varchar(200) NOT NULL,
  `bodyContent` longtext NOT NULL,
  `timeout` int(11) NOT NULL,
  `varsPost` longtext NOT NULL,
  `performanceTime` double NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `versionName` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_version_http_testcase_versionName_caseId_stepN_2be2c025_uniq` (`versionName`,`caseId`,`stepNum`),
  KEY `tb_version_http_test_addBy_4e4d0664_fk_tb_user_l` (`addBy`),
  KEY `tb_version_http_test_businessLineId_9b2a2064_fk_tb_busine` (`businessLineId`),
  KEY `tb_version_http_testcase_step_moduleId_dfa76ebc_fk_tb_modules_id` (`moduleId`),
  KEY `tb_version_http_testcase_step_sourceId_d95c9cd8_fk_tb_source_id` (`sourceId`),
  CONSTRAINT `tb_version_http_test_addBy_4e4d0664_fk_tb_user_l` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_version_http_test_businessLineId_9b2a2064_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_version_http_test_versionName_c4304bfd_fk_tb_versio` FOREIGN KEY (`versionName`) REFERENCES `tb_version` (`versionname`),
  CONSTRAINT `tb_version_http_testcase_step_moduleId_dfa76ebc_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`),
  CONSTRAINT `tb_version_http_testcase_step_sourceId_d95c9cd8_fk_tb_source_id` FOREIGN KEY (`sourceId`) REFERENCES `tb_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_version_standard_interface
-- ----------------------------
DROP TABLE IF EXISTS `tb_version_standard_interface`;
CREATE TABLE `tb_version_standard_interface` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(3000) NOT NULL,
  `interfaceUrl` varchar(300) NOT NULL,
  `interfaceCreateBy` varchar(100) NOT NULL,
  `interfaceCreateTime` datetime(6) NOT NULL,
  `interfaceUpdateBy` varchar(100) NOT NULL,
  `interfaceUpdateTime` datetime(6) NOT NULL,
  `authorEmail` varchar(200) NOT NULL,
  `apiStatus` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `businessLineId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `versionName` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_version_standard__addBy_9e799cbe_fk_tb_user_l` (`addBy`),
  KEY `tb_version_standard__businessLineId_0d323ed4_fk_tb_busine` (`businessLineId`),
  KEY `tb_version_standard_interface_moduleId_fc241381_fk_tb_modules_id` (`moduleId`),
  KEY `tb_version_standard__versionName_8a9edfb8_fk_tb_versio` (`versionName`),
  CONSTRAINT `tb_version_standard__addBy_9e799cbe_fk_tb_user_l` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_version_standard__businessLineId_0d323ed4_fk_tb_busine` FOREIGN KEY (`businessLineId`) REFERENCES `tb_business_line` (`id`),
  CONSTRAINT `tb_version_standard__versionName_8a9edfb8_fk_tb_versio` FOREIGN KEY (`versionName`) REFERENCES `tb_version` (`versionname`),
  CONSTRAINT `tb_version_standard_interface_moduleId_fc241381_fk_tb_modules_id` FOREIGN KEY (`moduleId`) REFERENCES `tb_modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_version_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_version_task`;
CREATE TABLE `tb_version_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskdesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `businessLineGroup` varchar(1000) NOT NULL,
  `modulesGroup` varchar(1000) NOT NULL,
  `sourceGroup` varchar(1000) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `taskLevel` int(11) NOT NULL,
  `highPriorityVARS` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `interfaceCount` int(11) NOT NULL,
  `taskInterfaces` longtext NOT NULL,
  `caseCount` int(11) NOT NULL,
  `taskTestcases` longtext NOT NULL,
  `interfaceNum` int(11) NOT NULL,
  `isCI` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `addBy` varchar(20) NOT NULL,
  `versionName` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_version_task_versionName_taskId_294a9be4_uniq` (`versionName`,`taskId`),
  KEY `tb_version_task_addBy_5ea16ef3_fk_tb_user_loginName` (`addBy`),
  CONSTRAINT `tb_version_task_addBy_5ea16ef3_fk_tb_user_loginName` FOREIGN KEY (`addBy`) REFERENCES `tb_user` (`loginname`),
  CONSTRAINT `tb_version_task_versionName_01458246_fk_tb_version_versionName` FOREIGN KEY (`versionName`) REFERENCES `tb_version` (`versionname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_version_task_suite
-- ----------------------------
DROP TABLE IF EXISTS `tb_version_task_suite`;
CREATE TABLE `tb_version_task_suite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskSuiteId` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `taskSuiteDesc` varchar(1000) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `emailList` varchar(2000) NOT NULL,
  `status` int(11) NOT NULL,
  `taskCount` int(11) NOT NULL,
  `taskList` longtext NOT NULL,
  `isCI` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `versionName` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskSuiteId` (`taskSuiteId`),
  KEY `tb_version_task_suit_versionName_3862b1de_fk_tb_versio` (`versionName`),
  CONSTRAINT `tb_version_task_suit_versionName_3862b1de_fk_tb_versio` FOREIGN KEY (`versionName`) REFERENCES `tb_version` (`versionname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_action_interface_general_situation
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_action_interface_general_situation`;
CREATE TABLE `tb_webPortal_action_interface_general_situation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statisticalDetail` longtext NOT NULL,
  `version` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_action_interface_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_action_interface_test`;
CREATE TABLE `tb_webPortal_action_interface_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessLine` varchar(200) NOT NULL,
  `envTestDetail` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_all_passRate
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_all_passRate`;
CREATE TABLE `tb_webPortal_all_passRate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testResultMsg` longtext NOT NULL,
  `execTakeTime` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_business_line
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_business_line`;
CREATE TABLE `tb_webPortal_business_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bussinessLine` varchar(25) NOT NULL,
  `bussinessLineDesc` varchar(2000) NOT NULL,
  `isShow` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addBy` varchar(25) DEFAULT NULL,
  `modBy` varchar(25) DEFAULT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bussinessLine` (`bussinessLine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_business_line_action_passrate
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_business_line_action_passrate`;
CREATE TABLE `tb_webPortal_business_line_action_passrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testResultMsg` longtext NOT NULL,
  `execTakeTime` int(11) NOT NULL,
  `businessLine` varchar(25) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_jira_business_line
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_jira_business_line`;
CREATE TABLE `tb_webPortal_jira_business_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessLineName` varchar(25) NOT NULL,
  `businessLineDesc` varchar(2000) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `businessLineName` (`businessLineName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_jira_business_line_platform_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_jira_business_line_platform_relation`;
CREATE TABLE `tb_webPortal_jira_business_line_platform_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `jiraBusinessLineId` int(11) NOT NULL,
  `platformBusinessLineId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_webPortal_jira_busine_jiraBusinessLineId_platf_c58fdcfc_uniq` (`jiraBusinessLineId`,`platformBusinessLineId`),
  KEY `tb_webPortal_jira_bu_platformBusinessLine_7f7b8738_fk_tb_busine` (`platformBusinessLineId`),
  CONSTRAINT `tb_webPortal_jira_bu_jiraBusinessLineId_25b3e3f7_fk_tb_webPor` FOREIGN KEY (`jiraBusinessLineId`) REFERENCES `tb_webportal_jira_business_line` (`id`),
  CONSTRAINT `tb_webPortal_jira_bu_platformBusinessLine_7f7b8738_fk_tb_busine` FOREIGN KEY (`platformBusinessLineId`) REFERENCES `tb_business_line` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_jira_module
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_jira_module`;
CREATE TABLE `tb_webPortal_jira_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moduleName` varchar(25) NOT NULL,
  `moduleDesc` varchar(2000) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `moduleName` (`moduleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_jira_module_platform_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_jira_module_platform_relation`;
CREATE TABLE `tb_webPortal_jira_module_platform_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `jiraModuleId` int(11) NOT NULL,
  `platformModuleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_webPortal_jira_module_jiraModuleId_platformMod_7d104fd1_uniq` (`jiraModuleId`,`platformModuleId`),
  KEY `tb_webPortal_jira_mo_platformModuleId_f4f13e18_fk_tb_module` (`platformModuleId`),
  CONSTRAINT `tb_webPortal_jira_mo_jiraModuleId_14f91f7d_fk_tb_webPor` FOREIGN KEY (`jiraModuleId`) REFERENCES `tb_webportal_jira_module` (`id`),
  CONSTRAINT `tb_webPortal_jira_mo_platformModuleId_f4f13e18_fk_tb_module` FOREIGN KEY (`platformModuleId`) REFERENCES `tb_modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_openApi_bl_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_openApi_bl_test`;
CREATE TABLE `tb_webPortal_openApi_bl_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceSum` int(11) NOT NULL,
  `covered` int(11) NOT NULL,
  `coveredRate` double NOT NULL,
  `total` int(11) NOT NULL,
  `executedRate` int(11) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `businessLine` varchar(200) NOT NULL,
  `testBeginTime` datetime(6) NOT NULL,
  `testEnfTime` datetime(6) NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_openApi_businessLine
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_openApi_businessLine`;
CREATE TABLE `tb_webPortal_openApi_businessLine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessLineName` varchar(200) NOT NULL,
  `businessLineDesc` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_openApi_general_situation
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_openApi_general_situation`;
CREATE TABLE `tb_webPortal_openApi_general_situation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceSum` int(11) NOT NULL,
  `covered` int(11) NOT NULL,
  `coveredRate` double NOT NULL,
  `total` int(11) NOT NULL,
  `executedRate` int(11) NOT NULL,
  `profile` varchar(200) NOT NULL,
  `averageInterfaceNum` varchar(200) NOT NULL,
  `testBeginTime` datetime(6) NOT NULL,
  `testEnfTime` datetime(6) NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_openApi_interface_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_openApi_interface_test`;
CREATE TABLE `tb_webPortal_openApi_interface_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessLine` varchar(200) NOT NULL,
  `interfaceDetail` longtext NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_openApi_uri
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_openApi_uri`;
CREATE TABLE `tb_webPortal_openApi_uri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summaryUri` varchar(200) NOT NULL,
  `summaryUrl` varchar(200) NOT NULL,
  `interfaceTestUri` varchar(200) NOT NULL,
  `interfaceTestUrl` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_passingRate_Env
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_passingRate_Env`;
CREATE TABLE `tb_webPortal_passingRate_Env` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `httpConfKey` varchar(50) NOT NULL,
  `openApiKey` varchar(50) NOT NULL,
  `rmiKey` varchar(50) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `httpConfKey` (`httpConfKey`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_platform_interface_covered
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_platform_interface_covered`;
CREATE TABLE `tb_webPortal_platform_interface_covered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessLine` varchar(200) NOT NULL,
  `standardInterfaceNum` int(11) NOT NULL,
  `coveredInterfaceNum` int(11) NOT NULL,
  `coverage` double NOT NULL,
  `executeInterfaceNum` int(11) NOT NULL,
  `executeInterfaceCoverage` double NOT NULL,
  `interfaceNum` int(11) NOT NULL,
  `executeInterfaceSum` int(11) NOT NULL,
  `testCaseSum` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  `version` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_RMI_general_situation
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_RMI_general_situation`;
CREATE TABLE `tb_webPortal_RMI_general_situation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coverage` int(11) NOT NULL,
  `methodTotal` int(11) NOT NULL,
  `totalTest` int(11) NOT NULL,
  `failedNum` int(11) NOT NULL,
  `passedNum` int(11) NOT NULL,
  `skippedNum` int(11) NOT NULL,
  `summaryAt` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_RMI_interface_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_RMI_interface_test`;
CREATE TABLE `tb_webPortal_RMI_interface_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interfaceDetail` longtext NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_RMI_service_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_RMI_service_test`;
CREATE TABLE `tb_webPortal_RMI_service_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classNum` int(11) NOT NULL,
  `classCoverage` int(11) NOT NULL,
  `methodNum` int(11) NOT NULL,
  `methodCoverage` int(11) NOT NULL,
  `coveredRate` double NOT NULL,
  `testNum` int(11) NOT NULL,
  `service` varchar(200) NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_RMI_standard_service
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_RMI_standard_service`;
CREATE TABLE `tb_webPortal_RMI_standard_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_service_interface_covered
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_service_interface_covered`;
CREATE TABLE `tb_webPortal_service_interface_covered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(100) NOT NULL,
  `standardInterfaceNum` int(11) NOT NULL,
  `coveredInterfaceNum` int(11) NOT NULL,
  `coverage` double NOT NULL,
  `serviceTestDetail` longtext NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serviceName` (`serviceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_standard_Env
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_standard_Env`;
CREATE TABLE `tb_webPortal_standard_Env` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `httpConfKey` varchar(50) NOT NULL,
  `openApiKey` varchar(50) NOT NULL,
  `rmiKey` varchar(50) NOT NULL,
  `version` varchar(200) NOT NULL,
  `actionIsShow` int(11) NOT NULL,
  `rmiIsShow` int(11) NOT NULL,
  `openapiIsShow` int(11) NOT NULL,
  `uiIsShow` int(11) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `lineSort` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `httpConfKey` (`httpConfKey`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_standard_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_standard_task`;
CREATE TABLE `tb_webPortal_standard_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(200) NOT NULL,
  `businessLine` varchar(200) NOT NULL,
  `team` varchar(200) NOT NULL,
  `head` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_task
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_task`;
CREATE TABLE `tb_webPortal_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `businessLine` varchar(200) NOT NULL,
  `team` varchar(200) NOT NULL,
  `head` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_ui_covered
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_ui_covered`;
CREATE TABLE `tb_webPortal_ui_covered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coverDetail` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_ui_general_situation
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_ui_general_situation`;
CREATE TABLE `tb_webPortal_ui_general_situation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `generalSituationDetail` varchar(2000) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_ui_test
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_ui_test`;
CREATE TABLE `tb_webPortal_ui_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testDetail` longtext NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_ui_test_general_situation
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_ui_test_general_situation`;
CREATE TABLE `tb_webPortal_ui_test_general_situation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testCaseNum` int(11) NOT NULL,
  `autoTestCoveredNum` int(11) NOT NULL,
  `autoTestRate` double NOT NULL,
  `coveredDetail` longtext NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_unit_test_general_situation
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_unit_test_general_situation`;
CREATE TABLE `tb_webPortal_unit_test_general_situation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codeNum` int(11) NOT NULL,
  `coverage` int(11) NOT NULL,
  `coverageRate` double NOT NULL,
  `unitTestDetail` longtext NOT NULL,
  `statisticalTime` datetime(6) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_webPortal_unit_test_service
-- ----------------------------
DROP TABLE IF EXISTS `tb_webPortal_unit_test_service`;
CREATE TABLE `tb_webPortal_unit_test_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(200) NOT NULL,
  `serviceDesc` varchar(200) NOT NULL,
  `isShow` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `addTime` datetime(6) NOT NULL,
  `modTime` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
*/