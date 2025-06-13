/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.19 : Database - x-mall
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`x-mall` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `x-mall`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `link_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人',
  `link_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系地址',
  `link_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `user_id` bigint DEFAULT NULL COMMENT '所属用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`link_user`,`link_address`,`link_phone`,`user_id`) values 
(1,'哈喽','北京市前门大街120号','13909768928',21),
(3,'夹克','合肥','13099887799',22),
(4,'哈哈哈','南京','13988776655',21),
(5,'xxxx','xxxxx','15073171174',11);

/*Table structure for table `banner` */

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片地址',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='轮播图';

/*Data for the table `banner` */

insert  into `banner`(`id`,`img`,`url`) values 
(1,'http://localhost:9999/files/1670289841331','http://www.dangdang.com'),
(2,'http://localhost:9999/files/1670289829754','http://www.jd.com'),
(3,'http://localhost:9999/files/1670289821165','http://www.baidu.com');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `goods_id` bigint DEFAULT NULL COMMENT '商品id',
  `user_id` bigint DEFAULT NULL COMMENT '用户id',
  `count` int DEFAULT NULL COMMENT '商品数量',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '加入时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `goods_user` (`goods_id`,`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='购物车';

/*Data for the table `cart` */

insert  into `cart`(`id`,`goods_id`,`user_id`,`count`,`create_time`) values 
(4,4,22,3,'2022-02-16 21:03:53'),
(5,1,21,1,'2022-03-04 22:08:00');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类名称',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品分类';

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`no`) values 
(1,'童书','1001'),
(2,'心理/励志','1002'),
(3,'历史文化','1003'),
(4,'小说','1004'),
(5,'文学','1005');

/*Table structure for table `collect` */

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `goods_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品图片',
  `goods_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品id',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户id',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='收藏表';

/*Data for the table `collect` */

insert  into `collect`(`id`,`goods_name`,`goods_img`,`goods_id`,`user_id`,`create_time`) values 
(1,'希望之线（东野圭吾新代表作，高分作品TOP5！）','http://localhost:9999/files/1622098971802','1','21','2021-06-02 16:37:32'),
(2,'艺术是什么：极简西方美术史','http://localhost:9999/files/1622092120531','5','21','2021-06-06 22:33:16'),
(3,'独立思考：谁在影响谁','http://localhost:9999/files/1622092102515','3','22','2022-02-16 20:55:20'),
(4,'文城（余华新书，时隔8年重磅归来，《活着》之后又一精彩力作！）','http://localhost:9999/files/1622092112546','4','11','2022-03-04 22:09:04'),
(5,'希望之线（东野圭吾新代表作，高分作品TOP5！）','http://localhost:9999/files/1622098971802','1','11','2022-12-06 09:33:49');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品名称',
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品描述',
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ISBN',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出版社',
  `publish_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出版时间',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品编号',
  `price` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `discount` double(10,2) DEFAULT NULL COMMENT '折扣',
  `store` int DEFAULT NULL COMMENT '库存',
  `praise` int DEFAULT '0' COMMENT '点赞数',
  `sales` int DEFAULT '0' COMMENT '销量',
  `category_id` bigint DEFAULT NULL COMMENT '分类id',
  `imgs` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品图片',
  `create_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `recommend` tinyint(1) DEFAULT NULL COMMENT '是否推荐：0不推荐，1推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='商品';

/*Data for the table `goods` */

insert  into `goods`(`id`,`name`,`description`,`isbn`,`publisher`,`publish_time`,`no`,`price`,`discount`,`store`,`praise`,`sales`,`category_id`,`imgs`,`create_time`,`recommend`) values 
(1,'希望之线（东野圭吾新代表作，高分作品TOP5！）','《白夜行》《嫌疑人X的献身》《解忧杂货店》《恶意》后，豆瓣东野圭吾第五高分新作！好看到爆炸的人情推理长篇。上市首周登顶日本畅销书总榜，周刊文春推理榜年度推荐。',
'9787544262705','南海出版公司','2021年04月','g1001',35.00,0.90,996,4,4,1,'[\"http://localhost:9999/files/1622098971802\",\"http://localhost:9999/files/1622098971804\",\"http://localhost:9999/files/1622098971807\"]',NULL,1),
(2,'Apple 苹果 iPhone 11 全网通手机','iPhone 11 全网通手机',NULL,NULL,NULL,'g1002',4569.00,1.00,97,0,3,4,'[\"http://localhost:9999/files/1622091526177\"]',NULL,1),
(3,'独立思考：谁在影响谁','独立思考是获取自由与成功的*重要能力之一，是终身学习的践行核心，本系列书籍已经影响10,000,000人投入学习、阅读和践行',
'9787520208154','中国大百科全书出版社','2021年04月','g1002',49.00,0.50,97,0,3,1,'[\"http://localhost:9999/files/1622092102515\"]','2021-05-26 07:32:22',1),
(4,'文城（余华新书，时隔8年重磅归来，《活着》之后又一精彩力作！）','余华时隔8年重磅新作！写《活着》的余华又回来了！人生就是自己的往事和他人的序章。关于一个人和他一生的寻找，以及一群人和一个汹涌的年代。精彩过瘾，不负等待！易烊千玺挚爱作家。限量赠送余华珍藏生肖漫画！',
'9787530221099','北京十月文艺出版社','2021年03月','g1004',39.50,0.90,994,0,6,1,'[\"http://localhost:9999/files/1622092112546\"]','2021-05-26 07:46:19',1),
(5,'艺术是什么：极简西方美术史','B站27万人喜欢上的西方美术史课',
'9787558618031','上海人民美术出版社'',2021年04月','g1006',80.00,0.47,998,0,2,1,'[\"http://localhost:9999/files/1622092120531\"]','2021-05-26 07:48:45',1),
(6,'1','1',NULL,NULL,NULL,'1',1.00,1.00,1,0,0,1,'[\"http://localhost:9999/files/1633960102356\"]','2021-10-11 21:48:25',NULL),
(7,'1','1',NULL,NULL,NULL,'1',1.00,1.00,0,0,1,1,'[\"http://localhost:9999/files/1633960102356\"]','2021-10-11 21:48:25',NULL),
(8,'1','1',NULL,NULL,NULL,'1',1.00,1.00,1,0,0,1,'[\"http://localhost:9999/files/1633960102356\"]','2021-10-11 21:48:25',NULL),
(9,'1','1',NULL,NULL,NULL,'1',1.00,1.00,1,0,0,1,'[\"http://localhost:9999/files/1633960102356\"]','2021-10-11 21:48:25',NULL),
(10,'1','1',NULL,NULL,NULL,'1',1.00,1.00,1,0,0,1,'[\"http://localhost:9999/files/1633960102356\"]','2021-10-11 21:48:25',NULL),
(11,'1','1',NULL,NULL,NULL,'1',1.00,1.00,1,0,0,1,'[\"http://localhost:9999/files/1633960102356\"]','2021-10-11 21:48:25',NULL),
(12,'1','1',NULL,NULL,NULL,'1',1.00,1.00,1,0,0,1,'[\"http://localhost:9999/files/1633960102356\"]','2021-10-11 21:48:25',NULL),
(13,'1','1',NULL,NULL,NULL,'1',1.00,1.00,1,0,0,1,'[\"http://localhost:9999/files/1633960102356\"]','2021-10-11 21:48:25',NULL),
(14,'1','1',NULL,NULL,NULL,'1',1.00,1.00,1,0,0,1,'[\"http://localhost:9999/files/1633960102356\"]','2021-10-11 21:48:25',NULL);

