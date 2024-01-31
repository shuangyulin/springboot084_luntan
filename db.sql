/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot34t91
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot34t91` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot34t91`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619343107735 DEFAULT CHARSET=utf8 COMMENT='问题反馈';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-04-25 17:25:43',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (52,'2021-04-25 17:25:43',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (53,'2021-04-25 17:25:43',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (54,'2021-04-25 17:25:43',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (55,'2021-04-25 17:25:43',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (56,'2021-04-25 17:25:43',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619343089587,'2021-04-25 17:31:29',1619342933814,NULL,'测试',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619343107734,'2021-04-25 17:31:47',1619342933814,1,NULL,'测试111',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot34t91/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot34t91/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot34t91/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'picture4','http://localhost:8080/springboot34t91/upload/1619342883081.jpg');

/*Table structure for table `discussjiaoliuluntan` */

DROP TABLE IF EXISTS `discussjiaoliuluntan`;

CREATE TABLE `discussjiaoliuluntan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619343063137 DEFAULT CHARSET=utf8 COMMENT='交流论坛评论表';

/*Data for the table `discussjiaoliuluntan` */

insert  into `discussjiaoliuluntan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-04-25 17:25:43',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjiaoliuluntan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (82,'2021-04-25 17:25:43',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjiaoliuluntan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (83,'2021-04-25 17:25:43',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjiaoliuluntan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (84,'2021-04-25 17:25:43',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjiaoliuluntan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (85,'2021-04-25 17:25:43',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjiaoliuluntan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (86,'2021-04-25 17:25:43',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussjiaoliuluntan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619343063136,'2021-04-25 17:31:03',1619343020717,1619342933814,'1234','测试','你好');

/*Table structure for table `jiaoliuluntan` */

DROP TABLE IF EXISTS `jiaoliuluntan`;

