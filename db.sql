/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmauewu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmauewu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmauewu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmauewu/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmauewu/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmauewu/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshiwuzhaoling` */

DROP TABLE IF EXISTS `discussshiwuzhaoling`;

CREATE TABLE `discussshiwuzhaoling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617885120804 DEFAULT CHARSET=utf8 COMMENT='失物招领评论表';

/*Data for the table `discussshiwuzhaoling` */

insert  into `discussshiwuzhaoling`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-04-08 20:23:51',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-04-08 20:23:51',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-04-08 20:23:51',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-04-08 20:23:51',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-04-08 20:23:51',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-04-08 20:23:51',6,6,'用户名6','评论内容6','回复内容6'),(1617885120803,'2021-04-08 20:32:00',1617884958402,1617885066275,'001','XXX','DDD');

/*Table structure for table `discusswupinguashi` */

DROP TABLE IF EXISTS `discusswupinguashi`;

CREATE TABLE `discusswupinguashi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617885310604 DEFAULT CHARSET=utf8 COMMENT='物品挂失评论表';

/*Data for the table `discusswupinguashi` */

insert  into `discusswupinguashi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-04-08 20:23:51',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-04-08 20:23:51',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-04-08 20:23:51',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-04-08 20:23:51',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-04-08 20:23:51',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-04-08 20:23:51',6,6,'用户名6','评论内容6','回复内容6'),(1617885310603,'2021-04-08 20:35:10',1617885237882,1617885066275,'001','XXXX所有人都可以评论的，不特意上其他账号演示了','CCCC');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617885283159 DEFAULT CHARSET=utf8 COMMENT='寻物论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (1617885273004,'2021-04-08 20:34:32','XXX','<p>可以在前台发布帖子，所有用户可以在前台论坛交流留言</p>',0,1617885066275,'001','开放');

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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='网站资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (71,'2021-04-08 20:23:51','XXX','可增删查改','http://localhost:8080/ssmauewu/upload/1617885019609.jpg','<p>编辑器可传图文<img src=\"http://localhost:8080/ssmauewu/upload/1617885031359.jpg\"></p>'),(72,'2021-04-08 20:23:51','标题2','简介2','http://localhost:8080/ssmauewu/upload/news_picture2.jpg','内容2'),(73,'2021-04-08 20:23:51','标题3','简介3','http://localhost:8080/ssmauewu/upload/news_picture3.jpg','内容3'),(74,'2021-04-08 20:23:51','标题4','简介4','http://localhost:8080/ssmauewu/upload/news_picture4.jpg','内容4'),(75,'2021-04-08 20:23:51','标题5','简介5','http://localhost:8080/ssmauewu/upload/news_picture5.jpg','内容5'),(76,'2021-04-08 20:23:51','标题6','简介6','http://localhost:8080/ssmauewu/upload/news_picture6.jpg','内容6');

/*Table structure for table `shiwurenling` */

DROP TABLE IF EXISTS `shiwurenling`;

CREATE TABLE `shiwurenling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiwubianhao` varchar(200) DEFAULT NULL COMMENT '失物编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghu` varchar(200) DEFAULT NULL COMMENT '用户',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `renlingshijian` datetime DEFAULT NULL COMMENT '认领时间',
  `renlingmiaoshu` longtext COMMENT '认领描述',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617885150671 DEFAULT CHARSET=utf8 COMMENT='失物认领';

/*Data for the table `shiwurenling` */

