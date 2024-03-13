/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaojiaoshidianzimingpian
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaojiaoshidianzimingpian` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaojiaoshidianzimingpian`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-18 15:16:37'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-18 15:16:37'),(3,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-18 15:16:37'),(4,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-18 15:16:37'),(5,'shangxia_types','是否展示',1,'展示',NULL,NULL,'2022-04-18 15:16:37'),(6,'shangxia_types','是否展示',2,'不展示',NULL,NULL,'2022-04-18 15:16:37'),(7,'zhiwu_types','职务',1,'职务1',NULL,NULL,'2022-04-18 15:16:37'),(8,'zhiwu_types','职务',2,'职务2',NULL,NULL,'2022-04-18 15:16:37'),(9,'zhiwu_types','职务',3,'职务3',NULL,NULL,'2022-04-18 15:16:37'),(10,'xueyuan_types','学院',1,'学院1',NULL,NULL,'2022-04-18 15:16:37'),(11,'xueyuan_types','学院',2,'学院2',NULL,NULL,'2022-04-18 15:16:37'),(12,'xueyuan_types','学院',3,'学院3',NULL,NULL,'2022-04-18 15:16:37'),(13,'bangongshi_types','办公室',1,'办公室1',NULL,NULL,'2022-04-18 15:16:37'),(14,'bangongshi_types','办公室',2,'办公室2',NULL,NULL,'2022-04-18 15:16:37'),(15,'bangongshi_types','办公室',3,'办公室3',NULL,NULL,'2022-04-18 15:16:37'),(16,'kecheng_types','课程',1,'语文',NULL,NULL,'2022-04-18 15:16:37'),(17,'kecheng_types','课程',2,'数学',NULL,NULL,'2022-04-18 15:16:37'),(18,'kecheng_types','课程',3,'英语',NULL,NULL,'2022-04-18 15:16:37'),(19,'mingpian_types','名片类型',1,'名片类型1',NULL,NULL,'2022-04-18 15:16:37'),(20,'mingpian_types','名片类型',2,'名片类型2',NULL,NULL,'2022-04-18 15:16:37'),(21,'mingpian_types','名片类型',3,'名片类型3',NULL,NULL,'2022-04-18 15:16:37'),(22,'mingpian_types','名片类型',4,'名片类型4',NULL,NULL,'2022-04-18 15:16:37'),(23,'mingpian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-18 15:16:37'),(24,'shangxia_types','是否展示',1,'展示',NULL,NULL,'2022-04-18 15:16:37'),(25,'shangxia_types','是否展示',2,'不展示',NULL,NULL,'2022-04-18 15:16:37'),(26,'keyanchengguo_types','科研成果类型',1,'科研成果类型1',NULL,NULL,'2022-04-18 15:16:37'),(27,'keyanchengguo_types','科研成果类型',2,'科研成果类型2',NULL,NULL,'2022-04-18 15:16:37'),(28,'keyanchengguo_types','科研成果类型',3,'科研成果类型3',NULL,NULL,'2022-04-18 15:16:37'),(29,'keyanchengguo_types','科研成果类型',4,'科研成果类型4',NULL,NULL,'2022-04-18 15:16:38'),(30,'keyanchengguo_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-18 15:16:38'),(31,'zhiwu_types','职务',4,'职务4',NULL,'','2022-04-18 16:10:06');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/gonggao1.jpg',2,'2022-04-18 15:18:16','公告详情1','2022-04-18 15:18:16'),(2,'公告名称2','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/gonggao2.jpg',1,'2022-04-18 15:18:16','公告详情2','2022-04-18 15:18:16'),(3,'公告名称3','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/gonggao3.jpg',1,'2022-04-18 15:18:16','公告详情3','2022-04-18 15:18:16'),(4,'公告名称4','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/gonggao4.jpg',1,'2022-04-18 15:18:16','公告详情4','2022-04-18 15:18:16'),(5,'公告名称5','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/gonggao5.jpg',1,'2022-04-18 15:18:16','公告详情5','2022-04-18 15:18:16');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '教师编号 Search111 ',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '教师身份证号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_uuid_number`,`jiaoshi_name`,`jiaoshi_phone`,`jiaoshi_id_number`,`jiaoshi_photo`,`sex_types`,`jiaoshi_email`,`create_time`) values (1,'a1','123456','165026629674120','教师姓名1','17703786901','410224199610232001','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/jiaoshi1.jpg',2,'1@qq.com','2022-04-18 15:18:16'),(2,'a2','123456','16502662967414','教师姓名2','17703786902','410224199610232002','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/jiaoshi2.jpg',2,'2@qq.com','2022-04-18 15:18:16'),(3,'a3','123456','16502662967415','教师姓名3','17703786903','410224199610232003','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/jiaoshi3.jpg',1,'3@qq.com','2022-04-18 15:18:16');

/*Table structure for table `keyanchengguo` */

DROP TABLE IF EXISTS `keyanchengguo`;

CREATE TABLE `keyanchengguo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `keyanchengguo_name` varchar(200) DEFAULT NULL COMMENT '科研成果名称  Search111 ',
  `keyanchengguo_uuid_number` varchar(200) DEFAULT NULL COMMENT '科研成果编号 Search111 ',
  `keyanchengguo_file` varchar(200) DEFAULT NULL COMMENT '科研成果相关文件',
  `keyanchengguo_photo` varchar(200) DEFAULT NULL COMMENT '科研成果照片',
  `keyanchengguo_types` int(11) DEFAULT NULL COMMENT '科研成果类型 Search111',
  `keyanchengguo_clicknum` int(11) DEFAULT NULL COMMENT '科研成果热度 ',
  `keyanchengguo_content` text COMMENT '科研成果详细介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否展示',
  `keyanchengguo_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='科研成果';

/*Data for the table `keyanchengguo` */

insert  into `keyanchengguo`(`id`,`jiaoshi_id`,`keyanchengguo_name`,`keyanchengguo_uuid_number`,`keyanchengguo_file`,`keyanchengguo_photo`,`keyanchengguo_types`,`keyanchengguo_clicknum`,`keyanchengguo_content`,`shangxia_types`,`keyanchengguo_delete`,`create_time`) values (1,2,'科研成果名称1','16502662967289','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng1.jpg',4,372,'科研成果详细介绍1',1,1,'2022-04-18 15:18:16'),(2,3,'科研成果名称2','165026629672810','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng2.jpg',1,265,'科研成果详细介绍2',1,2,'2022-04-18 15:18:16'),(3,1,'科研成果名称3','16502662967288','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng3.jpg',4,240,'科研成果详细介绍3',1,1,'2022-04-18 15:18:16'),(4,1,'科研成果名称4','16502662967285','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng1.jpg',1,383,'科研成果详细介绍4',1,2,'2022-04-18 15:18:16'),(5,3,'科研成果名称5','16502662967293','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng2.jpg',1,430,'科研成果详细介绍5',1,1,'2022-04-18 15:18:16'),(6,1,'成果111','1650269621948','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/1650269631941.rar','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/1650269635494.jpg',3,1,'<p>的经历了丧</p>',1,1,'2022-04-18 16:14:00');

/*Table structure for table `keyanchengguo_collection` */

DROP TABLE IF EXISTS `keyanchengguo_collection`;

CREATE TABLE `keyanchengguo_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keyanchengguo_id` int(11) DEFAULT NULL COMMENT '科研成果',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `keyanchengguo_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='科研成果收藏';

