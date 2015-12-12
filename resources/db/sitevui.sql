/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : sitevui

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2015-12-13 04:00:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `countries`
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_3_code` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_2_code` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_name` char(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_city` int(11) DEFAULT '0',
  `is_published` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO countries VALUES ('1', 'AFG', 'AF', 'Afghanistan', '34', '0');
INSERT INTO countries VALUES ('2', 'ALB', 'AL', 'Albania', '12', '0');
INSERT INTO countries VALUES ('3', 'DZA', 'DZ', 'Algeria', '48', '0');
INSERT INTO countries VALUES ('4', 'ASM', 'AS', 'American Samoa', '0', '0');
INSERT INTO countries VALUES ('5', 'AND', 'AD', 'Andorra', '7', '0');
INSERT INTO countries VALUES ('6', 'AGO', 'AO', 'Angola', '18', '0');
INSERT INTO countries VALUES ('7', 'AIA', 'AI', 'Anguilla', '0', '0');
INSERT INTO countries VALUES ('8', 'ATA', 'AQ', 'Antarctica', '0', '0');
INSERT INTO countries VALUES ('9', 'ATG', 'AG', 'Antigua and Barbuda', '8', '0');
INSERT INTO countries VALUES ('10', 'ARG', 'AR', 'Argentina', '24', '0');
INSERT INTO countries VALUES ('11', 'ARM', 'AM', 'Armenia', '11', '0');
INSERT INTO countries VALUES ('12', 'ABW', 'AW', 'Aruba', '0', '0');
INSERT INTO countries VALUES ('13', 'AUS', 'AU', 'Australia', '8', '0');
INSERT INTO countries VALUES ('14', 'AUT', 'AT', 'Austria', '9', '0');
INSERT INTO countries VALUES ('15', 'AZE', 'AZ', 'Azerbaijan', '71', '0');
INSERT INTO countries VALUES ('16', 'BHS', 'BS', 'Bahamas', '21', '0');
INSERT INTO countries VALUES ('17', 'BHR', 'BH', 'Bahrain', '16', '0');
INSERT INTO countries VALUES ('18', 'BGD', 'BD', 'Bangladesh', '6', '0');
INSERT INTO countries VALUES ('19', 'BRB', 'BB', 'Barbados', '11', '0');
INSERT INTO countries VALUES ('20', 'BLR', 'BY', 'Belarus', '7', '0');
INSERT INTO countries VALUES ('21', 'BEL', 'BE', 'Belgium', '13', '0');
INSERT INTO countries VALUES ('22', 'BLZ', 'BZ', 'Belize', '6', '0');
INSERT INTO countries VALUES ('23', 'BEN', 'BJ', 'Benin', '12', '0');
INSERT INTO countries VALUES ('24', 'BMU', 'BM', 'Bermuda', '11', '0');
INSERT INTO countries VALUES ('25', 'BTN', 'BT', 'Bhutan', '18', '0');
INSERT INTO countries VALUES ('26', 'BOL', 'BO', 'Bolivia', '9', '0');
INSERT INTO countries VALUES ('27', 'BIH', 'BA', 'Bosnia and Herzegowina', '3', '0');
INSERT INTO countries VALUES ('28', 'BWA', 'BW', 'Botswana', '9', '0');
INSERT INTO countries VALUES ('29', 'BVT', 'BV', 'Bouvet Island', '0', '0');
INSERT INTO countries VALUES ('30', 'BRA', 'BR', 'Brazil', '27', '0');
INSERT INTO countries VALUES ('31', 'IOT', 'IO', 'British Indian Ocean Territory', '0', '0');
INSERT INTO countries VALUES ('32', 'BRN', 'BN', 'Brunei Darussalam', '12', '0');
INSERT INTO countries VALUES ('33', 'BGR', 'BG', 'Bulgaria', '29', '0');
INSERT INTO countries VALUES ('34', 'BFA', 'BF', 'Burkina Faso', '45', '0');
INSERT INTO countries VALUES ('35', 'BDI', 'BI', 'Burundi', '16', '0');
INSERT INTO countries VALUES ('36', 'KHM', 'KH', 'Cambodia', '22', '0');
INSERT INTO countries VALUES ('37', 'CMR', 'CM', 'Cameroon', '10', '0');
INSERT INTO countries VALUES ('38', 'CAN', 'CA', 'Canada', '13', '0');
INSERT INTO countries VALUES ('39', 'CPV', 'CV', 'Cape Verde', '16', '0');
INSERT INTO countries VALUES ('40', 'CYM', 'KY', 'Cayman Islands', '8', '0');
INSERT INTO countries VALUES ('41', 'CAF', 'CF', 'Central African Republic', '17', '0');
INSERT INTO countries VALUES ('42', 'TCD', 'TD', 'Chad', '14', '0');
INSERT INTO countries VALUES ('43', 'CHL', 'CL', 'Chile', '17', '0');
INSERT INTO countries VALUES ('44', 'CHN', 'CN', 'China', '31', '0');
INSERT INTO countries VALUES ('45', 'CXR', 'CX', 'Christmas Island', '0', '0');
INSERT INTO countries VALUES ('46', 'CCK', 'CC', 'Cocos (Keeling) Islands', '0', '0');
INSERT INTO countries VALUES ('47', 'COL', 'CO', 'Colombia', '33', '0');
INSERT INTO countries VALUES ('48', 'COM', 'KM', 'Comoros', '3', '0');
INSERT INTO countries VALUES ('49', 'COG', 'CG', 'Congo', '11', '0');
INSERT INTO countries VALUES ('50', 'COK', 'CK', 'Cook Islands', '0', '0');
INSERT INTO countries VALUES ('51', 'CRI', 'CR', 'Costa Rica', '7', '0');
INSERT INTO countries VALUES ('52', 'CIV', 'CI', 'Cote D\'Ivoire', '19', '0');
INSERT INTO countries VALUES ('53', 'HRV', 'HR', 'Croatia', '21', '0');
INSERT INTO countries VALUES ('54', 'CUB', 'CU', 'Cuba', '15', '0');
INSERT INTO countries VALUES ('55', 'CYP', 'CY', 'Cyprus', '6', '0');
INSERT INTO countries VALUES ('56', 'CZE', 'CZ', 'Czech Republic', '14', '0');
INSERT INTO countries VALUES ('57', 'DNK', 'DK', 'Denmark', '5', '0');
INSERT INTO countries VALUES ('58', 'DJI', 'DJ', 'Djibouti', '6', '0');
INSERT INTO countries VALUES ('59', 'DMA', 'DM', 'Dominica', '10', '0');
INSERT INTO countries VALUES ('60', 'DOM', 'DO', 'Dominican Republic', '34', '0');
INSERT INTO countries VALUES ('61', 'TMP', 'TP', 'East Timor', '0', '0');
INSERT INTO countries VALUES ('62', 'ECU', 'EC', 'Ecuador', '22', '0');
INSERT INTO countries VALUES ('63', 'EGY', 'EG', 'Egypt', '26', '0');
INSERT INTO countries VALUES ('64', 'SLV', 'SV', 'El Salvador', '14', '0');
INSERT INTO countries VALUES ('65', 'GNQ', 'GQ', 'Equatorial Guinea', '7', '0');
INSERT INTO countries VALUES ('66', 'ERI', 'ER', 'Eritrea', '6', '0');
INSERT INTO countries VALUES ('67', 'EST', 'EE', 'Estonia', '21', '0');
INSERT INTO countries VALUES ('68', 'ETH', 'ET', 'Ethiopia', '11', '0');
INSERT INTO countries VALUES ('69', 'FLK', 'FK', 'Falkland Islands (Malvinas)', '0', '0');
INSERT INTO countries VALUES ('70', 'FRO', 'FO', 'Faroe Islands', '0', '0');
INSERT INTO countries VALUES ('71', 'FJI', 'FJ', 'Fiji', '5', '0');
INSERT INTO countries VALUES ('72', 'FIN', 'FI', 'Finland', '6', '0');
INSERT INTO countries VALUES ('73', 'FRA', 'FR', 'France', '22', '0');
INSERT INTO countries VALUES ('75', 'GUF', 'GF', 'French Guiana', '0', '0');
INSERT INTO countries VALUES ('76', 'PYF', 'PF', 'French Polynesia', '0', '0');
INSERT INTO countries VALUES ('77', 'ATF', 'TF', 'French Southern Territories', '0', '0');
INSERT INTO countries VALUES ('78', 'GAB', 'GA', 'Gabon', '9', '0');
INSERT INTO countries VALUES ('79', 'GMB', 'GM', 'Gambia', '6', '0');
INSERT INTO countries VALUES ('80', 'GEO', 'GE', 'Georgia', '64', '0');
INSERT INTO countries VALUES ('81', 'DEU', 'DE', 'Germany', '16', '0');
INSERT INTO countries VALUES ('82', 'GHA', 'GH', 'Ghana', '10', '0');
INSERT INTO countries VALUES ('83', 'GIB', 'GI', 'Gibraltar', '0', '0');
INSERT INTO countries VALUES ('84', 'GRC', 'GR', 'Greece', '51', '0');
INSERT INTO countries VALUES ('85', 'GRL', 'GL', 'Greenland', '3', '0');
INSERT INTO countries VALUES ('86', 'GRD', 'GD', 'Grenada', '6', '0');
INSERT INTO countries VALUES ('87', 'GLP', 'GP', 'Guadeloupe', '0', '0');
INSERT INTO countries VALUES ('88', 'GUM', 'GU', 'Guam', '0', '0');
INSERT INTO countries VALUES ('89', 'GTM', 'GT', 'Guatemala', '22', '0');
INSERT INTO countries VALUES ('90', 'GIN', 'GN', 'Guinea', '34', '0');
INSERT INTO countries VALUES ('91', 'GNB', 'GW', 'Guinea-bissau', '9', '0');
INSERT INTO countries VALUES ('92', 'GUY', 'GY', 'Guyana', '10', '0');
INSERT INTO countries VALUES ('93', 'HTI', 'HT', 'Haiti', '10', '0');
INSERT INTO countries VALUES ('94', 'HMD', 'HM', 'Heard and Mc Donald Islands', '0', '0');
INSERT INTO countries VALUES ('95', 'HND', 'HN', 'Honduras', '18', '0');
INSERT INTO countries VALUES ('96', 'HKG', 'HK', 'Hong Kong', '0', '0');
INSERT INTO countries VALUES ('97', 'HUN', 'HU', 'Hungary', '43', '0');
INSERT INTO countries VALUES ('98', 'ISL', 'IS', 'Iceland', '28', '0');
INSERT INTO countries VALUES ('99', 'IND', 'IN', 'India', '35', '0');
INSERT INTO countries VALUES ('100', 'IDN', 'ID', 'Indonesia', '33', '0');
INSERT INTO countries VALUES ('101', 'IRN', 'IR', 'Iran (Islamic Republic of)', '40', '0');
INSERT INTO countries VALUES ('102', 'IRQ', 'IQ', 'Iraq', '18', '0');
INSERT INTO countries VALUES ('103', 'IRL', 'IE', 'Ireland', '26', '0');
INSERT INTO countries VALUES ('104', 'ISR', 'IL', 'Israel', '6', '0');
INSERT INTO countries VALUES ('105', 'ITA', 'IT', 'Italy', '20', '0');
INSERT INTO countries VALUES ('106', 'JAM', 'JM', 'Jamaica', '14', '0');
INSERT INTO countries VALUES ('107', 'JPN', 'JP', 'Japan', '47', '0');
INSERT INTO countries VALUES ('108', 'JOR', 'JO', 'Jordan', '12', '0');
INSERT INTO countries VALUES ('109', 'KAZ', 'KZ', 'Kazakhstan', '17', '0');
INSERT INTO countries VALUES ('110', 'KEN', 'KE', 'Kenya', '8', '0');
INSERT INTO countries VALUES ('111', 'KIR', 'KI', 'Kiribati', '3', '0');
INSERT INTO countries VALUES ('112', 'PRK', 'KP', 'Korea, Democratic People\'s Republic of', '13', '0');
INSERT INTO countries VALUES ('113', 'KOR', 'KR', 'Korea, Republic of', '16', '0');
INSERT INTO countries VALUES ('114', 'KWT', 'KW', 'Kuwait', '6', '0');
INSERT INTO countries VALUES ('115', 'KGZ', 'KG', 'Kyrgyzstan', '9', '0');
INSERT INTO countries VALUES ('116', 'LAO', 'LA', 'Lao People\'s Democratic Republic', '13', '0');
INSERT INTO countries VALUES ('117', 'LVA', 'LV', 'Latvia', '33', '0');
INSERT INTO countries VALUES ('118', 'LBN', 'LB', 'Lebanon', '11', '0');
INSERT INTO countries VALUES ('119', 'LSO', 'LS', 'Lesotho', '10', '0');
INSERT INTO countries VALUES ('120', 'LBR', 'LR', 'Liberia', '17', '0');
INSERT INTO countries VALUES ('121', 'LBY', 'LY', 'Libya', '25', '0');
INSERT INTO countries VALUES ('122', 'LIE', 'LI', 'Liechtenstein', '13', '0');
INSERT INTO countries VALUES ('123', 'LTU', 'LT', 'Lithuania', '10', '0');
INSERT INTO countries VALUES ('124', 'LUX', 'LU', 'Luxembourg', '3', '0');
INSERT INTO countries VALUES ('125', 'MAC', 'MO', 'Macau', '2', '0');
INSERT INTO countries VALUES ('126', 'MKD', 'MK', 'Macedonia, The Former Yugoslav Republic of', '123', '0');
INSERT INTO countries VALUES ('127', 'MDG', 'MG', 'Madagascar', '6', '0');
INSERT INTO countries VALUES ('128', 'MWI', 'MW', 'Malawi', '27', '0');
INSERT INTO countries VALUES ('129', 'MYS', 'MY', 'Malaysia', '16', '0');
INSERT INTO countries VALUES ('130', 'MDV', 'MV', 'Maldives', '20', '0');
INSERT INTO countries VALUES ('131', 'MLI', 'ML', 'Mali', '9', '0');
INSERT INTO countries VALUES ('132', 'MLT', 'MT', 'Malta', '0', '0');
INSERT INTO countries VALUES ('133', 'MHL', 'MH', 'Marshall Islands', '0', '0');
INSERT INTO countries VALUES ('134', 'MTQ', 'MQ', 'Martinique', '0', '0');
INSERT INTO countries VALUES ('135', 'MRT', 'MR', 'Mauritania', '12', '0');
INSERT INTO countries VALUES ('136', 'MUS', 'MU', 'Mauritius', '12', '0');
INSERT INTO countries VALUES ('137', 'MYT', 'YT', 'Mayotte', '0', '0');
INSERT INTO countries VALUES ('138', 'MEX', 'MX', 'Mexico', '32', '0');
INSERT INTO countries VALUES ('139', 'FSM', 'FM', 'Micronesia, Federated States of', '4', '0');
INSERT INTO countries VALUES ('140', 'MDA', 'MD', 'Moldova, Republic of', '37', '0');
INSERT INTO countries VALUES ('141', 'MCO', 'MC', 'Monaco', '3', '0');
INSERT INTO countries VALUES ('142', 'MNG', 'MN', 'Mongolia', '24', '0');
INSERT INTO countries VALUES ('143', 'MSR', 'MS', 'Montserrat', '3', '0');
INSERT INTO countries VALUES ('144', 'MAR', 'MA', 'Morocco', '15', '0');
INSERT INTO countries VALUES ('145', 'MOZ', 'MZ', 'Mozambique', '11', '0');
INSERT INTO countries VALUES ('146', 'MMR', 'MM', 'Myanmar', '15', '0');
INSERT INTO countries VALUES ('147', 'NAM', 'NA', 'Namibia', '38', '0');
INSERT INTO countries VALUES ('148', 'NRU', 'NR', 'Nauru', '14', '0');
INSERT INTO countries VALUES ('149', 'NPL', 'NP', 'Nepal', '14', '0');
INSERT INTO countries VALUES ('150', 'NLD', 'NL', 'Netherlands', '12', '0');
INSERT INTO countries VALUES ('151', 'ANT', 'AN', 'Netherlands Antilles', '0', '0');
INSERT INTO countries VALUES ('152', 'NCL', 'NC', 'New Caledonia', '0', '0');
INSERT INTO countries VALUES ('153', 'NZL', 'NZ', 'New Zealand', '16', '0');
INSERT INTO countries VALUES ('154', 'NIC', 'NI', 'Nicaragua', '18', '0');
INSERT INTO countries VALUES ('155', 'NER', 'NE', 'Niger', '8', '0');
INSERT INTO countries VALUES ('156', 'NGA', 'NG', 'Nigeria', '37', '0');
INSERT INTO countries VALUES ('157', 'NIU', 'NU', 'Niue', '0', '0');
INSERT INTO countries VALUES ('158', 'NFK', 'NF', 'Norfolk Island', '0', '0');
INSERT INTO countries VALUES ('159', 'MNP', 'MP', 'Northern Mariana Islands', '0', '0');
INSERT INTO countries VALUES ('160', 'NOR', 'NO', 'Norway', '19', '0');
INSERT INTO countries VALUES ('161', 'OMN', 'OM', 'Oman', '8', '0');
INSERT INTO countries VALUES ('162', 'PAK', 'PK', 'Pakistan', '8', '0');
INSERT INTO countries VALUES ('163', 'PLW', 'PW', 'Palau', '0', '0');
INSERT INTO countries VALUES ('164', 'PAN', 'PA', 'Panama', '10', '0');
INSERT INTO countries VALUES ('165', 'PNG', 'PG', 'Papua New Guinea', '20', '0');
INSERT INTO countries VALUES ('166', 'PRY', 'PY', 'Paraguay', '20', '0');
INSERT INTO countries VALUES ('167', 'PER', 'PE', 'Peru', '25', '0');
INSERT INTO countries VALUES ('168', 'PHL', 'PH', 'Philippines', '149', '0');
INSERT INTO countries VALUES ('169', 'PCN', 'PN', 'Pitcairn', '0', '0');
INSERT INTO countries VALUES ('170', 'POL', 'PL', 'Poland', '16', '0');
INSERT INTO countries VALUES ('171', 'PRT', 'PT', 'Portugal', '20', '0');
INSERT INTO countries VALUES ('172', 'PRI', 'PR', 'Puerto Rico', '0', '0');
INSERT INTO countries VALUES ('173', 'QAT', 'QA', 'Qatar', '11', '0');
INSERT INTO countries VALUES ('174', 'REU', 'RE', 'Reunion', '0', '0');
INSERT INTO countries VALUES ('175', 'ROM', 'RO', 'Romania', '42', '0');
INSERT INTO countries VALUES ('176', 'RUS', 'RU', 'Russian Federation', '91', '0');
INSERT INTO countries VALUES ('177', 'RWA', 'RW', 'Rwanda', '9', '0');
INSERT INTO countries VALUES ('178', 'KNA', 'KN', 'Saint Kitts and Nevis', '14', '0');
INSERT INTO countries VALUES ('179', 'LCA', 'LC', 'Saint Lucia', '11', '0');
INSERT INTO countries VALUES ('180', 'VCT', 'VC', 'Saint Vincent and the Grenadines', '6', '0');
INSERT INTO countries VALUES ('181', 'WSM', 'WS', 'Samoa', '10', '0');
INSERT INTO countries VALUES ('182', 'SMR', 'SM', 'San Marino', '9', '0');
INSERT INTO countries VALUES ('183', 'STP', 'ST', 'Sao Tome and Principe', '2', '0');
INSERT INTO countries VALUES ('184', 'SAU', 'SA', 'Saudi Arabia', '13', '0');
INSERT INTO countries VALUES ('185', 'SEN', 'SN', 'Senegal', '11', '0');
INSERT INTO countries VALUES ('186', 'SYC', 'SC', 'Seychelles', '23', '0');
INSERT INTO countries VALUES ('187', 'SLE', 'SL', 'Sierra Leone', '4', '0');
INSERT INTO countries VALUES ('188', 'SGP', 'SG', 'Singapore', '0', '0');
INSERT INTO countries VALUES ('189', 'SVK', 'SK', 'Slovakia', '8', '0');
INSERT INTO countries VALUES ('190', 'SVN', 'SI', 'Slovenia', '195', '0');
INSERT INTO countries VALUES ('191', 'SLB', 'SB', 'Solomon Islands', '9', '0');
INSERT INTO countries VALUES ('192', 'SOM', 'SO', 'Somalia', '20', '0');
INSERT INTO countries VALUES ('193', 'ZAF', 'ZA', 'South Africa', '10', '0');
INSERT INTO countries VALUES ('194', 'SGS', 'GS', 'South Georgia and the South Sandwich Islands', '0', '0');
INSERT INTO countries VALUES ('195', 'ESP', 'ES', 'Spain', '17', '0');
INSERT INTO countries VALUES ('196', 'LKA', 'LK', 'Sri Lanka', '9', '0');
INSERT INTO countries VALUES ('197', 'SHN', 'SH', 'St. Helena', '3', '0');
INSERT INTO countries VALUES ('198', 'SPM', 'PM', 'St. Pierre and Miquelon', '0', '0');
INSERT INTO countries VALUES ('199', 'SDN', 'SD', 'Sudan', '15', '0');
INSERT INTO countries VALUES ('200', 'SUR', 'SR', 'Suriname', '10', '0');
INSERT INTO countries VALUES ('201', 'SJM', 'SJ', 'Svalbard and Jan Mayen Islands', '0', '0');
INSERT INTO countries VALUES ('202', 'SWZ', 'SZ', 'Swaziland', '5', '0');
INSERT INTO countries VALUES ('203', 'SWE', 'SE', 'Sweden', '21', '0');
INSERT INTO countries VALUES ('204', 'CHE', 'CH', 'Switzerland', '26', '0');
INSERT INTO countries VALUES ('205', 'SYR', 'SY', 'Syrian Arab Republic', '14', '0');
INSERT INTO countries VALUES ('206', 'TWN', 'TW', 'Taiwan', '4', '0');
INSERT INTO countries VALUES ('207', 'TJK', 'TJ', 'Tajikistan', '3', '0');
INSERT INTO countries VALUES ('208', 'TZA', 'TZ', 'Tanzania, United Republic of', '26', '0');
INSERT INTO countries VALUES ('209', 'THA', 'TH', 'Thailand', '80', '0');
INSERT INTO countries VALUES ('210', 'TGO', 'TG', 'Togo', '5', '0');
INSERT INTO countries VALUES ('211', 'TKL', 'TK', 'Tokelau', '0', '0');
INSERT INTO countries VALUES ('212', 'TON', 'TO', 'Tonga', '3', '0');
INSERT INTO countries VALUES ('213', 'TTO', 'TT', 'Trinidad and Tobago', '12', '0');
INSERT INTO countries VALUES ('214', 'TUN', 'TN', 'Tunisia', '24', '0');
INSERT INTO countries VALUES ('215', 'TUR', 'TR', 'Turkey', '81', '0');
INSERT INTO countries VALUES ('216', 'TKM', 'TM', 'Turkmenistan', '5', '0');
INSERT INTO countries VALUES ('217', 'TCA', 'TC', 'Turks and Caicos Islands', '0', '0');
INSERT INTO countries VALUES ('218', 'TUV', 'TV', 'Tuvalu', '0', '0');
INSERT INTO countries VALUES ('219', 'UGA', 'UG', 'Uganda', '55', '0');
INSERT INTO countries VALUES ('220', 'UKR', 'UA', 'Ukraine', '27', '0');
INSERT INTO countries VALUES ('221', 'ARE', 'AE', 'United Arab Emirates', '7', '0');
INSERT INTO countries VALUES ('222', 'GBR', 'GB', 'United Kingdom', '234', '1');
INSERT INTO countries VALUES ('223', 'USA', 'US', 'United States', '61', '0');
INSERT INTO countries VALUES ('224', 'UMI', 'UM', 'United States Minor Outlying Islands', '0', '0');
INSERT INTO countries VALUES ('225', 'URY', 'UY', 'Uruguay', '19', '0');
INSERT INTO countries VALUES ('226', 'UZB', 'UZ', 'Uzbekistan', '14', '0');
INSERT INTO countries VALUES ('227', 'VUT', 'VU', 'Vanuatu', '14', '0');
INSERT INTO countries VALUES ('228', 'VAT', 'VA', 'Vatican City State (Holy See)', '0', '0');
INSERT INTO countries VALUES ('229', 'VEN', 'VE', 'Venezuela', '25', '0');
INSERT INTO countries VALUES ('230', 'VNM', 'VN', 'Viet Nam', '64', '1');
INSERT INTO countries VALUES ('231', 'VGB', 'VG', 'Virgin Islands (British)', '0', '0');
INSERT INTO countries VALUES ('232', 'VIR', 'VI', 'Virgin Islands (U.S.)', '0', '0');
INSERT INTO countries VALUES ('233', 'WLF', 'WF', 'Wallis and Futuna Islands', '0', '0');
INSERT INTO countries VALUES ('234', 'ESH', 'EH', 'Western Sahara', '0', '0');
INSERT INTO countries VALUES ('235', 'YEM', 'YE', 'Yemen', '25', '0');
INSERT INTO countries VALUES ('237', 'DRC', 'DC', 'The Democratic Republic of Congo', '0', '0');
INSERT INTO countries VALUES ('238', 'ZMB', 'ZM', 'Zambia', '9', '0');
INSERT INTO countries VALUES ('239', 'ZWE', 'ZW', 'Zimbabwe', '10', '0');
INSERT INTO countries VALUES ('240', 'XET', 'XE', 'East Timor', '0', '0');
INSERT INTO countries VALUES ('241', 'JEY', 'JE', 'Jersey', '0', '0');
INSERT INTO countries VALUES ('242', 'XSB', 'XB', 'St. Barthelemy', '0', '0');
INSERT INTO countries VALUES ('243', 'XSE', 'XU', 'St. Eustatius', '0', '0');
INSERT INTO countries VALUES ('244', 'XCA', 'XC', 'Canary Islands', '0', '0');
INSERT INTO countries VALUES ('245', 'SRB', 'RS', 'Serbia', '2', '0');
INSERT INTO countries VALUES ('246', 'MAF', 'MF', 'Sint Maarten (French Antilles)', '0', '0');
INSERT INTO countries VALUES ('247', 'SXM', 'SX', 'Sint Maarten (Netherlands Antilles)', '0', '0');
INSERT INTO countries VALUES ('248', 'PSE', 'FS', 'Palestinian Territory, occupied', '2', '0');

