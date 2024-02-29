/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot05127
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot05127` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot05127`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot05127/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboot05127/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboot05127/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `daoshi` */

DROP TABLE IF EXISTS `daoshi`;

CREATE TABLE `daoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='导师';

/*Data for the table `daoshi` */

insert  into `daoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (21,'2021-05-11 10:26:22','1','1','教师姓名1','男','http://localhost:8080/springboot05127/upload/daoshi_touxiang1.jpg','773890001@qq.com','13823888881');
insert  into `daoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (22,'2021-05-11 10:26:22','导师2','123456','教师姓名2','男','http://localhost:8080/springboot05127/upload/daoshi_touxiang2.jpg','773890002@qq.com','13823888882');
insert  into `daoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (23,'2021-05-11 10:26:22','导师3','123456','教师姓名3','男','http://localhost:8080/springboot05127/upload/daoshi_touxiang3.jpg','773890003@qq.com','13823888883');
insert  into `daoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (24,'2021-05-11 10:26:22','导师4','123456','教师姓名4','男','http://localhost:8080/springboot05127/upload/daoshi_touxiang4.jpg','773890004@qq.com','13823888884');
insert  into `daoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (25,'2021-05-11 10:26:22','导师5','123456','教师姓名5','男','http://localhost:8080/springboot05127/upload/daoshi_touxiang5.jpg','773890005@qq.com','13823888885');
insert  into `daoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (26,'2021-05-11 10:26:22','导师6','123456','教师姓名6','男','http://localhost:8080/springboot05127/upload/daoshi_touxiang6.jpg','773890006@qq.com','13823888886');

/*Table structure for table `daoshixinxi` */

DROP TABLE IF EXISTS `daoshixinxi`;

CREATE TABLE `daoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `suojiaokemu` varchar(200) DEFAULT NULL COMMENT '所教科目',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `gerenjianjie` longtext COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='导师信息';

/*Data for the table `daoshixinxi` */

