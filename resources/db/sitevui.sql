/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : sitevui

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2015-12-03 00:39:01
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userrole_id` int(11) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date_of_birth` datetime DEFAULT '0000-00-00 00:00:00',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone_1` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `phone_2` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `phone_3` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `register_key` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO users VALUES ('1', '1', 'duy.phan2509@outlook.com', '$2y$10$OhUkdcdm5JlAnwr1s2VO/eAxpKiU66wLMVqsiQW9yesyheGs7/Fj6', 'Webmaster', '', null, 'PHP developer, Frontend developer', '2015-03-04 22:27:35', null, '/uploads/minh-duc.png', '0984848519', '0915428202', '01993032562', 'activated', null, 'd126ERHB56Swvr8vsM0PuxQNV0b2jQ5k0lBKwT9VTD5TRkqhzPegzdkWLHJz', '1', '2014-10-14 00:10:13', '2015-09-15 01:50:07');
INSERT INTO users VALUES ('15', '3', 'admin@vto.com', '$2y$10$qZOddgitcKNDydQ2C/VDd.ki9ip/tzizJApG.4JVHhD5hyaUt3Bke', 'Administrator', '', null, null, '0000-00-00 00:00:00', null, '', '', '', '', 'activated', null, 'gA4ArpvG87zifUlBXxySoln7ozMRAGD6utVltxHRpTNZQ72PLXD2JRSnT5Fe', '2', '2015-05-27 20:58:15', '2015-09-19 06:37:17');
