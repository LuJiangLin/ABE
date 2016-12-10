/*
Navicat MySQL Data Transfer

Source Server         : zs
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : abe

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-09 22:54:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `all_inform`
-- ----------------------------
DROP TABLE IF EXISTS `all_inform`;
CREATE TABLE `all_inform` (
  `ai_id` varchar(255) NOT NULL,
  `ai_title` varchar(255) DEFAULT NULL,
  `it_id` varchar(255) DEFAULT NULL,
  `ai_content` varchar(255) DEFAULT NULL,
  `ai_status` varchar(255) DEFAULT NULL,
  `ai_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ai_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of all_inform
-- ----------------------------
INSERT INTO `all_inform` VALUES ('041010520399815', '新版本APP将于12月4日3点发布', '1', '更新将在半小时内完成，新版本更新期间请不要进行数据操作以免丢失', '已发布', '2016-12-04 10:10:52');
INSERT INTO `all_inform` VALUES ('041013131823137', '新版本APP将于12月4日4点发布', '1', '更新将在半小时内完成，新版本更新期间请不要进行数据操作以免丢失', '已发布', '2016-12-04 10:13:13');

-- ----------------------------
-- Table structure for `card`
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `c_id` varchar(255) NOT NULL DEFAULT '',
  `c_type` varchar(255) DEFAULT NULL,
  `srt_id` varchar(255) DEFAULT NULL,
  `it_id` varchar(255) DEFAULT NULL,
  `c_create_time` datetime DEFAULT NULL,
  `c_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card
-- ----------------------------

-- ----------------------------
-- Table structure for `card_log`
-- ----------------------------
DROP TABLE IF EXISTS `card_log`;
CREATE TABLE `card_log` (
  `cl_id` varchar(255) NOT NULL DEFAULT '',
  `c_id` varchar(255) DEFAULT NULL,
  `cl_time` datetime DEFAULT NULL,
  `cl_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ceshi`
-- ----------------------------
DROP TABLE IF EXISTS `ceshi`;
CREATE TABLE `ceshi` (
  `y` year(4) DEFAULT NULL,
  `id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ceshi
-- ----------------------------
INSERT INTO `ceshi` VALUES ('2001', '1');

-- ----------------------------
-- Table structure for `class_inform`
-- ----------------------------
DROP TABLE IF EXISTS `class_inform`;
CREATE TABLE `class_inform` (
  `ci_id` varchar(255) NOT NULL,
  `ci_title` varchar(255) DEFAULT NULL,
  `it_id` varchar(255) DEFAULT NULL,
  `ci_content` varchar(255) DEFAULT NULL,
  `sc_id` varchar(255) DEFAULT NULL,
  `ci_status` varchar(255) DEFAULT NULL,
  `ci_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ci_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_inform
-- ----------------------------
INSERT INTO `class_inform` VALUES ('040956076907261', '本周末开家长会', '1', '各位家长，**幼儿园**班将于本周末（12月4日）进行家长会活动', '1', '已发布', '2016-12-04 09:56:07');
INSERT INTO `class_inform` VALUES ('041002108565809', '本周三展开家长会', '1', '各位家长，**幼儿园**班将于本周末（11月30日）进行家长会活动', '1', '已发布', '2016-12-04 10:02:10');

-- ----------------------------
-- Table structure for `code`
-- ----------------------------
DROP TABLE IF EXISTS `code`;
CREATE TABLE `code` (
  `u_id` varchar(255) NOT NULL DEFAULT '',
  `c_phone` varchar(255) DEFAULT NULL,
  `c_code` varchar(255) DEFAULT NULL,
  `c_time` datetime DEFAULT NULL,
  `c_no_time` datetime DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code
-- ----------------------------

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` varchar(255) NOT NULL DEFAULT '',
  `c_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('131514271687852', '画画');
INSERT INTO `course` VALUES ('131514574764413', '英语');
INSERT INTO `course` VALUES ('131515004038597', '语文');
INSERT INTO `course` VALUES ('131515032186975', '数学');

-- ----------------------------
-- Table structure for `forum`
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `f_id` varchar(255) NOT NULL DEFAULT '',
  `f_content` varchar(255) DEFAULT NULL,
  `f_like` int(11) DEFAULT NULL,
  `f_create_time` datetime DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('23', '33', '33', '2016-11-16 19:04:06', '123213141');

-- ----------------------------
-- Table structure for `forum_comment`
-- ----------------------------
DROP TABLE IF EXISTS `forum_comment`;
CREATE TABLE `forum_comment` (
  `fc_id` varchar(255) NOT NULL DEFAULT '',
  `fc_content` varchar(255) DEFAULT NULL,
  `fc_create_time` datetime DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `f_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `forum_like`
-- ----------------------------
DROP TABLE IF EXISTS `forum_like`;
CREATE TABLE `forum_like` (
  `fl_id` varchar(255) NOT NULL DEFAULT '',
  `f_id` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum_like
-- ----------------------------
INSERT INTO `forum_like` VALUES ('091103268266335', '091025067281683', '1');
INSERT INTO `forum_like` VALUES ('091103480463287', '091025067281683', '2');

-- ----------------------------
-- Table structure for `hx_group`
-- ----------------------------
DROP TABLE IF EXISTS `hx_group`;
CREATE TABLE `hx_group` (
  `g_id` varchar(255) NOT NULL DEFAULT '',
  `g_name` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `g_desc` varchar(255) DEFAULT NULL,
  `g_create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hx_group
-- ----------------------------

-- ----------------------------
-- Table structure for `info_parents`
-- ----------------------------
DROP TABLE IF EXISTS `info_parents`;
CREATE TABLE `info_parents` (
  `ip_id` varchar(255) NOT NULL DEFAULT '',
  `ip_name` varchar(255) DEFAULT NULL,
  `ip_sex` varchar(255) DEFAULT NULL,
  `ip_birthday` date DEFAULT NULL,
  `ip_phone` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_parents
-- ----------------------------
INSERT INTO `info_parents` VALUES ('1', '张顺', null, null, null, null);

-- ----------------------------
-- Table structure for `info_student`
-- ----------------------------
DROP TABLE IF EXISTS `info_student`;
CREATE TABLE `info_student` (
  `is_id` varchar(255) NOT NULL DEFAULT '',
  `is_num` varchar(255) NOT NULL,
  `is_name` varchar(255) DEFAULT NULL,
  `is_sex` varchar(255) DEFAULT NULL,
  `is_birthday` date DEFAULT NULL,
  `is_local` int(11) DEFAULT NULL,
  `is_teacher_children` int(11) DEFAULT NULL,
  `is_into_date` date DEFAULT NULL,
  `is_leave_date` date DEFAULT NULL,
  `is_state` varchar(255) DEFAULT NULL,
  `sc_id` varchar(255) DEFAULT NULL,
  `is_class_line` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`is_id`),
  UNIQUE KEY `is_num` (`is_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_student
-- ----------------------------
INSERT INTO `info_student` VALUES ('261802034587218', '001', '小美', '女', '2016-01-01', '1', '0', '2012-09-09', null, '正在校学生', '1', null);

-- ----------------------------
-- Table structure for `info_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `info_teacher`;
CREATE TABLE `info_teacher` (
  `it_id` varchar(255) NOT NULL DEFAULT '',
  `it_num` varchar(255) NOT NULL,
  `it_name` varchar(255) DEFAULT NULL,
  `it_sex` varchar(255) DEFAULT NULL,
  `it_birthday` date DEFAULT NULL,
  `it_phone` varchar(255) DEFAULT NULL,
  `it_post` varchar(255) DEFAULT NULL,
  `it_into_date` date DEFAULT NULL,
  `it_leave_date` date DEFAULT NULL,
  `it_state` varchar(255) DEFAULT NULL,
  `it_address` varchar(255) DEFAULT NULL,
  `ss_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`it_id`),
  UNIQUE KEY `it_num` (`it_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info_teacher
-- ----------------------------
INSERT INTO `info_teacher` VALUES ('1', '001', '李老师', null, null, null, null, null, null, null, null, null);
INSERT INTO `info_teacher` VALUES ('2', '002', '黄老师', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `licence`
-- ----------------------------
DROP TABLE IF EXISTS `licence`;
CREATE TABLE `licence` (
  `u_id` varchar(255) NOT NULL DEFAULT '',
  `l_licence` varchar(255) DEFAULT NULL,
  `l_ip` varchar(255) DEFAULT NULL,
  `l_date_start` datetime DEFAULT NULL,
  `l_date_end` datetime DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of licence
-- ----------------------------
INSERT INTO `licence` VALUES ('123213141', 'apXPgmegEtTMFjsgcN4wzg==', '127.0.0.1', '2016-12-04 09:40:03', '2016-12-04 11:14:16');
INSERT INTO `licence` VALUES ('271634032221266', 'KnskvHFtncsGhcL4LNf/qw==', '127.0.0.1', '2016-12-09 22:51:18', '2016-12-09 23:52:04');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `n_id` varchar(255) NOT NULL,
  `n_title` varchar(255) NOT NULL,
  `n_content` text,
  `n_imgs` varchar(255) DEFAULT NULL,
  `n_url` varchar(255) DEFAULT NULL,
  `n_origin` varchar(255) DEFAULT NULL,
  `n_type` varchar(255) DEFAULT NULL,
  `n_creat_time` varchar(255) DEFAULT NULL,
  `n_final_time` varchar(255) DEFAULT NULL,
  `n_istop` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `n_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '这是标题', '这是正文', null, null, null, null, null, null, null, '271634032221266', null);
INSERT INTO `news` VALUES ('281945065136760', '你好', '', null, null, '请输入...', '健康', '2016-11-28 19:45:06', '2016-11-28 19:45:06', '0', '271634032221266', '1');
INSERT INTO `news` VALUES ('282032113195520', '2222', '<p>11111</p>', null, null, '请输入...', '生活', '2016-11-28 20:32:11', '2016-11-28 20:32:11', '0', '271634032221266', '1');
INSERT INTO `news` VALUES ('282034449895572', '天气晴朗', '<table width=\"100%\"><tbody><tr><td style=\"text-align: left;\">1</td><td>a</td><td>A</td></tr><tr><td>2</td><td>b</td><td>B</td></tr></tbody></table><p><strong><em>占卜术</em></strong></p><p style=\"text-align: left;\"><br></p><p style=\"text-align: left;\"><img class=\"fr-fin\" data-fr-image-preview=\"false\" alt=\"Image title\" src=\"http://i.froala.com/download/3d7dd311a9ef567babbefd208f95b4d57912b764.png?1480336440\" width=\"300\"></p><p style=\"text-align: left;\"><strong><em><br></em></strong></p>', null, null, '百度', '头条咨询', '2016-11-28 20:34:44', '2016-11-28 20:34:44', '0', '271634032221266', '1');

-- ----------------------------
-- Table structure for `person_inform`
-- ----------------------------
DROP TABLE IF EXISTS `person_inform`;
CREATE TABLE `person_inform` (
  `pi_id` varchar(255) NOT NULL,
  `pi_title` varchar(255) DEFAULT NULL,
  `pi_content` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `pi_status` varchar(255) DEFAULT NULL,
  `pi_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person_inform
-- ----------------------------
INSERT INTO `person_inform` VALUES ('040927226119636', '您的反馈结果', '经过测试您所反馈的情况属实，我们将予以补偿', '271634032221266', '已读', '2016-12-04 09:27:22');

-- ----------------------------
-- Table structure for `place_area`
-- ----------------------------
DROP TABLE IF EXISTS `place_area`;
CREATE TABLE `place_area` (
  `pa_id` varchar(255) NOT NULL DEFAULT '',
  `pa_name` varchar(255) DEFAULT NULL,
  `pc_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_area
-- ----------------------------

-- ----------------------------
-- Table structure for `place_city`
-- ----------------------------
DROP TABLE IF EXISTS `place_city`;
CREATE TABLE `place_city` (
  `pc_id` varchar(255) NOT NULL DEFAULT '',
  `pc_name` varchar(255) DEFAULT NULL,
  `pp_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_city
-- ----------------------------

-- ----------------------------
-- Table structure for `place_province`
-- ----------------------------
DROP TABLE IF EXISTS `place_province`;
CREATE TABLE `place_province` (
  `pp_id` varchar(255) NOT NULL DEFAULT '',
  `pp_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_province
-- ----------------------------

-- ----------------------------
-- Table structure for `recipe`
-- ----------------------------
DROP TABLE IF EXISTS `recipe`;
CREATE TABLE `recipe` (
  `r_id` varchar(255) NOT NULL,
  `sc_id` varchar(255) DEFAULT NULL,
  `r_type` varchar(255) DEFAULT NULL,
  `r_time` varchar(255) DEFAULT NULL,
  `r_state` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `r_creat_time` varchar(255) DEFAULT NULL,
  `r_status` varchar(255) DEFAULT NULL,
  `r_images` varchar(255) DEFAULT NULL,
  `r_images_url` varchar(255) DEFAULT NULL,
  `is_id_accept` varchar(255) DEFAULT NULL,
  `is_id_all` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe
-- ----------------------------
INSERT INTO `recipe` VALUES ('161803372075104', '333', '晚餐', '2016.11.10', '排骨面', '123213141', null, '已发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161811049305351', '333', '晚餐', '2016.11.10', '排骨面', '123213141', null, '已发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828195898924', '323', '晚餐', '2016.11.10', '排骨面', '123213141', '2016-11-16 18:28:19', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828253067843', '113', '晚餐', '2016.11.10', '排骨面', '123213141', '2016-11-16 18:28:25', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828293586222', '123', '晚餐', '2016.11.10', '排骨面', '123213141', '2016-11-16 18:28:29', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828360798426', '1234', '晚餐', '2016.11.10', '排骨面', '123213141', '2016-11-16 18:28:36', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828405903858', '12345', '晚餐', '2016.11.10', '排骨面', '123213141', '2016-11-16 18:28:40', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828530372140', '12345', '晚餐', '2016.11.10', 'da面', '123213141', '2016-11-16 18:28:53', '未发布', null, null, null, '001，002，003');
INSERT INTO `recipe` VALUES ('161828581576339', '123245', '晚餐', '2016.11.10', '骨面', '123213141', '2016-11-16 18:28:58', '未发布', null, null, null, '001，002，003');

-- ----------------------------
-- Table structure for `return`
-- ----------------------------
DROP TABLE IF EXISTS `return`;
CREATE TABLE `return` (
  `r_id` varchar(255) NOT NULL,
  `r_content` varchar(255) DEFAULT NULL,
  `r_time` varchar(255) DEFAULT NULL,
  `r_status` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return
-- ----------------------------
INSERT INTO `return` VALUES ('072022008748331', '界面太粗糙了', '2016-12-07 20:22:00', '已查看', '123213141');
INSERT INTO `return` VALUES ('072023408677718', 'UI交互不够人性化', '2016-12-07 20:23:40', '未查看', '123213141');

-- ----------------------------
-- Table structure for `school`
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `s_id` varchar(255) NOT NULL DEFAULT '',
  `s_name` varchar(255) DEFAULT NULL,
  `s_address` varchar(255) DEFAULT NULL,
  `pa_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('081452563923624', '123', '13', '112');
INSERT INTO `school` VALUES ('081458124379441', '456', '456', '112');
INSERT INTO `school` VALUES ('081528027653630', '4156', '464', '46');
INSERT INTO `school` VALUES ('1', '阳光幼儿园', null, '112');

-- ----------------------------
-- Table structure for `school_class`
-- ----------------------------
DROP TABLE IF EXISTS `school_class`;
CREATE TABLE `school_class` (
  `sc_id` varchar(255) NOT NULL DEFAULT '',
  `sc_name` varchar(255) DEFAULT NULL,
  `sg_id` varchar(255) DEFAULT NULL,
  `it_id` varchar(255) DEFAULT NULL,
  `sc_create_time` datetime DEFAULT NULL,
  `sc_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_class
-- ----------------------------
INSERT INTO `school_class` VALUES ('081459178952128', '156', '465', '4654', '2016-12-08 14:59:17', '有效');
INSERT INTO `school_class` VALUES ('081500271827928', '范德萨', '范德萨发', '范德萨', '2016-12-08 15:00:27', '有效');
INSERT INTO `school_class` VALUES ('081502027398492', '范德萨', '1', '1', '2016-12-08 15:02:02', '有效');
INSERT INTO `school_class` VALUES ('081503183072523', '发的是第三方', '1', '2', '2016-12-08 15:03:18', '有效');
INSERT INTO `school_class` VALUES ('081504117924606', '范德萨发的说法是', '1', '2', '2016-12-08 15:04:11', '有效');
INSERT INTO `school_class` VALUES ('1', '一班', '1', '1', '2016-12-08 11:38:26', '有效');
INSERT INTO `school_class` VALUES ('2', '二班', '2', '2', '2016-12-08 11:38:52', '无效');

-- ----------------------------
-- Table structure for `school_grade`
-- ----------------------------
DROP TABLE IF EXISTS `school_grade`;
CREATE TABLE `school_grade` (
  `sg_id` varchar(255) NOT NULL DEFAULT '',
  `sg_name` varchar(255) DEFAULT NULL,
  `s_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_grade
-- ----------------------------
INSERT INTO `school_grade` VALUES ('081458480833030', '三年级', '456');
INSERT INTO `school_grade` VALUES ('1', '一年级', '1');
INSERT INTO `school_grade` VALUES ('2', '二年级', '2');

-- ----------------------------
-- Table structure for `school_section`
-- ----------------------------
DROP TABLE IF EXISTS `school_section`;
CREATE TABLE `school_section` (
  `ss_id` varchar(255) NOT NULL DEFAULT '',
  `ss_name` varchar(255) DEFAULT NULL,
  `s_id` varchar(255) DEFAULT NULL,
  `ss_id_last` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_section
-- ----------------------------

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `s_id` varchar(255) NOT NULL DEFAULT '',
  `s_score` int(11) DEFAULT NULL,
  `c_id` varchar(255) DEFAULT NULL,
  `is_id` varchar(255) DEFAULT NULL,
  `s_create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------

-- ----------------------------
-- Table structure for `student_parent_rel`
-- ----------------------------
DROP TABLE IF EXISTS `student_parent_rel`;
CREATE TABLE `student_parent_rel` (
  `sp_id` varchar(255) NOT NULL DEFAULT '',
  `is_id` varchar(255) DEFAULT NULL,
  `ip_id` varchar(255) DEFAULT NULL,
  `sp_relation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_parent_rel
-- ----------------------------
INSERT INTO `student_parent_rel` VALUES ('261802035157508', '261802034587218', '1', '父女');

-- ----------------------------
-- Table structure for `timetables`
-- ----------------------------
DROP TABLE IF EXISTS `timetables`;
CREATE TABLE `timetables` (
  `t_id` varchar(255) NOT NULL DEFAULT '',
  `c_id` varchar(255) DEFAULT NULL,
  `sc_id` varchar(255) DEFAULT NULL,
  `it_id` varchar(255) DEFAULT NULL,
  `t_start_time` time DEFAULT NULL,
  `t_end_time` time DEFAULT NULL,
  `t_week` int(11) DEFAULT NULL,
  `t_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timetables
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `u_id` varchar(255) NOT NULL DEFAULT '',
  `u_num` varchar(255) NOT NULL DEFAULT '',
  `u_name` varchar(255) DEFAULT NULL,
  `u_pass` varchar(255) DEFAULT NULL,
  `u_type` varchar(255) DEFAULT NULL,
  `u_create_time` datetime DEFAULT NULL,
  `u_photo_path` varchar(255) DEFAULT NULL,
  `u_note` varchar(255) DEFAULT NULL,
  `trp_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_num` (`u_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('123213141', 'qqq', '小李子', '123', '2', null, 'http://zhangshun-zs1994.oicp.net:15202/ABE_WEB/photo/123213141/31223058436.png', null, '1');
INSERT INTO `users` VALUES ('271634032221266', 'qwe', '张顺', '123', '1', '2016-10-26 23:08:14', 'http://zhangshun-zs1994.oicp.net:15202/ABE_WEB/photo/271634032221266/26180936276.png', null, '1');

-- ----------------------------
-- Table structure for `vacate`
-- ----------------------------
DROP TABLE IF EXISTS `vacate`;
CREATE TABLE `vacate` (
  `v_id` varchar(255) NOT NULL,
  `is_id` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `it_id` varchar(255) DEFAULT NULL,
  `v_content` varchar(255) DEFAULT NULL,
  `v_date` varchar(255) DEFAULT NULL,
  `v_time` varchar(255) DEFAULT NULL,
  `v_resp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vacate
-- ----------------------------
