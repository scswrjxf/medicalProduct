/*
MySQL Data Transfer
Source Host: localhost
Source Database: medicalproduct
Target Host: localhost
Target Database: medicalproduct
Date: 2020/6/29 17:22:18
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for cart
-- ----------------------------
CREATE TABLE `cart` (
  `goosdId` int(11) NOT NULL COMMENT 'goods表gid关联',
  `goodsName` varchar(32) NOT NULL COMMENT '商品名',
  `goodsPrice` double NOT NULL COMMENT '商品价钱',
  `goodsNumber` int(11) NOT NULL COMMENT '商品数量',
  `gPhoto` varchar(64) NOT NULL COMMENT '商品图片路径',
  `isEnable` int(11) NOT NULL DEFAULT '0' COMMENT '商品是否被存在(0-未存在 1-存在)',
  `userAlice` varchar(64) DEFAULT NULL COMMENT '昵称',
  PRIMARY KEY (`goosdId`),
  CONSTRAINT `fk_goodsId` FOREIGN KEY (`goosdId`) REFERENCES `goods` (`gid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for category
-- ----------------------------
CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `category` varchar(32) NOT NULL COMMENT '分类名',
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
CREATE TABLE `collect` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `collectUid` varchar(32) NOT NULL COMMENT 'user表userId关联，账户名',
  `goodsId` int(11) NOT NULL COMMENT 'goods表gid关联',
  PRIMARY KEY (`cid`),
  KEY `fk_collectUit` (`collectUid`),
  KEY `fk_goodsIdpro` (`goodsId`),
  CONSTRAINT `fk_goodsIdpro` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`gid`),
  CONSTRAINT `fk_collectUit` FOREIGN KEY (`collectUid`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for order
-- ----------------------------
CREATE TABLE `order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `code` varchar(64) NOT NULL COMMENT '订单编号',
  `Total` double NOT NULL COMMENT '订单总价',
  `goodsName` varchar(32) NOT NULL COMMENT '商品名称',
  `orderDate` date NOT NULL COMMENT '商品下单时间',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for touch
-- ----------------------------
CREATE TABLE `touch` (
  `tid` int(11) NOT NULL COMMENT '自增主键',
  `name` varchar(64) NOT NULL COMMENT '提问用户名',
  `address` varchar(255) DEFAULT NULL COMMENT '用户地址',
  `phone` varchar(128) DEFAULT NULL COMMENT '用户电话号码',
  `email` varchar(128) NOT NULL COMMENT '提问联系电子邮箱',
  `message` text NOT NULL COMMENT '提问内容',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `userId` varchar(32) NOT NULL COMMENT '账号名',
  `userPsw` varchar(32) NOT NULL COMMENT '密码',
  `userAlice` varchar(64) DEFAULT NULL COMMENT '昵称',
  `userEmail` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `userSex` varchar(1) DEFAULT '男' COMMENT '别性',
  `userPhoto` varchar(128) DEFAULT 'xxx.jpg' COMMENT '头像',
  `userCreateDate` date DEFAULT NULL COMMENT '创建日期',
  `role` int(11) NOT NULL COMMENT '用户角色',
  `isPass` int(11) DEFAULT '0' COMMENT '是否通过审核（0未审核  1审核）',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
