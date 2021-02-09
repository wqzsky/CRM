/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2021-02-09 22:45:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tbl_activity
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity`;
CREATE TABLE `tbl_activity` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `startDate` char(10) DEFAULT NULL,
  `endDate` char(10) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_activity
-- ----------------------------
INSERT INTO `tbl_activity` VALUES ('04fc02fc777b47cabe510c288d2e48ac', '06f5fc056eac41558a964f96daa7f27c', '发传单1', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:04:30', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('093d37c53fc54a7eaab1a65a0d2dd057', '06f5fc056eac41558a964f96daa7f27c', '发传单10', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:05:10', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('49829ae54d534a2faa7ee7ab1d1d7b3f', '06f5fc056eac41558a964f96daa7f27c', '发传单6', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:04:53', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('4b309a57299845218243badfdf9651f2', '06f5fc056eac41558a964f96daa7f27c', '发传单', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:04:10', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('6c3d5a7d5dd841f1bdea0d9a5e16a3f4', '06f5fc056eac41558a964f96daa7f27c', '发传单2', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:04:35', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('8c0041398592456e82cb9cc5589ba8a6', '06f5fc056eac41558a964f96daa7f27c', '发传单134', '2021-02-17', '2021-02-17', '1000', '发传单13', '2021-02-05 12:22:05', '李四', '2021-02-05 19:37:04', '李四');
INSERT INTO `tbl_activity` VALUES ('922c89f0bdf640e9a78c526f93d182e7', '06f5fc056eac41558a964f96daa7f27c', '百度', '2021-02-11', '2021-02-24', '1000', '百度推广', '2021-02-04 19:33:01', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('934953a8bebe4a1bad2e98eb57777082', '06f5fc056eac41558a964f96daa7f27c', '发传单110', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:05:23', '李四', '2021-02-05 12:18:27', '李四');
INSERT INTO `tbl_activity` VALUES ('94ca2100b05d4cad8737a90a0c65b8d8', '06f5fc056eac41558a964f96daa7f27c', '发传单4', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:04:44', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('a4d57c24a03544aebc7a76a643aa8da1', '06f5fc056eac41558a964f96daa7f27c', '123', '2021-02-04', '2021-02-17', '1000', '描述了一段故事', '2021-02-04 19:27:10', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('a8832ca08f6e41cda46c9e9db3595015', '06f5fc056eac41558a964f96daa7f27c', '发传单8', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:05:02', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('e4d7bd179451429dbe067e1ed9b89fad', '06f5fc056eac41558a964f96daa7f27c', '发传单7', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:04:57', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('ead89acc1a3f44dd945e0efd356e9ced', '06f5fc056eac41558a964f96daa7f27c', '发传单1', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:04:15', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('f04dea8c40624ef8bfad9fc2f18ad978', '06f5fc056eac41558a964f96daa7f27c', '发传单5', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:04:49', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('f1e031e71f7c432fb4879b939be9271c', '06f5fc056eac41558a964f96daa7f27c', '百度2', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:05:06', '李四', null, null);
INSERT INTO `tbl_activity` VALUES ('ff72be7ffb71470b8f728c00e15d897c', '06f5fc056eac41558a964f96daa7f27c', '百度1', '2021-02-04', '2021-02-16', '1000', '1', '2021-02-04 22:04:39', '李四', null, null);

-- ----------------------------
-- Table structure for tbl_activity_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_activity_remark`;
CREATE TABLE `tbl_activity_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL COMMENT '0表示未修改，1表示已修改',
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_activity_remark
-- ----------------------------
INSERT INTO `tbl_activity_remark` VALUES ('0b6dbd721e914f30a74630872ebf78de', '111', '2021-02-05 23:00:34', '李四', null, null, '0', 'f1e031e71f7c432fb4879b939be9271c');
INSERT INTO `tbl_activity_remark` VALUES ('8c0041398592456e82cb9cc5589ba8a8', '备注一属于发传单134', '2021-02-04 22:04:30', '李四', '2021-02-06 00:18:57', null, '1', '8c0041398592456e82cb9cc5589ba8a6');
INSERT INTO `tbl_activity_remark` VALUES ('8c0041398592456e82cb9cc5589ba8a9', '备注一（）属于发传单134', '2021-02-04 23:04:30', '李四', '2021-02-04 23:04:30', '李四', '0', '8c0041398592456e82cb9cc5589ba8a6');
INSERT INTO `tbl_activity_remark` VALUES ('d2183378b0ec42f8b4f6b17dd62fa14e', '111', '2021-02-05 23:00:05', '李四', null, null, '0', '8c0041398592456e82cb9cc5589ba8a6');

-- ----------------------------
-- Table structure for tbl_clue
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue`;
CREATE TABLE `tbl_clue` (
  `id` char(32) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `appellation` varchar(255) DEFAULT NULL,
  `owner` char(32) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `mphone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_clue
-- ----------------------------
INSERT INTO `tbl_clue` VALUES ('06f5fc056eac41558a964f96daa7f27c', '完将领', '教授', '06f5fc056eac41558a964f96daa7f27c', '1', '1', '1', '1', '1', '11', '虚假线索', '销售邮件', '李四', '2021-02-06 20:47:42', null, null, '1', '1', '2021-02-06', '1');

-- ----------------------------
-- Table structure for tbl_clue_activity_relation
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_activity_relation`;
CREATE TABLE `tbl_clue_activity_relation` (
  `id` char(32) NOT NULL,
  `clueId` char(32) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_clue_activity_relation
-- ----------------------------
INSERT INTO `tbl_clue_activity_relation` VALUES ('4b309a57299845218243badfdf9651f3', '06f5fc056eac41558a964f96daa7f27c', '04fc02fc777b47cabe510c288d2e48ac');

-- ----------------------------
-- Table structure for tbl_clue_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_clue_remark`;
CREATE TABLE `tbl_clue_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `clueId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_clue_remark
-- ----------------------------
INSERT INTO `tbl_clue_remark` VALUES ('03df06dee5114caf980e04119d86cdb5', '完将领', null, null, null, null, null, '06f5fc056eac41558a964f96daa7f27c');

-- ----------------------------
-- Table structure for tbl_contacts
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts`;
CREATE TABLE `tbl_contacts` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `appellation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mphone` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `birth` char(10) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contacts
-- ----------------------------
INSERT INTO `tbl_contacts` VALUES ('30af471820ef4f0cbe739ac13183ac14', '06f5fc056eac41558a964f96daa7f27c', '聊天', '69b0225939dc4a25b708a56397d59c03', '马云', '先生', '1', '11', '1', null, '李四', '2021-02-07 20:52:12', null, null, '2', '2', '2021-02-06', '2');
INSERT INTO `tbl_contacts` VALUES ('4cc41ce51e5d4a3a96d4d3d014d61ae6', '06f5fc056eac41558a964f96daa7f27c', '聊天', '69b0225939dc4a25b708a56397d59c03', '马云', '先生', '1', '11', '1', null, '李四', '2021-02-07 20:56:17', null, null, '2', '2', '2021-02-06', '2');

-- ----------------------------
-- Table structure for tbl_contacts_activity_relation
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_activity_relation`;
CREATE TABLE `tbl_contacts_activity_relation` (
  `id` char(32) NOT NULL,
  `contactsId` char(32) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contacts_activity_relation
-- ----------------------------
INSERT INTO `tbl_contacts_activity_relation` VALUES ('2002a9c14bab44d283f10518ad810341', '4cc41ce51e5d4a3a96d4d3d014d61ae6', 'ff72be7ffb71470b8f728c00e15d897c');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('48655d07ca46493387734f20cf2c5de7', '4cc41ce51e5d4a3a96d4d3d014d61ae6', '922c89f0bdf640e9a78c526f93d182e7');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('d4535f6c3ec345dd889421c75e30c492', '4cc41ce51e5d4a3a96d4d3d014d61ae6', '093d37c53fc54a7eaab1a65a0d2dd057');
INSERT INTO `tbl_contacts_activity_relation` VALUES ('d64223bb60564aa0825de842e1805201', '4cc41ce51e5d4a3a96d4d3d014d61ae6', 'f1e031e71f7c432fb4879b939be9271c');

-- ----------------------------
-- Table structure for tbl_contacts_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts_remark`;
CREATE TABLE `tbl_contacts_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `contactsId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contacts_remark
-- ----------------------------
INSERT INTO `tbl_contacts_remark` VALUES ('0f3d6b33a2b54402acfe29ad3985dc81', '马云', '李四', '2021-02-07 20:56:17', null, null, '0', '4cc41ce51e5d4a3a96d4d3d014d61ae6');
INSERT INTO `tbl_contacts_remark` VALUES ('3f70de91f3c84733b8220704e03e846e', '马云', '李四', '2021-02-07 20:56:17', null, null, '0', '4cc41ce51e5d4a3a96d4d3d014d61ae6');
INSERT INTO `tbl_contacts_remark` VALUES ('cf25cc38a4d64afe9e5353471049e5c1', '马云', '李四', '2021-02-07 20:56:17', null, null, '0', '4cc41ce51e5d4a3a96d4d3d014d61ae6');

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES ('69b0225939dc4a25b708a56397d59c03', '06f5fc056eac41558a964f96daa7f27c', '阿里巴巴1', '1', '1', '李四', '2021-02-07 20:52:12', null, null, '2', '2021-02-06', '2', '2');
INSERT INTO `tbl_customer` VALUES ('69b0225939dc4a25b708a56397d59c04', '06f5fc056eac41558a964f96daa7f27c', '阿里巴巴112', '1', '1', '李四', '2021-02-07 20:52:12', null, null, '2', '2021-02-06', '2', '2');
INSERT INTO `tbl_customer` VALUES ('69b0225939dc4a25b708a56397d59c05', '06f5fc056eac41558a964f96daa7f27c', '12阿里巴巴1', '1', '1', '李四', '2021-02-07 20:52:12', null, null, '2', '2021-02-06', '2', '2');

-- ----------------------------
-- Table structure for tbl_customer_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer_remark`;
CREATE TABLE `tbl_customer_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_customer_remark
-- ----------------------------
INSERT INTO `tbl_customer_remark` VALUES ('02c2296ca6fe474ea04a28bb03de38b7', '马云', '李四', '2021-02-07 20:56:17', null, null, '0', '69b0225939dc4a25b708a56397d59c03');
INSERT INTO `tbl_customer_remark` VALUES ('4e25fe778c4d444c94913c9348fc206f', '马云', '李四', '2021-02-07 20:56:17', null, null, '0', '69b0225939dc4a25b708a56397d59c03');
INSERT INTO `tbl_customer_remark` VALUES ('57d292b488f64d79ac093ddfbd063287', '马云', '李四', '2021-02-07 20:52:12', null, null, '0', '69b0225939dc4a25b708a56397d59c03');
INSERT INTO `tbl_customer_remark` VALUES ('8e85d00d6dd14c078f5fcc91ee98c75c', '马云', '李四', '2021-02-07 20:52:12', null, null, '0', '69b0225939dc4a25b708a56397d59c03');
INSERT INTO `tbl_customer_remark` VALUES ('988b547d1efa40e58a321e2044dff3f4', '马云', '李四', '2021-02-07 20:56:17', null, null, '0', '69b0225939dc4a25b708a56397d59c03');
INSERT INTO `tbl_customer_remark` VALUES ('f7e0faed5d6046e5971f374cf3bae3d4', '马云', '李四', '2021-02-07 20:52:12', null, null, '0', '69b0225939dc4a25b708a56397d59c03');

-- ----------------------------
-- Table structure for tbl_dic_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_type`;
CREATE TABLE `tbl_dic_type` (
  `code` varchar(255) NOT NULL COMMENT '编码是主键，不能为空，不能含有中文。',
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dic_type
-- ----------------------------
INSERT INTO `tbl_dic_type` VALUES ('appellation', '称呼', '');
INSERT INTO `tbl_dic_type` VALUES ('clueState', '线索状态', '');
INSERT INTO `tbl_dic_type` VALUES ('returnPriority', '回访优先级', '');
INSERT INTO `tbl_dic_type` VALUES ('returnState', '回访状态', '');
INSERT INTO `tbl_dic_type` VALUES ('source', '来源', '');
INSERT INTO `tbl_dic_type` VALUES ('stage', '阶段', '');
INSERT INTO `tbl_dic_type` VALUES ('transactionType', '交易类型', '');

-- ----------------------------
-- Table structure for tbl_dic_value
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dic_value`;
CREATE TABLE `tbl_dic_value` (
  `id` char(32) NOT NULL COMMENT '主键，采用UUID',
  `value` varchar(255) DEFAULT NULL COMMENT '不能为空，并且要求同一个字典类型下字典值不能重复，具有唯一性。',
  `text` varchar(255) DEFAULT NULL COMMENT '可以为空',
  `orderNo` varchar(255) DEFAULT NULL COMMENT '可以为空，但不为空的时候，要求必须是正整数',
  `typeCode` varchar(255) DEFAULT NULL COMMENT '外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dic_value
-- ----------------------------
INSERT INTO `tbl_dic_value` VALUES ('06e3cbdf10a44eca8511dddfc6896c55', '虚假线索', '虚假线索', '4', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('0fe33840c6d84bf78df55d49b169a894', '销售邮件', '销售邮件', '8', 'source');
INSERT INTO `tbl_dic_value` VALUES ('12302fd42bd349c1bb768b19600e6b20', '交易会', '交易会', '11', 'source');
INSERT INTO `tbl_dic_value` VALUES ('1615f0bb3e604552a86cde9a2ad45bea', '最高', '最高', '2', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('176039d2a90e4b1a81c5ab8707268636', '教授', '教授', '5', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('1e0bd307e6ee425599327447f8387285', '将来联系', '将来联系', '2', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2173663b40b949ce928db92607b5fe57', '丢失线索', '丢失线索', '5', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('2876690b7e744333b7f1867102f91153', '未启动', '未启动', '1', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('29805c804dd94974b568cfc9017b2e4c', '07成交', '07成交', '7', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('310e6a49bd8a4962b3f95a1d92eb76f4', '试图联系', '试图联系', '1', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('31539e7ed8c848fc913e1c2c93d76fd1', '博士', '博士', '4', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('37ef211719134b009e10b7108194cf46', '01资质审查', '01资质审查', '1', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('391807b5324d4f16bd58c882750ee632', '08丢失的线索', '08丢失的线索', '8', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('3a39605d67da48f2a3ef52e19d243953', '聊天', '聊天', '14', 'source');
INSERT INTO `tbl_dic_value` VALUES ('474ab93e2e114816abf3ffc596b19131', '低', '低', '3', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('48512bfed26145d4a38d3616e2d2cf79', '广告', '广告', '1', 'source');
INSERT INTO `tbl_dic_value` VALUES ('4d03a42898684135809d380597ed3268', '合作伙伴研讨会', '合作伙伴研讨会', '9', 'source');
INSERT INTO `tbl_dic_value` VALUES ('59795c49896947e1ab61b7312bd0597c', '先生', '先生', '1', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('5c6e9e10ca414bd499c07b886f86202a', '高', '高', '1', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('67165c27076e4c8599f42de57850e39c', '夫人', '夫人', '2', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('68a1b1e814d5497a999b8f1298ace62b', '09因竞争丢失关闭', '09因竞争丢失关闭', '9', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('6b86f215e69f4dbd8a2daa22efccf0cf', 'web调研', 'web调研', '13', 'source');
INSERT INTO `tbl_dic_value` VALUES ('72f13af8f5d34134b5b3f42c5d477510', '合作伙伴', '合作伙伴', '6', 'source');
INSERT INTO `tbl_dic_value` VALUES ('7c07db3146794c60bf975749952176df', '未联系', '未联系', '6', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('86c56aca9eef49058145ec20d5466c17', '内部研讨会', '内部研讨会', '10', 'source');
INSERT INTO `tbl_dic_value` VALUES ('9095bda1f9c34f098d5b92fb870eba17', '进行中', '进行中', '3', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('954b410341e7433faa468d3c4f7cf0d2', '已有业务', '已有业务', '1', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('966170ead6fa481284b7d21f90364984', '已联系', '已联系', '3', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('96b03f65dec748caa3f0b6284b19ef2f', '推迟', '推迟', '2', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('97d1128f70294f0aac49e996ced28c8a', '新业务', '新业务', '2', 'transactionType');
INSERT INTO `tbl_dic_value` VALUES ('9ca96290352c40688de6596596565c12', '完成', '完成', '4', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('9e6d6e15232549af853e22e703f3e015', '需要条件', '需要条件', '7', 'clueState');
INSERT INTO `tbl_dic_value` VALUES ('9ff57750fac04f15b10ce1bbb5bb8bab', '02需求分析', '02需求分析', '2', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('a70dc4b4523040c696f4421462be8b2f', '等待某人', '等待某人', '5', 'returnState');
INSERT INTO `tbl_dic_value` VALUES ('a83e75ced129421dbf11fab1f05cf8b4', '推销电话', '推销电话', '2', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ab8472aab5de4ae9b388b2f1409441c1', '常规', '常规', '5', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('ab8c2a3dc05f4e3dbc7a0405f721b040', '05提案/报价', '05提案/报价', '5', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('b924d911426f4bc5ae3876038bc7e0ad', 'web下载', 'web下载', '12', 'source');
INSERT INTO `tbl_dic_value` VALUES ('c13ad8f9e2f74d5aa84697bb243be3bb', '03价值建议', '03价值建议', '3', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('c83c0be184bc40708fd7b361b6f36345', '最低', '最低', '4', 'returnPriority');
INSERT INTO `tbl_dic_value` VALUES ('db867ea866bc44678ac20c8a4a8bfefb', '员工介绍', '员工介绍', '3', 'source');
INSERT INTO `tbl_dic_value` VALUES ('e44be1d99158476e8e44778ed36f4355', '04确定决策者', '04确定决策者', '4', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('e5f383d2622b4fc0959f4fe131dafc80', '女士', '女士', '3', 'appellation');
INSERT INTO `tbl_dic_value` VALUES ('e81577d9458f4e4192a44650a3a3692b', '06谈判/复审', '06谈判/复审', '6', 'stage');
INSERT INTO `tbl_dic_value` VALUES ('fb65d7fdb9c6483db02713e6bc05dd19', '在线商场', '在线商场', '5', 'source');
INSERT INTO `tbl_dic_value` VALUES ('fd677cc3b5d047d994e16f6ece4d3d45', '公开媒介', '公开媒介', '7', 'source');
INSERT INTO `tbl_dic_value` VALUES ('ff802a03ccea4ded8731427055681d48', '外部介绍', '外部介绍', '4', 'source');

-- ----------------------------
-- Table structure for tbl_tran
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran`;
CREATE TABLE `tbl_tran` (
  `id` char(32) NOT NULL,
  `owner` char(32) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `expectedDate` char(10) DEFAULT NULL,
  `customerId` char(32) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `activityId` char(32) DEFAULT NULL,
  `contactsId` char(32) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contactSummary` varchar(255) DEFAULT NULL,
  `nextContactTime` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran
-- ----------------------------
INSERT INTO `tbl_tran` VALUES ('4c1c2145c8de4329911f912562a32d02', '06f5fc056eac41558a964f96daa7f27c', '100', '数字媒体学', '2021-02-08', '69b0225939dc4a25b708a56397d59c03', '04确定决策者', '已有业务', '聊天', '04fc02fc777b47cabe510c288d2e48ac', '30af471820ef4f0cbe739ac13183ac14', '李四', '2021-02-07 20:52:12', '李四', null, '2', '2', '2021-02-06');
INSERT INTO `tbl_tran` VALUES ('aefe3937e33c43c18b5324a645d2e0d0', '06f5fc056eac41558a964f96daa7f27c', '100', '阿里巴巴1', '2021-02-08', '69b0225939dc4a25b708a56397d59c03', '01资质审查', '已有业务', '内部研讨会', '04fc02fc777b47cabe510c288d2e48ac', '30af471820ef4f0cbe739ac13183ac14', '李四', '2021-02-08 11:32:39', null, null, '2', '2', '1899-12-31');
INSERT INTO `tbl_tran` VALUES ('c71abe72bc604dacb8147e9692335c71', '06f5fc056eac41558a964f96daa7f27c', '100', '阿里巴巴1', '2021-02-09', '287dc1e145114d128ab90de37bdd10b5', '02需求分析', '已有业务', '内部研讨会', '04fc02fc777b47cabe510c288d2e48ac', '30af471820ef4f0cbe739ac13183ac14', '李四', '2021-02-08 11:32:05', null, null, '1', '1', '1899-12-31');

-- ----------------------------
-- Table structure for tbl_tran_history
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_history`;
CREATE TABLE `tbl_tran_history` (
  `id` char(32) NOT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `expectedDate` char(10) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `tranId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran_history
-- ----------------------------
INSERT INTO `tbl_tran_history` VALUES ('03bb61585b7746a48081228f1ac94c5a', null, '100', '2021-02-08', '2021-02-08 23:56:30', '李四', null);
INSERT INTO `tbl_tran_history` VALUES ('0e23cffad6db4595b1399f68205bdd58', null, '100', '2021-02-08', '2021-02-08 23:29:39', '李四', null);
INSERT INTO `tbl_tran_history` VALUES ('41689440697347c7adf5406103d37607', null, '100', '2021-02-08', '2021-02-08 23:56:28', '李四', null);
INSERT INTO `tbl_tran_history` VALUES ('47a6fef148094caeb5db465f15d298e3', null, '100', '2021-02-08', '2021-02-08 23:29:45', '李四', null);
INSERT INTO `tbl_tran_history` VALUES ('4eae90df110340deb6568517942c16de', '02需求分析', '100', '2021-02-09', '2021-02-08 11:32:06', '李四', 'c71abe72bc604dacb8147e9692335c71');
INSERT INTO `tbl_tran_history` VALUES ('702b2f1e0a5046d7995b5d921c88e941', null, '100', '2021-02-08', '2021-02-08 23:56:26', '李四', null);
INSERT INTO `tbl_tran_history` VALUES ('70541a5665f54d8385913407f23cddbb', null, '100', '2021-02-08', '2021-02-08 23:56:33', '李四', null);
INSERT INTO `tbl_tran_history` VALUES ('7e6b3a27cbd947ff8acc200e22ff7bd7', null, '100', '2021-02-08', '2021-02-08 23:29:30', '李四', null);
INSERT INTO `tbl_tran_history` VALUES ('971506b60dc3426fa1e7b2a26ffa5531', null, '100', '2021-02-08', '2021-02-08 23:56:36', '李四', null);
INSERT INTO `tbl_tran_history` VALUES ('9b887d6d59df43d5abf8ddeebf4b84df', null, '100', '2021-02-08', '2021-02-08 23:56:42', '李四', null);
INSERT INTO `tbl_tran_history` VALUES ('bf120b206bde4c0b97b3575fa206a467', null, '100', '2021-02-08', '2021-02-08 23:29:32', '李四', null);
INSERT INTO `tbl_tran_history` VALUES ('c3d4b9b941ff4a28b544e0761b1433c9', '01资质审查', '100', '2021-02-08', '2021-02-08 11:32:39', '李四', '4c1c2145c8de4329911f912562a32d02');
INSERT INTO `tbl_tran_history` VALUES ('e3d31faa0fc24b47a97e22b501496811', null, '100', '2021-02-08', '2021-02-08 23:56:39', '李四', null);
INSERT INTO `tbl_tran_history` VALUES ('fe98a25050ea4ff1afa041b46101fa60', null, '100', '2021-02-08', '2021-02-08 23:56:37', '李四', null);

-- ----------------------------
-- Table structure for tbl_tran_remark
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tran_remark`;
CREATE TABLE `tbl_tran_remark` (
  `id` char(32) NOT NULL,
  `noteContent` varchar(255) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editFlag` char(1) DEFAULT NULL,
  `tranId` char(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_tran_remark
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` char(32) NOT NULL COMMENT 'uuid\r\n            ',
  `loginAct` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `loginPwd` varchar(255) DEFAULT NULL COMMENT '密码不能采用明文存储，采用密文，MD5加密之后的数据',
  `email` varchar(255) DEFAULT NULL,
  `expireTime` char(19) DEFAULT NULL COMMENT '失效时间为空的时候表示永不失效，失效时间为2018-10-10 10:10:10，则表示在该时间之前该账户可用。',
  `lockState` char(1) DEFAULT NULL COMMENT '锁定状态为空时表示启用，为0时表示锁定，为1时表示启用。',
  `deptno` char(4) DEFAULT NULL,
  `allowIps` varchar(255) DEFAULT NULL COMMENT '允许访问的IP为空时表示IP地址永不受限，允许访问的IP可以是一个，也可以是多个，当多个IP地址的时候，采用半角逗号分隔。允许IP是192.168.100.2，表示该用户只能在IP地址为192.168.100.2的机器上使用。',
  `createTime` char(19) DEFAULT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `editTime` char(19) DEFAULT NULL,
  `editBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('06f5fc056eac41558a964f96daa7f27c', 'ls', '李四', '202cb962ac59075b964b07152d234b70', 'ls@163.com', '2022-11-27 21:50:05', '1', 'A001', '192.168.1.1,127.0.0.1,0:0:0:0:0:0:0:1', '2018-11-22 12:11:40', '李四', null, null);
INSERT INTO `tbl_user` VALUES ('40f6cdea0bd34aceb77492a1656d9fb3', 'zs', '张三', '202cb962ac59075b964b07152d234b70', 'zs@qq.com', '2018-11-30 23:50:55', '0', 'A001', '192.168.1.1,192.168.1.2,127.0.0.1', '2018-11-22 11:37:34', '张三', null, null);