/*Table structure for table `order_goods` */

DROP TABLE IF EXISTS `order_goods`;

CREATE TABLE `order_goods` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_id` bigint DEFAULT NULL COMMENT '订单id',
  `goods_id` bigint DEFAULT NULL COMMENT '商品id',
  `count` int DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='订单商品关系表';

/*Data for the table `order_goods` */

insert  into `order_goods`(`id`,`order_id`,`goods_id`,`count`) values 
(1,1,1,4),
(2,1,3,2),
(3,2,1,4),
(4,2,3,2),
(5,4,2,5),
(6,5,1,1),
(7,6,2,1),
(8,7,4,4),
(9,7,5,2),
(10,8,2,2),
(11,8,3,2),
(12,8,4,1),
(13,9,1,1),
(14,10,3,1),
(15,10,7,1),
(16,11,1,1),
(17,12,4,1),
(18,12,1,1);

/*Table structure for table `t_log` */

DROP TABLE IF EXISTS `t_log`;

CREATE TABLE `t_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作人',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `t_log` */

insert  into `t_log`(`id`,`content`,`time`,`user`,`ip`) values 
(6,'用户 hello 登录系统','2021-05-13 23:39:25','hello','0:0:0:0:0:0:0:1'),
(7,'用户 hello 登录系统','2021-05-13 23:49:54','hello','0:0:0:0:0:0:0:1'),
(8,'用户 hello 登录系统','2021-05-13 23:50:01','hello','0:0:0:0:0:0:0:1'),
(9,'用户 hello 登录系统','2021-05-13 23:50:27','hello','0:0:0:0:0:0:0:1'),
(10,'更新用户：hello ','2021-05-14 00:00:41','hello','0:0:0:0:0:0:0:1'),
(11,'更新角色：超级管理员','2021-05-14 12:54:15','admin','0:0:0:0:0:0:0:1'),
(12,'更新角色：超级管理员','2021-05-14 12:55:10','admin','0:0:0:0:0:0:0:1'),
(13,'更新角色：超级管理员','2021-05-14 12:55:12','admin','0:0:0:0:0:0:0:1'),
(14,'更新角色：普通用户','2021-05-14 12:55:16','admin','0:0:0:0:0:0:0:1'),
(15,'更新角色：普通用户','2021-05-14 12:55:18','admin','0:0:0:0:0:0:0:1'),
(16,'更新角色：超级管理员','2021-05-14 12:58:57','admin','0:0:0:0:0:0:0:1'),
(17,'更新角色：超级管理员','2021-05-14 12:59:00','admin','0:0:0:0:0:0:0:1'),
(18,'更新角色：超级管理员','2021-05-14 12:59:21','admin','0:0:0:0:0:0:0:1'),
(19,'更新角色：超级管理员','2021-05-14 13:01:13','admin','0:0:0:0:0:0:0:1'),
(20,'更新角色：超级管理员','2021-05-14 13:01:15','admin','0:0:0:0:0:0:0:1'),
(21,'更新角色：超级管理员','2021-05-14 13:01:16','admin','0:0:0:0:0:0:0:1'),
(22,'更新角色：超级管理员','2021-05-14 13:01:17','admin','0:0:0:0:0:0:0:1'),
(23,'更新角色：超级管理员','2021-05-14 13:08:11','admin','0:0:0:0:0:0:0:1'),
(24,'更新角色：超级管理员','2021-05-14 13:09:30','admin','0:0:0:0:0:0:0:1'),
(25,'更新角色：超级管理员','2021-05-14 13:09:32','admin','0:0:0:0:0:0:0:1'),
(26,'更新角色：超级管理员','2021-05-14 13:09:33','admin','0:0:0:0:0:0:0:1'),
(27,'更新角色：超级管理员','2021-05-14 13:09:34','admin','0:0:0:0:0:0:0:1'),
(28,'更新角色：超级管理员','2021-05-14 13:09:35','admin','0:0:0:0:0:0:0:1'),
(29,'更新角色：超级管理员','2021-05-14 13:09:35','admin','0:0:0:0:0:0:0:1'),
(30,'更新角色：超级管理员','2021-05-14 13:15:16','admin','0:0:0:0:0:0:0:1'),
(31,'更新角色：超级管理员','2021-05-14 13:30:31','admin','0:0:0:0:0:0:0:1'),
(32,'更新角色：超级管理员','2021-05-14 13:30:34','admin','0:0:0:0:0:0:0:1'),
(33,'更新角色：超级管理员','2021-05-14 13:31:45','admin','0:0:0:0:0:0:0:1'),
(34,'更新角色：超级管理员','2021-05-14 13:31:47','admin','0:0:0:0:0:0:0:1'),
(35,'删除权限菜单：日志管理','2021-05-14 13:33:10','admin','0:0:0:0:0:0:0:1'),
(36,'用户 admin 登录系统','2021-05-14 13:39:44','admin','0:0:0:0:0:0:0:1'),
(37,'用户 admin 登录系统','2021-05-14 13:40:06','admin','0:0:0:0:0:0:0:1'),
(38,'用户 admin 登录系统','2021-05-14 14:38:23','admin','0:0:0:0:0:0:0:1'),
(39,'用户 admin 登录系统','2021-05-14 14:38:39','admin','0:0:0:0:0:0:0:1'),
(40,'用户 admin 登录系统','2021-05-14 14:38:49','admin','0:0:0:0:0:0:0:1'),
(41,'用户 admin 登录系统','2021-05-14 14:39:57','admin','0:0:0:0:0:0:0:1'),
(42,'用户 admin 登录系统','2021-05-14 14:41:25','admin','0:0:0:0:0:0:0:1'),
(43,'用户 admin 登录系统','2021-05-14 14:43:17','admin','0:0:0:0:0:0:0:1'),
(44,'用户 admin 登录系统','2021-05-14 14:43:35','admin','0:0:0:0:0:0:0:1'),
(45,'用户 admin 登录系统','2021-05-14 14:44:47','admin','0:0:0:0:0:0:0:1'),
(46,'用户 admin 登录系统','2021-05-14 14:45:54','admin','0:0:0:0:0:0:0:1'),
(47,'用户 admin 登录系统','2021-05-14 14:47:36','admin','0:0:0:0:0:0:0:1'),
(48,'用户 admin 登录系统','2021-05-14 14:47:52','admin','0:0:0:0:0:0:0:1'),
(49,'用户 admin 登录系统','2021-05-14 14:53:20','admin','0:0:0:0:0:0:0:1'),
(50,'用户 admin 登录系统','2021-05-14 14:53:39','admin','0:0:0:0:0:0:0:1'),
(51,'用户 admin 登录系统','2021-05-14 14:54:11','admin','0:0:0:0:0:0:0:1'),
(52,'用户 admin 登录系统','2021-05-14 14:55:24','admin','0:0:0:0:0:0:0:1'),
(53,'用户 admin 登录系统','2021-05-14 14:56:27','admin','0:0:0:0:0:0:0:1'),
(54,'用户 admin 登录系统','2021-05-14 14:58:58','admin','0:0:0:0:0:0:0:1'),
(55,'用户 admin 登录系统','2021-05-14 15:02:48','admin','0:0:0:0:0:0:0:1'),
(56,'用户 admin 登录系统','2021-05-14 15:03:06','admin','0:0:0:0:0:0:0:1'),
(57,'用户 admin 登录系统','2021-05-14 15:03:13','admin','0:0:0:0:0:0:0:1'),
(58,'用户 admin 登录系统','2021-05-14 15:06:12','admin','0:0:0:0:0:0:0:1'),
(59,'用户 admin 登录系统','2021-05-14 15:06:50','admin','0:0:0:0:0:0:0:1'),
(60,'用户 admin 登录系统','2021-05-14 15:07:27','admin','0:0:0:0:0:0:0:1'),
(61,'用户 admin 登录系统','2021-05-14 15:07:49','admin','0:0:0:0:0:0:0:1'),
(62,'用户 admin 登录系统','2021-05-14 15:08:25','admin','0:0:0:0:0:0:0:1'),
(63,'用户 admin 登录系统','2021-05-14 15:09:55','admin','0:0:0:0:0:0:0:1'),
(64,'用户 admin 登录系统','2021-05-14 15:10:16','admin','0:0:0:0:0:0:0:1'),
(65,'用户 admin 登录系统','2021-05-14 16:16:26','admin','0:0:0:0:0:0:0:1'),
(66,'用户 admin 登录系统','2021-05-14 16:27:00','admin','0:0:0:0:0:0:0:1'),
(67,'用户 admin 登录系统','2021-05-14 16:27:48','admin','0:0:0:0:0:0:0:1'),
(68,'用户 admin 登录系统','2021-05-14 16:27:58','admin','0:0:0:0:0:0:0:1'),
(69,'用户 admin 登录系统','2021-05-14 16:28:28','admin','0:0:0:0:0:0:0:1'),
(70,'用户 admin 登录系统','2021-05-14 16:28:34','admin','0:0:0:0:0:0:0:1'),
(71,'用户 admin 登录系统','2021-05-14 16:29:46','admin','0:0:0:0:0:0:0:1'),
(72,'用户 admin 登录系统','2021-05-14 16:33:14','admin','0:0:0:0:0:0:0:1'),
(73,'用户 admin 登录系统','2021-05-14 16:36:06','admin','0:0:0:0:0:0:0:1'),
(74,'用户 admin 登录系统','2021-05-14 16:36:14','admin','0:0:0:0:0:0:0:1'),
(75,'用户 admin 登录系统','2021-05-14 16:37:37','admin','0:0:0:0:0:0:0:1'),
(76,'用户 admin 登录系统','2021-05-14 16:38:19','admin','0:0:0:0:0:0:0:1'),
(77,'用户 admin 登录系统','2021-05-14 16:38:27','admin','0:0:0:0:0:0:0:1'),
(78,'用户 admin 登录系统','2021-05-14 16:38:34','admin','0:0:0:0:0:0:0:1'),
(79,'用户 admin 登录系统','2021-05-14 16:44:23','admin','0:0:0:0:0:0:0:1'),
(80,'用户 admin 登录系统','2021-05-14 16:44:30','admin','0:0:0:0:0:0:0:1'),
(81,'用户 admin 登录系统','2021-05-14 16:44:47','admin','0:0:0:0:0:0:0:1'),
(82,'用户 admin 登录系统','2021-05-14 16:49:23','admin','0:0:0:0:0:0:0:1'),
(83,'用户 admin 登录系统','2021-05-14 16:49:47','admin','0:0:0:0:0:0:0:1'),
(84,'用户 admin 登录系统','2021-05-14 16:52:11','admin','0:0:0:0:0:0:0:1'),
(85,'用户 admin 登录系统','2021-05-14 16:52:23','admin','0:0:0:0:0:0:0:1'),
(86,'用户 admin 登录系统','2021-05-14 17:05:10','admin','0:0:0:0:0:0:0:1'),
(87,'用户 admin 登录系统','2021-05-14 17:12:32','admin','0:0:0:0:0:0:0:1'),
(88,'更新角色：超级管理员','2021-05-14 17:15:36','admin','0:0:0:0:0:0:0:1'),
(89,'更新角色：超级管理员','2021-05-14 17:15:52','admin','0:0:0:0:0:0:0:1'),
(90,'更新角色：超级管理员','2021-05-14 17:15:53','admin','0:0:0:0:0:0:0:1'),
(91,'更新角色：超级管理员','2021-05-14 17:15:54','admin','0:0:0:0:0:0:0:1'),
(92,'更新角色：超级管理员','2021-05-14 17:16:04','admin','0:0:0:0:0:0:0:1'),
(93,'更新角色：超级管理员','2021-05-14 17:16:06','admin','0:0:0:0:0:0:0:1'),
(94,'更新角色：超级管理员','2021-05-14 17:16:06','admin','0:0:0:0:0:0:0:1'),
(95,'更新角色：超级管理员','2021-05-14 17:16:08','admin','0:0:0:0:0:0:0:1'),
(96,'更新角色：超级管理员','2021-05-14 17:16:10','admin','0:0:0:0:0:0:0:1'),
(97,'更新角色：超级管理员','2021-05-14 17:16:10','admin','0:0:0:0:0:0:0:1'),
(98,'更新角色：超级管理员','2021-05-14 17:16:11','admin','0:0:0:0:0:0:0:1'),
(99,'更新角色：超级管理员','2021-05-14 17:16:12','admin','0:0:0:0:0:0:0:1'),
(100,'用户 admin 登录系统','2021-05-14 17:17:09','admin','0:0:0:0:0:0:0:1'),
(101,'用户 admin 登录系统','2021-05-14 17:17:13','admin','0:0:0:0:0:0:0:1'),
(102,'用户 admin 登录系统','2021-05-14 17:17:19','admin','0:0:0:0:0:0:0:1'),
(103,'用户 admin 登录系统','2021-05-14 17:17:23','admin','0:0:0:0:0:0:0:1'),
(104,'删除权限菜单：日志管理','2021-05-14 17:20:16','admin','0:0:0:0:0:0:0:1'),
(105,'新增权限菜单：1','2021-05-14 17:21:05','admin','0:0:0:0:0:0:0:1'),
(106,'更新角色：超级管理员','2021-05-14 17:21:18','admin','0:0:0:0:0:0:0:1'),
(107,'更新角色：超级管理员','2021-05-14 17:21:21','admin','0:0:0:0:0:0:0:1'),
(108,'更新角色：超级管理员','2021-05-14 17:21:23','admin','0:0:0:0:0:0:0:1'),
(109,'更新角色：超级管理员','2021-05-14 17:25:33','admin','0:0:0:0:0:0:0:1'),
(110,'更新角色：超级管理员','2021-05-14 17:25:35','admin','0:0:0:0:0:0:0:1'),
(111,'更新角色：超级管理员','2021-05-14 17:25:37','admin','0:0:0:0:0:0:0:1'),
(112,'用户 admin 登录系统','2021-05-14 17:42:49','admin','0:0:0:0:0:0:0:1'),
(113,'用户 admin 登录系统','2021-05-14 17:43:17','admin','0:0:0:0:0:0:0:1'),
(114,'更新角色：超级管理员','2021-05-14 17:43:22','admin','0:0:0:0:0:0:0:1'),
(115,'用户 admin 登录系统','2021-05-14 17:43:36','admin','0:0:0:0:0:0:0:1'),
(116,'更新角色：超级管理员','2021-05-14 17:45:51','admin','0:0:0:0:0:0:0:1'),
(117,'更新角色：超级管理员','2021-05-14 17:45:56','admin','0:0:0:0:0:0:0:1'),
(118,'更新角色：超级管理员','2021-05-14 17:46:23','admin','0:0:0:0:0:0:0:1'),
(119,'更新角色：超级管理员','2021-05-14 17:46:25','admin','0:0:0:0:0:0:0:1'),
(120,'更新角色：超级管理员','2021-05-14 17:46:27','admin','0:0:0:0:0:0:0:1'),
(121,'更新角色：超级管理员','2021-05-14 17:46:30','admin','0:0:0:0:0:0:0:1'),
(122,'更新角色：超级管理员','2021-05-14 18:02:02','admin','0:0:0:0:0:0:0:1'),
(123,'用户 admin 登录系统','2021-05-14 18:06:08','admin','0:0:0:0:0:0:0:1'),
(124,'用户 admin 登录系统','2021-05-14 18:11:14','admin','0:0:0:0:0:0:0:1'),
(125,'用户 admin 登录系统','2021-05-14 18:13:01','admin','0:0:0:0:0:0:0:1'),
(126,'用户 admin 登录系统','2021-05-14 18:13:41','admin','0:0:0:0:0:0:0:1'),
(127,'用户 admin 登录系统','2021-05-14 18:15:54','admin','0:0:0:0:0:0:0:1'),
(128,'用户 admin 登录系统','2021-05-14 18:17:57','admin','0:0:0:0:0:0:0:1'),
(129,'用户 admin 登录系统','2021-05-14 18:18:19','admin','0:0:0:0:0:0:0:1'),
(130,'更新角色：超级管理员','2021-05-14 18:18:23','admin','0:0:0:0:0:0:0:1'),
(131,'更新角色：超级管理员','2021-05-14 18:18:24','admin','0:0:0:0:0:0:0:1'),
(132,'更新角色：超级管理员','2021-05-14 18:18:28','admin','0:0:0:0:0:0:0:1'),
(133,'用户 admin 登录系统','2021-05-14 18:31:35','admin','0:0:0:0:0:0:0:1'),
(134,'用户 admin 登录系统','2021-05-14 18:33:09','admin','0:0:0:0:0:0:0:1'),
(135,'用户 admin 登录系统','2021-05-14 18:33:24','admin','0:0:0:0:0:0:0:1'),
(136,'用户 admin 登录系统','2021-05-14 18:34:07','admin','0:0:0:0:0:0:0:1'),
(137,'用户 admin 登录系统','2021-05-14 18:34:44','admin','0:0:0:0:0:0:0:1'),
(138,'用户 admin 登录系统','2021-05-14 18:37:12','admin','0:0:0:0:0:0:0:1'),
(139,'更新角色：超级管理员','2021-05-14 18:38:03','admin','0:0:0:0:0:0:0:1'),
(140,'更新角色：超级管理员','2021-05-14 18:38:06','admin','0:0:0:0:0:0:0:1'),
(141,'更新角色：超级管理员','2021-05-14 18:38:09','admin','0:0:0:0:0:0:0:1'),
(142,'用户 admin 登录系统','2021-05-14 18:47:13','admin','0:0:0:0:0:0:0:1'),
(143,'更新角色：超级管理员','2021-05-14 18:47:18','admin','0:0:0:0:0:0:0:1'),
(144,'用户 admin 登录系统','2021-05-14 19:13:41','admin','0:0:0:0:0:0:0:1'),
(145,'用户 admin 登录系统','2021-05-14 19:19:49','admin','0:0:0:0:0:0:0:1'),
(146,'用户 admin 登录系统','2021-05-14 19:19:56','admin','0:0:0:0:0:0:0:1'),
(147,'用户 admin 登录系统','2021-05-14 19:48:00','admin','0:0:0:0:0:0:0:1'),
(148,'更新角色：超级管理员','2021-05-14 19:48:05','admin','0:0:0:0:0:0:0:1'),
(149,'用户 admin 登录系统','2021-05-14 19:56:57','admin','0:0:0:0:0:0:0:1'),
(150,'更新角色：超级管理员','2021-05-14 20:00:15','admin','0:0:0:0:0:0:0:1'),
(151,'更新角色：超级管理员','2021-05-14 20:00:17','admin','0:0:0:0:0:0:0:1'),
(152,'更新角色：超级管理员','2021-05-14 20:00:19','admin','0:0:0:0:0:0:0:1'),
(153,'更新角色：超级管理员','2021-05-14 20:02:10','admin','0:0:0:0:0:0:0:1'),
(154,'删除权限菜单：1','2021-05-14 20:02:14','admin','0:0:0:0:0:0:0:1'),
(155,'新增权限菜单：1','2021-05-14 20:05:13','admin','0:0:0:0:0:0:0:1'),
(156,'更新角色：超级管理员','2021-05-14 20:05:18','admin','0:0:0:0:0:0:0:1'),
(157,'更新角色：超级管理员','2021-05-14 20:05:24','admin','0:0:0:0:0:0:0:1'),
(158,'删除权限菜单：1','2021-05-14 20:05:29','admin','0:0:0:0:0:0:0:1'),
(159,'更新角色：超级管理员','2021-05-14 20:05:33','admin','0:0:0:0:0:0:0:1'),
(160,'新增权限菜单：1','2021-05-14 20:06:00','admin','0:0:0:0:0:0:0:1'),
(161,'更新角色：超级管理员','2021-05-14 20:06:03','admin','0:0:0:0:0:0:0:1'),
(162,'删除权限菜单：1','2021-05-14 20:06:36','admin','0:0:0:0:0:0:0:1'),
(163,'新增权限菜单：2','2021-05-14 20:41:09','admin','127.0.0.1'),
(164,'更新角色：超级管理员','2021-05-14 20:41:12','admin','127.0.0.1'),
(165,'更新角色：超级管理员','2021-05-14 20:41:14','admin','0:0:0:0:0:0:0:1'),
(166,'删除权限菜单：2','2021-05-14 20:41:20','admin','127.0.0.1'),
(167,'新增权限菜单：2','2021-05-14 20:42:42','admin','0:0:0:0:0:0:0:1'),
(168,'删除权限菜单：2','2021-05-14 20:42:46','admin','0:0:0:0:0:0:0:1'),
(169,'删除权限菜单：2','2021-05-14 20:43:34','admin','0:0:0:0:0:0:0:1'),
(170,'新增权限菜单：1','2021-05-14 20:44:59','admin','0:0:0:0:0:0:0:1'),
(171,'更新角色：超级管理员','2021-05-14 20:45:01','admin','0:0:0:0:0:0:0:1'),
(172,'删除权限菜单：1','2021-05-14 20:45:06','admin','0:0:0:0:0:0:0:1'),
(173,'新增权限菜单：1','2021-05-14 22:03:34','admin','0:0:0:0:0:0:0:1'),
(174,'更新角色：超级管理员','2021-05-14 22:03:36','admin','0:0:0:0:0:0:0:1'),
(175,'删除权限菜单：1','2021-05-14 22:03:41','admin','0:0:0:0:0:0:0:1'),
(176,'用户 admin 登录系统','2021-05-14 22:05:26','admin','0:0:0:0:0:0:0:1'),
(177,'用户 admin 登录系统','2021-05-14 22:06:51','admin','0:0:0:0:0:0:0:1'),
(178,'新增权限菜单：1','2021-05-14 22:06:56','admin','0:0:0:0:0:0:0:1'),
(179,'更新角色：超级管理员','2021-05-14 22:07:02','admin','0:0:0:0:0:0:0:1'),
(180,'删除权限菜单：1','2021-05-14 22:07:06','admin','0:0:0:0:0:0:0:1'),
(181,'新增权限菜单：22','2021-05-14 22:11:36','admin','0:0:0:0:0:0:0:1'),
(182,'更新角色：超级管理员','2021-05-14 22:11:40','admin','0:0:0:0:0:0:0:1'),
(183,'更新角色：超级管理员','2021-05-14 22:11:42','admin','0:0:0:0:0:0:0:1'),
(184,'删除权限菜单：22','2021-05-14 22:11:47','admin','0:0:0:0:0:0:0:1'),
(185,'用户 admin 登录系统','2021-05-15 23:18:09','admin','0:0:0:0:0:0:0:1'),
(186,'更新用户：admin ','2021-05-15 23:22:25','admin','0:0:0:0:0:0:0:1'),
(187,'用户 admin 登录系统','2021-05-15 23:37:45','admin','0:0:0:0:0:0:0:1'),
(188,'用户 admin 登录系统','2021-05-17 19:35:32','admin','0:0:0:0:0:0:0:1'),
(189,'用户 admin 登录系统','2021-05-17 19:36:22','admin','0:0:0:0:0:0:0:1'),
(190,'用户 admin 登录系统','2021-05-17 19:37:30','admin','0:0:0:0:0:0:0:1'),
(191,'用户 admin 登录系统','2021-05-17 19:42:08','admin','0:0:0:0:0:0:0:1'),
(192,'用户 admin 登录系统','2021-05-17 20:00:25','admin','0:0:0:0:0:0:0:1'),
(193,'用户 admin 登录系统','2021-05-24 17:37:59','admin','0:0:0:0:0:0:0:1'),
(194,'用户 admin 登录系统','2021-05-24 17:55:47','admin','0:0:0:0:0:0:0:1'),
(195,'更新用户：jerry ','2021-05-24 17:57:50','admin','0:0:0:0:0:0:0:1'),
(196,'更新用户：jack ','2021-05-24 17:57:51','admin','0:0:0:0:0:0:0:1'),
(197,'用户 admin 登录系统','2021-05-24 18:02:13','admin','0:0:0:0:0:0:0:1'),
(198,'用户 hello 登录系统','2021-05-24 18:15:41','hello','0:0:0:0:0:0:0:1'),
(199,'更新用户：hello ','2021-05-24 18:17:40','hello','0:0:0:0:0:0:0:1'),
(200,'用户 admin 登录系统','2021-05-24 22:58:23','admin','0:0:0:0:0:0:0:1'),
(201,'用户 admin 登录系统','2021-05-24 23:17:56','admin','0:0:0:0:0:0:0:1'),
(202,'更新角色：超级管理员','2021-05-24 23:25:44','admin','0:0:0:0:0:0:0:1'),
(203,'更新角色：超级管理员','2021-05-24 23:40:35','admin','0:0:0:0:0:0:0:1'),
(204,'更新角色：超级管理员','2021-05-25 00:00:53','admin','0:0:0:0:0:0:0:1'),
(205,'用户 admin 登录系统','2021-05-25 22:26:44','admin','0:0:0:0:0:0:0:1'),
(206,'更新角色：超级管理员','2021-05-25 22:27:26','admin','0:0:0:0:0:0:0:1'),
(207,'更新角色：超级管理员','2021-05-25 22:27:28','admin','0:0:0:0:0:0:0:1'),
(208,'用户 admin 登录系统','2021-05-25 22:46:20','admin','0:0:0:0:0:0:0:1'),
(209,'用户 admin 登录系统','2021-05-27 09:26:57','admin','0:0:0:0:0:0:0:1'),
(210,'更新权限菜单：商品管理','2021-05-27 14:32:48','admin','0:0:0:0:0:0:0:1'),
(211,'用户 admin 登录系统','2021-05-27 15:57:53','admin','0:0:0:0:0:0:0:1'),
(212,'更新用户：admin ','2021-05-27 15:58:36','admin','0:0:0:0:0:0:0:1'),
(213,'用户 admin 登录系统','2021-05-28 10:15:53','admin','0:0:0:0:0:0:0:1'),
(214,'用户 hello 登录系统','2021-05-28 10:54:38','hello','0:0:0:0:0:0:0:1'),
(215,'更新角色：超级管理员','2021-05-28 16:03:58','admin','0:0:0:0:0:0:0:1'),
(216,'用户 hello 登录系统','2021-06-02 10:05:23','hello','0:0:0:0:0:0:0:1'),
(217,'更新用户：hello ','2021-06-02 10:42:39','hello','0:0:0:0:0:0:0:1'),
(218,'用户 hello 登录系统','2021-06-02 10:44:19','hello','0:0:0:0:0:0:0:1'),
(219,'更新用户账户：hello ','2021-06-02 15:52:29','hello','0:0:0:0:0:0:0:1'),
(220,'更新用户账户：hello ','2021-06-02 15:52:41','hello','0:0:0:0:0:0:0:1'),
(221,'更新用户账户：hello ','2021-06-02 15:58:21','hello','0:0:0:0:0:0:0:1'),
(222,'用户 admin 登录系统','2021-06-02 16:44:54','admin','0:0:0:0:0:0:0:1'),
(223,'用户 hello 登录系统','2021-06-02 16:45:35','hello','0:0:0:0:0:0:0:1'),
(224,'用户 hello 登录系统','2021-06-06 11:17:26','hello','0:0:0:0:0:0:0:1'),
(225,'更新用户账户：hello ','2021-06-06 11:34:46','hello','0:0:0:0:0:0:0:1'),
(226,'更新用户账户：hello ','2021-06-06 11:34:52','hello','0:0:0:0:0:0:0:1'),
(227,'更新用户：hello ','2021-06-06 11:38:35','hello','0:0:0:0:0:0:0:1'),
(228,'用户 admin 登录系统','2021-06-06 11:39:07','admin','0:0:0:0:0:0:0:1'),
(229,'用户 hello 登录系统','2021-06-06 11:47:41','hello','0:0:0:0:0:0:0:1'),
(230,'用户 admin 登录系统','2021-06-06 12:12:03','admin','0:0:0:0:0:0:0:1'),
(231,'用户 hello 登录系统','2021-06-06 12:13:24','hello','0:0:0:0:0:0:0:1'),
(232,'用户 admin 登录系统','2021-06-06 12:44:04','admin','0:0:0:0:0:0:0:1'),
(233,'用户 hello 登录系统','2021-06-06 14:22:01','hello','0:0:0:0:0:0:0:1'),
(234,'用户 admin 登录系统','2021-06-06 14:22:18','admin','0:0:0:0:0:0:0:1'),
(235,'用户 hello 登录系统','2021-06-06 14:22:37','hello','0:0:0:0:0:0:0:1'),
(236,'用户 admin 登录系统','2021-06-06 14:23:10','admin','0:0:0:0:0:0:0:1'),
(237,'用户 hello 登录系统','2021-06-06 14:23:20','hello','0:0:0:0:0:0:0:1'),
(238,'用户 admin 登录系统','2021-06-06 14:23:48','admin','0:0:0:0:0:0:0:1'),
(239,'更新权限菜单：轮播图管理','2021-06-06 14:24:34','admin','0:0:0:0:0:0:0:1'),
(240,'更新权限菜单：商品分类管理','2021-06-06 14:25:02','admin','0:0:0:0:0:0:0:1'),
(241,'用户 hello 登录系统','2021-06-06 14:26:11','hello','0:0:0:0:0:0:0:1'),
(242,'用户 hello 登录系统','2021-06-06 14:26:37','hello','0:0:0:0:0:0:0:1'),
(243,'用户 hello 登录系统','2021-06-06 22:26:21','hello','0:0:0:0:0:0:0:1'),
(244,'更新用户账户：hello ','2021-06-06 22:31:15','hello','0:0:0:0:0:0:0:1'),
(245,'用户 admin 登录系统','2021-06-06 22:32:02','admin','0:0:0:0:0:0:0:1'),
(246,'用户 hello 登录系统','2021-06-06 22:32:17','hello','0:0:0:0:0:0:0:1'),
(247,'用户 admin 登录系统','2021-06-06 22:33:45','admin','0:0:0:0:0:0:0:1'),
(248,'用户 hello 登录系统','2021-06-06 22:40:33','hello','0:0:0:0:0:0:0:1'),
(249,'用户 admin 登录系统','2021-06-06 22:40:57','admin','0:0:0:0:0:0:0:1'),
(250,'用户 hello 登录系统','2021-06-06 22:41:19','hello','0:0:0:0:0:0:0:1'),
(251,'用户 admin 登录系统','2021-06-06 23:15:39','admin','0:0:0:0:0:0:0:1'),
(252,'用户 admin 登录系统','2021-06-08 11:00:05','admin','0:0:0:0:0:0:0:1'),
(253,'用户 hello 登录系统','2021-06-08 11:00:19','hello','0:0:0:0:0:0:0:1'),
(254,'用户 admin 登录系统','2021-06-26 11:11:16','admin','0:0:0:0:0:0:0:1'),
(255,'用户 hello 登录系统','2021-06-26 11:21:49','hello','0:0:0:0:0:0:0:1'),
(256,'用户 hello 登录系统','2021-06-26 11:23:38','hello','0:0:0:0:0:0:0:1'),
(257,'用户 admin 登录系统','2021-06-26 11:23:42','admin','0:0:0:0:0:0:0:1'),
(258,'用户 admin 登录系统','2021-06-26 20:34:44','admin','0:0:0:0:0:0:0:1'),
(259,'用户 admin 登录系统','2021-06-27 09:33:42','admin','0:0:0:0:0:0:0:1'),
(260,'用户 admin 登录系统','2021-07-14 11:11:46','admin','0:0:0:0:0:0:0:1'),
(261,'用户 hello 登录系统','2021-10-11 21:47:40','hello','0:0:0:0:0:0:0:1'),
(262,'用户 admin 登录系统','2021-10-11 21:47:45','admin','0:0:0:0:0:0:0:1'),
(263,'用户 hello 登录系统','2021-10-11 22:03:17','hello','0:0:0:0:0:0:0:1'),
(264,'用户 admin 登录系统','2021-10-18 20:03:01','admin','0:0:0:0:0:0:0:1'),
(265,'更新角色：超级管理员','2021-10-18 20:03:43','admin','0:0:0:0:0:0:0:1'),
(266,'更新角色：超级管理员','2021-10-18 20:03:46','admin','0:0:0:0:0:0:0:1'),
(267,'用户 admin 登录系统','2021-10-18 20:03:53','admin','0:0:0:0:0:0:0:1'),
(268,'用户 admin 登录系统','2021-10-18 21:15:15','admin','0:0:0:0:0:0:0:1'),
(269,'用户 admin 登录系统','2021-10-18 21:17:31','admin','0:0:0:0:0:0:0:1'),
(270,'用户 hello 登录系统','2021-10-18 21:18:02','hello','0:0:0:0:0:0:0:1'),
(271,'用户 admin 登录系统','2021-10-18 21:18:09','admin','0:0:0:0:0:0:0:1'),
(272,'删除权限菜单：收藏管理','2021-10-18 21:20:22','admin','0:0:0:0:0:0:0:1'),
(273,'用户 admin 登录系统','2021-10-23 20:57:44','admin','0:0:0:0:0:0:0:1'),
(274,'用户 hello 登录系统','2021-10-23 21:15:02','hello','0:0:0:0:0:0:0:1'),
(275,'用户 admin 登录系统','2022-01-21 22:51:06','admin','0:0:0:0:0:0:0:1'),
(276,'用户 hello 登录系统','2022-01-21 22:51:41','hello','0:0:0:0:0:0:0:1'),
(277,'更新用户账户：hello ','2022-01-21 22:52:37','hello','0:0:0:0:0:0:0:1'),
(278,'更新用户：hello ','2022-01-21 22:52:42','hello','0:0:0:0:0:0:0:1'),
(279,'用户 admin 登录系统','2022-02-16 20:39:14','admin','0:0:0:0:0:0:0:1'),
(280,'用户 jack 登录系统','2022-02-16 20:39:30','jack','0:0:0:0:0:0:0:1'),
(281,'用户 hello 登录系统','2022-02-16 20:44:36','hello','0:0:0:0:0:0:0:1'),
(282,'用户 jack 登录系统','2022-02-16 20:44:56','jack','0:0:0:0:0:0:0:1'),
(283,'用户 hello 登录系统','2022-02-16 20:46:49','hello','0:0:0:0:0:0:0:1'),
(284,'用户 jack 登录系统','2022-02-16 20:54:54','jack','0:0:0:0:0:0:0:1'),
(285,'用户 hello 登录系统','2022-02-16 20:55:05','hello','0:0:0:0:0:0:0:1'),
(286,'用户 jack 登录系统','2022-02-16 20:55:14','jack','0:0:0:0:0:0:0:1'),
(287,'用户 admin 登录系统','2022-02-16 20:55:29','admin','0:0:0:0:0:0:0:1'),
(288,'用户 hello 登录系统','2022-02-16 20:55:35','hello','0:0:0:0:0:0:0:1'),
(289,'用户 jack 登录系统','2022-02-16 20:59:22','jack','0:0:0:0:0:0:0:1'),
(290,'用户 jack 登录系统','2022-02-16 21:03:10','jack','0:0:0:0:0:0:0:1'),
(291,'用户 hello 登录系统','2022-02-16 21:04:14','hello','0:0:0:0:0:0:0:1'),
(292,'用户 admin 登录系统','2022-02-16 21:05:02','admin','0:0:0:0:0:0:0:1'),
(293,'用户 hello 登录系统','2022-02-16 21:05:18','hello','0:0:0:0:0:0:0:1'),
(294,'用户 呼呼 注册账号成功','2022-02-16 21:06:12','呼呼','0:0:0:0:0:0:0:1'),
(295,'用户 hu 登录系统','2022-02-16 21:07:14','hu','0:0:0:0:0:0:0:1'),
(296,'更新用户：hu ','2022-02-16 21:07:22','hu','0:0:0:0:0:0:0:1'),
(297,'用户 hello 登录系统','2022-03-04 22:07:54','hello','0:0:0:0:0:0:0:1'),
(298,'用户 tom 登录系统','2022-03-04 22:08:21','tom','0:0:0:0:0:0:0:1'),
(299,'用户 hello 登录系统','2022-03-04 22:09:08','hello','0:0:0:0:0:0:0:1'),
(300,'用户 tom 登录系统','2022-03-04 22:09:29','tom','0:0:0:0:0:0:0:1'),
(301,'用户 admin 登录系统','2022-12-06 09:20:47','admin','0:0:0:0:0:0:0:1'),
(302,'更新用户：admin ','2022-12-06 09:21:32','admin','0:0:0:0:0:0:0:1'),
(303,'用户 tom 登录系统','2022-12-06 09:22:28','tom','0:0:0:0:0:0:0:1'),
(304,'用户 admin 登录系统','2022-12-06 09:23:26','admin','0:0:0:0:0:0:0:1'),
(305,'更新用户账户：tom ','2022-12-06 09:30:43','tom','0:0:0:0:0:0:0:1'),
(306,'更新用户：tom ','2022-12-06 09:30:52','tom','0:0:0:0:0:0:0:1'),
(307,'用户 tom 登录系统','2022-12-06 09:33:04','tom','0:0:0:0:0:0:0:1'),
(308,'用户 tom 登录系统','2022-12-06 09:33:11','tom','0:0:0:0:0:0:0:1');