insert  into `daoshixinxi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`suojiaokemu`,`renshu`,`youxiang`,`dianhua`,`gerenjianjie`) values (31,'2021-05-11 10:26:22','工号1','教师姓名1','男','所教科目1',1,'邮箱1','电话1','个人简介1');
insert  into `daoshixinxi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`suojiaokemu`,`renshu`,`youxiang`,`dianhua`,`gerenjianjie`) values (32,'2021-05-11 10:26:22','工号2','教师姓名2','男','所教科目2',2,'邮箱2','电话2','个人简介2');
insert  into `daoshixinxi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`suojiaokemu`,`renshu`,`youxiang`,`dianhua`,`gerenjianjie`) values (33,'2021-05-11 10:26:22','工号3','教师姓名3','男','所教科目3',3,'邮箱3','电话3','个人简介3');
insert  into `daoshixinxi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`suojiaokemu`,`renshu`,`youxiang`,`dianhua`,`gerenjianjie`) values (34,'2021-05-11 10:26:22','工号4','教师姓名4','男','所教科目4',4,'邮箱4','电话4','个人简介4');
insert  into `daoshixinxi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`suojiaokemu`,`renshu`,`youxiang`,`dianhua`,`gerenjianjie`) values (35,'2021-05-11 10:26:22','工号5','教师姓名5','男','所教科目5',5,'邮箱5','电话5','个人简介5');
insert  into `daoshixinxi`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`xingbie`,`suojiaokemu`,`renshu`,`youxiang`,`dianhua`,`gerenjianjie`) values (36,'2021-05-11 10:26:22','工号6','教师姓名6','男','所教科目6',6,'邮箱6','电话6','个人简介6');

/*Table structure for table `daoshixuanze` */

DROP TABLE IF EXISTS `daoshixuanze`;

CREATE TABLE `daoshixuanze` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `xuanzeshijian` datetime DEFAULT NULL COMMENT '选择时间',
  `xuanzeneirong` longtext COMMENT '选择内容',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='导师选择';

/*Data for the table `daoshixuanze` */

insert  into `daoshixuanze`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`renshu`,`xuanzeshijian`,`xuanzeneirong`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (41,'2021-05-11 10:26:22','工号1','教师姓名1',1,'2021-05-11 10:26:22','选择内容1','学号1','学生姓名1','是','');
insert  into `daoshixuanze`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`renshu`,`xuanzeshijian`,`xuanzeneirong`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (42,'2021-05-11 10:26:22','工号2','教师姓名2',1,'2021-05-11 10:26:22','选择内容2','学号2','学生姓名2','是','');
insert  into `daoshixuanze`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`renshu`,`xuanzeshijian`,`xuanzeneirong`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (43,'2021-05-11 10:26:22','工号3','教师姓名3',1,'2021-05-11 10:26:22','选择内容3','学号3','学生姓名3','是','');
insert  into `daoshixuanze`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`renshu`,`xuanzeshijian`,`xuanzeneirong`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (44,'2021-05-11 10:26:22','工号4','教师姓名4',1,'2021-05-11 10:26:22','选择内容4','学号4','学生姓名4','是','');
insert  into `daoshixuanze`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`renshu`,`xuanzeshijian`,`xuanzeneirong`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (45,'2021-05-11 10:26:22','工号5','教师姓名5',1,'2021-05-11 10:26:22','选择内容5','学号5','学生姓名5','是','');
insert  into `daoshixuanze`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`renshu`,`xuanzeshijian`,`xuanzeneirong`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (46,'2021-05-11 10:26:22','工号6','教师姓名6',1,'2021-05-11 10:26:22','选择内容6','学号6','学生姓名6','是','');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','d7gychpb5pvut8wjf2g00qnsd7cxnx2v','2021-05-11 10:27:30','2021-05-11 11:27:30');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,21,'1','daoshi','导师','a0p3u41nvtq6kvloegynk5l8mk7duvoa','2021-05-11 10:27:50','2021-05-11 11:27:51');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-11 10:26:22');

/*Table structure for table `xiangmutijiao` */

DROP TABLE IF EXISTS `xiangmutijiao`;

CREATE TABLE `xiangmutijiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xiangmuwenjian` varchar(200) DEFAULT NULL COMMENT '项目文件',
  `xiangmuneirong` longtext COMMENT '项目内容',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='项目提交';

/*Data for the table `xiangmutijiao` */

insert  into `xiangmutijiao`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`gonghao`,`jiaoshixingming`,`xiangmuwenjian`,`xiangmuneirong`,`tijiaoshijian`,`xuehao`,`xueshengxingming`) values (61,'2021-05-11 10:26:22','项目编号1','项目名称1','工号1','教师姓名1','','项目内容1','2021-05-11 10:26:22','学号1','学生姓名1');
insert  into `xiangmutijiao`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`gonghao`,`jiaoshixingming`,`xiangmuwenjian`,`xiangmuneirong`,`tijiaoshijian`,`xuehao`,`xueshengxingming`) values (62,'2021-05-11 10:26:22','项目编号2','项目名称2','工号2','教师姓名2','','项目内容2','2021-05-11 10:26:22','学号2','学生姓名2');
insert  into `xiangmutijiao`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`gonghao`,`jiaoshixingming`,`xiangmuwenjian`,`xiangmuneirong`,`tijiaoshijian`,`xuehao`,`xueshengxingming`) values (63,'2021-05-11 10:26:22','项目编号3','项目名称3','工号3','教师姓名3','','项目内容3','2021-05-11 10:26:22','学号3','学生姓名3');
insert  into `xiangmutijiao`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`gonghao`,`jiaoshixingming`,`xiangmuwenjian`,`xiangmuneirong`,`tijiaoshijian`,`xuehao`,`xueshengxingming`) values (64,'2021-05-11 10:26:22','项目编号4','项目名称4','工号4','教师姓名4','','项目内容4','2021-05-11 10:26:22','学号4','学生姓名4');
insert  into `xiangmutijiao`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`gonghao`,`jiaoshixingming`,`xiangmuwenjian`,`xiangmuneirong`,`tijiaoshijian`,`xuehao`,`xueshengxingming`) values (65,'2021-05-11 10:26:22','项目编号5','项目名称5','工号5','教师姓名5','','项目内容5','2021-05-11 10:26:22','学号5','学生姓名5');
insert  into `xiangmutijiao`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`gonghao`,`jiaoshixingming`,`xiangmuwenjian`,`xiangmuneirong`,`tijiaoshijian`,`xuehao`,`xueshengxingming`) values (66,'2021-05-11 10:26:22','项目编号6','项目名称6','工号6','教师姓名6','','项目内容6','2021-05-11 10:26:22','学号6','学生姓名6');

/*Table structure for table `xiangmuxinxi` */

DROP TABLE IF EXISTS `xiangmuxinxi`;

CREATE TABLE `xiangmuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) NOT NULL COMMENT '项目名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xiangmuyaoqiu` longtext COMMENT '项目要求',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiangmubianhao` (`xiangmubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='项目信息';

/*Data for the table `xiangmuxinxi` */