/*Data for the table `keyanchengguo_collection` */

insert  into `keyanchengguo_collection`(`id`,`keyanchengguo_id`,`xuesheng_id`,`keyanchengguo_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-04-18 15:18:16','2022-04-18 15:18:16'),(2,2,2,1,'2022-04-18 15:18:16','2022-04-18 15:18:16'),(3,3,2,1,'2022-04-18 15:18:16','2022-04-18 15:18:16'),(4,4,3,1,'2022-04-18 15:18:16','2022-04-18 15:18:16'),(5,5,3,1,'2022-04-18 15:18:16','2022-04-18 15:18:16'),(6,5,1,1,'2022-04-18 16:08:33','2022-04-18 16:08:33');

/*Table structure for table `mingpian` */

DROP TABLE IF EXISTS `mingpian`;

CREATE TABLE `mingpian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `mingpian_name` varchar(200) DEFAULT NULL COMMENT '名片名称  Search111 ',
  `mingpian_uuid_number` varchar(200) DEFAULT NULL COMMENT '名片编号',
  `mingpian_xingming` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `mingpian_phone` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `mingpian_file` varchar(200) DEFAULT NULL COMMENT '名片文件',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `zhiwu_types` int(11) DEFAULT NULL COMMENT '职务 Search111',
  `mingpian_photo` varchar(200) DEFAULT NULL COMMENT '名片照片',
  `mingpian_types` int(11) DEFAULT NULL COMMENT '名片类型 Search111',
  `xueyuan_types` int(11) DEFAULT NULL COMMENT '学院 Search111',
  `bangongshi_types` int(11) DEFAULT NULL COMMENT '办公室 Search111',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '主修课程 Search111',
  `mingpian_clicknum` int(11) DEFAULT NULL COMMENT '名片热度 ',
  `mingpian_content` text COMMENT '名片详细介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否展示',
  `mingpian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='名片';

/*Data for the table `mingpian` */

insert  into `mingpian`(`id`,`jiaoshi_id`,`mingpian_name`,`mingpian_uuid_number`,`mingpian_xingming`,`mingpian_phone`,`mingpian_file`,`sex_types`,`zhiwu_types`,`mingpian_photo`,`mingpian_types`,`xueyuan_types`,`bangongshi_types`,`kecheng_types`,`mingpian_clicknum`,`mingpian_content`,`shangxia_types`,`mingpian_delete`,`create_time`) values (1,1,'名片名称1','16502662967348','姓名1','17703786901','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar',1,1,'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng1.jpg',1,1,1,2,459,'名片详细介绍1',1,2,'2022-04-18 15:18:16'),(2,1,'名片名称2','165026629673418','姓名2','17703786902','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar',2,3,'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng2.jpg',3,2,2,3,248,'名片详细介绍2',1,2,'2022-04-18 15:18:16'),(3,1,'名片名称3','16502662967348','姓名3','17703786903','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar',2,1,'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng3.jpg',1,2,1,3,193,'名片详细介绍3',1,1,'2022-04-18 15:18:16'),(5,3,'名片名称5','16502662967354','姓名5','17703786905','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/file.rar',1,2,'http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng2.jpg',1,1,3,2,369,'名片详细介绍5',1,1,'2022-04-18 15:18:16');

/*Table structure for table `mingpian_collection` */

DROP TABLE IF EXISTS `mingpian_collection`;

CREATE TABLE `mingpian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mingpian_id` int(11) DEFAULT NULL COMMENT '名片',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `mingpian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='名片收藏';

/*Data for the table `mingpian_collection` */

insert  into `mingpian_collection`(`id`,`mingpian_id`,`xuesheng_id`,`mingpian_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2022-04-18 15:18:16','2022-04-18 15:18:16'),(2,2,2,1,'2022-04-18 15:18:16','2022-04-18 15:18:16'),(3,3,1,1,'2022-04-18 15:18:16','2022-04-18 15:18:16'),(4,4,3,1,'2022-04-18 15:18:16','2022-04-18 15:18:16'),(5,5,3,1,'2022-04-18 15:18:16','2022-04-18 15:18:16'),(6,5,1,1,'2022-04-18 16:08:46','2022-04-18 16:08:46');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','pwh7d6neo02w4ma8bjfmqnrctsyu6bgd','2022-04-18 15:39:25','2022-04-18 17:24:50'),(2,1,'a1','xuesheng','学生','0bfe61ane5kwhnlsm1xirgi8nzmcdzze','2022-04-18 16:05:29','2022-04-18 17:15:15'),(3,1,'a1','jiaoshi','教师','1qz6vecy3hfqi98ml7cisbbjqtyqoyjg','2022-04-18 16:13:27','2022-04-18 17:13:27');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_uuid_number`,`xuesheng_name`,`xuesheng_phone`,`xuesheng_id_number`,`xuesheng_photo`,`sex_types`,`xuesheng_email`,`create_time`) values (1,'a1','123456','16502662967409','学生姓名1','17703786901','410224199610232001','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng1.jpg',2,'1@qq.com','2022-04-18 15:18:16'),(2,'a2','123456','16502662967404','学生姓名2','17703786902','410224199610232002','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng2.jpg',2,'2@qq.com','2022-04-18 15:18:16'),(3,'a3','123456','165026629674013','学生姓名3','17703786903','410224199610232003','http://localhost:8080/gaoxiaojiaoshidianzimingpian/upload/xuesheng3.jpg',1,'3@qq.com','2022-04-18 15:18:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