/*Table structure for table `t_message` */

DROP TABLE IF EXISTS `t_message`;

CREATE TABLE `t_message` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '内容',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '评论时间',
  `parent_id` bigint DEFAULT NULL COMMENT '父ID',
  `foreign_id` bigint DEFAULT '0' COMMENT '关联id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='留言表';

/*Data for the table `t_message` */

insert  into `t_message`(`id`,`content`,`username`,`time`,`parent_id`,`foreign_id`) values 
(20,'哈哈哈','admin','2021-05-22 10:48:55',NULL,1),
(21,'哦豁','admin','2021-05-22 10:49:48',NULL,1),
(23,'哈哈哈','hello','2021-05-24 17:13:45',22,1),
(24,'我们都爱吃大西瓜','hello','2021-05-24 17:13:58',NULL,1),
(25,'好','hello','2021-06-06 12:41:30',NULL,2),
(26,'非常好','hello','2021-06-06 22:32:45',NULL,4),
(27,'66666','tom','2022-12-06 09:31:20',NULL,1),
(28,'66666','tom','2022-12-06 09:34:32',NULL,4);

/*Table structure for table `t_notice` */

DROP TABLE IF EXISTS `t_notice`;

CREATE TABLE `t_notice` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `t_notice` */

insert  into `t_notice`(`id`,`title`,`content`,`time`) values 
(1,'xxxxxxx','xxxxxxxx','2021-04-16 17:10:44'),
(2,'xxxxxx','xxxx','2021-04-16 17:54:10');

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `total_price` decimal(10,2) DEFAULT NULL COMMENT '总价',
  `user_id` bigint DEFAULT NULL COMMENT '下单人id',
  `link_user` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人',
  `link_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `link_address` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '送货地址',
  `state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '待付款' COMMENT '状态',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='订单表';