insert  into `shiwurenling`(`id`,`addtime`,`shiwubianhao`,`wupinmingcheng`,`wupinleixing`,`wupintupian`,`zhanghao`,`yonghu`,`shouji`,`renlingshijian`,`renlingmiaoshu`,`sfsh`,`shhf`) values (41,'2021-04-08 20:23:51','失物编号1','物品名称1','物品类型1','http://localhost:8080/ssmauewu/upload/shiwurenling_wupintupian1.jpg','账号1','用户1','手机1','2021-04-08 20:23:51','认领描述1','是',''),(42,'2021-04-08 20:23:51','失物编号2','物品名称2','物品类型2','http://localhost:8080/ssmauewu/upload/shiwurenling_wupintupian2.jpg','账号2','用户2','手机2','2021-04-08 20:23:51','认领描述2','是',''),(43,'2021-04-08 20:23:51','失物编号3','物品名称3','物品类型3','http://localhost:8080/ssmauewu/upload/shiwurenling_wupintupian3.jpg','账号3','用户3','手机3','2021-04-08 20:23:51','认领描述3','是',''),(44,'2021-04-08 20:23:51','失物编号4','物品名称4','物品类型4','http://localhost:8080/ssmauewu/upload/shiwurenling_wupintupian4.jpg','账号4','用户4','手机4','2021-04-08 20:23:51','认领描述4','是',''),(45,'2021-04-08 20:23:51','失物编号5','物品名称5','物品类型5','http://localhost:8080/ssmauewu/upload/shiwurenling_wupintupian5.jpg','账号5','用户5','手机5','2021-04-08 20:23:51','认领描述5','是',''),(46,'2021-04-08 20:23:51','失物编号6','物品名称6','物品类型6','http://localhost:8080/ssmauewu/upload/shiwurenling_wupintupian6.jpg','账号6','用户6','手机6','2021-04-08 20:23:51','认领描述6','是',''),(1617885150670,'2021-04-08 20:32:29','1617884910676','XXX手机','电子产品','http://localhost:8080/ssmauewu/upload/1617884925928.jpg','001','小李','13800000000','2021-04-08 20:32:07','<p>输入认领的根据之类的</p>','是','审核通过，请带上证件到XXX地方领取');

/*Table structure for table `shiwuzhaoling` */

DROP TABLE IF EXISTS `shiwuzhaoling`;

CREATE TABLE `shiwuzhaoling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiwubianhao` varchar(200) NOT NULL COMMENT '失物编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `shiyishijian` datetime DEFAULT NULL COMMENT '拾遗时间',
  `shiyididian` varchar(200) DEFAULT NULL COMMENT '拾遗地点',
  `wupinzhuangtai` varchar(200) DEFAULT NULL COMMENT '物品状态',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shiwubianhao` (`shiwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617884958403 DEFAULT CHARSET=utf8 COMMENT='失物招领';

/*Data for the table `shiwuzhaoling` */

insert  into `shiwuzhaoling`(`id`,`addtime`,`shiwubianhao`,`wupinmingcheng`,`wupinleixing`,`wupintupian`,`shiyishijian`,`shiyididian`,`wupinzhuangtai`,`xiangqing`) values (21,'2021-04-08 20:23:51','失物编号1','物品名称1','物品类型1','http://localhost:8080/ssmauewu/upload/shiwuzhaoling_wupintupian1.jpg','2021-04-08 20:23:51','拾遗地点1','待认领','详情1'),(22,'2021-04-08 20:23:51','失物编号2','物品名称2','物品类型2','http://localhost:8080/ssmauewu/upload/shiwuzhaoling_wupintupian2.jpg','2021-04-08 20:23:51','拾遗地点2','待认领','详情2'),(23,'2021-04-08 20:23:51','失物编号3','物品名称3','物品类型3','http://localhost:8080/ssmauewu/upload/shiwuzhaoling_wupintupian3.jpg','2021-04-08 20:23:51','拾遗地点3','待认领','详情3'),(24,'2021-04-08 20:23:51','失物编号4','物品名称4','物品类型4','http://localhost:8080/ssmauewu/upload/shiwuzhaoling_wupintupian4.jpg','2021-04-08 20:23:51','拾遗地点4','待认领','详情4'),(25,'2021-04-08 20:23:51','失物编号5','物品名称5','物品类型5','http://localhost:8080/ssmauewu/upload/shiwuzhaoling_wupintupian5.jpg','2021-04-08 20:23:51','拾遗地点5','待认领','详情5'),(26,'2021-04-08 20:23:51','失物编号6','物品名称6','物品类型6','http://localhost:8080/ssmauewu/upload/shiwuzhaoling_wupintupian6.jpg','2021-04-08 20:23:51','拾遗地点6','待认领','详情6'),(1617884958402,'2021-04-08 20:29:17','1617884910676','XXX手机','电子产品','http://localhost:8080/ssmauewu/upload/1617884925928.jpg','2021-04-07 00:00:00','XX饭堂','已认领','<p>编辑器可传图文<img src=\"http://localhost:8080/ssmauewu/upload/1617884956359.jpg\"></p>');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','6wy785643qoo94ky5qhv01otes8q0qw5','2021-04-08 20:26:00','2021-04-08 21:35:54'),(2,1617885066275,'001','yonghu','用户','gq81ymwu6h7zpjj7pnlkiz12gmkqxfy5','2021-04-08 20:31:13','2021-04-08 21:37:08');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-08 20:23:51');