CREATE TABLE `jiaoliuluntan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `luntanbiaoti` varchar(200) DEFAULT NULL COMMENT '论坛标题',
  `luntanfengmian` varchar(200) DEFAULT NULL COMMENT '论坛封面',
  `luntanfenlei` varchar(200) DEFAULT NULL COMMENT '论坛分类',
  `luntanjianjie` varchar(200) DEFAULT NULL COMMENT '论坛简介',
  `luntanneirong` longtext COMMENT '论坛内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619343020718 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `jiaoliuluntan` */

insert  into `jiaoliuluntan`(`id`,`addtime`,`luntanbiaoti`,`luntanfengmian`,`luntanfenlei`,`luntanjianjie`,`luntanneirong`,`fabushijian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (41,'2021-04-25 17:25:43','论坛标题1','http://localhost:8080/springboot34t91/upload/jiaoliuluntan_luntanfengmian1.jpg','论坛分类1','论坛简介1','论坛内容1','2021-04-25 17:25:43','用户账号1','用户姓名1','是','',1,1,'2021-04-25 17:25:43',1);
insert  into `jiaoliuluntan`(`id`,`addtime`,`luntanbiaoti`,`luntanfengmian`,`luntanfenlei`,`luntanjianjie`,`luntanneirong`,`fabushijian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (42,'2021-04-25 17:25:43','论坛标题2','http://localhost:8080/springboot34t91/upload/jiaoliuluntan_luntanfengmian2.jpg','论坛分类2','论坛简介2','论坛内容2','2021-04-25 17:25:43','用户账号2','用户姓名2','是','',2,2,'2021-04-25 17:25:43',2);
insert  into `jiaoliuluntan`(`id`,`addtime`,`luntanbiaoti`,`luntanfengmian`,`luntanfenlei`,`luntanjianjie`,`luntanneirong`,`fabushijian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (43,'2021-04-25 17:25:43','论坛标题3','http://localhost:8080/springboot34t91/upload/jiaoliuluntan_luntanfengmian3.jpg','论坛分类3','论坛简介3','论坛内容3','2021-04-25 17:25:43','用户账号3','用户姓名3','是','',3,3,'2021-04-25 17:25:43',3);
insert  into `jiaoliuluntan`(`id`,`addtime`,`luntanbiaoti`,`luntanfengmian`,`luntanfenlei`,`luntanjianjie`,`luntanneirong`,`fabushijian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (44,'2021-04-25 17:25:43','论坛标题4','http://localhost:8080/springboot34t91/upload/jiaoliuluntan_luntanfengmian4.jpg','论坛分类4','论坛简介4','论坛内容4','2021-04-25 17:25:43','用户账号4','用户姓名4','是','',4,4,'2021-04-25 17:25:43',4);
insert  into `jiaoliuluntan`(`id`,`addtime`,`luntanbiaoti`,`luntanfengmian`,`luntanfenlei`,`luntanjianjie`,`luntanneirong`,`fabushijian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (45,'2021-04-25 17:25:43','论坛标题5','http://localhost:8080/springboot34t91/upload/jiaoliuluntan_luntanfengmian5.jpg','论坛分类5','论坛简介5','论坛内容5','2021-04-25 17:25:43','用户账号5','用户姓名5','是','',5,5,'2021-04-25 17:25:43',5);
insert  into `jiaoliuluntan`(`id`,`addtime`,`luntanbiaoti`,`luntanfengmian`,`luntanfenlei`,`luntanjianjie`,`luntanneirong`,`fabushijian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (46,'2021-04-25 17:25:43','论坛标题6','http://localhost:8080/springboot34t91/upload/jiaoliuluntan_luntanfengmian6.jpg','论坛分类6','论坛简介6','论坛内容6','2021-04-25 17:25:43','用户账号6','用户姓名6','是','',6,6,'2021-04-25 17:25:43',6);
insert  into `jiaoliuluntan`(`id`,`addtime`,`luntanbiaoti`,`luntanfengmian`,`luntanfenlei`,`luntanjianjie`,`luntanneirong`,`fabushijian`,`yonghuzhanghao`,`yonghuxingming`,`sfsh`,`shhf`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (1619343020717,'2021-04-25 17:30:20','测试论坛','http://localhost:8080/springboot34t91/upload/1619342981196.jpg','测试类别','测试','<p>测试<img src=\"http://localhost:8080/springboot34t91/upload/1619342992733.jpg\"></p>','2021-04-25 17:29:47','1234','测试姓名','是',NULL,1,0,'2021-04-25 17:32:22',5);

/*Table structure for table `luntanleibie` */

DROP TABLE IF EXISTS `luntanleibie`;

CREATE TABLE `luntanleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `luntanleibie` varchar(200) DEFAULT NULL COMMENT '论坛类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619342868731 DEFAULT CHARSET=utf8 COMMENT='论坛类别';

/*Data for the table `luntanleibie` */

insert  into `luntanleibie`(`id`,`addtime`,`luntanleibie`) values (31,'2021-04-25 17:25:43','论坛类别1');
insert  into `luntanleibie`(`id`,`addtime`,`luntanleibie`) values (32,'2021-04-25 17:25:43','论坛类别2');
insert  into `luntanleibie`(`id`,`addtime`,`luntanleibie`) values (33,'2021-04-25 17:25:43','论坛类别3');
insert  into `luntanleibie`(`id`,`addtime`,`luntanleibie`) values (34,'2021-04-25 17:25:43','论坛类别4');
insert  into `luntanleibie`(`id`,`addtime`,`luntanleibie`) values (35,'2021-04-25 17:25:43','论坛类别5');
insert  into `luntanleibie`(`id`,`addtime`,`luntanleibie`) values (36,'2021-04-25 17:25:43','论坛类别6');
insert  into `luntanleibie`(`id`,`addtime`,`luntanleibie`) values (1619342868730,'2021-04-25 17:27:47','测试类别');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619342908913 DEFAULT CHARSET=utf8 COMMENT='系统资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (71,'2021-04-25 17:25:43','标题1','简介1','http://localhost:8080/springboot34t91/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (72,'2021-04-25 17:25:43','标题2','简介2','http://localhost:8080/springboot34t91/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (73,'2021-04-25 17:25:43','标题3','简介3','http://localhost:8080/springboot34t91/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (74,'2021-04-25 17:25:43','标题4','简介4','http://localhost:8080/springboot34t91/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (75,'2021-04-25 17:25:43','标题5','简介5','http://localhost:8080/springboot34t91/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (76,'2021-04-25 17:25:43','标题6','简介6','http://localhost:8080/springboot34t91/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619342908912,'2021-04-25 17:28:28','测试资讯','才认识','http://localhost:8080/springboot34t91/upload/1619342898380.jpg','<p>测试<img src=\"http://localhost:8080/springboot34t91/upload/1619342906630.jpg\"></p>');

/*Table structure for table `putongguanliyuan` */

DROP TABLE IF EXISTS `putongguanliyuan`;

CREATE TABLE `putongguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guanliyuanzhanghao` varchar(200) NOT NULL COMMENT '管理员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `guanliyuanxingming` varchar(200) DEFAULT NULL COMMENT '管理员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `guanliyuanzhanghao` (`guanliyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619342858957 DEFAULT CHARSET=utf8 COMMENT='普通管理员';

/*Data for the table `putongguanliyuan` */

insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`lianxidianhua`,`gerenzhaopian`) values (21,'2021-04-25 17:25:43','普通管理员1','123456','管理员姓名1','男','13823888881','http://localhost:8080/springboot34t91/upload/putongguanliyuan_gerenzhaopian1.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`lianxidianhua`,`gerenzhaopian`) values (22,'2021-04-25 17:25:43','普通管理员2','123456','管理员姓名2','男','13823888882','http://localhost:8080/springboot34t91/upload/putongguanliyuan_gerenzhaopian2.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`lianxidianhua`,`gerenzhaopian`) values (23,'2021-04-25 17:25:43','普通管理员3','123456','管理员姓名3','男','13823888883','http://localhost:8080/springboot34t91/upload/putongguanliyuan_gerenzhaopian3.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`lianxidianhua`,`gerenzhaopian`) values (24,'2021-04-25 17:25:43','普通管理员4','123456','管理员姓名4','男','13823888884','http://localhost:8080/springboot34t91/upload/putongguanliyuan_gerenzhaopian4.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`lianxidianhua`,`gerenzhaopian`) values (25,'2021-04-25 17:25:43','普通管理员5','123456','管理员姓名5','男','13823888885','http://localhost:8080/springboot34t91/upload/putongguanliyuan_gerenzhaopian5.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`lianxidianhua`,`gerenzhaopian`) values (26,'2021-04-25 17:25:43','普通管理员6','123456','管理员姓名6','男','13823888886','http://localhost:8080/springboot34t91/upload/putongguanliyuan_gerenzhaopian6.jpg');
insert  into `putongguanliyuan`(`id`,`addtime`,`guanliyuanzhanghao`,`mima`,`guanliyuanxingming`,`xingbie`,`lianxidianhua`,`gerenzhaopian`) values (1619342858956,'2021-04-25 17:27:38','123','123','测试管理员','女','12345678952','http://localhost:8080/springboot34t91/upload/1619342857888.jpg');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619343070931 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619343070930,'2021-04-25 17:31:10',1619342933814,1619343020717,'jiaoliuluntan','测试论坛','http://localhost:8080/springboot34t91/upload/1619342981196.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','clh72c49uuxo7s135ru1wuddiv22adm7','2021-04-25 17:26:46','2021-04-25 18:31:35');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'用户1','yonghu','用户','x14otm5w3juo77dwwbvapttnt9fo0dfc','2021-04-25 17:26:58','2021-04-25 18:26:58');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619342858956,'123','putongguanliyuan','普通管理员','rqmcqr5i359ek01mw0oyfuoiv62m9uvl','2021-04-25 17:28:35','2021-04-25 18:30:27');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1619342933814,'1234','yonghu','用户','c5pyj9miusci9v4mnmgn6cvhtuue2lpq','2021-04-25 17:28:59','2021-04-25 18:30:57');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-25 17:25:43');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `gerenzhaopian` varchar(200) DEFAULT NULL COMMENT '个人照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619342933815 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shoujihaoma`,`gerenzhaopian`) values (11,'2021-04-25 17:25:43','用户1','123456','用户姓名1','男','13823888881','http://localhost:8080/springboot34t91/upload/yonghu_gerenzhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shoujihaoma`,`gerenzhaopian`) values (12,'2021-04-25 17:25:43','用户2','123456','用户姓名2','男','13823888882','http://localhost:8080/springboot34t91/upload/yonghu_gerenzhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shoujihaoma`,`gerenzhaopian`) values (13,'2021-04-25 17:25:43','用户3','123456','用户姓名3','男','13823888883','http://localhost:8080/springboot34t91/upload/yonghu_gerenzhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shoujihaoma`,`gerenzhaopian`) values (14,'2021-04-25 17:25:43','用户4','123456','用户姓名4','男','13823888884','http://localhost:8080/springboot34t91/upload/yonghu_gerenzhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shoujihaoma`,`gerenzhaopian`) values (15,'2021-04-25 17:25:43','用户5','123456','用户姓名5','男','13823888885','http://localhost:8080/springboot34t91/upload/yonghu_gerenzhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shoujihaoma`,`gerenzhaopian`) values (16,'2021-04-25 17:25:43','用户6','123456','用户姓名6','男','13823888886','http://localhost:8080/springboot34t91/upload/yonghu_gerenzhaopian6.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`shoujihaoma`,`gerenzhaopian`) values (1619342933814,'2021-04-25 17:28:53','1234','1234','测试姓名','男','12345678907','http://localhost:8080/springboot34t91/upload/1619342969838.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