/*Data for the table `t_order` */

insert  into `t_order`(`id`,`order_no`,`total_price`,`user_id`,`link_user`,`link_phone`,`link_address`,`state`,`create_time`) values 
(1,'20210602115530120326',175.00,21,'张三','13909768928','北京市前门大街120号','待收货','2021-06-02 11:55:30'),
(4,'20210606113132315324',22845.00,21,'张三','13909768928','北京市前门大街120号','已完成','2021-06-06 11:31:32'),
(5,'20210606142208712260',31.50,21,'张三','13909768928','北京市前门大街120号','已完成','2021-06-06 14:22:08'),
(6,'20210606142338521670',4569.00,21,'张三','13909768928','北京市前门大街120号','待发货','2021-06-06 14:23:38'),
(7,'20210606223033775406',217.40,21,'张三','13909768928','北京市前门大街120号','已完成','2021-06-06 22:30:33'),
(8,'20220121225225592406',9222.55,21,'张三','13909768928','北京市前门大街120号','待发货','2022-01-21 22:52:25'),
(9,'20220216210337905723',31.50,22,'夹克','13099887799','合肥','待付款','2022-02-16 21:03:37'),
(10,'20220216210447949603',25.50,21,'哈哈哈','13988776655','南京','待付款','2022-02-16 21:04:47'),
(11,'20221206093033924500',31.50,11,'xxxx','15073171174','xxxxx','已完成','2022-12-06 09:30:33'),
(12,'20221206093337961556',67.05,11,'xxxx','15073171174','xxxxx','已完成','2022-12-06 09:33:37');