/*Table structure for table `wupinguashi` */

DROP TABLE IF EXISTS `wupinguashi`;

CREATE TABLE `wupinguashi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  `wupintupian` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `yishishijian` datetime DEFAULT NULL COMMENT '遗失时间',
  `yishididian` varchar(200) DEFAULT NULL COMMENT '遗失地点',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yonghu` varchar(200) DEFAULT NULL COMMENT '用户',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yishixiangqing` longtext COMMENT '遗失详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617885237883 DEFAULT CHARSET=utf8 COMMENT='物品挂失';

/*Data for the table `wupinguashi` */

insert  into `wupinguashi`(`id`,`addtime`,`wupinmingcheng`,`wupinleixing`,`wupintupian`,`yishishijian`,`yishididian`,`zhanghao`,`yonghu`,`shouji`,`yishixiangqing`) values (51,'2021-04-08 20:23:51','物品名称1','物品类型1','http://localhost:8080/ssmauewu/upload/wupinguashi_wupintupian1.jpg','2021-04-08 20:23:51','遗失地点1','账号1','用户1','手机1','遗失详情1'),(52,'2021-04-08 20:23:51','物品名称2','物品类型2','http://localhost:8080/ssmauewu/upload/wupinguashi_wupintupian2.jpg','2021-04-08 20:23:51','遗失地点2','账号2','用户2','手机2','遗失详情2'),(53,'2021-04-08 20:23:51','物品名称3','物品类型3','http://localhost:8080/ssmauewu/upload/wupinguashi_wupintupian3.jpg','2021-04-08 20:23:51','遗失地点3','账号3','用户3','手机3','遗失详情3'),(54,'2021-04-08 20:23:51','物品名称4','物品类型4','http://localhost:8080/ssmauewu/upload/wupinguashi_wupintupian4.jpg','2021-04-08 20:23:51','遗失地点4','账号4','用户4','手机4','遗失详情4'),(55,'2021-04-08 20:23:51','物品名称5','物品类型5','http://localhost:8080/ssmauewu/upload/wupinguashi_wupintupian5.jpg','2021-04-08 20:23:51','遗失地点5','账号5','用户5','手机5','遗失详情5'),(56,'2021-04-08 20:23:51','物品名称6','物品类型6','http://localhost:8080/ssmauewu/upload/wupinguashi_wupintupian6.jpg','2021-04-08 20:23:51','遗失地点6','账号6','用户6','手机6','遗失详情6'),(1617885237882,'2021-04-08 20:33:57','XXXX简爱图书一本','图书','http://localhost:8080/ssmauewu/upload/1617885193622.jpg','2021-04-08 20:33:34','XX教学楼','001','小李','13800000000','<p>详细描述遗失详情，编辑器可传图文<img src=\"http://localhost:8080/ssmauewu/upload/1617885235888.jpg\"></p>');

/*Table structure for table `wupinleixing` */

DROP TABLE IF EXISTS `wupinleixing`;

CREATE TABLE `wupinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617884893587 DEFAULT CHARSET=utf8 COMMENT='物品类型';

/*Data for the table `wupinleixing` */

insert  into `wupinleixing`(`id`,`addtime`,`wupinleixing`) values (1617884872183,'2021-04-08 20:27:51','证件'),(1617884876846,'2021-04-08 20:27:56','图书'),(1617884885200,'2021-04-08 20:28:04','衣物'),(1617884893586,'2021-04-08 20:28:13','电子产品');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghu` varchar(200) NOT NULL COMMENT '用户',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617885066276 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`yonghu`,`xingbie`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-04-08 20:23:51','用户2','123456','用户2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmauewu/upload/yonghu_touxiang2.jpg'),(13,'2021-04-08 20:23:51','用户3','123456','用户3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmauewu/upload/yonghu_touxiang3.jpg'),(14,'2021-04-08 20:23:51','用户4','123456','用户4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmauewu/upload/yonghu_touxiang4.jpg'),(15,'2021-04-08 20:23:51','用户5','123456','用户5','女','13823888885','773890005@qq.com','http://localhost:8080/ssmauewu/upload/yonghu_touxiang5.jpg'),(16,'2021-04-08 20:23:51','用户6','123456','用户6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmauewu/upload/yonghu_touxiang6.jpg'),(1617885066275,'2021-04-08 20:31:06','001','001','小李','女','13800000000','138@qq.com','http://localhost:8080/ssmauewu/upload/1617885086092.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
