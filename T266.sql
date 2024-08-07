/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t266`;
CREATE DATABASE IF NOT EXISTS `t266` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t266`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/shetuanguanlixitong/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/shetuanguanlixitong/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/shetuanguanlixitong/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'huodong_types', '活动类型', 1, '活动类型1', NULL, NULL, '2022-02-21 03:42:36'),
	(2, 'huodong_types', '活动类型', 2, '活动类型2', NULL, NULL, '2022-02-21 03:42:36'),
	(3, 'huodong_types', '活动类型', 3, '活动类型3', NULL, NULL, '2022-02-21 03:42:36'),
	(4, 'huodong_shenhe_yesno_types', '审核状态', 1, '未审核', NULL, NULL, '2022-02-21 03:42:36'),
	(5, 'huodong_shenhe_yesno_types', '审核状态', 2, '通过', NULL, NULL, '2022-02-21 03:42:36'),
	(6, 'huodong_shenhe_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2022-02-21 03:42:36'),
	(7, 'shetuan_types', '社团类型', 1, '社团类型1', NULL, NULL, '2022-02-21 03:42:36'),
	(8, 'shetuan_types', '社团类型', 2, '社团类型2', NULL, NULL, '2022-02-21 03:42:36'),
	(9, 'shetuan_types', '社团类型', 3, '社团类型3', NULL, NULL, '2022-02-21 03:42:36'),
	(10, 'shetuan_shenhe_yesno_types', '审核状态', 1, '未审核', NULL, NULL, '2022-02-21 03:42:36'),
	(11, 'shetuan_shenhe_yesno_types', '审核状态', 2, '通过', NULL, NULL, '2022-02-21 03:42:36'),
	(12, 'shetuan_shenhe_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2022-02-21 03:42:36'),
	(13, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-02-21 03:42:36'),
	(14, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-02-21 03:42:36'),
	(15, 'news_types', '公告信息类型', 1, '公告信息类型1', NULL, NULL, '2022-02-21 03:42:36'),
	(16, 'news_types', '公告信息类型', 2, '公告信息类型2', NULL, NULL, '2022-02-21 03:42:36'),
	(17, 'news_types', '公告信息类型', 3, '公告信息类型3', NULL, NULL, '2022-02-21 03:42:36');

DROP TABLE IF EXISTS `huodong`;
CREATE TABLE IF NOT EXISTS `huodong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huodong_uuid_unmber` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '活动名称 Search111',
  `huodong_types` int DEFAULT NULL COMMENT '活动类型 Search111',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '活动封面',
  `shetuan_id` int DEFAULT NULL COMMENT '发布社团',
  `huodong_address` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodong_content` text COMMENT '活动详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='活动信息';

DELETE FROM `huodong`;
INSERT INTO `huodong` (`id`, `huodong_uuid_unmber`, `huodong_name`, `huodong_types`, `huodong_photo`, `shetuan_id`, `huodong_address`, `huodong_content`, `create_time`) VALUES
	(1, '活动编号1', '活动名称1', 1, 'http://localhost:8080/shetuanguanlixitong/upload/1645422575662.webp', 1, '活动地点1', '<p>活动详情1</p>', '2022-02-21 03:42:54'),
	(2, '活动编号2', '活动名称2', 2, 'http://localhost:8080/shetuanguanlixitong/upload/1645422565911.webp', 2, '活动地点2', '<p>活动详情2</p>', '2022-02-21 03:42:54'),
	(3, '活动编号3', '活动名称3', 2, 'http://localhost:8080/shetuanguanlixitong/upload/1645422556815.jpg', 3, '活动地点3', '<p>活动详情3</p>', '2022-02-21 03:42:54');

DROP TABLE IF EXISTS `huodong_shenhe`;
CREATE TABLE IF NOT EXISTS `huodong_shenhe` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huodong_id` int DEFAULT NULL COMMENT '活动',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `huodong_shenhe_yesno_types` int DEFAULT NULL COMMENT '审核状态',
  `huodong_text` text COMMENT '审核意见',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='活动审核';

DELETE FROM `huodong_shenhe`;
INSERT INTO `huodong_shenhe` (`id`, `huodong_id`, `yonghu_id`, `huodong_shenhe_yesno_types`, `huodong_text`, `create_time`) VALUES
	(1, 1, 3, 2, '审核意见1', '2022-02-21 03:42:54'),
	(2, 2, 2, 3, '审核意见2', '2022-02-21 03:42:54'),
	(3, 3, 2, 3, '审核意见3', '2022-02-21 03:42:54'),
	(12, 3, 1, 2, '随意填写', '2022-02-21 06:30:33'),
	(13, 2, 1, 3, '随意填写', '2022-02-21 06:41:09'),
	(14, 1, 1, 2, '随意填写', '2022-02-21 06:41:14'),
	(15, 1, 1, 1, NULL, '2024-07-15 05:18:24');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `news_delete`, `create_time`) VALUES
	(1, '公告信息标题1', 3, 'http://localhost:8080/shetuanguanlixitong/upload/1645420916760.jpg', '2022-02-21 03:42:54', '<p>公告信息详情1</p>', 1, '2022-02-21 03:42:54'),
	(2, '公告信息标题2', 2, 'http://localhost:8080/shetuanguanlixitong/upload/1645420909060.webp', '2022-02-21 03:42:54', '<p>公告信息详情2</p>', 1, '2022-02-21 03:42:54'),
	(3, '公告信息标题3', 1, 'http://localhost:8080/shetuanguanlixitong/upload/1645420897201.webp', '2022-02-21 03:42:54', '<p>公告信息详情3</p>', 1, '2022-02-21 03:42:54'),
	(4, '公告信息标题4', 2, 'http://localhost:8080/shetuanguanlixitong/upload/1645420889756.webp', '2022-02-21 03:42:54', '<p>公告信息详情4</p>', 1, '2022-02-21 03:42:54'),
	(5, '公告信息标题5', 1, 'http://localhost:8080/shetuanguanlixitong/upload/1645420882539.webp', '2022-02-21 03:42:54', '<p>公告信息详情5</p>', 1, '2022-02-21 03:42:54'),
	(6, '公告信息标题6', 3, 'http://localhost:8080/shetuanguanlixitong/upload/1645420875459.jpg', '2022-02-21 03:42:54', '<p>公告信息详情6</p>', 1, '2022-02-21 03:42:54');

DROP TABLE IF EXISTS `shetuan`;
CREATE TABLE IF NOT EXISTS `shetuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shetuan_uuid_unmber` varchar(200) DEFAULT NULL COMMENT '社团编号',
  `shetuan_name` varchar(200) DEFAULT NULL COMMENT '社团名称 Search111',
  `shetuan_types` int DEFAULT NULL COMMENT '社团类型 Search111',
  `shetuan_photo` varchar(200) DEFAULT NULL COMMENT '社团封面',
  `tuanzhang_id` int DEFAULT NULL COMMENT '发布人',
  `shetuan_address` varchar(200) DEFAULT NULL COMMENT '社团地点',
  `shetuan_content` text COMMENT '社团详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='社团信息';

DELETE FROM `shetuan`;
INSERT INTO `shetuan` (`id`, `shetuan_uuid_unmber`, `shetuan_name`, `shetuan_types`, `shetuan_photo`, `tuanzhang_id`, `shetuan_address`, `shetuan_content`, `create_time`) VALUES
	(1, '社团编号1', '社团名称1', 2, 'http://localhost:8080/shetuanguanlixitong/upload/1645421497265.jpg', 1, '社团地点1', '<p>社团详情1</p>', '2022-02-21 03:42:54'),
	(2, '社团编号2', '社团名称2', 2, 'http://localhost:8080/shetuanguanlixitong/upload/1645421488433.webp', 2, '社团地点2', '<p>社团详情2</p>', '2022-02-21 03:42:54'),
	(3, '社团编号3', '社团名称3', 2, 'http://localhost:8080/shetuanguanlixitong/upload/1645421479720.jpg', 3, '社团地点3', '<p>社团详情3</p>', '2022-02-21 03:42:54');

DROP TABLE IF EXISTS `shetuan_shenhe`;
CREATE TABLE IF NOT EXISTS `shetuan_shenhe` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shetuan_id` int DEFAULT NULL COMMENT '社团',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `shetuan_shenhe_yesno_types` int DEFAULT NULL COMMENT '审核状态',
  `shetuan_text` text COMMENT '审核意见',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='社团审核';

DELETE FROM `shetuan_shenhe`;
INSERT INTO `shetuan_shenhe` (`id`, `shetuan_id`, `yonghu_id`, `shetuan_shenhe_yesno_types`, `shetuan_text`, `create_time`) VALUES
	(1, 1, 1, 2, '审核意见1', '2022-02-21 03:42:54'),
	(2, 2, 2, 2, '审核意见2', '2022-02-21 03:42:54'),
	(3, 3, 3, 2, '审核意见3', '2022-02-21 03:42:54'),
	(15, 3, 1, 3, '111', '2022-02-21 06:30:26'),
	(16, 2, 1, 2, '111', '2022-02-21 06:41:03'),
	(17, 3, 1, 1, NULL, '2024-07-15 05:18:35');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'et75go7f9tat5ggy03i5i3v7j3gkqtio', '2022-02-21 03:46:14', '2024-07-15 06:16:47'),
	(2, 1, 'a1', 'yonghu', '学生', 'mwvrbhqplt58zn37zl8zfwe70dvm5zvu', '2022-02-21 03:46:32', '2024-07-15 06:18:12'),
	(3, 2, 'a2', 'tuanzhang', '团长', 'i960v5none3x43rdzyciy198g3bui98f', '2022-02-21 05:52:44', '2022-02-21 07:31:13'),
	(4, 1, 'a1', 'tuanzhang', '团长', 'ug3i5z1uz25pl96igap0jt83tp1avua6', '2022-02-21 06:31:06', '2024-07-15 06:17:48'),
	(5, 3, 'a3', 'tuanzhang', '团长', 'v54llt6qe4xlgtrvuveegowggdzp7tfm', '2022-02-21 06:31:21', '2022-02-21 07:31:22');

DROP TABLE IF EXISTS `tuanzhang`;
CREATE TABLE IF NOT EXISTS `tuanzhang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `tuanzhang_name` varchar(200) DEFAULT NULL COMMENT '团长姓名 Search111 ',
  `tuanzhang_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `tuanzhang_phone` varchar(200) DEFAULT NULL COMMENT '团长手机号',
  `tuanzhang_id_number` varchar(200) DEFAULT NULL COMMENT '团长身份证号 ',
  `tuanzhang_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `tuanzhang_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='团长';

DELETE FROM `tuanzhang`;
INSERT INTO `tuanzhang` (`id`, `username`, `password`, `tuanzhang_name`, `tuanzhang_photo`, `tuanzhang_phone`, `tuanzhang_id_number`, `tuanzhang_email`, `sex_types`, `tuanzhang_delete`, `create_time`) VALUES
	(1, '团长1', '123456', '团长姓名1', 'http://localhost:8080/shetuanguanlixitong/upload/1645420140140.jpg', '17703786901', '410224199610232001', '1@qq.com', 2, 1, '2022-02-21 03:42:54'),
	(2, '团长2', '123456', '团长姓名2', 'http://localhost:8080/shetuanguanlixitong/upload/1645420132932.jpg', '17703786902', '410224199610232002', '2@qq.com', 2, 1, '2022-02-21 03:42:54'),
	(3, '团长3', '123456', '团长姓名3', 'http://localhost:8080/shetuanguanlixitong/upload/1645420116890.jpg', '17703786903', '410224199610232003', '3@qq.com', 1, 1, '2022-02-21 03:42:54');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-02-25 07:59:12');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '学生1', '123456', '学生姓名1', 'http://localhost:8080/shetuanguanlixitong/upload/touxiang1.jpg', '17703786901', '410224199610232001', '1@qq.com', 1, 1, '2022-02-21 03:42:54'),
	(2, '学生2', '123456', '学生姓名2', 'http://localhost:8080/shetuanguanlixitong/upload/touxiang2.jpg', '17703786902', '410224199610232002', '2@qq.com', 2, 1, '2022-02-21 03:42:54'),
	(3, '学生3', '123456', '学生姓名3', 'http://localhost:8080/shetuanguanlixitong/upload/touxiang3.jpg', '17703786903', '410224199610232003', '3@qq.com', 2, 1, '2022-02-21 03:42:54');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