insert  into `xiangmuxinxi`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`xiangmuyaoqiu`,`fujian`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (51,'2021-05-11 10:26:22','项目编号1','项目名称1','学号1','学生姓名1','项目要求1','','2021-05-11 10:26:22','工号1','教师姓名1');
insert  into `xiangmuxinxi`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`xiangmuyaoqiu`,`fujian`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (52,'2021-05-11 10:26:22','项目编号2','项目名称2','学号2','学生姓名2','项目要求2','','2021-05-11 10:26:22','工号2','教师姓名2');
insert  into `xiangmuxinxi`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`xiangmuyaoqiu`,`fujian`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (53,'2021-05-11 10:26:22','项目编号3','项目名称3','学号3','学生姓名3','项目要求3','','2021-05-11 10:26:22','工号3','教师姓名3');
insert  into `xiangmuxinxi`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`xiangmuyaoqiu`,`fujian`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (54,'2021-05-11 10:26:22','项目编号4','项目名称4','学号4','学生姓名4','项目要求4','','2021-05-11 10:26:22','工号4','教师姓名4');
insert  into `xiangmuxinxi`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`xiangmuyaoqiu`,`fujian`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (55,'2021-05-11 10:26:22','项目编号5','项目名称5','学号5','学生姓名5','项目要求5','','2021-05-11 10:26:22','工号5','教师姓名5');
insert  into `xiangmuxinxi`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`xiangmuyaoqiu`,`fujian`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (56,'2021-05-11 10:26:22','项目编号6','项目名称6','学号6','学生姓名6','项目要求6','','2021-05-11 10:26:22','工号6','教师姓名6');

/*Table structure for table `xueyuan` */

DROP TABLE IF EXISTS `xueyuan`;

CREATE TABLE `xueyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学员';

/*Data for the table `xueyuan` */

insert  into `xueyuan`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (11,'2021-05-11 10:26:22','1','1','学生姓名1','男','http://localhost:8080/springboot05127/upload/xueyuan_touxiang1.jpg','13823888881','773890001@qq.com');
insert  into `xueyuan`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (12,'2021-05-11 10:26:22','学员2','123456','学生姓名2','男','http://localhost:8080/springboot05127/upload/xueyuan_touxiang2.jpg','13823888882','773890002@qq.com');
insert  into `xueyuan`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (13,'2021-05-11 10:26:22','学员3','123456','学生姓名3','男','http://localhost:8080/springboot05127/upload/xueyuan_touxiang3.jpg','13823888883','773890003@qq.com');
insert  into `xueyuan`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (14,'2021-05-11 10:26:22','学员4','123456','学生姓名4','男','http://localhost:8080/springboot05127/upload/xueyuan_touxiang4.jpg','13823888884','773890004@qq.com');
insert  into `xueyuan`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (15,'2021-05-11 10:26:22','学员5','123456','学生姓名5','男','http://localhost:8080/springboot05127/upload/xueyuan_touxiang5.jpg','13823888885','773890005@qq.com');
insert  into `xueyuan`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`) values (16,'2021-05-11 10:26:22','学员6','123456','学生姓名6','男','http://localhost:8080/springboot05127/upload/xueyuan_touxiang6.jpg','13823888886','773890006@qq.com');

/*Table structure for table `zhidaoxiangmu` */

DROP TABLE IF EXISTS `zhidaoxiangmu`;

CREATE TABLE `zhidaoxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `cunzaiwenti` longtext COMMENT '存在问题',
  `xiangmudianping` longtext COMMENT '项目点评',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='指导项目';

/*Data for the table `zhidaoxiangmu` */

insert  into `zhidaoxiangmu`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`cunzaiwenti`,`xiangmudianping`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (71,'2021-05-11 10:26:22','项目编号1','项目名称1','学号1','学生姓名1','存在问题1','项目点评1','2021-05-11 10:26:22','工号1','教师姓名1');
insert  into `zhidaoxiangmu`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`cunzaiwenti`,`xiangmudianping`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (72,'2021-05-11 10:26:22','项目编号2','项目名称2','学号2','学生姓名2','存在问题2','项目点评2','2021-05-11 10:26:22','工号2','教师姓名2');
insert  into `zhidaoxiangmu`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`cunzaiwenti`,`xiangmudianping`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (73,'2021-05-11 10:26:22','项目编号3','项目名称3','学号3','学生姓名3','存在问题3','项目点评3','2021-05-11 10:26:22','工号3','教师姓名3');
insert  into `zhidaoxiangmu`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`cunzaiwenti`,`xiangmudianping`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (74,'2021-05-11 10:26:22','项目编号4','项目名称4','学号4','学生姓名4','存在问题4','项目点评4','2021-05-11 10:26:22','工号4','教师姓名4');
insert  into `zhidaoxiangmu`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`cunzaiwenti`,`xiangmudianping`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (75,'2021-05-11 10:26:22','项目编号5','项目名称5','学号5','学生姓名5','存在问题5','项目点评5','2021-05-11 10:26:22','工号5','教师姓名5');
insert  into `zhidaoxiangmu`(`id`,`addtime`,`xiangmubianhao`,`xiangmumingcheng`,`xuehao`,`xueshengxingming`,`cunzaiwenti`,`xiangmudianping`,`fabushijian`,`gonghao`,`jiaoshixingming`) values (76,'2021-05-11 10:26:22','项目编号6','项目名称6','学号6','学生姓名6','存在问题6','项目点评6','2021-05-11 10:26:22','工号6','教师姓名6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
