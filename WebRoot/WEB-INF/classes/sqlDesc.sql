/*      管理员           */
DROP TABLE IF EXISTS `t_manager`;
CREATE TABLE `t_manager` (
  `f_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_username` varchar(255) DEFAULT NULL,
  `f_password` varchar(255) DEFAULT NULL,
  `f_card_f_count` varchar(255) DEFAULT NULL,
  `f_card_l_count` varchar(255) DEFAULT NULL,
  `f_card_l_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`f_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*       总代          */
DROP TABLE IF EXISTS `t_mainproxy`;
CREATE TABLE `t_mainproxy` (
  `f_user_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_username` varchar(255) DEFAULT NULL,
  `f_password` varchar(255) DEFAULT NULL,
  `f_ini_password` varchar(255) DEFAULT NULL,
  `f_card_l_time` date DEFAULT NULL,
  `f_card_l_count` int(50) DEFAULT NULL,
  `f_card_f_count` int(50) DEFAULT NULL,
  `f_income` int(20) DEFAULT NULL,
  `f_address` varchar(255) DEFAULT NULL,
  `f_contact_name` varchar(255) DEFAULT NULL,
  `f_contact_phone` varchar(255) DEFAULT NULL,
  `f_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_emergency_contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*       代理          */
DROP TABLE IF EXISTS `t_proxy`;
CREATE TABLE `t_proxy` (
  `f_user_id` int(10) NOT NULL AUTO_INCREMENT,
  `f_username` varchar(255) DEFAULT NULL,
  `f_password` varchar(255) DEFAULT NULL,
  `f_ini_password` varchar(255) DEFAULT NULL,
  `f_card_l_count` varchar(255) DEFAULT NULL COMMENT '限时卡',
  `f_card_l_time` date DEFAULT NULL,
  `f_card_f_count` int(50) DEFAULT NULL COMMENT '永久卡',
  `f_income` int(20) DEFAULT NULL,
  `f_address` varchar(255) DEFAULT NULL,
  `f_contact_name` varchar(255) DEFAULT NULL,
  `f_contact_phone` varchar(255) DEFAULT NULL,
  `f_emergency_contact` varchar(255) DEFAULT NULL,
  `f_create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_recomend_person` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8;
/*       用户表                 */
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL,
  `open_id` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `union_id` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uuid` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `device_info` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sex` int(11) NOT NULL DEFAULT '0',
  `province` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `country` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `version` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `room_card` int(11) NOT NULL DEFAULT '0',
  `room_number` int(11) NOT NULL DEFAULT '0',
  `head_icon_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `phone_number` bigint(20) NOT NULL DEFAULT '0',
  `recommend_uid` bigint(20) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `last_login_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*      售卡记录           */
DROP TABLE IF EXISTS `t_cardrecord`;
CREATE TABLE `t_cardrecord` (
  `f_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `f_seller_id` varchar(11) NOT NULL,
  `f_seller_name` varchar(255) NOT NULL,
  `f_sell_to_type` tinyint(255) NOT NULL COMMENT '0.公司->总代，1.公司->代理，2.公司->玩家，3.总代->代理，4.总代->玩家5.代理->代理，6代理->玩家',
  `f_sell_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `f_income` int(255) DEFAULT NULL,
  `f_sell_type` tinyint(10) DEFAULT NULL COMMENT '0,销售,1,赠送',
  `f_card_l_count` varchar(255) DEFAULT NULL COMMENT '限时卡',
  `f_card_f_count` int(255) DEFAULT NULL COMMENT '永久卡',
  `f_buyer_id` varchar(11) NOT NULL,
  `f_buyer_name` varchar(255) NOT NULL,
  `f_memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;


/*                 */
/*                 */
/*                 */