/*Table structure for table `t_permission` */

DROP TABLE IF EXISTS `t_permission`;

CREATE TABLE `t_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 's-data' COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='权限菜单表';

/*Data for the table `t_permission` */

insert  into `t_permission`(`id`,`name`,`description`,`path`,`icon`) values 
(1,'首页','首页','/home','s-home'),
(2,'用户管理','用户管理','/user','user-solid'),
(3,'角色管理','角色管理','/role','s-cooperation'),
(4,'菜单管理','菜单管理','/permission','menu'),
(5,'公告管理','公告管理','/notice','data-board'),
(6,'日志管理','日志管理','/log','notebook-2'),
(8,'轮播图管理','轮播图管理','/banner','picture'),
(9,'商品分类管理','商品分类管理','/category','tickets'),
(11,'商品管理','商品管理','/goods','s-goods'),
(12,'订单管理','订单管理','/order','s-data'),
(13,'收货地址管理','收货地址管理','/address','s-data');

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  `permission` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '权限列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`name`,`description`,`permission`) values 
(1,'超级管理员','所有权限','[1,2,3,4,5,6,8,9,11,12,13]'),
(2,'普通用户','部分权限','[]');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `age` int DEFAULT NULL COMMENT '年龄',
  `account` decimal(10,2) DEFAULT '0.00' COMMENT '账户余额',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `username` (`username`,`nick_name`,`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`password`,`nick_name`,`email`,`phone`,`avatar`,`role`,`address`,`age`,`account`) values 
(1,'admin','admin','管理员','111124444','13978786565','1670289692388','[1]','北京',NULL,0.00),
(11,'tom','123456','汤姆','tom@qq.com','13685249632','1670290252506','[2]','上海',20,901.45),
(21,'hello','123456','哈喽1','hello@qq.com','13695285413','1622950715472','[2]','北京',25,112500.00),
(22,'jack','123456','杰克','jack@qq.com','13878549623',NULL,'[2]','合肥',30,0.00),
(23,'jerry','123456','杰瑞','jerry@163.com','13696965656',NULL,'[2]','北京',21,0.00),
(24,'hu','123456',NULL,NULL,'呼呼','1645016842715','[2]',NULL,NULL,0.00);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
