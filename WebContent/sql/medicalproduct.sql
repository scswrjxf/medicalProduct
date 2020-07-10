/*
MySQL Data Transfer
Source Host: localhost
Source Database: medicalproduct
Target Host: localhost
Target Database: medicalproduct
Date: 2020/7/10 ������ 19:09:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for about
-- ----------------------------
CREATE TABLE `about` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `aboutTitle` varchar(255) NOT NULL,
  `aboutDesc` mediumtext NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for category
-- ----------------------------
CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `category` varchar(32) NOT NULL COMMENT '分类名',
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

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
  `userPhoto` varchar(128) DEFAULT 'yh.png' COMMENT '头像',
  `userCreateDate` date DEFAULT NULL COMMENT '创建日期',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户角色，默认0-一般用户，1-管理员',
  `isPass` int(11) NOT NULL DEFAULT '1' COMMENT '是否通过审核（0未审核  1审核）',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `about` VALUES ('1', '关于我们', '抗击疫情，Covmed与你共渡难关，共渡时间，盼“暖春”来。\r\n       在疫情期间，大家对医疗产品的需求剧增。Covmed作为一个有时效，有权威，有\r\n信服力的平台在这个特殊时期来到您身边。\r\n       在我们Covmed这个平台，您可以购买到安全、舒适的医用产品。所有商品都符合\r\n国家质检标准。无违规劣质口罩，无鸡肋洗手液，让我们的产品在这期间给你一份安心。\r\n       Covmed保证你能更好的了解到商品，我们有详细的产品介绍，若有疑问，欢迎\r\n“骚扰”客服，我们24小时随时“待命”。购买产品后，若对产品不满意，您也不用\r\n担心，我们的售后服务能让您感受到我们的诚意，让您的有优质的购物的体验。不过，\r\n我们可不随意接受您的不满哦，如果您对我们的商品有“伤害”或者有意诋毁我们，我\r\n们可是不会理你哒。所以，在购买商品前请想好哦。如果您对我们的商品或网站功能有\r\n什么意见或者建议的话，欢迎大家在“联系我们”页面给我们提出来，你的意见我们会\r\n看到哦，好的建议我们也会采纳的。登录后，在导航栏个人中心您可以看见自己的商品\r\n订单，也可以修改自己的用户和地址信息，记得不要填错地址咯！\r\n        Covmed祝大家购物愉快，快乐“宅”家！平安健康！一起盼“春”来！ ');
INSERT INTO `cart` VALUES ('8', '32', '维生素N', '60', '1', 'goodsPhoto1594299484601.jpg', '0', 'zhangSan');
INSERT INTO `cart` VALUES ('9', '31', '维生素V', '50', '1', 'goodsPhoto1594299418545.jpg', '0', 'zhangSan');
INSERT INTO `cart` VALUES ('11', '40', '79消毒液', '70', '1', 'goodsPhoto1594299893912.jpg', '0', '02802208575');
INSERT INTO `cart` VALUES ('12', '19', '一次性口罩儿童用', '10', '1', 'goodsPhoto1594298620843.jpg', '0', '02802208575');
INSERT INTO `cart` VALUES ('13', '32', '维生素N', '60', '1', 'goodsPhoto1594299484601.jpg', '0', '02802208575');
INSERT INTO `category` VALUES ('1', '口罩');
INSERT INTO `category` VALUES ('2', '消毒物品');
INSERT INTO `category` VALUES ('3', '感冒药品');
INSERT INTO `category` VALUES ('4', '应急物品');
INSERT INTO `category` VALUES ('9', '医疗器具');
INSERT INTO `collect` VALUES ('24', 'zhangSan', '19');
INSERT INTO `collect` VALUES ('25', '02802208575', '40');
INSERT INTO `comment` VALUES ('1', '%E4%B8%80%E5%88%86%E4%BB%B7%E9%92%B1%E4%B8%80%E5%88%86%E8%B4%A7%EF%BC%8C%E8%BF%99%E4%B8%AA79%E6%B6%88%E6%AF%92%E6%B6%B2%E6%8C%BA%E5%A5%BD%E7%94%A8%E7%9A%84%E3%80%82+%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09', '02802208575', '79消毒液', '2020-07-10 13:06:31', '1');
INSERT INTO `comment` VALUES ('3', '%E6%95%88%E6%9E%9C%E6%8C%BA%E5%A5%BD%E7%9A%84%EF%BC%8C%E4%BD%A0%E5%80%BC%E5%BE%97%E6%8B%A5%E6%9C%89%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09', 'zhangSan', '79消毒液', '2020-07-10 13:10:33', '1');
INSERT INTO `comment` VALUES ('4', '%E7%9C%8B%E7%9D%80%E4%B8%8D%E5%A4%AA%E5%A5%BD%E7%9C%8B%E7%9A%84%E6%A0%B7%E5%AD%90%0D%0A%E7%AE%97%E4%BA%86%EF%BC%8C%E4%B8%8D%E4%B9%B0%E4%BA%86%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09', 'zhangSan', '一次性口罩儿童用', '2020-07-10 13:11:28', '1');
INSERT INTO `comment` VALUES ('5', '%E8%AF%95%E8%AF%95%E6%89%8D%E7%9F%A5%E9%81%93%E6%95%88%E6%9E%9C%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09%09', 'zhangSan', '维生素N', '2020-07-10 13:12:23', '1');
INSERT INTO `comment` VALUES ('6', '%E5%90%AB%E9%87%8F%E6%8C%BA%E5%A4%9A%E7%9A%84%09%09%09%09%09%09%09%09%09%09%09', 'zhangSan', '维生素V', '2020-07-10 13:13:22', '1');
INSERT INTO `comment` VALUES ('7', '%E6%84%9F%E8%A7%89%E8%BF%98%E5%8F%AF%E4%BB%A5%09%09%09%09%09%09%09%09%09%09%09%09%09%09', '02802208575', '一次性口罩儿童用', '2020-07-10 13:28:45', '1');
INSERT INTO `goods` VALUES ('2', '体温计', 'product2.jpg', '20', '测量体温准确，携带方便', '2020-06-29', '500', '1');
INSERT INTO `goods` VALUES ('3', '家用消毒水', 'product3.jpg', '54', '家用消毒水，含量大，实用性高', '2020-06-29', '100', '2');
INSERT INTO `goods` VALUES ('4', '消毒喷雾', 'product4.jpg', '20', '方便携带，方便使用，效果好', '2020-07-01', '100', '2');
INSERT INTO `goods` VALUES ('5', 'Covid-19', 'product5.jpg', '10', '治疗见效快', '2020-07-01', '1000', '4');
INSERT INTO `goods` VALUES ('6', '口罩', 'product6.jpg', '1', '口罩质量好，你值得拥有', '2020-07-02', '10000', '1');
INSERT INTO `goods` VALUES ('7', '测温枪', 'goodsPhoto1594297362542.jpg', '50', '机身小巧轻便，操作简单易懂，更适合老人孩子随用随取，大屏幕显示数值，一目了然，三色光提示体温变化，随时监测更放心！经济实惠又好用！', '2020-07-09', '500', '3');
INSERT INTO `goods` VALUES ('8', '电子体温计', 'goodsPhoto1594297532459.jpg', '40', '测量速度快 测量更加准确 无水银更加安全 ', '2020-07-09', '200', '3');
INSERT INTO `goods` VALUES ('9', '威露士消毒液', 'goodsPhoto1594297706909.jpg', '153', '威露士高效通用消毒液1.6Lx2杀菌率99.999%保护你和你的家人 ', '2020-07-09', '300', '2');
INSERT INTO `goods` VALUES ('10', '老管家消毒液', 'goodsPhoto1594297762627.jpg', '99', '老管家消毒液1.2L*3瓶衣物家用杀毒除菌剂灭菌液非酒精84消毒水', '2020-07-09', '200', '2');
INSERT INTO `goods` VALUES ('11', '维生素E', 'goodsPhoto1594297831511.jpg', '40', '修正天然维生素E软胶囊ve外用面部外涂脸脸部维e维生素C片 ', '2020-07-09', '300', '4');
INSERT INTO `goods` VALUES ('12', '应急绷带', 'goodsPhoto1594297953658.jpg', '40', '快速止血 方便携带 应急', '2020-07-09', '500', '9');
INSERT INTO `goods` VALUES ('13', '听诊器', 'goodsPhoto1594298035158.jpg', '200', '高品质多功能医生用听诊器双头双管专业听诊器可听胎心', '2020-07-09', '200', '9');
INSERT INTO `goods` VALUES ('14', '血压测量仪', 'goodsPhoto1594298088791.jpg', '220', '医院同款 七国专利 双气囊 全自动一键测量 ', '2020-07-09', '100', '9');
INSERT INTO `goods` VALUES ('15', '医用包', 'goodsPhoto1594298249394.jpg', '50', '家用含药急救箱全套带药大容量医疗箱应急医疗包医药箱', '2020-07-09', '200', '9');
INSERT INTO `goods` VALUES ('16', '家用口罩', 'goodsPhoto1594298340787.jpg', '20', '一次性口罩防尘透气防飞沫夏季薄款', '2020-07-09', '200', '1');
INSERT INTO `goods` VALUES ('17', '仙气口罩', 'goodsPhoto1594298472841.jpg', '666', '口罩中含有凡间气体过滤网，能让你呼吸到仙界空气', '2020-07-09', '2', '1');
INSERT INTO `goods` VALUES ('18', '一次性成人用口罩', 'goodsPhoto1594298771915.jpg', '11', '防晒 防尘 防异味', '2020-07-08', '500', '1');
INSERT INTO `goods` VALUES ('19', '一次性口罩儿童用', 'goodsPhoto1594298620843.jpg', '10', '一次性三层防护口罩含熔喷层', '2020-07-09', '500', '1');
INSERT INTO `goods` VALUES ('20', '地球口罩', 'goodsPhoto1594298713595.jpg', '30', '防异味 防尘', '2020-07-09', '500', '1');
INSERT INTO `goods` VALUES ('21', '情侣口罩', 'goodsPhoto1594298771915.jpg', '40', '买一送一 高效防护 配套购买 双重保护', '2020-07-09', '500', '1');
INSERT INTO `goods` VALUES ('22', '手术口罩', 'goodsPhoto1594298820471.jpg', '50', '防粉尘透气白色蓝色，防护高效', '2020-07-09', '200', '1');
INSERT INTO `goods` VALUES ('23', '登山口罩', 'goodsPhoto1594298897791.jpg', '60', '登山必备 防护脸部 防湿 防尘', '2020-07-09', '300', '1');
INSERT INTO `goods` VALUES ('24', '水银温度计', 'goodsPhoto1594298983536.jpg', '40', '医用品质 传统准确 水银体温计', '2020-07-09', '300', '3');
INSERT INTO `goods` VALUES ('25', '快速测温枪', 'goodsPhoto1594299057275.jpg', '300', '电子体温计家用儿童成人温度计医用体温枪精准额温枪', '2020-07-09', '200', '3');
INSERT INTO `goods` VALUES ('26', '儿童测温枪', 'goodsPhoto1594299100045.jpg', '300', '儿童成人温度计医用体温枪精准', '2020-07-09', '200', '3');
INSERT INTO `goods` VALUES ('27', '水银体温计', 'goodsPhoto1594299157873.jpg', '50', '水银体温计医用家用腋下婴儿儿童成人测温仪准确高精度温度计', '2020-07-09', '200', '3');
INSERT INTO `goods` VALUES ('28', '儿童水银体温计', 'goodsPhoto1594299238731.jpg', '60', '高精度红水温度计玻璃棒式酒精水银温度表', '2020-07-09', '200', '3');
INSERT INTO `goods` VALUES ('29', '维生素B', 'goodsPhoto1594299318915.jpg', '40', '维b b1 b2 b6 b12熬夜常备', '2020-07-09', '200', '4');
INSERT INTO `goods` VALUES ('30', '维生素C', 'goodsPhoto1594299364128.jpg', '10', '男士多维青年成年硒钙片锌b12b族', '2020-07-09', '300', '4');
INSERT INTO `goods` VALUES ('31', '维生素V', 'goodsPhoto1594299418545.jpg', '50', '软胶囊 500mg/粒*60粒*2瓶VE', '2020-07-09', '300', '4');
INSERT INTO `goods` VALUES ('32', '维生素N', 'goodsPhoto1594299484601.jpg', '60', '汤臣倍健天然维生素', '2020-07-09', '500', '4');
INSERT INTO `goods` VALUES ('33', '维生素Q', 'goodsPhoto1594299530334.jpg', '60', '乳液补水保湿ve乳维生素Q洁面乳面霜护肤品男女', '2020-07-09', '500', '4');
INSERT INTO `goods` VALUES ('34', '维生素F', 'goodsPhoto1594299573730.jpg', '40', '嫩肤 改善皱纹 改善黯黄 温和', '2020-07-09', '100', '4');
INSERT INTO `goods` VALUES ('35', '维生素K', 'goodsPhoto1594299627454.jpg', '300', '本品为膳食营养补充食品', '2020-07-09', '300', '4');
INSERT INTO `goods` VALUES ('36', '维生素M', 'goodsPhoto1594299661541.jpg', '600', '健美生维生素M咀嚼片进口儿童成人', '2020-07-09', '500', '4');
INSERT INTO `goods` VALUES ('37', '高露洁洗手液', 'goodsPhoto1594299715422.jpg', '40', '快速杀菌 持久防护', '2020-07-09', '300', '2');
INSERT INTO `goods` VALUES ('38', '黑人洗手液', 'goodsPhoto1594299787680.jpg', '10', '补充装 需搭配威露士泡沫洗手液瓶子使用哦', '2020-07-09', '100', '2');
INSERT INTO `goods` VALUES ('39', '蓝月亮洗手液', 'goodsPhoto1594299853940.jpg', '50', '蓝月亮洗手液 持久杀菌 远离病毒', '2020-07-09', '200', '2');
INSERT INTO `goods` VALUES ('40', '79消毒液', 'goodsPhoto1594299893912.jpg', '70', '环保超值装儿童可用', '2020-07-09', '200', '2');
INSERT INTO `goods` VALUES ('41', '奥利给洗手液', 'goodsPhoto1594299950617.jpg', '10', '洗就完了 超强杀菌 病毒无法靠近', '2020-07-09', '300', '2');
INSERT INTO `goods` VALUES ('42', '滴露洗手液', 'goodsPhoto1594300014476.jpg', '50', '外出便携带学生杀菌免水洗手液', '2020-07-09', '200', '2');
INSERT INTO `goods` VALUES ('43', '舒肤佳洗手液', 'goodsPhoto1594300042305.jpg', '60', '随时随地 清洁双手 出游必备sf3', '2020-07-09', '200', '2');
INSERT INTO `orders` VALUES ('10', '02802208575159435880384456', '210', '79消毒液*3', '2020-07-10 13:26:43', '02802208575', '1');
INSERT INTO `touch` VALUES ('1', '张三', '中国', '15681658906', '3347499617@qq.com', '哈哈哈哈哈哈', '0');
INSERT INTO `touch` VALUES ('2', 'casa', '中国', '13219289644', '3347499617@qq.com', 'emmmmmmmm', '1');
INSERT INTO `user` VALUES ('02802208575', 'e10adc3949ba59abbe56e057f20f883e', 'emmm', '18080515070@qq.com', '女', 'yh.png', '2020-07-01', '0', '1');
INSERT INTO `user` VALUES ('232323', '2467d3744600858cc9026d5ac6005305', '2323', 'mafeifei@11.COM', '男', 'yh.png', '2020-07-07', '1', '1');
INSERT INTO `user` VALUES ('admin', 'e10adc3949ba59abbe56e057f20f883e', '系统管理员', '3347499617@qq.com', '男', 'yh.png', '2020-06-30', '1', '1');
INSERT INTO `user` VALUES ('lisi123456', 'e10adc3949ba59abbe56e057f20f883e', '哈哈哈哈哈', '18080515070@qq.com', '女', 'yh.png', '2020-07-05', '0', '1');
INSERT INTO `user` VALUES ('zhangSan', 'e10adc3949ba59abbe56e057f20f883e', '张三', '18080515070@qq.com', '男', 'yh.png', '2020-06-30', '0', '1');
