/*
MySQL Data Transfer
Source Host: localhost
Source Database: medicalproduct
Target Host: localhost
Target Database: medicalproduct
Date: 2020/7/9 ������ 15:31:41
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for about
-- ----------------------------
CREATE TABLE `about` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aboutTitle` varchar(255) NOT NULL,
  `aboutDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
CREATE TABLE `cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `goodsId` int(11) NOT NULL COMMENT 'goods表gid关联',
  `goodsName` varchar(255) NOT NULL COMMENT '商品名',
  `goodsPrice` int(11) NOT NULL COMMENT '商品价钱',
  `goodsNumber` int(11) NOT NULL COMMENT '商品数量',
  `gPhoto` varchar(255) NOT NULL COMMENT '商品图片路径',
  `isEnable` int(11) NOT NULL DEFAULT '0' COMMENT '商品是否被存在(0-未存在 1-存在)',
  `userAlice` varchar(255) NOT NULL COMMENT '昵称',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for category
-- ----------------------------
CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `category` varchar(32) NOT NULL COMMENT '分类名',
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
CREATE TABLE `collect` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `collectUid` varchar(32) DEFAULT NULL COMMENT 'user表userId关联，账户名',
  `goodsId` int(11) DEFAULT NULL COMMENT 'goods表gid关联',
  PRIMARY KEY (`cid`),
  KEY `fk_collectUit` (`collectUid`),
  KEY `fk_goodsIdpro` (`goodsId`),
  CONSTRAINT `fk_collectUit` FOREIGN KEY (`collectUid`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_goodsIdpro` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `commentMessage` varchar(255) NOT NULL COMMENT '评论的内容',
  `uId` varchar(32) NOT NULL COMMENT '评论的人，外键，与User表中的userId关联',
  `goodsName` varchar(32) NOT NULL COMMENT '被评论的商品名称',
  `commentDate` datetime DEFAULT NULL COMMENT '评论的时间',
  `commentIspass` int(11) NOT NULL DEFAULT '0' COMMENT '评论是否审核（默认0-未审核，1-已审核）',
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
CREATE TABLE `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT COMMENT '增自主键',
  `goodsName` varchar(32) NOT NULL COMMENT '名称',
  `goodsPhoto` varchar(64) NOT NULL COMMENT '图片名称',
  `goodsPrice` double NOT NULL COMMENT '价格',
  `goodsDesc` varchar(128) DEFAULT NULL COMMENT '商品描述',
  `inputDate` date NOT NULL COMMENT '入录时间',
  `goodsNumber` int(11) NOT NULL COMMENT '商品数量',
  `categoryId` int(11) NOT NULL COMMENT '外键分类id',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `code` varchar(64) NOT NULL COMMENT '订单编号',
  `total` int(11) NOT NULL COMMENT '订单总价',
  `orderName` varchar(32) NOT NULL COMMENT '商品名称',
  `orderDate` datetime NOT NULL COMMENT '商品下单时间',
  `uId` varchar(32) NOT NULL COMMENT '外键，与User表中的userId关联',
  `orderStatus` int(11) NOT NULL DEFAULT '0' COMMENT '订单状态（0-待发货——默认，1-待收货，2-已收货）',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for touch
-- ----------------------------
CREATE TABLE `touch` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(64) NOT NULL COMMENT '提问用户名',
  `address` varchar(255) DEFAULT NULL COMMENT '用户地址',
  `phone` varchar(128) DEFAULT NULL COMMENT '用户电话号码',
  `email` varchar(128) NOT NULL COMMENT '提问联系电子邮箱',
  `message` varchar(255) NOT NULL COMMENT '提问内容',
  `touchIspass` int(11) DEFAULT '0' COMMENT '状态（0-未查看，1-已查看）',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `userId` varchar(32) NOT NULL COMMENT '账号名',
  `userPsw` varchar(32) NOT NULL COMMENT '密码',
  `userAlice` varchar(64) DEFAULT NULL COMMENT '昵称',
  `userEmail` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `userSex` varchar(1) DEFAULT '男' COMMENT '性别',
  `userPhoto` varchar(128) DEFAULT 'xxx.jpg' COMMENT '头像',
  `userCreateDate` date DEFAULT NULL COMMENT '创建日期',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户角色，默认0-一般用户，1-管理员',
  `isPass` int(11) NOT NULL DEFAULT '0' COMMENT '是否通过审核（0未审核  1审核）',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `about` VALUES ('1', '关于我们', '关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们\r\n关于我们关于我们关于我们关于我们关于我们关于我们关于我们');
INSERT INTO `cart` VALUES ('3', '2', '一次性口罩', '2', '3', 'product2.jpg', '0', '02802208575');
INSERT INTO `cart` VALUES ('4', '5', '99感冒灵', '10', '2', 'product5.jpg', '0', '02802208575');
INSERT INTO `category` VALUES ('1', '口罩');
INSERT INTO `category` VALUES ('2', '消毒物品');
INSERT INTO `category` VALUES ('3', '感冒药品');
INSERT INTO `category` VALUES ('4', '应急物品');
INSERT INTO `collect` VALUES ('39', '02802208575', '5');
INSERT INTO `collect` VALUES ('40', '02802208575', '2');
INSERT INTO `comment` VALUES ('3', 'dsferwgsvg', 'zhangSan', '一次性口罩', '2020-07-06 09:37:00', '1');
INSERT INTO `comment` VALUES ('4', '%E8%90%A8%E5%B0%94%E5%8F%91%E7%83%AD%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09', '02802208575', '一次性口罩', '2020-07-07 10:48:14', '1');
INSERT INTO `comment` VALUES ('6', '%E8%BF%99%E4%B8%AA99%E6%84%9F%E5%86%92%E7%81%B5%E8%BF%98%E5%8F%AF%E4%BB%A5%EF%BC%8C%E5%80%BC%E5%BE%97%E8%B4%AD%E4%B9%B0%0D%0A%E5%93%88%E5%93%88%E5%93%88%0D%0A%E6%93%8D%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09', 'zhangSan', '99感冒灵', '2020-07-07 11:10:11', '1');
INSERT INTO `comment` VALUES ('7', '%E8%BF%99%E4%B8%AA99%E6%84%9F%E5%86%92%E7%81%B5%E8%BF%98%E5%8F%AF%E4%BB%A5%EF%BC%8C%E5%80%BC%E5%BE%97%E8%B4%AD%E4%B9%B0%0D%0A%E5%93%88%E5%93%88%E5%93%88%0D%0A%E6%93%8D%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09', 'zhangSan', '99感冒灵', '2020-07-07 11:10:30', '0');
INSERT INTO `comment` VALUES ('8', '%09%09%092222222%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09', '02802208575', '99感冒灵', '2020-07-07 12:27:52', '1');
INSERT INTO `comment` VALUES ('9', '%09%09%09%E4%B8%8D%E7%9F%A5%E9%81%93%E5%86%99%E4%BB%80%E4%B9%88%E8%AF%84%E8%AE%BA%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09', '02802208575', '99感冒灵', '2020-07-08 11:58:40', '1');
INSERT INTO `goods` VALUES ('2', '一次性口罩', 'product2.jpg', '2', '一次性口罩，携带方便', '2020-06-29', '500', '1');
INSERT INTO `goods` VALUES ('3', '家用消毒水', 'product3.jpg', '54', '家用消毒水，含量大，实用性高', '2020-06-29', '100', '2');
INSERT INTO `goods` VALUES ('4', '消毒喷雾', 'product4.jpg', '20', '方便携带，方便使用，效果好', '2020-07-01', '100', '2');
INSERT INTO `goods` VALUES ('5', '99感冒灵', 'product5.jpg', '10', '治疗感冒效果好，见效快', '2020-07-01', '1000', '3');
INSERT INTO `goods` VALUES ('6', '创口贴', 'product6.jpg', '1', '处理伤口方便，贴上即可', '2020-07-02', '10000', '4');
INSERT INTO `orders` VALUES ('2', '02802208575159418910214157', '58', '创口贴*2一次性口罩*1家用消毒水*1', '2020-07-08 14:18:22', '02802208575', '2');
INSERT INTO `orders` VALUES ('6', '02802208575159420724148494', '57', '创口贴*3家用消毒水*1', '2020-07-08 19:20:41', '02802208575', '2');
INSERT INTO `orders` VALUES ('9', '02802208575159421993376228', '56', '创口贴*2家用消毒水*1', '2020-07-08 22:52:13', '02802208575', '1');
INSERT INTO `touch` VALUES ('1', '张三', '中国', '15681658906', '3347499617@qq.com', '哈哈哈哈哈哈', '1');
INSERT INTO `touch` VALUES ('2', 'casa', '中国', '13219289644', '3347499617@qq.com', 'emmmmmmmm', '1');
INSERT INTO `user` VALUES ('02802208575', 'e10adc3949ba59abbe56e057f20f883e', '嘿嘿', '2780515070@qq.com', '女', '0280220857515942625929928.jpg', '2020-07-01', '0', '1');
INSERT INTO `user` VALUES ('admin', 'e10adc3949ba59abbe56e057f20f883e', '系统管理员', '3347499617@qq.com', '男', '1593705025939.jpg', '2020-06-30', '1', '1');
INSERT INTO `user` VALUES ('lisi123456', 'e10adc3949ba59abbe56e057f20f883e', '哈哈哈哈哈', '3347499617@qq.com', '女', '1593739511635.jpg', '2020-07-05', '0', '1');
INSERT INTO `user` VALUES ('zhangSan', 'e10adc3949ba59abbe56e057f20f883e', '张三', '3347499617@qq.com', '男', 'banner2.jpg', '2020-06-30', '0', '1');