-- ----------------------------
-- Table structure for `languages`
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `language_code` varchar(7) NOT NULL,
  `language_name` varchar(128) NOT NULL,
  `major` tinyint(4) NOT NULL DEFAULT '0',
  `default_locale` varchar(8) DEFAULT NULL,
  `tag` varchar(8) DEFAULT NULL,
  `encode_url` tinyint(1) NOT NULL DEFAULT '0',
  `flag` varchar(32) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`language_code`),
  UNIQUE KEY `english_name` (`language_name`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO languages VALUES ('1', '222', 'en', 'English', '1', 'en_US', 'en-US', '0', null, '1', '0000-00-00 00:00:00', '2015-10-23 11:04:23');
INSERT INTO languages VALUES ('2', '0', 'es', 'Spanish', '1', 'es_ES', 'es-ES', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('3', '0', 'de', 'German', '1', 'de_DE', 'de-DE', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('4', '73', 'fr', 'French', '1', 'fr_FR', 'fr-FR', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:36');
INSERT INTO languages VALUES ('5', '0', 'ar', 'Arabic', '0', 'ar', 'ar', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('6', '0', 'bs', 'Bosnian', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('7', '0', 'bg', 'Bulgarian', '0', 'bg_BG', 'bg-BG', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('8', '0', 'ca', 'Catalan', '0', 'ca', 'ca', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('9', '0', 'cs', 'Czech', '0', 'cs_CZ', 'cs-CZ', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('10', '0', 'sk', 'Slovak', '0', 'sk_SK', 'sk-SK', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('11', '0', 'cy', 'Welsh', '0', 'cy', 'cy', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('12', '0', 'da', 'Danish', '1', 'da_DK', 'da-DK', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('13', '0', 'el', 'Greek', '0', 'el', 'el', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('14', '0', 'eo', 'Esperanto', '0', 'eo', 'eo', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('15', '0', 'et', 'Estonian', '0', 'et', 'et', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('16', '0', 'eu', 'Basque', '0', 'eu', 'eu', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('17', '0', 'fa', 'Persian', '0', 'fa_IR', 'fa-IR', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('18', '0', 'fi', 'Finnish', '0', 'fi', 'fi', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('19', '0', 'ga', 'Irish', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('20', '0', 'he', 'Hebrew', '0', 'he_IL', 'he-IL', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('21', '0', 'hi', 'Hindi', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('22', '0', 'hr', 'Croatian', '0', 'hr', 'hr', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('23', '0', 'hu', 'Hungarian', '0', 'hu_HU', 'hu-HU', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('24', '0', 'hy', 'Armenian', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('25', '0', 'id', 'Indonesian', '0', 'id_ID', 'id-ID', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('26', '0', 'is', 'Icelandic', '0', 'is_IS', 'is-IS', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('27', '0', 'it', 'Italian', '1', 'it_IT', 'it-IT', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('28', '0', 'ja', 'Japanese', '1', 'ja', 'ja', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('29', '0', 'ko', 'Korean', '0', 'ko_KR', 'ko-KR', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('30', '0', 'ku', 'Kurdish', '0', 'ku', 'ku', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('31', '0', 'la', 'Latin', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('32', '0', 'lv', 'Latvian', '0', 'lv', 'lv', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('33', '0', 'lt', 'Lithuanian', '0', 'lt', 'lt', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('34', '0', 'mk', 'Macedonian', '0', 'mk_MK', 'mk-MK', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('35', '0', 'mt', 'Maltese', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('36', '0', 'mo', 'Moldavian', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('37', '0', 'mn', 'Mongolian', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('38', '0', 'ne', 'Nepali', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('39', '0', 'nl', 'Dutch', '1', 'nl_NL', 'nl-NL', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('40', '0', 'nb', 'Norwegian Bokmål', '0', 'nb_NO', 'nb-NO', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('41', '0', 'pa', 'Punjabi', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('42', '0', 'pl', 'Polish', '0', 'pl_PL', 'pl-PL', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('43', '0', 'pt-pt', 'Portuguese, Portugal', '0', 'pt_PT', 'pt-PT', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('44', '0', 'pt-br', 'Portuguese, Brazil', '0', 'pt_BR', 'pt-BR', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('45', '0', 'qu', 'Quechua', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('46', '0', 'ro', 'Romanian', '0', 'ro_RO', 'ro-RO', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('47', '0', 'ru', 'Russian', '1', 'ru_RU', 'ru-RU', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('48', '0', 'sl', 'Slovenian', '0', 'sl_SI', 'sl-SI', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('49', '0', 'so', 'Somali', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('50', '0', 'sq', 'Albanian', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('51', '0', 'sr', 'Serbian', '0', 'sr_RS', 'sr-RS', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('52', '0', 'sv', 'Swedish', '0', 'sv_SE', 'sv-SE', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('53', '0', 'ta', 'Tamil', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('54', '0', 'th', 'Thai', '0', 'th', 'th', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('55', '0', 'tr', 'Turkish', '0', 'tr', 'tr', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('56', '0', 'uk', 'Ukrainian', '0', 'uk_UA', 'uk-UA', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('57', '0', 'ur', 'Urdu', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('58', '0', 'uz', 'Uzbek', '0', 'uz_UZ', 'uz-UZ', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('59', '230', 'vn', 'Vietnamese', '0', 'vi_VN', 'vi-VN', '0', null, '1', '0000-00-00 00:00:00', '2015-10-23 11:04:23');
INSERT INTO languages VALUES ('60', '0', 'yi', 'Yiddish', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('61', '0', 'zh-hans', 'Chinese (Simplified)', '1', 'zh_CN', 'zh-CN', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('62', '0', 'zu', 'Zulu', '0', '', '', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('63', '0', 'zh-hant', 'Chinese (Traditional)', '1', 'zh_TW', 'zh-TW', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');
INSERT INTO languages VALUES ('64', '0', 'ms', 'Malay', '0', 'ms_MY', 'ms-MY', '0', null, '0', '0000-00-00 00:00:00', '2015-09-13 02:03:00');

-- ----------------------------
-- Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `global_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `global_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO pages VALUES ('1', 'Homepage', 'homepage', '1', '1', '2015-12-07 11:50:07', '2015-12-12 18:46:44');
INSERT INTO pages VALUES ('2', 'Contact us', 'contact-us', '1', '1', '2015-12-13 00:50:07', '2015-12-12 18:33:22');
INSERT INTO pages VALUES ('3', 'About us', 'about-us', '0', '1', '2015-12-13 00:51:01', '2015-12-12 19:51:36');
INSERT INTO pages VALUES ('4', 'Shipping', 'shipping', '1', '1', '2015-12-13 03:49:42', '2015-12-13 03:49:45');
INSERT INTO pages VALUES ('5', 'Order', 'order', '1', '1', '2015-12-13 03:49:54', '2015-12-13 03:49:56');
INSERT INTO pages VALUES ('6', 'Q&A', 'q-a', '1', '1', '2015-12-13 03:50:30', '2015-12-13 03:50:32');
INSERT INTO pages VALUES ('7', 'Test page - 1', 'test-page-1', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('8', 'Test page - 2', 'test-page-2', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('9', 'Test page - 3', 'test-page-3', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('10', 'Test page - 4', 'test-page-4', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('11', 'Test page - 5', 'test-page-5', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('12', 'Test page - 6', 'test-page-6', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('13', 'Test page - 7', 'test-page-7', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('14', 'Test page - 8', 'test-page-8', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('15', 'Test page - 9', 'test-page-9', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('16', 'Test page - 10', 'test-page-10', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('17', 'Test page - 11', 'test-page-11', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('18', 'Test page - 12', 'test-page-12', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('19', 'Test page - 13', 'test-page-13', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('20', 'Test page - 14', 'test-page-14', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('21', 'Test page - 15', 'test-page-15', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('22', 'Test page - 16', 'test-page-16', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('23', 'Test page - 17', 'test-page-17', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('24', 'Test page - 18', 'test-page-18', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('25', 'Test page - 19', 'test-page-19', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('26', 'Test page - 20', 'test-page-20', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('27', 'Test page - 21', 'test-page-21', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('28', 'Test page - 22', 'test-page-22', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('29', 'Test page - 23', 'test-page-23', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('30', 'Test page - 24', 'test-page-24', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('31', 'Test page - 25', 'test-page-25', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('32', 'Test page - 26', 'test-page-26', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('33', 'Test page - 27', 'test-page-27', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('34', 'Test page - 28', 'test-page-28', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('35', 'Test page - 29', 'test-page-29', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('36', 'Test page - 30', 'test-page-30', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('37', 'Test page - 31', 'test-page-31', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('38', 'Test page - 32', 'test-page-32', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('39', 'Test page - 33', 'test-page-33', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('40', 'Test page - 34', 'test-page-34', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('41', 'Test page - 35', 'test-page-35', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('42', 'Test page - 36', 'test-page-36', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('43', 'Test page - 37', 'test-page-37', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('44', 'Test page - 38', 'test-page-38', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('45', 'Test page - 39', 'test-page-39', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('46', 'Test page - 40', 'test-page-40', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('47', 'Test page - 41', 'test-page-41', '1', '1', '2015-12-12 20:54:53', '2015-12-12 20:54:53');
INSERT INTO pages VALUES ('48', 'Test page - 42', 'test-page-42', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('49', 'Test page - 43', 'test-page-43', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('50', 'Test page - 44', 'test-page-44', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('51', 'Test page - 45', 'test-page-45', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('52', 'Test page - 46', 'test-page-46', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('53', 'Test page - 47', 'test-page-47', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('54', 'Test page - 48', 'test-page-48', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('55', 'Test page - 49', 'test-page-49', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('56', 'Test page - 50', 'test-page-50', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('57', 'Test page - 51', 'test-page-51', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('58', 'Test page - 52', 'test-page-52', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('59', 'Test page - 53', 'test-page-53', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('60', 'Test page - 54', 'test-page-54', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('61', 'Test page - 55', 'test-page-55', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('62', 'Test page - 56', 'test-page-56', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('63', 'Test page - 57', 'test-page-57', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('64', 'Test page - 58', 'test-page-58', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('65', 'Test page - 59', 'test-page-59', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('66', 'Test page - 60', 'test-page-60', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('67', 'Test page - 61', 'test-page-61', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('68', 'Test page - 62', 'test-page-62', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('69', 'Test page - 63', 'test-page-63', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('70', 'Test page - 64', 'test-page-64', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('71', 'Test page - 65', 'test-page-65', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('72', 'Test page - 66', 'test-page-66', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('73', 'Test page - 67', 'test-page-67', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('74', 'Test page - 68', 'test-page-68', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('75', 'Test page - 69', 'test-page-69', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('76', 'Test page - 70', 'test-page-70', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('77', 'Test page - 71', 'test-page-71', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('78', 'Test page - 72', 'test-page-72', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('79', 'Test page - 73', 'test-page-73', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('80', 'Test page - 74', 'test-page-74', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('81', 'Test page - 75', 'test-page-75', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('82', 'Test page - 76', 'test-page-76', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('83', 'Test page - 77', 'test-page-77', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('84', 'Test page - 78', 'test-page-78', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('85', 'Test page - 79', 'test-page-79', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('86', 'Test page - 80', 'test-page-80', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('87', 'Test page - 81', 'test-page-81', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('88', 'Test page - 82', 'test-page-82', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('89', 'Test page - 83', 'test-page-83', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('90', 'Test page - 84', 'test-page-84', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('91', 'Test page - 85', 'test-page-85', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('92', 'Test page - 86', 'test-page-86', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('93', 'Test page - 87', 'test-page-87', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('94', 'Test page - 88', 'test-page-88', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('95', 'Test page - 89', 'test-page-89', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('96', 'Test page - 90', 'test-page-90', '1', '1', '2015-12-12 20:54:54', '2015-12-12 20:54:54');
INSERT INTO pages VALUES ('97', 'Test page - 91', 'test-page-91', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('98', 'Test page - 92', 'test-page-92', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('99', 'Test page - 93', 'test-page-93', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('100', 'Test page - 94', 'test-page-94', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('101', 'Test page - 95', 'test-page-95', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('102', 'Test page - 96', 'test-page-96', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('103', 'Test page - 97', 'test-page-97', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('104', 'Test page - 98', 'test-page-98', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('105', 'Test page - 99', 'test-page-99', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('106', 'Test page - 100', 'test-page-100', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('107', 'Test page - 101', 'test-page-101', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('108', 'Test page - 102', 'test-page-102', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('109', 'Test page - 103', 'test-page-103', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('110', 'Test page - 104', 'test-page-104', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('111', 'Test page - 105', 'test-page-105', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('112', 'Test page - 106', 'test-page-106', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('113', 'Test page - 107', 'test-page-107', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('114', 'Test page - 108', 'test-page-108', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('115', 'Test page - 109', 'test-page-109', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('116', 'Test page - 110', 'test-page-110', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('117', 'Test page - 111', 'test-page-111', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('118', 'Test page - 112', 'test-page-112', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('119', 'Test page - 113', 'test-page-113', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('120', 'Test page - 114', 'test-page-114', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('121', 'Test page - 115', 'test-page-115', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('122', 'Test page - 116', 'test-page-116', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('123', 'Test page - 117', 'test-page-117', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('124', 'Test page - 118', 'test-page-118', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('125', 'Test page - 119', 'test-page-119', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('126', 'Test page - 120', 'test-page-120', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('127', 'Test page - 121', 'test-page-121', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('128', 'Test page - 122', 'test-page-122', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('129', 'Test page - 123', 'test-page-123', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('130', 'Test page - 124', 'test-page-124', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('131', 'Test page - 125', 'test-page-125', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('132', 'Test page - 126', 'test-page-126', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('133', 'Test page - 127', 'test-page-127', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('134', 'Test page - 128', 'test-page-128', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('135', 'Test page - 129', 'test-page-129', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('136', 'Test page - 130', 'test-page-130', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('137', 'Test page - 131', 'test-page-131', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('138', 'Test page - 132', 'test-page-132', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('139', 'Test page - 133', 'test-page-133', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('140', 'Test page - 134', 'test-page-134', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('141', 'Test page - 135', 'test-page-135', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('142', 'Test page - 136', 'test-page-136', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('143', 'Test page - 137', 'test-page-137', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('144', 'Test page - 138', 'test-page-138', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('145', 'Test page - 139', 'test-page-139', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('146', 'Test page - 140', 'test-page-140', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('147', 'Test page - 141', 'test-page-141', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('148', 'Test page - 142', 'test-page-142', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('149', 'Test page - 143', 'test-page-143', '1', '1', '2015-12-12 20:54:55', '2015-12-12 20:54:55');
INSERT INTO pages VALUES ('150', 'Test page - 144', 'test-page-144', '1', '1', '2015-12-12 20:54:56', '2015-12-12 20:54:56');
INSERT INTO pages VALUES ('151', 'Test page - 145', 'test-page-145', '1', '1', '2015-12-12 20:54:56', '2015-12-12 20:54:56');
INSERT INTO pages VALUES ('152', 'Test page - 146', 'test-page-146', '1', '1', '2015-12-12 20:54:56', '2015-12-12 20:54:56');
INSERT INTO pages VALUES ('153', 'Test page - 147', 'test-page-147', '1', '1', '2015-12-12 20:54:56', '2015-12-12 20:54:56');
INSERT INTO pages VALUES ('154', 'Test page - 148', 'test-page-148', '1', '1', '2015-12-12 20:54:56', '2015-12-12 20:54:56');
INSERT INTO pages VALUES ('155', 'Test page - 149', 'test-page-149', '1', '1', '2015-12-12 20:54:56', '2015-12-12 20:54:56');
INSERT INTO pages VALUES ('156', 'Test page - 150', 'test-page-150', '1', '1', '2015-12-12 20:54:56', '2015-12-12 20:54:56');
INSERT INTO pages VALUES ('157', 'Test page - 151', 'test-page-151', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('158', 'Test page - 152', 'test-page-152', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('159', 'Test page - 153', 'test-page-153', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('160', 'Test page - 154', 'test-page-154', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('161', 'Test page - 155', 'test-page-155', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('162', 'Test page - 156', 'test-page-156', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('163', 'Test page - 157', 'test-page-157', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('164', 'Test page - 158', 'test-page-158', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('165', 'Test page - 159', 'test-page-159', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('166', 'Test page - 160', 'test-page-160', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('167', 'Test page - 161', 'test-page-161', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('168', 'Test page - 162', 'test-page-162', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('169', 'Test page - 163', 'test-page-163', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('170', 'Test page - 164', 'test-page-164', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('171', 'Test page - 165', 'test-page-165', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('172', 'Test page - 166', 'test-page-166', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('173', 'Test page - 167', 'test-page-167', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('174', 'Test page - 168', 'test-page-168', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('175', 'Test page - 169', 'test-page-169', '1', '1', '2015-12-12 20:56:22', '2015-12-12 20:56:22');
INSERT INTO pages VALUES ('176', 'Test page - 170', 'test-page-170', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('177', 'Test page - 171', 'test-page-171', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('178', 'Test page - 172', 'test-page-172', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('179', 'Test page - 173', 'test-page-173', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('180', 'Test page - 174', 'test-page-174', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('181', 'Test page - 175', 'test-page-175', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('182', 'Test page - 176', 'test-page-176', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('183', 'Test page - 177', 'test-page-177', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('184', 'Test page - 178', 'test-page-178', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('185', 'Test page - 179', 'test-page-179', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('186', 'Test page - 180', 'test-page-180', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('187', 'Test page - 181', 'test-page-181', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('188', 'Test page - 182', 'test-page-182', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('189', 'Test page - 183', 'test-page-183', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('190', 'Test page - 184', 'test-page-184', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('191', 'Test page - 185', 'test-page-185', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('192', 'Test page - 186', 'test-page-186', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('193', 'Test page - 187', 'test-page-187', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('194', 'Test page - 188', 'test-page-188', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('195', 'Test page - 189', 'test-page-189', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('196', 'Test page - 190', 'test-page-190', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('197', 'Test page - 191', 'test-page-191', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('198', 'Test page - 192', 'test-page-192', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('199', 'Test page - 193', 'test-page-193', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('200', 'Test page - 194', 'test-page-194', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('201', 'Test page - 195', 'test-page-195', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('202', 'Test page - 196', 'test-page-196', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('203', 'Test page - 197', 'test-page-197', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('204', 'Test page - 198', 'test-page-198', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('205', 'Test page - 199', 'test-page-199', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('206', 'Test page - 200', 'test-page-200', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('207', 'Test page - 201', 'test-page-201', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('208', 'Test page - 202', 'test-page-202', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('209', 'Test page - 203', 'test-page-203', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('210', 'Test page - 204', 'test-page-204', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('211', 'Test page - 205', 'test-page-205', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('212', 'Test page - 206', 'test-page-206', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('213', 'Test page - 207', 'test-page-207', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('214', 'Test page - 208', 'test-page-208', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('215', 'Test page - 209', 'test-page-209', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('216', 'Test page - 210', 'test-page-210', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('217', 'Test page - 211', 'test-page-211', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('218', 'Test page - 212', 'test-page-212', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('219', 'Test page - 213', 'test-page-213', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('220', 'Test page - 214', 'test-page-214', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('221', 'Test page - 215', 'test-page-215', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('222', 'Test page - 216', 'test-page-216', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('223', 'Test page - 217', 'test-page-217', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('224', 'Test page - 218', 'test-page-218', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('225', 'Test page - 219', 'test-page-219', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('226', 'Test page - 220', 'test-page-220', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('227', 'Test page - 221', 'test-page-221', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('228', 'Test page - 222', 'test-page-222', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('229', 'Test page - 223', 'test-page-223', '1', '1', '2015-12-12 20:56:23', '2015-12-12 20:56:23');
INSERT INTO pages VALUES ('230', 'Test page - 224', 'test-page-224', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('231', 'Test page - 225', 'test-page-225', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('232', 'Test page - 226', 'test-page-226', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('233', 'Test page - 227', 'test-page-227', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('234', 'Test page - 228', 'test-page-228', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('235', 'Test page - 229', 'test-page-229', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('236', 'Test page - 230', 'test-page-230', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('237', 'Test page - 231', 'test-page-231', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('238', 'Test page - 232', 'test-page-232', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('239', 'Test page - 233', 'test-page-233', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('240', 'Test page - 234', 'test-page-234', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('241', 'Test page - 235', 'test-page-235', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('242', 'Test page - 236', 'test-page-236', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('243', 'Test page - 237', 'test-page-237', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('244', 'Test page - 238', 'test-page-238', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('245', 'Test page - 239', 'test-page-239', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('246', 'Test page - 240', 'test-page-240', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('247', 'Test page - 241', 'test-page-241', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('248', 'Test page - 242', 'test-page-242', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('249', 'Test page - 243', 'test-page-243', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('250', 'Test page - 244', 'test-page-244', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('251', 'Test page - 245', 'test-page-245', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('252', 'Test page - 246', 'test-page-246', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('253', 'Test page - 247', 'test-page-247', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('254', 'Test page - 248', 'test-page-248', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('255', 'Test page - 249', 'test-page-249', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('256', 'Test page - 250', 'test-page-250', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('257', 'Test page - 251', 'test-page-251', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('258', 'Test page - 252', 'test-page-252', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('259', 'Test page - 253', 'test-page-253', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('260', 'Test page - 254', 'test-page-254', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('261', 'Test page - 255', 'test-page-255', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('262', 'Test page - 256', 'test-page-256', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('263', 'Test page - 257', 'test-page-257', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('264', 'Test page - 258', 'test-page-258', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('265', 'Test page - 259', 'test-page-259', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('266', 'Test page - 260', 'test-page-260', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('267', 'Test page - 261', 'test-page-261', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('268', 'Test page - 262', 'test-page-262', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('269', 'Test page - 263', 'test-page-263', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('270', 'Test page - 264', 'test-page-264', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('271', 'Test page - 265', 'test-page-265', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('272', 'Test page - 266', 'test-page-266', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('273', 'Test page - 267', 'test-page-267', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('274', 'Test page - 268', 'test-page-268', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('275', 'Test page - 269', 'test-page-269', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('276', 'Test page - 270', 'test-page-270', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('277', 'Test page - 271', 'test-page-271', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('278', 'Test page - 272', 'test-page-272', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('279', 'Test page - 273', 'test-page-273', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('280', 'Test page - 274', 'test-page-274', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('281', 'Test page - 275', 'test-page-275', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('282', 'Test page - 276', 'test-page-276', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('283', 'Test page - 277', 'test-page-277', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('284', 'Test page - 278', 'test-page-278', '1', '1', '2015-12-12 20:56:24', '2015-12-12 20:56:24');
INSERT INTO pages VALUES ('285', 'Test page - 279', 'test-page-279', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('286', 'Test page - 280', 'test-page-280', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('287', 'Test page - 281', 'test-page-281', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('288', 'Test page - 282', 'test-page-282', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('289', 'Test page - 283', 'test-page-283', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('290', 'Test page - 284', 'test-page-284', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('291', 'Test page - 285', 'test-page-285', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('292', 'Test page - 286', 'test-page-286', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('293', 'Test page - 287', 'test-page-287', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('294', 'Test page - 288', 'test-page-288', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('295', 'Test page - 289', 'test-page-289', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('296', 'Test page - 290', 'test-page-290', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('297', 'Test page - 291', 'test-page-291', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('298', 'Test page - 292', 'test-page-292', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('299', 'Test page - 293', 'test-page-293', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('300', 'Test page - 294', 'test-page-294', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('301', 'Test page - 295', 'test-page-295', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('302', 'Test page - 296', 'test-page-296', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('303', 'Test page - 297', 'test-page-297', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('304', 'Test page - 298', 'test-page-298', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('305', 'Test page - 299', 'test-page-299', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');
INSERT INTO pages VALUES ('306', 'Test page - 300', 'test-page-300', '1', '1', '2015-12-12 20:56:25', '2015-12-12 20:56:25');

-- ----------------------------
-- Table structure for `page_contents`
-- ----------------------------
DROP TABLE IF EXISTS `page_contents`;
CREATE TABLE `page_contents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '59',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '1',
  `thumbnail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of page_contents
-- ----------------------------
INSERT INTO page_contents VALUES ('1', '1', '1', '59', 'Trang chủ', 'trang-chu', 'Description cho trang chủ.', '<p>Content trang chủ</p>\n', '1', '/uploads/_documentation/assets/i/hor_menu.jpg', null, '1', '2015-12-08 13:16:17', '2015-12-12 11:27:43');
INSERT INTO page_contents VALUES ('10', null, '1', '1', 'English title', 'english-alias', null, '', '1', '/uploads/10.jpg', null, '0', '2015-12-08 23:57:06', '2015-12-08 17:19:24');
INSERT INTO page_contents VALUES ('11', null, '2', '59', null, '', null, null, '1', '/uploads/10.jpg', null, '0', '2015-12-12 18:43:26', '2015-12-12 18:43:41');
INSERT INTO page_contents VALUES ('12', null, '2', '1', null, '', null, null, '1', '/uploads/10.jpg', null, '0', '2015-12-12 18:43:44', '2015-12-12 18:43:51');

-- ----------------------------
-- Table structure for `settings`
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `option_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO settings VALUES ('21', 'site_name', 'Tedozi Manson', '2015-11-24 16:30:21', '2015-11-24 16:30:24');
INSERT INTO settings VALUES ('22', 'site_title', 'Lumen Angular', '2015-11-24 16:30:37', '2015-11-24 16:30:40');
INSERT INTO settings VALUES ('23', 'homepage_description', 'A ecommerce project using angular and lumen', '2015-11-24 16:31:00', '2015-11-24 16:31:04');
INSERT INTO settings VALUES ('24', 'email_send_notifications', 'duyphan.developer@gmail.com', '2015-11-24 16:31:17', '2015-11-24 16:31:20');
INSERT INTO settings VALUES ('25', 'marketing_name', 'Tedozi Manson', '2015-11-24 16:32:04', '2015-11-24 16:32:06');
INSERT INTO settings VALUES ('26', 'phone', '0915 42 82 02', '2015-11-24 16:32:34', '2015-11-24 16:32:36');
INSERT INTO settings VALUES ('27', 'address', '40 Hoàng Việt, F6, Vũng Tàu', '2015-11-24 16:32:47', '2015-11-24 16:32:49');
INSERT INTO settings VALUES ('28', 'city', '3940', '2015-11-24 16:33:01', '2015-11-25 11:41:09');
INSERT INTO settings VALUES ('29', 'country', '230', '2015-11-24 16:33:14', '2015-11-25 08:28:58');
INSERT INTO settings VALUES ('30', 'timezone', 'Asia/Ho_Chi_Minh', '2015-11-24 16:33:28', '2015-11-25 00:10:42');
INSERT INTO settings VALUES ('31', 'currency', null, '2015-11-24 16:33:41', '2015-11-24 16:33:45');
INSERT INTO settings VALUES ('32', 'prefix', '#', '2015-11-24 16:34:37', '2015-11-24 16:34:39');
INSERT INTO settings VALUES ('33', 'subfix', null, '2015-11-24 16:34:49', '2015-11-24 16:34:52');
INSERT INTO settings VALUES ('34', 'google_analytics', '<script></script>', '2015-11-24 16:35:03', '2015-11-25 00:07:38');
INSERT INTO settings VALUES ('35', 'construction_mode', '1', '2015-11-24 16:36:20', '2015-11-25 00:05:25');

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
