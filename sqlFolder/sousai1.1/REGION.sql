﻿/*
MySQL Data Transfer
Source Host: localhost
Source Database: demo
Target Host: localhost
Target Database: demo
Date: 2011-11-15 23:11:11
*/

-- SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for REGION
-- ----------------------------
DROP TABLE IF EXISTS `REGION`;
CREATE TABLE `REGION` (
  `ID` int NOT NULL primary key,
  `CODE` varchar(100) NULL,
  `NAME` varchar(100) NOT NULL,
  `PARENTID` int NOT NULL,
  `LEVEL` int NOT NULL,
  `ORDER` int NOT NULL default 0,
  `NAMEEN` varchar(100) NULL,
  `SHORTNAMEEN` varchar(10) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `REGION` VALUES ('1', '中国', '中国', '0', '0', '0', 'Zhong Guo', '2');
INSERT INTO `REGION` VALUES ('2', '110000', '北京市', '1', '0', '0', 'Beijing Shi', 'BJ');
INSERT INTO `REGION` VALUES ('3', '120000', '天津市', '1', '0', '0', 'Tianjin Shi', 'TJ');
INSERT INTO `REGION` VALUES ('4', '130000', '河北省', '1', '0', '0', 'Hebei Sheng', 'HE');
INSERT INTO `REGION` VALUES ('5', '140000', '山西省', '1', '0', '0', 'Shanxi Sheng ', 'SX');
INSERT INTO `REGION` VALUES ('6', '150000', '内蒙古自治区', '1', '0', '0', 'Nei Mongol Zizhiqu', 'NM');
INSERT INTO `REGION` VALUES ('7', '210000', '辽宁省', '1', '0', '0', 'Liaoning Sheng', 'LN');
INSERT INTO `REGION` VALUES ('8', '220000', '吉林省', '1', '0', '0', 'Jilin Sheng', 'JL');
INSERT INTO `REGION` VALUES ('9', '230000', '黑龙江省', '1', '0', '0', 'Heilongjiang Sheng', 'HL');
INSERT INTO `REGION` VALUES ('10', '310000', '上海市', '1', '0', '0', 'Shanghai Shi', 'SH');
INSERT INTO `REGION` VALUES ('11', '320000', '江苏省', '1', '0', '0', 'Jiangsu Sheng', 'JS');
INSERT INTO `REGION` VALUES ('12', '330000', '浙江省', '1', '0', '0', 'Zhejiang Sheng', 'ZJ');
INSERT INTO `REGION` VALUES ('13', '340000', '安徽省', '1', '0', '0', 'Anhui Sheng', 'AH');
INSERT INTO `REGION` VALUES ('14', '350000', '福建省', '1', '0', '0', 'Fujian Sheng ', 'FJ');
INSERT INTO `REGION` VALUES ('15', '360000', '江西省', '1', '0', '0', 'Jiangxi Sheng', 'JX');
INSERT INTO `REGION` VALUES ('16', '370000', '山东省', '1', '0', '0', 'Shandong Sheng ', 'SD');
INSERT INTO `REGION` VALUES ('17', '410000', '河南省', '1', '0', '0', 'Henan Sheng', 'HA');
INSERT INTO `REGION` VALUES ('18', '420000', '湖北省', '1', '0', '0', 'Hubei Sheng', 'HB');
INSERT INTO `REGION` VALUES ('19', '430000', '湖南省', '1', '0', '0', 'Hunan Sheng', 'HN');
INSERT INTO `REGION` VALUES ('20', '440000', '广东省', '1', '0', '0', 'Guangdong Sheng', 'GD');
INSERT INTO `REGION` VALUES ('21', '450000', '广西壮族自治区', '1', '0', '0', 'Guangxi Zhuangzu Zizhiqu', 'GX');
INSERT INTO `REGION` VALUES ('22', '460000', '海南省', '1', '0', '0', 'Hainan Sheng', 'HI');
INSERT INTO `REGION` VALUES ('23', '500000', '重庆市', '1', '0', '0', 'Chongqing Shi', 'CQ');
INSERT INTO `REGION` VALUES ('24', '510000', '四川省', '1', '0', '0', 'Sichuan Sheng', 'SC');
INSERT INTO `REGION` VALUES ('25', '520000', '贵州省', '1', '0', '0', 'Guizhou Sheng', 'GZ');
INSERT INTO `REGION` VALUES ('26', '530000', '云南省', '1', '0', '0', 'Yunnan Sheng', 'YN');
INSERT INTO `REGION` VALUES ('27', '540000', '西藏自治区', '1', '0', '0', 'Xizang Zizhiqu', 'XZ');
INSERT INTO `REGION` VALUES ('28', '610000', '陕西省', '1', '0', '0', 'Shanxi Sheng ', 'SN');
INSERT INTO `REGION` VALUES ('29', '620000', '甘肃省', '1', '0', '0', 'Gansu Sheng', 'GS');
INSERT INTO `REGION` VALUES ('30', '630000', '青海省', '1', '0', '0', 'Qinghai Sheng', 'QH');
INSERT INTO `REGION` VALUES ('31', '640000', '宁夏回族自治区', '1', '0', '0', 'Ningxia Huizu Zizhiqu', 'NX');
INSERT INTO `REGION` VALUES ('32', '650000', '新疆维吾尔自治区', '1', '0', '0', 'Xinjiang Uygur Zizhiqu', 'XJ');
INSERT INTO `REGION` VALUES ('33', '110100', '市辖区', '2', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('34', '110200', '县', '2', '0', '0', 'Xian', '2');
INSERT INTO `REGION` VALUES ('35', '120100', '市辖区', '3', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('36', '120200', '县', '3', '0', '0', 'Xian', '2');
INSERT INTO `REGION` VALUES ('37', '130100', '石家庄市', '4', '0', '0', 'Shijiazhuang Shi', 'SJW');
INSERT INTO `REGION` VALUES ('38', '130200', '唐山市', '4', '0', '0', 'Tangshan Shi', 'TGS');
INSERT INTO `REGION` VALUES ('39', '130300', '秦皇岛市', '4', '0', '0', 'Qinhuangdao Shi', 'SHP');
INSERT INTO `REGION` VALUES ('40', '130400', '邯郸市', '4', '0', '0', 'Handan Shi', 'HDS');
INSERT INTO `REGION` VALUES ('41', '130500', '邢台市', '4', '0', '0', 'Xingtai Shi', 'XTS');
INSERT INTO `REGION` VALUES ('42', '130600', '保定市', '4', '0', '0', 'Baoding Shi', 'BDS');
INSERT INTO `REGION` VALUES ('43', '130700', '张家口市', '4', '0', '0', 'Zhangjiakou Shi ', 'ZJK');
INSERT INTO `REGION` VALUES ('44', '130800', '承德市', '4', '0', '0', 'Chengde Shi', 'CDS');
INSERT INTO `REGION` VALUES ('45', '130900', '沧州市', '4', '0', '0', 'Cangzhou Shi', 'CGZ');
INSERT INTO `REGION` VALUES ('46', '131000', '廊坊市', '4', '0', '0', 'Langfang Shi', 'LFS');
INSERT INTO `REGION` VALUES ('47', '131100', '衡水市', '4', '0', '0', 'Hengshui Shi ', 'HGS');
INSERT INTO `REGION` VALUES ('48', '140100', '太原市', '5', '0', '0', 'Taiyuan Shi', 'TYN');
INSERT INTO `REGION` VALUES ('49', '140200', '大同市', '5', '0', '0', 'Datong Shi ', 'DTG');
INSERT INTO `REGION` VALUES ('50', '140300', '阳泉市', '5', '0', '0', 'Yangquan Shi', 'YQS');
INSERT INTO `REGION` VALUES ('51', '140400', '长治市', '5', '0', '0', 'Changzhi Shi', 'CZS');
INSERT INTO `REGION` VALUES ('52', '140500', '晋城市', '5', '0', '0', 'Jincheng Shi ', 'JCG');
INSERT INTO `REGION` VALUES ('53', '140600', '朔州市', '5', '0', '0', 'Shuozhou Shi ', 'SZJ');
INSERT INTO `REGION` VALUES ('54', '140700', '晋中市', '5', '0', '0', 'Jinzhong Shi', '2');
INSERT INTO `REGION` VALUES ('55', '140800', '运城市', '5', '0', '0', 'Yuncheng Shi', '2');
INSERT INTO `REGION` VALUES ('56', '140900', '忻州市', '5', '0', '0', 'Xinzhou Shi', '2');
INSERT INTO `REGION` VALUES ('57', '141000', '临汾市', '5', '0', '0', 'Linfen Shi', '2');
INSERT INTO `REGION` VALUES ('58', '141100', '吕梁市', '5', '0', '0', 'Lvliang Shi', '2');
INSERT INTO `REGION` VALUES ('59', '150100', '呼和浩特市', '6', '0', '0', 'Hohhot Shi', 'Hhht');
INSERT INTO `REGION` VALUES ('60', '150200', '包头市', '6', '0', '0', 'Baotou Shi ', 'BTS');
INSERT INTO `REGION` VALUES ('61', '150300', '乌海市', '6', '0', '0', 'Wuhai Shi', 'WHM');
INSERT INTO `REGION` VALUES ('62', '150400', '赤峰市', '6', '0', '0', 'Chifeng (Ulanhad)Shi', 'CFS');
INSERT INTO `REGION` VALUES ('63', '150500', '通辽市', '6', '0', '0', 'Tongliao Shi', '2');
INSERT INTO `REGION` VALUES ('64', '150600', '鄂尔多斯市', '6', '0', '0', 'Eerduosi Shi', '2');
INSERT INTO `REGION` VALUES ('65', '150700', '呼伦贝尔市', '6', '0', '0', 'Hulunbeier Shi ', '2');
INSERT INTO `REGION` VALUES ('66', '150800', '巴彦淖尔市', '6', '0', '0', 'Bayannaoer Shi', '2');
INSERT INTO `REGION` VALUES ('67', '150900', '乌兰察布市', '6', '0', '0', 'Wulanchabu Shi', '2');
INSERT INTO `REGION` VALUES ('68', '152200', '兴安盟', '6', '0', '0', 'Hinggan Meng', 'HIN');
INSERT INTO `REGION` VALUES ('69', '152500', '锡林郭勒盟', '6', '0', '0', 'Xilin Gol Meng', 'XGO');
INSERT INTO `REGION` VALUES ('70', '152900', '阿拉善盟', '6', '0', '0', 'Alxa Meng', 'ALM');
INSERT INTO `REGION` VALUES ('71', '210100', '沈阳市', '7', '0', '0', 'Shenyang Shi', 'SHE');
INSERT INTO `REGION` VALUES ('72', '210200', '大连市', '7', '0', '0', 'Dalian Shi', 'DLC');
INSERT INTO `REGION` VALUES ('73', '210300', '鞍山市', '7', '0', '0', 'AnShan Shi', 'ASN');
INSERT INTO `REGION` VALUES ('74', '210400', '抚顺市', '7', '0', '0', 'Fushun Shi', 'FSN');
INSERT INTO `REGION` VALUES ('75', '210500', '本溪市', '7', '0', '0', 'Benxi Shi', 'BXS');
INSERT INTO `REGION` VALUES ('76', '210600', '丹东市', '7', '0', '0', 'Dandong Shi', 'DDG');
INSERT INTO `REGION` VALUES ('77', '210700', '锦州市', '7', '0', '0', 'Jinzhou Shi', 'JNZ');
INSERT INTO `REGION` VALUES ('78', '210800', '营口市', '7', '0', '0', 'Yingkou Shi', 'YIK');
INSERT INTO `REGION` VALUES ('79', '210900', '阜新市', '7', '0', '0', 'Fuxin Shi', 'FXS');
INSERT INTO `REGION` VALUES ('80', '211000', '辽阳市', '7', '0', '0', 'Liaoyang Shi', 'LYL');
INSERT INTO `REGION` VALUES ('81', '211100', '盘锦市', '7', '0', '0', 'Panjin Shi', 'PJS');
INSERT INTO `REGION` VALUES ('82', '211200', '铁岭市', '7', '0', '0', 'Tieling Shi', 'TLS');
INSERT INTO `REGION` VALUES ('83', '211300', '朝阳市', '7', '0', '0', 'Chaoyang Shi', 'CYS');
INSERT INTO `REGION` VALUES ('84', '211400', '葫芦岛市', '7', '0', '0', 'Huludao Shi', 'HLD');
INSERT INTO `REGION` VALUES ('85', '220100', '长春市', '8', '0', '0', 'Changchun Shi ', 'CGQ');
INSERT INTO `REGION` VALUES ('86', '220200', '吉林市', '8', '0', '0', 'Jilin Shi ', 'JLS');
INSERT INTO `REGION` VALUES ('87', '220300', '四平市', '8', '0', '0', 'Siping Shi', 'SPS');
INSERT INTO `REGION` VALUES ('88', '220400', '辽源市', '8', '0', '0', 'Liaoyuan Shi', 'LYH');
INSERT INTO `REGION` VALUES ('89', '220500', '通化市', '8', '0', '0', 'Tonghua Shi', 'THS');
INSERT INTO `REGION` VALUES ('90', '220600', '白山市', '8', '0', '0', 'Baishan Shi', 'BSN');
INSERT INTO `REGION` VALUES ('91', '220700', '松原市', '8', '0', '0', 'Songyuan Shi', 'SYU');
INSERT INTO `REGION` VALUES ('92', '220800', '白城市', '8', '0', '0', 'Baicheng Shi', 'BCS');
INSERT INTO `REGION` VALUES ('93', '222400', '延边朝鲜族自治州', '8', '0', '0', 'Yanbian Chosenzu Zizhizhou', 'YBZ');
INSERT INTO `REGION` VALUES ('94', '230100', '哈尔滨市', '9', '0', '0', 'Harbin Shi', 'HRB');
INSERT INTO `REGION` VALUES ('95', '230200', '齐齐哈尔市', '9', '0', '0', 'Qiqihar Shi', 'NDG');
INSERT INTO `REGION` VALUES ('96', '230300', '鸡西市', '9', '0', '0', 'Jixi Shi', 'JXI');
INSERT INTO `REGION` VALUES ('97', '230400', '鹤岗市', '9', '0', '0', 'Hegang Shi', 'HEG');
INSERT INTO `REGION` VALUES ('98', '230500', '双鸭山市', '9', '0', '0', 'Shuangyashan Shi', 'SYS');
INSERT INTO `REGION` VALUES ('99', '230600', '大庆市', '9', '0', '0', 'Daqing Shi', 'DQG');
INSERT INTO `REGION` VALUES ('100', '230700', '伊春市', '9', '0', '0', 'Yichun Shi', 'YCH');
INSERT INTO `REGION` VALUES ('101', '230800', '佳木斯市', '9', '0', '0', 'Jiamusi Shi', 'JMU');
INSERT INTO `REGION` VALUES ('102', '230900', '七台河市', '9', '0', '0', 'Qitaihe Shi', 'QTH');
INSERT INTO `REGION` VALUES ('103', '231000', '牡丹江市', '9', '0', '0', 'Mudanjiang Shi', 'MDG');
INSERT INTO `REGION` VALUES ('104', '231100', '黑河市', '9', '0', '0', 'Heihe Shi', 'HEK');
INSERT INTO `REGION` VALUES ('105', '231200', '绥化市', '9', '0', '0', 'Suihua Shi', '2');
INSERT INTO `REGION` VALUES ('106', '232700', '大兴安岭地区', '9', '0', '0', 'Da Hinggan Ling Diqu', 'DHL');
INSERT INTO `REGION` VALUES ('107', '310100', '市辖区', '10', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('108', '310200', '县', '10', '0', '0', 'Xian', '2');
INSERT INTO `REGION` VALUES ('109', '320100', '南京市', '11', '0', '0', 'Nanjing Shi', 'NKG');
INSERT INTO `REGION` VALUES ('110', '320200', '无锡市', '11', '0', '0', 'Wuxi Shi', 'WUX');
INSERT INTO `REGION` VALUES ('111', '320300', '徐州市', '11', '0', '0', 'Xuzhou Shi', 'XUZ');
INSERT INTO `REGION` VALUES ('112', '320400', '常州市', '11', '0', '0', 'Changzhou Shi', 'CZX');
INSERT INTO `REGION` VALUES ('113', '320500', '苏州市', '11', '0', '0', 'Suzhou Shi', 'SZH');
INSERT INTO `REGION` VALUES ('114', '320600', '南通市', '11', '0', '0', 'Nantong Shi', 'NTG');
INSERT INTO `REGION` VALUES ('115', '320700', '连云港市', '11', '0', '0', 'Lianyungang Shi', 'LYG');
INSERT INTO `REGION` VALUES ('116', '320800', '淮安市', '11', '0', '0', 'Huai,an Xian', '2');
INSERT INTO `REGION` VALUES ('117', '320900', '盐城市', '11', '0', '0', 'Yancheng Shi', 'YCK');
INSERT INTO `REGION` VALUES ('118', '321000', '扬州市', '11', '0', '0', 'Yangzhou Shi', 'YZH');
INSERT INTO `REGION` VALUES ('119', '321100', '镇江市', '11', '0', '0', 'Zhenjiang Shi', 'ZHE');
INSERT INTO `REGION` VALUES ('120', '321200', '泰州市', '11', '0', '0', 'Taizhou Shi', 'TZS');
INSERT INTO `REGION` VALUES ('121', '321300', '宿迁市', '11', '0', '0', 'Suqian Shi', 'SUQ');
INSERT INTO `REGION` VALUES ('122', '330100', '杭州市', '12', '0', '0', 'Hangzhou Shi', 'HGH');
INSERT INTO `REGION` VALUES ('123', '330200', '宁波市', '12', '0', '0', 'Ningbo Shi', 'NGB');
INSERT INTO `REGION` VALUES ('124', '330300', '温州市', '12', '0', '0', 'Wenzhou Shi', 'WNZ');
INSERT INTO `REGION` VALUES ('125', '330400', '嘉兴市', '12', '0', '0', 'Jiaxing Shi', 'JIX');
INSERT INTO `REGION` VALUES ('126', '330500', '湖州市', '12', '0', '0', 'Huzhou Shi ', 'HZH');
INSERT INTO `REGION` VALUES ('127', '330600', '绍兴市', '12', '0', '0', 'Shaoxing Shi', 'SXG');
INSERT INTO `REGION` VALUES ('128', '330700', '金华市', '12', '0', '0', 'Jinhua Shi', 'JHA');
INSERT INTO `REGION` VALUES ('129', '330800', '衢州市', '12', '0', '0', 'Quzhou Shi', 'QUZ');
INSERT INTO `REGION` VALUES ('130', '330900', '舟山市', '12', '0', '0', 'Zhoushan Shi', 'ZOS');
INSERT INTO `REGION` VALUES ('131', '331000', '台州市', '12', '0', '0', 'Taizhou Shi', 'TZZ');
INSERT INTO `REGION` VALUES ('132', '331100', '丽水市', '12', '0', '0', 'Lishui Shi', '2');
INSERT INTO `REGION` VALUES ('133', '340100', '合肥市', '13', '0', '0', 'Hefei Shi', 'HFE');
INSERT INTO `REGION` VALUES ('134', '340200', '芜湖市', '13', '0', '0', 'Wuhu Shi', 'WHI');
INSERT INTO `REGION` VALUES ('135', '340300', '蚌埠市', '13', '0', '0', 'Bengbu Shi', 'BBU');
INSERT INTO `REGION` VALUES ('136', '340400', '淮南市', '13', '0', '0', 'Huainan Shi', 'HNS');
INSERT INTO `REGION` VALUES ('137', '340500', '马鞍山市', '13', '0', '0', 'Ma,anshan Shi', 'MAA');
INSERT INTO `REGION` VALUES ('138', '340600', '淮北市', '13', '0', '0', 'Huaibei Shi', 'HBE');
INSERT INTO `REGION` VALUES ('139', '340700', '铜陵市', '13', '0', '0', 'Tongling Shi', 'TOL');
INSERT INTO `REGION` VALUES ('140', '340800', '安庆市', '13', '0', '0', 'Anqing Shi', 'AQG');
INSERT INTO `REGION` VALUES ('141', '341000', '黄山市', '13', '0', '0', 'Huangshan Shi', 'HSN');
INSERT INTO `REGION` VALUES ('142', '341100', '滁州市', '13', '0', '0', 'Chuzhou Shi', 'CUZ');
INSERT INTO `REGION` VALUES ('143', '341200', '阜阳市', '13', '0', '0', 'Fuyang Shi', 'FYS');
INSERT INTO `REGION` VALUES ('144', '341300', '宿州市', '13', '0', '0', 'Suzhou Shi', 'SUZ');
INSERT INTO `REGION` VALUES ('145', '341400', '巢湖市', '13', '0', '0', 'Chaohu Shi', '2');
INSERT INTO `REGION` VALUES ('146', '341500', '六安市', '13', '0', '0', 'Liu,an Shi', '2');
INSERT INTO `REGION` VALUES ('147', '341600', '亳州市', '13', '0', '0', 'Bozhou Shi', '2');
INSERT INTO `REGION` VALUES ('148', '341700', '池州市', '13', '0', '0', 'Chizhou Shi', '2');
INSERT INTO `REGION` VALUES ('149', '341800', '宣城市', '13', '0', '0', 'Xuancheng Shi', '2');
INSERT INTO `REGION` VALUES ('150', '350100', '福州市', '14', '0', '0', 'Fuzhou Shi', 'FOC');
INSERT INTO `REGION` VALUES ('151', '350200', '厦门市', '14', '0', '0', 'Xiamen Shi', 'XMN');
INSERT INTO `REGION` VALUES ('152', '350300', '莆田市', '14', '0', '0', 'Putian Shi', 'PUT');
INSERT INTO `REGION` VALUES ('153', '350400', '三明市', '14', '0', '0', 'Sanming Shi', 'SMS');
INSERT INTO `REGION` VALUES ('154', '350500', '泉州市', '14', '0', '0', 'Quanzhou Shi', 'QZJ');
INSERT INTO `REGION` VALUES ('155', '350600', '漳州市', '14', '0', '0', 'Zhangzhou Shi', 'ZZU');
INSERT INTO `REGION` VALUES ('156', '350700', '南平市', '14', '0', '0', 'Nanping Shi', 'NPS');
INSERT INTO `REGION` VALUES ('157', '350800', '龙岩市', '14', '0', '0', 'Longyan Shi', 'LYF');
INSERT INTO `REGION` VALUES ('158', '350900', '宁德市', '14', '0', '0', 'Ningde Shi', '2');
INSERT INTO `REGION` VALUES ('159', '360100', '南昌市', '15', '0', '0', 'Nanchang Shi', 'KHN');
INSERT INTO `REGION` VALUES ('160', '360200', '景德镇市', '15', '0', '0', 'Jingdezhen Shi', 'JDZ');
INSERT INTO `REGION` VALUES ('161', '360300', '萍乡市', '15', '0', '0', 'Pingxiang Shi', 'PXS');
INSERT INTO `REGION` VALUES ('162', '360400', '九江市', '15', '0', '0', 'Jiujiang Shi', 'JIU');
INSERT INTO `REGION` VALUES ('163', '360500', '新余市', '15', '0', '0', 'Xinyu Shi', 'XYU');
INSERT INTO `REGION` VALUES ('164', '360600', '鹰潭市', '15', '0', '0', 'Yingtan Shi', '2');
INSERT INTO `REGION` VALUES ('165', '360700', '赣州市', '15', '0', '0', 'Ganzhou Shi', 'GZH');
INSERT INTO `REGION` VALUES ('166', '360800', '吉安市', '15', '0', '0', 'Ji,an Shi', '2');
INSERT INTO `REGION` VALUES ('167', '360900', '宜春市', '15', '0', '0', 'Yichun Shi', '2');
INSERT INTO `REGION` VALUES ('168', '361000', '抚州市', '15', '0', '0', 'Wuzhou Shi', '2');
INSERT INTO `REGION` VALUES ('169', '361100', '上饶市', '15', '0', '0', 'Shangrao Shi', '2');
INSERT INTO `REGION` VALUES ('170', '370100', '济南市', '16', '0', '0', 'Jinan Shi', 'TNA');
INSERT INTO `REGION` VALUES ('171', '370200', '青岛市', '16', '0', '0', 'Qingdao Shi', 'TAO');
INSERT INTO `REGION` VALUES ('172', '370300', '淄博市', '16', '0', '0', 'Zibo Shi', 'ZBO');
INSERT INTO `REGION` VALUES ('173', '370400', '枣庄市', '16', '0', '0', 'Zaozhuang Shi', 'ZZG');
INSERT INTO `REGION` VALUES ('174', '370500', '东营市', '16', '0', '0', 'Dongying Shi', 'DYG');
INSERT INTO `REGION` VALUES ('175', '370600', '烟台市', '16', '0', '0', 'Yantai Shi', 'YNT');
INSERT INTO `REGION` VALUES ('176', '370700', '潍坊市', '16', '0', '0', 'Weifang Shi', 'WEF');
INSERT INTO `REGION` VALUES ('177', '370800', '济宁市', '16', '0', '0', 'Jining Shi', 'JNG');
INSERT INTO `REGION` VALUES ('178', '370900', '泰安市', '16', '0', '0', 'Tai,an Shi', 'TAI');
INSERT INTO `REGION` VALUES ('179', '371000', '威海市', '16', '0', '0', 'Weihai Shi', 'WEH');
INSERT INTO `REGION` VALUES ('180', '371100', '日照市', '16', '0', '0', 'Rizhao Shi', 'RZH');
INSERT INTO `REGION` VALUES ('181', '371200', '莱芜市', '16', '0', '0', 'Laiwu Shi', 'LWS');
INSERT INTO `REGION` VALUES ('182', '371300', '临沂市', '16', '0', '0', 'Linyi Shi', 'LYI');
INSERT INTO `REGION` VALUES ('183', '371400', '德州市', '16', '0', '0', 'Dezhou Shi', 'DZS');
INSERT INTO `REGION` VALUES ('184', '371500', '聊城市', '16', '0', '0', 'Liaocheng Shi', 'LCH');
INSERT INTO `REGION` VALUES ('185', '371600', '滨州市', '16', '0', '0', 'Binzhou Shi', '2');
INSERT INTO `REGION` VALUES ('186', '371700', '菏泽市', '16', '3', '0', 'Heze Shi', 'HZ');
INSERT INTO `REGION` VALUES ('187', '410100', '郑州市', '17', '0', '0', 'Zhengzhou Shi', 'CGO');
INSERT INTO `REGION` VALUES ('188', '410200', '开封市', '17', '0', '0', 'Kaifeng Shi', 'KFS');
INSERT INTO `REGION` VALUES ('189', '410300', '洛阳市', '17', '0', '0', 'Luoyang Shi', 'LYA');
INSERT INTO `REGION` VALUES ('190', '410400', '平顶山市', '17', '0', '0', 'Pingdingshan Shi', 'PDS');
INSERT INTO `REGION` VALUES ('191', '410500', '安阳市', '17', '0', '0', 'Anyang Shi', 'AYS');
INSERT INTO `REGION` VALUES ('192', '410600', '鹤壁市', '17', '0', '0', 'Hebi Shi', 'HBS');
INSERT INTO `REGION` VALUES ('193', '410700', '新乡市', '17', '0', '0', 'Xinxiang Shi', 'XXS');
INSERT INTO `REGION` VALUES ('194', '410800', '焦作市', '17', '0', '0', 'Jiaozuo Shi', 'JZY');
INSERT INTO `REGION` VALUES ('195', '410900', '濮阳市', '17', '0', '0', 'Puyang Shi', 'PYS');
INSERT INTO `REGION` VALUES ('196', '411000', '许昌市', '17', '0', '0', 'Xuchang Shi', 'XCS');
INSERT INTO `REGION` VALUES ('197', '411100', '漯河市', '17', '0', '0', 'Luohe Shi', 'LHS');
INSERT INTO `REGION` VALUES ('198', '411200', '三门峡市', '17', '0', '0', 'Sanmenxia Shi', 'SMX');
INSERT INTO `REGION` VALUES ('199', '411300', '南阳市', '17', '0', '0', 'Nanyang Shi', 'NYS');
INSERT INTO `REGION` VALUES ('200', '411400', '商丘市', '17', '0', '0', 'Shangqiu Shi', 'SQS');
INSERT INTO `REGION` VALUES ('201', '411500', '信阳市', '17', '0', '0', 'Xinyang Shi', 'XYG');
INSERT INTO `REGION` VALUES ('202', '411600', '周口市', '17', '0', '0', 'Zhoukou Shi', '2');
INSERT INTO `REGION` VALUES ('203', '411700', '驻马店市', '17', '0', '0', 'Zhumadian Shi', '2');
INSERT INTO `REGION` VALUES ('204', '420100', '武汉市', '18', '0', '0', 'Wuhan Shi', 'WUH');
INSERT INTO `REGION` VALUES ('205', '420200', '黄石市', '18', '0', '0', 'Huangshi Shi', 'HIS');
INSERT INTO `REGION` VALUES ('206', '420300', '十堰市', '18', '0', '0', 'Shiyan Shi', 'SYE');
INSERT INTO `REGION` VALUES ('207', '420500', '宜昌市', '18', '0', '0', 'Yichang Shi', 'YCO');
INSERT INTO `REGION` VALUES ('208', '420600', '襄樊市', '18', '0', '0', 'Xiangfan Shi', 'XFN');
INSERT INTO `REGION` VALUES ('209', '420700', '鄂州市', '18', '0', '0', 'Ezhou Shi', 'EZS');
INSERT INTO `REGION` VALUES ('210', '420800', '荆门市', '18', '0', '0', 'Jingmen Shi', 'JMS');
INSERT INTO `REGION` VALUES ('211', '420900', '孝感市', '18', '0', '0', 'Xiaogan Shi', 'XGE');
INSERT INTO `REGION` VALUES ('212', '421000', '荆州市', '18', '0', '0', 'Jingzhou Shi', 'JGZ');
INSERT INTO `REGION` VALUES ('213', '421100', '黄冈市', '18', '0', '0', 'Huanggang Shi', 'HE');
INSERT INTO `REGION` VALUES ('214', '421200', '咸宁市', '18', '0', '0', 'Xianning Xian', 'XNS');
INSERT INTO `REGION` VALUES ('215', '421300', '随州市', '18', '0', '0', 'Suizhou Shi', '2');
INSERT INTO `REGION` VALUES ('216', '422800', '恩施土家族苗族自治州', '18', '0', '0', 'Enshi Tujiazu Miaozu Zizhizhou', 'ESH');
INSERT INTO `REGION` VALUES ('217', '429000', '省直辖县级行政区划', '18', '0', '0', 'shengzhixiaxianjixingzhengquhua', '2');
INSERT INTO `REGION` VALUES ('218', '430100', '长沙市', '19', '0', '0', 'Changsha Shi', 'CSX');
INSERT INTO `REGION` VALUES ('219', '430200', '株洲市', '19', '0', '0', 'Zhuzhou Shi', 'ZZS');
INSERT INTO `REGION` VALUES ('220', '430300', '湘潭市', '19', '0', '0', 'Xiangtan Shi', 'XGT');
INSERT INTO `REGION` VALUES ('221', '430400', '衡阳市', '19', '0', '0', 'Hengyang Shi', 'HNY');
INSERT INTO `REGION` VALUES ('222', '430500', '邵阳市', '19', '0', '0', 'Shaoyang Shi', 'SYR');
INSERT INTO `REGION` VALUES ('223', '430600', '岳阳市', '19', '0', '0', 'Yueyang Shi', 'YYG');
INSERT INTO `REGION` VALUES ('224', '430700', '常德市', '19', '0', '0', 'Changde Shi', 'CDE');
INSERT INTO `REGION` VALUES ('225', '430800', '张家界市', '19', '0', '0', 'Zhangjiajie Shi', 'ZJJ');
INSERT INTO `REGION` VALUES ('226', '430900', '益阳市', '19', '0', '0', 'Yiyang Shi', 'YYS');
INSERT INTO `REGION` VALUES ('227', '431000', '郴州市', '19', '0', '0', 'Chenzhou Shi', 'CNZ');
INSERT INTO `REGION` VALUES ('228', '431100', '永州市', '19', '0', '0', 'Yongzhou Shi', 'YZS');
INSERT INTO `REGION` VALUES ('229', '431200', '怀化市', '19', '0', '0', 'Huaihua Shi', 'HHS');
INSERT INTO `REGION` VALUES ('230', '431300', '娄底市', '19', '0', '0', 'Loudi Shi', '2');
INSERT INTO `REGION` VALUES ('231', '433100', '湘西土家族苗族自治州', '19', '0', '0', 'Xiangxi Tujiazu Miaozu Zizhizhou ', 'XXZ');
INSERT INTO `REGION` VALUES ('232', '440100', '广州市', '20', '0', '0', 'Guangzhou Shi', 'CAN');
INSERT INTO `REGION` VALUES ('233', '440200', '韶关市', '20', '0', '0', 'Shaoguan Shi', 'HSC');
INSERT INTO `REGION` VALUES ('234', '440300', '深圳市', '20', '0', '0', 'Shenzhen Shi', 'SZX');
INSERT INTO `REGION` VALUES ('235', '440400', '珠海市', '20', '0', '0', 'Zhuhai Shi', 'ZUH');
INSERT INTO `REGION` VALUES ('236', '440500', '汕头市', '20', '0', '0', 'Shantou Shi', 'SWA');
INSERT INTO `REGION` VALUES ('237', '440600', '佛山市', '20', '0', '0', 'Foshan Shi', 'FOS');
INSERT INTO `REGION` VALUES ('238', '440700', '江门市', '20', '0', '0', 'Jiangmen Shi', 'JMN');
INSERT INTO `REGION` VALUES ('239', '440800', '湛江市', '20', '0', '0', 'Zhanjiang Shi', 'ZHA');
INSERT INTO `REGION` VALUES ('240', '440900', '茂名市', '20', '0', '0', 'Maoming Shi', 'MMI');
INSERT INTO `REGION` VALUES ('241', '441200', '肇庆市', '20', '0', '0', 'Zhaoqing Shi', 'ZQG');
INSERT INTO `REGION` VALUES ('242', '441300', '惠州市', '20', '0', '0', 'Huizhou Shi', 'HUI');
INSERT INTO `REGION` VALUES ('243', '441400', '梅州市', '20', '0', '0', 'Meizhou Shi', 'MXZ');
INSERT INTO `REGION` VALUES ('244', '441500', '汕尾市', '20', '0', '0', 'Shanwei Shi', 'SWE');
INSERT INTO `REGION` VALUES ('245', '441600', '河源市', '20', '0', '0', 'Heyuan Shi', 'HEY');
INSERT INTO `REGION` VALUES ('246', '441700', '阳江市', '20', '0', '0', 'Yangjiang Shi', 'YJI');
INSERT INTO `REGION` VALUES ('247', '441800', '清远市', '20', '0', '0', 'Qingyuan Shi', 'QYN');
INSERT INTO `REGION` VALUES ('248', '441900', '东莞市', '20', '0', '0', 'Dongguan Shi', 'DGG');
INSERT INTO `REGION` VALUES ('249', '442000', '中山市', '20', '0', '0', 'Zhongshan Shi', 'ZSN');
INSERT INTO `REGION` VALUES ('250', '445100', '潮州市', '20', '0', '0', 'Chaozhou Shi', 'CZY');
INSERT INTO `REGION` VALUES ('251', '445200', '揭阳市', '20', '0', '0', 'Jieyang Shi', 'JIY');
INSERT INTO `REGION` VALUES ('252', '445300', '云浮市', '20', '0', '0', 'Yunfu Shi', 'YFS');
INSERT INTO `REGION` VALUES ('253', '450100', '南宁市', '21', '0', '0', 'Nanning Shi', 'NNG');
INSERT INTO `REGION` VALUES ('254', '450200', '柳州市', '21', '0', '0', 'Liuzhou Shi', 'LZH');
INSERT INTO `REGION` VALUES ('255', '450300', '桂林市', '21', '0', '0', 'Guilin Shi', 'KWL');
INSERT INTO `REGION` VALUES ('256', '450400', '梧州市', '21', '0', '0', 'Wuzhou Shi', 'WUZ');
INSERT INTO `REGION` VALUES ('257', '450500', '北海市', '21', '0', '0', 'Beihai Shi', 'BHY');
INSERT INTO `REGION` VALUES ('258', '450600', '防城港市', '21', '0', '0', 'Fangchenggang Shi', 'FAN');
INSERT INTO `REGION` VALUES ('259', '450700', '钦州市', '21', '0', '0', 'Qinzhou Shi', 'QZH');
INSERT INTO `REGION` VALUES ('260', '450800', '贵港市', '21', '0', '0', 'Guigang Shi', 'GUG');
INSERT INTO `REGION` VALUES ('261', '450900', '玉林市', '21', '0', '0', 'Yulin Shi', 'YUL');
INSERT INTO `REGION` VALUES ('262', '451000', '百色市', '21', '0', '0', 'Baise Shi', '2');
INSERT INTO `REGION` VALUES ('263', '451100', '贺州市', '21', '0', '0', 'Hezhou Shi', '2');
INSERT INTO `REGION` VALUES ('264', '451200', '河池市', '21', '0', '0', 'Hechi Shi', '2');
INSERT INTO `REGION` VALUES ('265', '451300', '来宾市', '21', '0', '0', 'Laibin Shi', '2');
INSERT INTO `REGION` VALUES ('266', '451400', '崇左市', '21', '0', '0', 'Chongzuo Shi', '2');
INSERT INTO `REGION` VALUES ('267', '460100', '海口市', '22', '0', '0', 'Haikou Shi', 'HAK');
INSERT INTO `REGION` VALUES ('268', '460200', '三亚市', '22', '0', '0', 'Sanya Shi', 'SYX');
INSERT INTO `REGION` VALUES ('269', '469000', '省直辖县级行政区划', '22', '0', '0', 'shengzhixiaxianjixingzhengquhua', '2');
INSERT INTO `REGION` VALUES ('270', '500100', '市辖区', '23', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('271', '500200', '县', '23', '0', '0', 'Xian', '2');
INSERT INTO `REGION` VALUES ('273', '510100', '成都市', '24', '0', '0', 'Chengdu Shi', 'CTU');
INSERT INTO `REGION` VALUES ('274', '510300', '自贡市', '24', '0', '0', 'Zigong Shi', 'ZGS');
INSERT INTO `REGION` VALUES ('275', '510400', '攀枝花市', '24', '0', '0', 'Panzhihua Shi', 'PZH');
INSERT INTO `REGION` VALUES ('276', '510500', '泸州市', '24', '0', '0', 'Luzhou Shi', 'LUZ');
INSERT INTO `REGION` VALUES ('277', '510600', '德阳市', '24', '0', '0', 'Deyang Shi', 'DEY');
INSERT INTO `REGION` VALUES ('278', '510700', '绵阳市', '24', '0', '0', 'Mianyang Shi', 'MYG');
INSERT INTO `REGION` VALUES ('279', '510800', '广元市', '24', '0', '0', 'Guangyuan Shi', 'GYC');
INSERT INTO `REGION` VALUES ('280', '510900', '遂宁市', '24', '0', '0', 'Suining Shi', 'SNS');
INSERT INTO `REGION` VALUES ('281', '511000', '内江市', '24', '0', '0', 'Neijiang Shi', 'NJS');
INSERT INTO `REGION` VALUES ('282', '511100', '乐山市', '24', '0', '0', 'Leshan Shi', 'LES');
INSERT INTO `REGION` VALUES ('283', '511300', '南充市', '24', '0', '0', 'Nanchong Shi', 'NCO');
INSERT INTO `REGION` VALUES ('284', '511400', '眉山市', '24', '0', '0', 'Meishan Shi', '2');
INSERT INTO `REGION` VALUES ('285', '511500', '宜宾市', '24', '0', '0', 'Yibin Shi', 'YBS');
INSERT INTO `REGION` VALUES ('286', '511600', '广安市', '24', '0', '0', 'Guang,an Shi', 'GAC');
INSERT INTO `REGION` VALUES ('287', '511700', '达州市', '24', '0', '0', 'Dazhou Shi', '2');
INSERT INTO `REGION` VALUES ('288', '511800', '雅安市', '24', '0', '0', 'Ya,an Shi', '2');
INSERT INTO `REGION` VALUES ('289', '511900', '巴中市', '24', '0', '0', 'Bazhong Shi', '2');
INSERT INTO `REGION` VALUES ('290', '512000', '资阳市', '24', '0', '0', 'Ziyang Shi', '2');
INSERT INTO `REGION` VALUES ('291', '513200', '阿坝藏族羌族自治州', '24', '0', '0', 'Aba(Ngawa) Zangzu Qiangzu Zizhizhou', 'ABA');
INSERT INTO `REGION` VALUES ('292', '513300', '甘孜藏族自治州', '24', '0', '0', 'Garze Zangzu Zizhizhou', 'GAZ');
INSERT INTO `REGION` VALUES ('293', '513400', '凉山彝族自治州', '24', '0', '0', 'Liangshan Yizu Zizhizhou', 'LSY');
INSERT INTO `REGION` VALUES ('294', '520100', '贵阳市', '25', '0', '0', 'Guiyang Shi', 'KWE');
INSERT INTO `REGION` VALUES ('295', '520200', '六盘水市', '25', '0', '0', 'Liupanshui Shi', 'LPS');
INSERT INTO `REGION` VALUES ('296', '520300', '遵义市', '25', '0', '0', 'Zunyi Shi', 'ZNY');
INSERT INTO `REGION` VALUES ('297', '520400', '安顺市', '25', '0', '0', 'Anshun Xian', '2');
INSERT INTO `REGION` VALUES ('298', '522200', '铜仁地区', '25', '0', '0', 'Tongren Diqu', 'TRD');
INSERT INTO `REGION` VALUES ('299', '522300', '黔西南布依族苗族自治州', '25', '0', '0', 'Qianxinan Buyeizu Zizhizhou', 'QXZ');
INSERT INTO `REGION` VALUES ('300', '522400', '毕节地区', '25', '0', '0', 'Bijie Diqu', 'BJD');
INSERT INTO `REGION` VALUES ('301', '522600', '黔东南苗族侗族自治州', '25', '0', '0', 'Qiandongnan Miaozu Dongzu Zizhizhou', 'QND');
INSERT INTO `REGION` VALUES ('302', '522700', '黔南布依族苗族自治州', '25', '0', '0', 'Qiannan Buyeizu Miaozu Zizhizhou', 'QNZ');
INSERT INTO `REGION` VALUES ('303', '530100', '昆明市', '26', '0', '0', 'Kunming Shi', 'KMG');
INSERT INTO `REGION` VALUES ('304', '530300', '曲靖市', '26', '0', '0', 'Qujing Shi', 'QJS');
INSERT INTO `REGION` VALUES ('305', '530400', '玉溪市', '26', '0', '0', 'Yuxi Shi', 'YXS');
INSERT INTO `REGION` VALUES ('306', '530500', '保山市', '26', '0', '0', 'Baoshan Shi', '2');
INSERT INTO `REGION` VALUES ('307', '530600', '昭通市', '26', '0', '0', 'Zhaotong Shi', '2');
INSERT INTO `REGION` VALUES ('308', '530700', '丽江市', '26', '0', '0', 'Lijiang Shi', '2');
INSERT INTO `REGION` VALUES ('309', '530800', '普洱市', '26', '0', '0', 'Simao Shi', '2');
INSERT INTO `REGION` VALUES ('310', '530900', '临沧市', '26', '0', '0', 'Lincang Shi', '2');
INSERT INTO `REGION` VALUES ('311', '532300', '楚雄彝族自治州', '26', '0', '0', 'Chuxiong Yizu Zizhizhou', 'CXD');
INSERT INTO `REGION` VALUES ('312', '532500', '红河哈尼族彝族自治州', '26', '0', '0', 'Honghe Hanizu Yizu Zizhizhou', 'HHZ');
INSERT INTO `REGION` VALUES ('313', '532600', '文山壮族苗族自治州', '26', '0', '0', 'Wenshan Zhuangzu Miaozu Zizhizhou', 'WSZ');
INSERT INTO `REGION` VALUES ('314', '532800', '西双版纳傣族自治州', '26', '0', '0', 'Xishuangbanna Daizu Zizhizhou', 'XSB');
INSERT INTO `REGION` VALUES ('315', '532900', '大理白族自治州', '26', '0', '0', 'Dali Baizu Zizhizhou', 'DLZ');
INSERT INTO `REGION` VALUES ('316', '533100', '德宏傣族景颇族自治州', '26', '0', '0', 'Dehong Daizu Jingpozu Zizhizhou', 'DHG');
INSERT INTO `REGION` VALUES ('317', '533300', '怒江傈僳族自治州', '26', '0', '0', 'Nujiang Lisuzu Zizhizhou', 'NUJ');
INSERT INTO `REGION` VALUES ('318', '533400', '迪庆藏族自治州', '26', '0', '0', 'Deqen Zangzu Zizhizhou', 'DEZ');
INSERT INTO `REGION` VALUES ('319', '540100', '拉萨市', '27', '0', '0', 'Lhasa Shi', 'LXA');
INSERT INTO `REGION` VALUES ('320', '542100', '昌都地区', '27', '0', '0', 'Qamdo Diqu', 'QAD');
INSERT INTO `REGION` VALUES ('321', '542200', '山南地区', '27', '0', '0', 'Shannan Diqu', 'SND');
INSERT INTO `REGION` VALUES ('322', '542300', '日喀则地区', '27', '0', '0', 'Xigaze Diqu', 'XID');
INSERT INTO `REGION` VALUES ('323', '542400', '那曲地区', '27', '0', '0', 'Nagqu Diqu', 'NAD');
INSERT INTO `REGION` VALUES ('324', '542500', '阿里地区', '27', '0', '0', 'Ngari Diqu', 'NGD');
INSERT INTO `REGION` VALUES ('325', '542600', '林芝地区', '27', '0', '0', 'Nyingchi Diqu', 'NYD');
INSERT INTO `REGION` VALUES ('326', '610100', '西安市', '28', '0', '0', 'Xi,an Shi', 'SIA');
INSERT INTO `REGION` VALUES ('327', '610200', '铜川市', '28', '0', '0', 'Tongchuan Shi', 'TCN');
INSERT INTO `REGION` VALUES ('328', '610300', '宝鸡市', '28', '0', '0', 'Baoji Shi', 'BJI');
INSERT INTO `REGION` VALUES ('329', '610400', '咸阳市', '28', '0', '0', 'Xianyang Shi', 'XYS');
INSERT INTO `REGION` VALUES ('330', '610500', '渭南市', '28', '0', '0', 'Weinan Shi', 'WNA');
INSERT INTO `REGION` VALUES ('331', '610600', '延安市', '28', '0', '0', 'Yan,an Shi', 'YNA');
INSERT INTO `REGION` VALUES ('332', '610700', '汉中市', '28', '0', '0', 'Hanzhong Shi', 'HZJ');
INSERT INTO `REGION` VALUES ('333', '610800', '榆林市', '28', '0', '0', 'Yulin Shi', '2');
INSERT INTO `REGION` VALUES ('334', '610900', '安康市', '28', '0', '0', 'Ankang Shi', '2');
INSERT INTO `REGION` VALUES ('335', '611000', '商洛市', '28', '0', '0', 'Shangluo Shi', '2');
INSERT INTO `REGION` VALUES ('336', '620100', '兰州市', '29', '0', '0', 'Lanzhou Shi', 'LHW');
INSERT INTO `REGION` VALUES ('337', '620200', '嘉峪关市', '29', '0', '0', 'Jiayuguan Shi', 'JYG');
INSERT INTO `REGION` VALUES ('338', '620300', '金昌市', '29', '0', '0', 'Jinchang Shi', 'JCS');
INSERT INTO `REGION` VALUES ('339', '620400', '白银市', '29', '0', '0', 'Baiyin Shi', 'BYS');
INSERT INTO `REGION` VALUES ('340', '620500', '天水市', '29', '0', '0', 'Tianshui Shi', 'TSU');
INSERT INTO `REGION` VALUES ('341', '620600', '武威市', '29', '0', '0', 'Wuwei Shi', '2');
INSERT INTO `REGION` VALUES ('342', '620700', '张掖市', '29', '0', '0', 'Zhangye Shi', '2');
INSERT INTO `REGION` VALUES ('343', '620800', '平凉市', '29', '0', '0', 'Pingliang Shi', '2');
INSERT INTO `REGION` VALUES ('344', '620900', '酒泉市', '29', '0', '0', 'Jiuquan Shi', '2');
INSERT INTO `REGION` VALUES ('345', '621000', '庆阳市', '29', '0', '0', 'Qingyang Shi', '2');
INSERT INTO `REGION` VALUES ('346', '621100', '定西市', '29', '0', '0', 'Dingxi Shi', '2');
INSERT INTO `REGION` VALUES ('347', '621200', '陇南市', '29', '0', '0', 'Longnan Shi', '2');
INSERT INTO `REGION` VALUES ('348', '622900', '临夏回族自治州', '29', '0', '0', 'Linxia Huizu Zizhizhou ', 'LXH');
INSERT INTO `REGION` VALUES ('349', '623000', '甘南藏族自治州', '29', '0', '0', 'Gannan Zangzu Zizhizhou', 'GNZ');
INSERT INTO `REGION` VALUES ('350', '630100', '西宁市', '30', '0', '0', 'Xining Shi', 'XNN');
INSERT INTO `REGION` VALUES ('351', '632100', '海东地区', '30', '0', '0', 'HaIDong Diqu', 'HDD');
INSERT INTO `REGION` VALUES ('352', '632200', '海北藏族自治州', '30', '0', '0', 'Haibei Zangzu Zizhizhou', 'HBZ');
INSERT INTO `REGION` VALUES ('353', '632300', '黄南藏族自治州', '30', '0', '0', 'Huangnan Zangzu Zizhizhou', 'HNZ');
INSERT INTO `REGION` VALUES ('354', '632500', '海南藏族自治州', '30', '0', '0', 'Hainan Zangzu Zizhizhou', 'HNN');
INSERT INTO `REGION` VALUES ('355', '632600', '果洛藏族自治州', '30', '0', '0', 'Golog Zangzu Zizhizhou', 'GOL');
INSERT INTO `REGION` VALUES ('356', '632700', '玉树藏族自治州', '30', '0', '0', 'Yushu Zangzu Zizhizhou', 'YSZ');
INSERT INTO `REGION` VALUES ('357', '632800', '海西蒙古族藏族自治州', '30', '0', '0', 'Haixi Mongolzu Zangzu Zizhizhou', 'HXZ');
INSERT INTO `REGION` VALUES ('358', '640100', '银川市', '31', '0', '0', 'Yinchuan Shi', 'INC');
INSERT INTO `REGION` VALUES ('359', '640200', '石嘴山市', '31', '0', '0', 'Shizuishan Shi', 'SZS');
INSERT INTO `REGION` VALUES ('360', '640300', '吴忠市', '31', '0', '0', 'Wuzhong Shi', 'WZS');
INSERT INTO `REGION` VALUES ('361', '640400', '固原市', '31', '0', '0', 'Guyuan Shi', '2');
INSERT INTO `REGION` VALUES ('362', '640500', '中卫市', '31', '0', '0', 'Zhongwei Shi', '2');
INSERT INTO `REGION` VALUES ('363', '650100', '乌鲁木齐市', '32', '0', '0', 'Urumqi Shi', 'URC');
INSERT INTO `REGION` VALUES ('364', '650200', '克拉玛依市', '32', '0', '0', 'Karamay Shi', 'KAR');
INSERT INTO `REGION` VALUES ('365', '652100', '吐鲁番地区', '32', '0', '0', 'Turpan Diqu', 'TUD');
INSERT INTO `REGION` VALUES ('366', '652200', '哈密地区', '32', '0', '0', 'Hami(kumul) Diqu', 'HMD');
INSERT INTO `REGION` VALUES ('367', '652300', '昌吉回族自治州', '32', '0', '0', 'Changji Huizu Zizhizhou', 'CJZ');
INSERT INTO `REGION` VALUES ('368', '652700', '博尔塔拉蒙古自治州', '32', '0', '0', 'Bortala Monglo Zizhizhou', 'BOR');
INSERT INTO `REGION` VALUES ('369', '652800', '巴音郭楞蒙古自治州', '32', '0', '0', 'bayinguolengmengguzizhizhou', '2');
INSERT INTO `REGION` VALUES ('370', '652900', '阿克苏地区', '32', '0', '0', 'Aksu Diqu', 'AKD');
INSERT INTO `REGION` VALUES ('371', '653000', '克孜勒苏柯尔克孜自治州', '32', '0', '0', 'Kizilsu Kirgiz Zizhizhou', 'KIZ');
INSERT INTO `REGION` VALUES ('372', '653100', '喀什地区', '32', '0', '0', 'Kashi(Kaxgar) Diqu', 'KSI');
INSERT INTO `REGION` VALUES ('373', '653200', '和田地区', '32', '0', '0', 'Hotan Diqu', 'HOD');
INSERT INTO `REGION` VALUES ('374', '654000', '伊犁哈萨克自治州', '32', '0', '0', 'Ili Kazak Zizhizhou', 'ILD');
INSERT INTO `REGION` VALUES ('375', '654200', '塔城地区', '32', '0', '0', 'Tacheng(Qoqek) Diqu', 'TCD');
INSERT INTO `REGION` VALUES ('376', '654300', '阿勒泰地区', '32', '0', '0', 'Altay Diqu', 'ALD');
INSERT INTO `REGION` VALUES ('377', '659000', '自治区直辖县级行政区划', '32', '0', '0', 'zizhiquzhixiaxianjixingzhengquhua', '2');
INSERT INTO `REGION` VALUES ('378', '110101', '东城区', '33', '0', '0', 'Dongcheng Qu', 'DCQ');
INSERT INTO `REGION` VALUES ('379', '110102', '西城区', '33', '0', '0', 'Xicheng Qu', 'XCQ');
INSERT INTO `REGION` VALUES ('382', '110105', '朝阳区', '33', '0', '0', 'Chaoyang Qu', 'CYQ');
INSERT INTO `REGION` VALUES ('383', '110106', '丰台区', '33', '0', '0', 'Fengtai Qu', 'FTQ');
INSERT INTO `REGION` VALUES ('384', '110107', '石景山区', '33', '0', '0', 'Shijingshan Qu', 'SJS');
INSERT INTO `REGION` VALUES ('385', '110108', '海淀区', '33', '0', '0', 'HaIDian Qu', 'HDN');
INSERT INTO `REGION` VALUES ('386', '110109', '门头沟区', '33', '0', '0', 'Mentougou Qu', 'MTG');
INSERT INTO `REGION` VALUES ('387', '110111', '房山区', '33', '0', '0', 'Fangshan Qu', 'FSQ');
INSERT INTO `REGION` VALUES ('388', '110112', '通州区', '33', '0', '0', 'Tongzhou Qu', 'TZQ');
INSERT INTO `REGION` VALUES ('389', '110113', '顺义区', '33', '0', '0', 'Shunyi Qu', 'SYI');
INSERT INTO `REGION` VALUES ('390', '110114', '昌平区', '33', '0', '0', 'Changping Qu', 'CP Q');
INSERT INTO `REGION` VALUES ('391', '110115', '大兴区', '33', '0', '0', 'Daxing Qu', 'DX Q');
INSERT INTO `REGION` VALUES ('392', '110116', '怀柔区', '33', '0', '0', 'Huairou Qu', 'HR Q');
INSERT INTO `REGION` VALUES ('393', '110117', '平谷区', '33', '0', '0', 'Pinggu Qu', 'PG Q');
INSERT INTO `REGION` VALUES ('394', '110228', '密云县', '34', '0', '0', 'Miyun Xian ', 'MYN');
INSERT INTO `REGION` VALUES ('395', '110229', '延庆县', '34', '0', '0', 'Yanqing Xian', 'YQX');
INSERT INTO `REGION` VALUES ('396', '120101', '和平区', '35', '0', '0', 'Heping Qu', 'HPG');
INSERT INTO `REGION` VALUES ('397', '120102', '河东区', '35', '0', '0', 'Hedong Qu', 'HDQ');
INSERT INTO `REGION` VALUES ('398', '120103', '河西区', '35', '0', '0', 'Hexi Qu', 'HXQ');
INSERT INTO `REGION` VALUES ('399', '120104', '南开区', '35', '0', '0', 'Nankai Qu', 'NKQ');
INSERT INTO `REGION` VALUES ('400', '120105', '河北区', '35', '0', '0', 'Hebei Qu', 'HBQ');
INSERT INTO `REGION` VALUES ('401', '120106', '红桥区', '35', '0', '0', 'Hongqiao Qu', 'HQO');
INSERT INTO `REGION` VALUES ('404', '120116', '滨海新区', '35', '0', '0', 'Dagang Qu', '2');
INSERT INTO `REGION` VALUES ('405', '120110', '东丽区', '35', '0', '0', 'Dongli Qu', 'DLI');
INSERT INTO `REGION` VALUES ('406', '120111', '西青区', '35', '0', '0', 'Xiqing Qu', 'XQG');
INSERT INTO `REGION` VALUES ('407', '120112', '津南区', '35', '0', '0', 'Jinnan Qu', 'JNQ');
INSERT INTO `REGION` VALUES ('408', '120113', '北辰区', '35', '0', '0', 'Beichen Qu', 'BCQ');
INSERT INTO `REGION` VALUES ('409', '120114', '武清区', '35', '0', '0', 'Wuqing Qu', 'WQ Q');
INSERT INTO `REGION` VALUES ('410', '120115', '宝坻区', '35', '0', '0', 'Baodi Qu', 'BDI');
INSERT INTO `REGION` VALUES ('411', '120221', '宁河县', '36', '0', '0', 'Ninghe Xian', 'NHE');
INSERT INTO `REGION` VALUES ('412', '120223', '静海县', '36', '0', '0', 'Jinghai Xian', 'JHT');
INSERT INTO `REGION` VALUES ('413', '120225', '蓟县', '36', '0', '0', 'Ji Xian', 'JIT');
INSERT INTO `REGION` VALUES ('414', '130101', '市辖区', '37', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('415', '130102', '长安区', '37', '0', '0', 'Chang,an Qu', 'CAQ');
INSERT INTO `REGION` VALUES ('416', '130103', '桥东区', '37', '0', '0', 'Qiaodong Qu', 'QDQ');
INSERT INTO `REGION` VALUES ('417', '130104', '桥西区', '37', '0', '0', 'Qiaoxi Qu', 'QXQ');
INSERT INTO `REGION` VALUES ('418', '130105', '新华区', '37', '0', '0', 'Xinhua Qu', 'XHK');
INSERT INTO `REGION` VALUES ('419', '130107', '井陉矿区', '37', '0', '0', 'Jingxing Kuangqu', 'JXK');
INSERT INTO `REGION` VALUES ('420', '130108', '裕华区', '37', '0', '0', 'Yuhua Qu', '2');
INSERT INTO `REGION` VALUES ('421', '130121', '井陉县', '37', '0', '0', 'Jingxing Xian', 'JXJ');
INSERT INTO `REGION` VALUES ('422', '130123', '正定县', '37', '0', '0', 'Zhengding Xian', 'ZDJ');
INSERT INTO `REGION` VALUES ('423', '130124', '栾城县', '37', '0', '0', 'Luancheng Xian', 'LCG');
INSERT INTO `REGION` VALUES ('424', '130125', '行唐县', '37', '0', '0', 'Xingtang Xian', 'XTG');
INSERT INTO `REGION` VALUES ('425', '130126', '灵寿县', '37', '0', '0', 'Lingshou Xian ', 'LSO');
INSERT INTO `REGION` VALUES ('426', '130127', '高邑县', '37', '0', '0', 'Gaoyi Xian', 'GYJ');
INSERT INTO `REGION` VALUES ('427', '130128', '深泽县', '37', '0', '0', 'Shenze Xian', '2');
INSERT INTO `REGION` VALUES ('428', '130129', '赞皇县', '37', '0', '0', 'Zanhuang Xian', 'ZHG');
INSERT INTO `REGION` VALUES ('429', '130130', '无极县', '37', '0', '0', 'Wuji Xian', 'WJI');
INSERT INTO `REGION` VALUES ('430', '130131', '平山县', '37', '0', '0', 'Pingshan Xian', 'PSH');
INSERT INTO `REGION` VALUES ('431', '130132', '元氏县', '37', '0', '0', 'Yuanshi Xian', 'YSI');
INSERT INTO `REGION` VALUES ('432', '130133', '赵县', '37', '0', '0', 'Zhao Xian', 'ZAO');
INSERT INTO `REGION` VALUES ('433', '130181', '辛集市', '37', '0', '0', 'Xinji Shi', 'XJS');
INSERT INTO `REGION` VALUES ('434', '130182', '藁城市', '37', '0', '0', 'Gaocheng Shi', 'GCS');
INSERT INTO `REGION` VALUES ('435', '130183', '晋州市', '37', '0', '0', 'Jinzhou Shi', 'JZJ');
INSERT INTO `REGION` VALUES ('436', '130184', '新乐市', '37', '0', '0', 'Xinle Shi', 'XLE');
INSERT INTO `REGION` VALUES ('437', '130185', '鹿泉市', '37', '0', '0', 'Luquan Shi', 'LUQ');
INSERT INTO `REGION` VALUES ('438', '130201', '市辖区', '38', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('439', '130202', '路南区', '38', '0', '0', 'Lunan Qu', 'LNB');
INSERT INTO `REGION` VALUES ('440', '130203', '路北区', '38', '0', '0', 'Lubei Qu', 'LBQ');
INSERT INTO `REGION` VALUES ('441', '130204', '古冶区', '38', '0', '0', 'Guye Qu', 'GYE');
INSERT INTO `REGION` VALUES ('442', '130205', '开平区', '38', '0', '0', 'Kaiping Qu', 'KPQ');
INSERT INTO `REGION` VALUES ('443', '130207', '丰南区', '38', '0', '0', 'Fengnan Qu', '2');
INSERT INTO `REGION` VALUES ('444', '130208', '丰润区', '38', '0', '0', 'Fengrun Qu', '2');
INSERT INTO `REGION` VALUES ('445', '130223', '滦县', '38', '0', '0', 'Luan Xian', 'LUA');
INSERT INTO `REGION` VALUES ('446', '130224', '滦南县', '38', '0', '0', 'Luannan Xian', 'LNJ');
INSERT INTO `REGION` VALUES ('447', '130225', '乐亭县', '38', '0', '0', 'Leting Xian', 'LTJ');
INSERT INTO `REGION` VALUES ('448', '130227', '迁西县', '38', '0', '0', 'Qianxi Xian', 'QXX');
INSERT INTO `REGION` VALUES ('449', '130229', '玉田县', '38', '0', '0', 'Yutian Xian', 'YTJ');
INSERT INTO `REGION` VALUES ('450', '130230', '唐海县', '38', '0', '0', 'Tanghai Xian ', 'THA');
INSERT INTO `REGION` VALUES ('451', '130281', '遵化市', '38', '0', '0', 'Zunhua Shi', 'ZNH');
INSERT INTO `REGION` VALUES ('452', '130283', '迁安市', '38', '0', '0', 'Qian,an Shi', 'QAS');
INSERT INTO `REGION` VALUES ('453', '130301', '市辖区', '39', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('454', '130302', '海港区', '39', '0', '0', 'Haigang Qu', 'HGG');
INSERT INTO `REGION` VALUES ('455', '130303', '山海关区', '39', '0', '0', 'Shanhaiguan Qu', 'SHG');
INSERT INTO `REGION` VALUES ('456', '130304', '北戴河区', '39', '0', '0', 'BeIDaihe Qu', 'BDH');
INSERT INTO `REGION` VALUES ('457', '130321', '青龙满族自治县', '39', '0', '0', 'Qinglong Manzu Zizhixian', 'QLM');
INSERT INTO `REGION` VALUES ('458', '130322', '昌黎县', '39', '0', '0', 'Changli Xian', 'CGL');
INSERT INTO `REGION` VALUES ('459', '130323', '抚宁县', '39', '0', '0', 'Funing Xian ', 'FUN');
INSERT INTO `REGION` VALUES ('460', '130324', '卢龙县', '39', '0', '0', 'Lulong Xian', 'LLG');
INSERT INTO `REGION` VALUES ('461', '130401', '市辖区', '40', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('462', '130402', '邯山区', '40', '0', '0', 'Hanshan Qu', 'HHD');
INSERT INTO `REGION` VALUES ('463', '130403', '丛台区', '40', '0', '0', 'Congtai Qu', 'CTQ');
INSERT INTO `REGION` VALUES ('464', '130404', '复兴区', '40', '0', '0', 'Fuxing Qu', 'FXQ');
INSERT INTO `REGION` VALUES ('465', '130406', '峰峰矿区', '40', '0', '0', 'Fengfeng Kuangqu', 'FFK');
INSERT INTO `REGION` VALUES ('466', '130421', '邯郸县', '40', '0', '0', 'Handan Xian ', 'HDX');
INSERT INTO `REGION` VALUES ('467', '130423', '临漳县', '40', '0', '0', 'Linzhang Xian ', 'LNZ');
INSERT INTO `REGION` VALUES ('468', '130424', '成安县', '40', '0', '0', 'Cheng,an Xian', 'CAJ');
INSERT INTO `REGION` VALUES ('469', '130425', '大名县', '40', '0', '0', 'Daming Xian', 'DMX');
INSERT INTO `REGION` VALUES ('470', '130426', '涉县', '40', '0', '0', 'She Xian', 'SEJ');
INSERT INTO `REGION` VALUES ('471', '130427', '磁县', '40', '0', '0', 'Ci Xian', 'CIX');
INSERT INTO `REGION` VALUES ('472', '130428', '肥乡县', '40', '0', '0', 'Feixiang Xian', 'FXJ');
INSERT INTO `REGION` VALUES ('473', '130429', '永年县', '40', '0', '0', 'Yongnian Xian', 'YON');
INSERT INTO `REGION` VALUES ('474', '130430', '邱县', '40', '0', '0', 'Qiu Xian', 'QIU');
INSERT INTO `REGION` VALUES ('475', '130431', '鸡泽县', '40', '0', '0', 'Jize Xian', 'JZE');
INSERT INTO `REGION` VALUES ('476', '130432', '广平县', '40', '0', '0', 'Guangping Xian ', 'GPX');
INSERT INTO `REGION` VALUES ('477', '130433', '馆陶县', '40', '0', '0', 'Guantao Xian', 'GTO');
INSERT INTO `REGION` VALUES ('478', '130434', '魏县', '40', '0', '0', 'Wei Xian ', 'WEI');
INSERT INTO `REGION` VALUES ('479', '130435', '曲周县', '40', '0', '0', 'Quzhou Xian ', 'QZX');
INSERT INTO `REGION` VALUES ('480', '130481', '武安市', '40', '0', '0', 'Wu,an Shi', 'WUA');
INSERT INTO `REGION` VALUES ('481', '130501', '市辖区', '41', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('482', '130502', '桥东区', '41', '0', '0', 'Qiaodong Qu', 'QDG');
INSERT INTO `REGION` VALUES ('483', '130503', '桥西区', '41', '0', '0', 'Qiaoxi Qu', 'QXT');
INSERT INTO `REGION` VALUES ('484', '130521', '邢台县', '41', '0', '0', 'Xingtai Xian', 'XTJ');
INSERT INTO `REGION` VALUES ('485', '130522', '临城县', '41', '0', '0', 'Lincheng Xian ', 'LNC');
INSERT INTO `REGION` VALUES ('486', '130523', '内丘县', '41', '0', '0', 'Neiqiu Xian ', 'NQU');
INSERT INTO `REGION` VALUES ('487', '130524', '柏乡县', '41', '0', '0', 'Baixiang Xian', 'BXG');
INSERT INTO `REGION` VALUES ('488', '130525', '隆尧县', '41', '0', '0', 'Longyao Xian', 'LYO');
INSERT INTO `REGION` VALUES ('489', '130526', '任县', '41', '0', '0', 'Ren Xian', 'REN');
INSERT INTO `REGION` VALUES ('490', '130527', '南和县', '41', '0', '0', 'Nanhe Xian', 'NHX');
INSERT INTO `REGION` VALUES ('491', '130528', '宁晋县', '41', '0', '0', 'Ningjin Xian', 'NJN');
INSERT INTO `REGION` VALUES ('492', '130529', '巨鹿县', '41', '0', '0', 'Julu Xian', 'JLU');
INSERT INTO `REGION` VALUES ('493', '130530', '新河县', '41', '0', '0', 'Xinhe Xian ', 'XHJ');
INSERT INTO `REGION` VALUES ('494', '130531', '广宗县', '41', '0', '0', 'Guangzong Xian ', 'GZJ');
INSERT INTO `REGION` VALUES ('495', '130532', '平乡县', '41', '0', '0', 'Pingxiang Xian', 'PXX');
INSERT INTO `REGION` VALUES ('496', '130533', '威县', '41', '0', '0', 'Wei Xian ', 'WEX');
INSERT INTO `REGION` VALUES ('497', '130534', '清河县', '41', '0', '0', 'Qinghe Xian', 'QHE');
INSERT INTO `REGION` VALUES ('498', '130535', '临西县', '41', '0', '0', 'Linxi Xian', 'LXI');
INSERT INTO `REGION` VALUES ('499', '130581', '南宫市', '41', '0', '0', 'Nangong Shi', 'NGO');
INSERT INTO `REGION` VALUES ('500', '130582', '沙河市', '41', '0', '0', 'Shahe Shi', 'SHS');
INSERT INTO `REGION` VALUES ('501', '130601', '市辖区', '42', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('502', '130600', '新市区', '42', '0', '0', 'Xinshi Qu', '2');
INSERT INTO `REGION` VALUES ('503', '130603', '北市区', '42', '0', '0', 'Beishi Qu', 'BSI');
INSERT INTO `REGION` VALUES ('504', '130604', '南市区', '42', '0', '0', 'Nanshi Qu', 'NSB');
INSERT INTO `REGION` VALUES ('505', '130621', '满城县', '42', '0', '0', 'Mancheng Xian ', 'MCE');
INSERT INTO `REGION` VALUES ('506', '130622', '清苑县', '42', '0', '0', 'Qingyuan Xian', 'QYJ');
INSERT INTO `REGION` VALUES ('507', '130623', '涞水县', '42', '0', '0', 'Laishui Xian', 'LSM');
INSERT INTO `REGION` VALUES ('508', '130624', '阜平县', '42', '0', '0', 'Fuping Xian ', 'FUP');
INSERT INTO `REGION` VALUES ('509', '130625', '徐水县', '42', '0', '0', 'Xushui Xian ', 'XSJ');
INSERT INTO `REGION` VALUES ('510', '130626', '定兴县', '42', '0', '0', 'Dingxing Xian ', 'DXG');
INSERT INTO `REGION` VALUES ('511', '130627', '唐县', '42', '0', '0', 'Tang Xian ', 'TAG');
INSERT INTO `REGION` VALUES ('512', '130628', '高阳县', '42', '0', '0', 'Gaoyang Xian ', 'GAY');
INSERT INTO `REGION` VALUES ('513', '130629', '容城县', '42', '0', '0', 'Rongcheng Xian ', 'RCX');
INSERT INTO `REGION` VALUES ('514', '130630', '涞源县', '42', '0', '0', 'Laiyuan Xian ', 'LIY');
INSERT INTO `REGION` VALUES ('515', '130631', '望都县', '42', '0', '0', 'Wangdu Xian ', 'WDU');
INSERT INTO `REGION` VALUES ('516', '130632', '安新县', '42', '0', '0', 'Anxin Xian ', 'AXX');
INSERT INTO `REGION` VALUES ('517', '130633', '易县', '42', '0', '0', 'Yi Xian', 'YII');
INSERT INTO `REGION` VALUES ('518', '130634', '曲阳县', '42', '0', '0', 'Quyang Xian ', 'QUY');
INSERT INTO `REGION` VALUES ('519', '130635', '蠡县', '42', '0', '0', 'Li Xian', 'LXJ');
INSERT INTO `REGION` VALUES ('520', '130636', '顺平县', '42', '0', '0', 'Shunping Xian ', 'SPI');
INSERT INTO `REGION` VALUES ('521', '130637', '博野县', '42', '0', '0', 'Boye Xian ', 'BYE');
INSERT INTO `REGION` VALUES ('522', '130638', '雄县', '42', '0', '0', 'Xiong Xian', 'XOX');
INSERT INTO `REGION` VALUES ('523', '130681', '涿州市', '42', '0', '0', 'Zhuozhou Shi', 'ZZO');
INSERT INTO `REGION` VALUES ('524', '130682', '定州市', '42', '0', '0', 'Dingzhou Shi ', 'DZO');
INSERT INTO `REGION` VALUES ('525', '130683', '安国市', '42', '0', '0', 'Anguo Shi ', 'AGO');
INSERT INTO `REGION` VALUES ('526', '130684', '高碑店市', '42', '0', '0', 'GaobeIDian Shi', 'GBD');
INSERT INTO `REGION` VALUES ('527', '130701', '市辖区', '43', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('528', '130702', '桥东区', '43', '0', '0', 'Qiaodong Qu', 'QDZ');
INSERT INTO `REGION` VALUES ('529', '130703', '桥西区', '43', '0', '0', 'Qiaoxi Qu', 'QXI');
INSERT INTO `REGION` VALUES ('530', '130705', '宣化区', '43', '0', '0', 'Xuanhua Qu', 'XHZ');
INSERT INTO `REGION` VALUES ('531', '130706', '下花园区', '43', '0', '0', 'Xiahuayuan Qu ', 'XHY');
INSERT INTO `REGION` VALUES ('532', '130721', '宣化县', '43', '0', '0', 'Xuanhua Xian ', 'XHX');
INSERT INTO `REGION` VALUES ('533', '130722', '张北县', '43', '0', '0', 'Zhangbei Xian ', 'ZGB');
INSERT INTO `REGION` VALUES ('534', '130723', '康保县', '43', '0', '0', 'Kangbao Xian', 'KBO');
INSERT INTO `REGION` VALUES ('535', '130724', '沽源县', '43', '0', '0', 'Guyuan Xian', '2');
INSERT INTO `REGION` VALUES ('536', '130725', '尚义县', '43', '0', '0', 'Shangyi Xian', 'SYK');
INSERT INTO `REGION` VALUES ('537', '130726', '蔚县', '43', '0', '0', 'Yu Xian', 'YXJ');
INSERT INTO `REGION` VALUES ('538', '130727', '阳原县', '43', '0', '0', 'Yangyuan Xian', 'YYN');
INSERT INTO `REGION` VALUES ('539', '130728', '怀安县', '43', '0', '0', 'Huai,an Xian', 'HAX');
INSERT INTO `REGION` VALUES ('540', '130729', '万全县', '43', '0', '0', 'Wanquan Xian ', 'WQN');
INSERT INTO `REGION` VALUES ('541', '130730', '怀来县', '43', '0', '0', 'Huailai Xian', 'HLA');
INSERT INTO `REGION` VALUES ('542', '130731', '涿鹿县', '43', '0', '0', 'Zhuolu Xian ', 'ZLU');
INSERT INTO `REGION` VALUES ('543', '130732', '赤城县', '43', '0', '0', 'Chicheng Xian', 'CCX');
INSERT INTO `REGION` VALUES ('544', '130733', '崇礼县', '43', '0', '0', 'Chongli Xian', 'COL');
INSERT INTO `REGION` VALUES ('545', '130801', '市辖区', '44', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('546', '130802', '双桥区', '44', '0', '0', 'Shuangqiao Qu ', 'SQO');
INSERT INTO `REGION` VALUES ('547', '130803', '双滦区', '44', '0', '0', 'Shuangluan Qu', 'SLQ');
INSERT INTO `REGION` VALUES ('548', '130804', '鹰手营子矿区', '44', '0', '0', 'Yingshouyingzi Kuangqu', 'YSY');
INSERT INTO `REGION` VALUES ('549', '130821', '承德县', '44', '0', '0', 'Chengde Xian', 'CDX');
INSERT INTO `REGION` VALUES ('550', '130822', '兴隆县', '44', '0', '0', 'Xinglong Xian', 'XLJ');
INSERT INTO `REGION` VALUES ('551', '130823', '平泉县', '44', '0', '0', 'Pingquan Xian', 'PQN');
INSERT INTO `REGION` VALUES ('552', '130824', '滦平县', '44', '0', '0', 'Luanping Xian ', 'LUP');
INSERT INTO `REGION` VALUES ('553', '130825', '隆化县', '44', '0', '0', 'Longhua Xian', 'LHJ');
INSERT INTO `REGION` VALUES ('554', '130826', '丰宁满族自治县', '44', '0', '0', 'Fengning Manzu Zizhixian', 'FNJ');
INSERT INTO `REGION` VALUES ('555', '130827', '宽城满族自治县', '44', '0', '0', 'Kuancheng Manzu Zizhixian', 'KCX');
INSERT INTO `REGION` VALUES ('556', '130828', '围场满族蒙古族自治县', '44', '0', '0', 'Weichang Manzu Menggolzu Zizhixian', 'WCJ');
INSERT INTO `REGION` VALUES ('557', '130901', '市辖区', '45', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('558', '130902', '新华区', '45', '0', '0', 'Xinhua Qu', 'XHF');
INSERT INTO `REGION` VALUES ('559', '130903', '运河区', '45', '0', '0', 'Yunhe Qu', 'YHC');
INSERT INTO `REGION` VALUES ('560', '130921', '沧县', '45', '0', '0', 'Cang Xian', 'CAG');
INSERT INTO `REGION` VALUES ('561', '130922', '青县', '45', '0', '0', 'Qing Xian', 'QIG');
INSERT INTO `REGION` VALUES ('562', '130923', '东光县', '45', '0', '0', 'Dongguang Xian ', 'DGU');
INSERT INTO `REGION` VALUES ('563', '130924', '海兴县', '45', '0', '0', 'Haixing Xian', 'HXG');
INSERT INTO `REGION` VALUES ('564', '130925', '盐山县', '45', '0', '0', 'Yanshan Xian', 'YNS');
INSERT INTO `REGION` VALUES ('565', '130926', '肃宁县', '45', '0', '0', 'Suning Xian ', 'SNG');
INSERT INTO `REGION` VALUES ('566', '130927', '南皮县', '45', '0', '0', 'Nanpi Xian', 'NPI');
INSERT INTO `REGION` VALUES ('567', '130928', '吴桥县', '45', '0', '0', 'Wuqiao Xian ', 'WUQ');
INSERT INTO `REGION` VALUES ('568', '130929', '献县', '45', '0', '0', 'Xian Xian ', 'XXN');
INSERT INTO `REGION` VALUES ('569', '130930', '孟村回族自治县', '45', '0', '0', 'Mengcun Huizu Zizhixian', 'MCN');
INSERT INTO `REGION` VALUES ('570', '130981', '泊头市', '45', '0', '0', 'Botou Shi ', 'BOT');
INSERT INTO `REGION` VALUES ('571', '130982', '任丘市', '45', '0', '0', 'Renqiu Shi', 'RQS');
INSERT INTO `REGION` VALUES ('572', '130983', '黄骅市', '45', '0', '0', 'Huanghua Shi', 'HHJ');
INSERT INTO `REGION` VALUES ('573', '130984', '河间市', '45', '0', '0', 'Hejian Shi', 'HJN');
INSERT INTO `REGION` VALUES ('574', '131001', '市辖区', '46', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('575', '131002', '安次区', '46', '0', '0', 'Anci Qu', 'ACI');
INSERT INTO `REGION` VALUES ('576', '131003', '广阳区', '46', '0', '0', 'Guangyang Qu', '2');
INSERT INTO `REGION` VALUES ('577', '131022', '固安县', '46', '0', '0', 'Gu,an Xian', 'GUA');
INSERT INTO `REGION` VALUES ('578', '131023', '永清县', '46', '0', '0', 'Yongqing Xian ', 'YQG');
INSERT INTO `REGION` VALUES ('579', '131024', '香河县', '46', '0', '0', 'Xianghe Xian', 'XGH');
INSERT INTO `REGION` VALUES ('580', '131025', '大城县', '46', '0', '0', 'Dacheng Xian', 'DCJ');
INSERT INTO `REGION` VALUES ('581', '131026', '文安县', '46', '0', '0', 'Wen,an Xian', 'WEA');
INSERT INTO `REGION` VALUES ('582', '131028', '大厂回族自治县', '46', '0', '0', 'Dachang Huizu Zizhixian', 'DCG');
INSERT INTO `REGION` VALUES ('583', '131081', '霸州市', '46', '0', '0', 'Bazhou Shi', 'BZO');
INSERT INTO `REGION` VALUES ('584', '131082', '三河市', '46', '0', '0', 'Sanhe Shi', 'SNH');
INSERT INTO `REGION` VALUES ('585', '131101', '市辖区', '47', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('586', '131102', '桃城区', '47', '0', '0', 'Taocheng Qu', 'TOC');
INSERT INTO `REGION` VALUES ('587', '131121', '枣强县', '47', '0', '0', 'Zaoqiang Xian ', 'ZQJ');
INSERT INTO `REGION` VALUES ('588', '131122', '武邑县', '47', '0', '0', 'Wuyi Xian', 'WYI');
INSERT INTO `REGION` VALUES ('589', '131123', '武强县', '47', '0', '0', 'Wuqiang Xian ', 'WQG');
INSERT INTO `REGION` VALUES ('590', '131124', '饶阳县', '47', '0', '0', 'Raoyang Xian', 'RYG');
INSERT INTO `REGION` VALUES ('591', '131125', '安平县', '47', '0', '0', 'Anping Xian', 'APG');
INSERT INTO `REGION` VALUES ('592', '131126', '故城县', '47', '0', '0', 'Gucheng Xian', 'GCE');
INSERT INTO `REGION` VALUES ('593', '131127', '景县', '47', '0', '0', 'Jing Xian ', 'JIG');
INSERT INTO `REGION` VALUES ('594', '131128', '阜城县', '47', '0', '0', 'Fucheng Xian ', 'FCE');
INSERT INTO `REGION` VALUES ('595', '131181', '冀州市', '47', '0', '0', 'Jizhou Shi ', 'JIZ');
INSERT INTO `REGION` VALUES ('596', '131182', '深州市', '47', '0', '0', 'Shenzhou Shi', 'SNZ');
INSERT INTO `REGION` VALUES ('597', '140101', '市辖区', '48', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('598', '140105', '小店区', '48', '0', '0', 'Xiaodian Qu', 'XDQ');
INSERT INTO `REGION` VALUES ('599', '140106', '迎泽区', '48', '0', '0', 'Yingze Qu', 'YZT');
INSERT INTO `REGION` VALUES ('600', '140107', '杏花岭区', '48', '0', '0', 'Xinghualing Qu', 'XHL');
INSERT INTO `REGION` VALUES ('601', '140108', '尖草坪区', '48', '0', '0', 'Jiancaoping Qu', 'JCP');
INSERT INTO `REGION` VALUES ('602', '140109', '万柏林区', '48', '0', '0', 'Wanbailin Qu', 'WBL');
INSERT INTO `REGION` VALUES ('603', '140110', '晋源区', '48', '0', '0', 'Jinyuan Qu', 'JYM');
INSERT INTO `REGION` VALUES ('604', '140121', '清徐县', '48', '0', '0', 'Qingxu Xian ', 'QXU');
INSERT INTO `REGION` VALUES ('605', '140122', '阳曲县', '48', '0', '0', 'Yangqu Xian ', 'YGQ');
INSERT INTO `REGION` VALUES ('606', '140123', '娄烦县', '48', '0', '0', 'Loufan Xian', 'LFA');
INSERT INTO `REGION` VALUES ('607', '140181', '古交市', '48', '0', '0', 'Gujiao Shi', 'GUJ');
INSERT INTO `REGION` VALUES ('608', '140201', '市辖区', '49', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('609', '140202', '城区', '49', '0', '0', 'Chengqu', 'CQD');
INSERT INTO `REGION` VALUES ('610', '140203', '矿区', '49', '0', '0', 'Kuangqu', 'KQD');
INSERT INTO `REGION` VALUES ('611', '140211', '南郊区', '49', '0', '0', 'Nanjiao Qu', 'NJQ');
INSERT INTO `REGION` VALUES ('612', '140212', '新荣区', '49', '0', '0', 'Xinrong Qu', 'XRQ');
INSERT INTO `REGION` VALUES ('613', '140221', '阳高县', '49', '0', '0', 'Yanggao Xian ', 'YGO');
INSERT INTO `REGION` VALUES ('614', '140222', '天镇县', '49', '0', '0', 'Tianzhen Xian ', 'TZE');
INSERT INTO `REGION` VALUES ('615', '140223', '广灵县', '49', '0', '0', 'Guangling Xian ', 'GLJ');
INSERT INTO `REGION` VALUES ('616', '140224', '灵丘县', '49', '0', '0', 'Lingqiu Xian ', 'LQX');
INSERT INTO `REGION` VALUES ('617', '140225', '浑源县', '49', '0', '0', 'Hunyuan Xian', 'HYM');
INSERT INTO `REGION` VALUES ('618', '140226', '左云县', '49', '0', '0', 'Zuoyun Xian', 'ZUY');
INSERT INTO `REGION` VALUES ('619', '140227', '大同县', '49', '0', '0', 'Datong Xian ', 'DTX');
INSERT INTO `REGION` VALUES ('620', '140301', '市辖区', '50', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('621', '140302', '城区', '50', '0', '0', 'Chengqu', 'CQU');
INSERT INTO `REGION` VALUES ('622', '140303', '矿区', '50', '0', '0', 'Kuangqu', 'KQY');
INSERT INTO `REGION` VALUES ('623', '140311', '郊区', '50', '0', '0', 'Jiaoqu', 'JQY');
INSERT INTO `REGION` VALUES ('624', '140321', '平定县', '50', '0', '0', 'Pingding Xian', 'PDG');
INSERT INTO `REGION` VALUES ('625', '140322', '盂县', '50', '0', '0', 'Yu Xian', 'YUX');
INSERT INTO `REGION` VALUES ('626', '140401', '市辖区', '51', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('627', '140402', '城区', '51', '0', '0', 'Chengqu ', 'CQC');
INSERT INTO `REGION` VALUES ('628', '140411', '郊区', '51', '0', '0', 'Jiaoqu', 'JQZ');
INSERT INTO `REGION` VALUES ('629', '140421', '长治县', '51', '0', '0', 'Changzhi Xian', 'CZI');
INSERT INTO `REGION` VALUES ('630', '140423', '襄垣县', '51', '0', '0', 'Xiangyuan Xian', 'XYJ');
INSERT INTO `REGION` VALUES ('631', '140424', '屯留县', '51', '0', '0', 'Tunliu Xian', 'TNL');
INSERT INTO `REGION` VALUES ('632', '140425', '平顺县', '51', '0', '0', 'Pingshun Xian', 'PSX');
INSERT INTO `REGION` VALUES ('633', '140426', '黎城县', '51', '0', '0', 'Licheng Xian', 'LIC');
INSERT INTO `REGION` VALUES ('634', '140427', '壶关县', '51', '0', '0', 'Huguan Xian', 'HGN');
INSERT INTO `REGION` VALUES ('635', '140428', '长子县', '51', '0', '0', 'Zhangzi Xian ', 'ZHZ');
INSERT INTO `REGION` VALUES ('636', '140429', '武乡县', '51', '0', '0', 'Wuxiang Xian', 'WXG');
INSERT INTO `REGION` VALUES ('637', '140430', '沁县', '51', '0', '0', 'Qin Xian', 'QIN');
INSERT INTO `REGION` VALUES ('638', '140431', '沁源县', '51', '0', '0', 'Qinyuan Xian ', 'QYU');
INSERT INTO `REGION` VALUES ('639', '140481', '潞城市', '51', '0', '0', 'Lucheng Shi', 'LCS');
INSERT INTO `REGION` VALUES ('640', '140501', '市辖区', '52', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('641', '140502', '城区', '52', '0', '0', 'Chengqu ', 'CQJ');
INSERT INTO `REGION` VALUES ('642', '140521', '沁水县', '52', '0', '0', 'Qinshui Xian', 'QSI');
INSERT INTO `REGION` VALUES ('643', '140522', '阳城县', '52', '0', '0', 'Yangcheng Xian ', 'YGC');
INSERT INTO `REGION` VALUES ('644', '140524', '陵川县', '52', '0', '0', 'Lingchuan Xian', 'LGC');
INSERT INTO `REGION` VALUES ('645', '140525', '泽州县', '52', '0', '0', 'Zezhou Xian', 'ZEZ');
INSERT INTO `REGION` VALUES ('646', '140581', '高平市', '52', '0', '0', 'Gaoping Shi ', 'GPG');
INSERT INTO `REGION` VALUES ('647', '140601', '市辖区', '53', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('648', '140602', '朔城区', '53', '0', '0', 'Shuocheng Qu', 'SCH');
INSERT INTO `REGION` VALUES ('649', '140603', '平鲁区', '53', '0', '0', 'Pinglu Qu', 'PLU');
INSERT INTO `REGION` VALUES ('650', '140621', '山阴县', '53', '0', '0', 'Shanyin Xian', 'SYP');
INSERT INTO `REGION` VALUES ('651', '140622', '应县', '53', '0', '0', 'Ying Xian', 'YIG');
INSERT INTO `REGION` VALUES ('652', '140623', '右玉县', '53', '0', '0', 'Youyu Xian ', 'YOY');
INSERT INTO `REGION` VALUES ('653', '140624', '怀仁县', '53', '0', '0', 'Huairen Xian', 'HRN');
INSERT INTO `REGION` VALUES ('654', '140701', '市辖区', '54', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('655', '140702', '榆次区', '54', '0', '0', 'Yuci Qu', '2');
INSERT INTO `REGION` VALUES ('656', '140721', '榆社县', '54', '0', '0', 'Yushe Xian', '2');
INSERT INTO `REGION` VALUES ('657', '140722', '左权县', '54', '0', '0', 'Zuoquan Xian', '2');
INSERT INTO `REGION` VALUES ('658', '140723', '和顺县', '54', '0', '0', 'Heshun Xian', '2');
INSERT INTO `REGION` VALUES ('659', '140724', '昔阳县', '54', '0', '0', 'Xiyang Xian', '2');
INSERT INTO `REGION` VALUES ('660', '140725', '寿阳县', '54', '0', '0', 'Shouyang Xian', '2');
INSERT INTO `REGION` VALUES ('661', '140726', '太谷县', '54', '0', '0', 'Taigu Xian', '2');
INSERT INTO `REGION` VALUES ('662', '140727', '祁县', '54', '0', '0', 'Qi Xian', '2');
INSERT INTO `REGION` VALUES ('663', '140728', '平遥县', '54', '0', '0', 'Pingyao Xian', '2');
INSERT INTO `REGION` VALUES ('664', '140729', '灵石县', '54', '0', '0', 'Lingshi Xian', '2');
INSERT INTO `REGION` VALUES ('665', '140781', '介休市', '54', '0', '0', 'Jiexiu Shi', '2');
INSERT INTO `REGION` VALUES ('666', '140801', '市辖区', '55', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('667', '140802', '盐湖区', '55', '0', '0', 'Yanhu Qu', '2');
INSERT INTO `REGION` VALUES ('668', '140821', '临猗县', '55', '0', '0', 'Linyi Xian', '2');
INSERT INTO `REGION` VALUES ('669', '140822', '万荣县', '55', '0', '0', 'Wanrong Xian', '2');
INSERT INTO `REGION` VALUES ('670', '140823', '闻喜县', '55', '0', '0', 'Wenxi Xian', '2');
INSERT INTO `REGION` VALUES ('671', '140824', '稷山县', '55', '0', '0', 'Jishan Xian', '2');
INSERT INTO `REGION` VALUES ('672', '140825', '新绛县', '55', '0', '0', 'Xinjiang Xian', '2');
INSERT INTO `REGION` VALUES ('673', '140826', '绛县', '55', '0', '0', 'Jiang Xian', '2');
INSERT INTO `REGION` VALUES ('674', '140827', '垣曲县', '55', '0', '0', 'Yuanqu Xian', '2');
INSERT INTO `REGION` VALUES ('675', '140828', '夏县', '55', '0', '0', 'Xia Xian ', '2');
INSERT INTO `REGION` VALUES ('676', '140829', '平陆县', '55', '0', '0', 'Pinglu Xian', '2');
INSERT INTO `REGION` VALUES ('677', '140830', '芮城县', '55', '0', '0', 'Ruicheng Xian', '2');
INSERT INTO `REGION` VALUES ('678', '140881', '永济市', '55', '0', '0', 'Yongji Shi ', '2');
INSERT INTO `REGION` VALUES ('679', '140882', '河津市', '55', '0', '0', 'Hejin Shi', '2');
INSERT INTO `REGION` VALUES ('680', '140901', '市辖区', '56', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('681', '140902', '忻府区', '56', '0', '0', 'Xinfu Qu', '2');
INSERT INTO `REGION` VALUES ('682', '140921', '定襄县', '56', '0', '0', 'Dingxiang Xian', '2');
INSERT INTO `REGION` VALUES ('683', '140922', '五台县', '56', '0', '0', 'Wutai Xian', '2');
INSERT INTO `REGION` VALUES ('684', '140923', '代县', '56', '0', '0', 'Dai Xian', '2');
INSERT INTO `REGION` VALUES ('685', '140924', '繁峙县', '56', '0', '0', 'Fanshi Xian', '2');
INSERT INTO `REGION` VALUES ('686', '140925', '宁武县', '56', '0', '0', 'Ningwu Xian', '2');
INSERT INTO `REGION` VALUES ('687', '140926', '静乐县', '56', '0', '0', 'Jingle Xian', '2');
INSERT INTO `REGION` VALUES ('688', '140927', '神池县', '56', '0', '0', 'Shenchi Xian', '2');
INSERT INTO `REGION` VALUES ('689', '140928', '五寨县', '56', '0', '0', 'Wuzhai Xian', '2');
INSERT INTO `REGION` VALUES ('690', '140929', '岢岚县', '56', '0', '0', 'Kelan Xian', '2');
INSERT INTO `REGION` VALUES ('691', '140930', '河曲县', '56', '0', '0', 'Hequ Xian ', '2');
INSERT INTO `REGION` VALUES ('692', '140931', '保德县', '56', '0', '0', 'Baode Xian', '2');
INSERT INTO `REGION` VALUES ('693', '140932', '偏关县', '56', '0', '0', 'Pianguan Xian', '2');
INSERT INTO `REGION` VALUES ('694', '140981', '原平市', '56', '0', '0', 'Yuanping Shi', '2');
INSERT INTO `REGION` VALUES ('695', '141001', '市辖区', '57', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('696', '141002', '尧都区', '57', '0', '0', 'Yaodu Qu', '2');
INSERT INTO `REGION` VALUES ('697', '141021', '曲沃县', '57', '0', '0', 'Quwo Xian ', '2');
INSERT INTO `REGION` VALUES ('698', '141022', '翼城县', '57', '0', '0', 'Yicheng Xian', '2');
INSERT INTO `REGION` VALUES ('699', '141023', '襄汾县', '57', '0', '0', 'Xiangfen Xian', '2');
INSERT INTO `REGION` VALUES ('700', '141024', '洪洞县', '57', '0', '0', 'Hongtong Xian', '2');
INSERT INTO `REGION` VALUES ('701', '141025', '古县', '57', '0', '0', 'Gu Xian', '2');
INSERT INTO `REGION` VALUES ('702', '141026', '安泽县', '57', '0', '0', 'Anze Xian', '2');
INSERT INTO `REGION` VALUES ('703', '141027', '浮山县', '57', '0', '0', 'Fushan Xian ', '2');
INSERT INTO `REGION` VALUES ('704', '141028', '吉县', '57', '0', '0', 'Ji Xian', '2');
INSERT INTO `REGION` VALUES ('705', '141029', '乡宁县', '57', '0', '0', 'Xiangning Xian', '2');
INSERT INTO `REGION` VALUES ('706', '141030', '大宁县', '57', '0', '0', 'Daning Xian', '2');
INSERT INTO `REGION` VALUES ('707', '141031', '隰县', '57', '0', '0', 'Xi Xian', '2');
INSERT INTO `REGION` VALUES ('708', '141032', '永和县', '57', '0', '0', 'Yonghe Xian', '2');
INSERT INTO `REGION` VALUES ('709', '141033', '蒲县', '57', '0', '0', 'Pu Xian', '2');
INSERT INTO `REGION` VALUES ('710', '141034', '汾西县', '57', '0', '0', 'Fenxi Xian', '2');
INSERT INTO `REGION` VALUES ('711', '141081', '侯马市', '57', '0', '0', 'Houma Shi ', '2');
INSERT INTO `REGION` VALUES ('712', '141082', '霍州市', '57', '0', '0', 'Huozhou Shi ', '2');
INSERT INTO `REGION` VALUES ('713', '141101', '市辖区', '58', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('714', '141102', '离石区', '58', '0', '0', 'Lishi Qu', '2');
INSERT INTO `REGION` VALUES ('715', '141121', '文水县', '58', '0', '0', 'Wenshui Xian', '2');
INSERT INTO `REGION` VALUES ('716', '141122', '交城县', '58', '0', '0', 'Jiaocheng Xian', '2');
INSERT INTO `REGION` VALUES ('717', '141123', '兴县', '58', '0', '0', 'Xing Xian', '2');
INSERT INTO `REGION` VALUES ('718', '141124', '临县', '58', '0', '0', 'Lin Xian ', '2');
INSERT INTO `REGION` VALUES ('719', '141125', '柳林县', '58', '0', '0', 'Liulin Xian', '2');
INSERT INTO `REGION` VALUES ('720', '141126', '石楼县', '58', '0', '0', 'Shilou Xian', '2');
INSERT INTO `REGION` VALUES ('721', '141127', '岚县', '58', '0', '0', 'Lan Xian', '2');
INSERT INTO `REGION` VALUES ('722', '141128', '方山县', '58', '0', '0', 'Fangshan Xian', '2');
INSERT INTO `REGION` VALUES ('723', '141129', '中阳县', '58', '0', '0', 'Zhongyang Xian', '2');
INSERT INTO `REGION` VALUES ('724', '141130', '交口县', '58', '0', '0', 'Jiaokou Xian', '2');
INSERT INTO `REGION` VALUES ('725', '141181', '孝义市', '58', '0', '0', 'Xiaoyi Shi', '2');
INSERT INTO `REGION` VALUES ('726', '141182', '汾阳市', '58', '0', '0', 'Fenyang Shi', '2');
INSERT INTO `REGION` VALUES ('727', '150101', '市辖区', '59', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('728', '150102', '新城区', '59', '0', '0', 'Xincheng Qu', 'XCN');
INSERT INTO `REGION` VALUES ('729', '150103', '回民区', '59', '0', '0', 'Huimin Qu', 'HMQ');
INSERT INTO `REGION` VALUES ('730', '150104', '玉泉区', '59', '0', '0', 'Yuquan Qu', 'YQN');
INSERT INTO `REGION` VALUES ('731', '150105', '赛罕区', '59', '0', '0', 'Saihan Qu', '2');
INSERT INTO `REGION` VALUES ('732', '150121', '土默特左旗', '59', '0', '0', 'Tumd Zuoqi', 'TUZ');
INSERT INTO `REGION` VALUES ('733', '150122', '托克托县', '59', '0', '0', 'Togtoh Xian', 'TOG');
INSERT INTO `REGION` VALUES ('734', '150123', '和林格尔县', '59', '0', '0', 'Horinger Xian', 'HOR');
INSERT INTO `REGION` VALUES ('735', '150124', '清水河县', '59', '0', '0', 'Qingshuihe Xian', 'QSH');
INSERT INTO `REGION` VALUES ('736', '150125', '武川县', '59', '0', '0', 'Wuchuan Xian', 'WCX');
INSERT INTO `REGION` VALUES ('737', '150201', '市辖区', '60', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('738', '150202', '东河区', '60', '0', '0', 'Donghe Qu', 'DHE');
INSERT INTO `REGION` VALUES ('739', '150203', '昆都仑区', '60', '0', '0', 'Kundulun Qu', '2');
INSERT INTO `REGION` VALUES ('740', '150204', '青山区', '60', '0', '0', 'Qingshan Qu', 'QSB');
INSERT INTO `REGION` VALUES ('741', '150205', '石拐区', '60', '0', '0', 'Shiguai Qu', '2');
INSERT INTO `REGION` VALUES ('742', '150206', '白云鄂博矿区', '60', '0', '0', 'Baiyun Kuangqu', '2');
INSERT INTO `REGION` VALUES ('743', '150207', '九原区', '60', '0', '0', 'Jiuyuan Qu', '2');
INSERT INTO `REGION` VALUES ('744', '150221', '土默特右旗', '60', '0', '0', 'Tumd Youqi', 'TUY');
INSERT INTO `REGION` VALUES ('745', '150222', '固阳县', '60', '0', '0', 'Guyang Xian', 'GYM');
INSERT INTO `REGION` VALUES ('746', '150223', '达尔罕茂明安联合旗', '60', '0', '0', 'Darhan Muminggan Lianheqi', 'DML');
INSERT INTO `REGION` VALUES ('747', '150301', '市辖区', '61', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('748', '150302', '海勃湾区', '61', '0', '0', 'Haibowan Qu', 'HBW');
INSERT INTO `REGION` VALUES ('749', '150303', '海南区', '61', '0', '0', 'Hainan Qu', 'HNU');
INSERT INTO `REGION` VALUES ('750', '150304', '乌达区', '61', '0', '0', 'Ud Qu', 'UDQ');
INSERT INTO `REGION` VALUES ('751', '150401', '市辖区', '62', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('752', '150402', '红山区', '62', '0', '0', 'Hongshan Qu', 'HSZ');
INSERT INTO `REGION` VALUES ('753', '150403', '元宝山区', '62', '0', '0', 'Yuanbaoshan Qu', 'YBO');
INSERT INTO `REGION` VALUES ('754', '150404', '松山区', '62', '0', '0', 'Songshan Qu', 'SSQ');
INSERT INTO `REGION` VALUES ('755', '150421', '阿鲁科尔沁旗', '62', '0', '0', 'Ar Horqin Qi', 'AHO');
INSERT INTO `REGION` VALUES ('756', '150422', '巴林左旗', '62', '0', '0', 'Bairin Zuoqi', 'BAZ');
INSERT INTO `REGION` VALUES ('757', '150423', '巴林右旗', '62', '0', '0', 'Bairin Youqi', 'BAY');
INSERT INTO `REGION` VALUES ('758', '150424', '林西县', '62', '0', '0', 'Linxi Xian', 'LXM');
INSERT INTO `REGION` VALUES ('759', '150425', '克什克腾旗', '62', '0', '0', 'Hexigten Qi', 'HXT');
INSERT INTO `REGION` VALUES ('760', '150426', '翁牛特旗', '62', '0', '0', 'Ongniud Qi', 'ONG');
INSERT INTO `REGION` VALUES ('761', '150428', '喀喇沁旗', '62', '0', '0', 'Harqin Qi', 'HAR');
INSERT INTO `REGION` VALUES ('762', '150429', '宁城县', '62', '0', '0', 'Ningcheng Xian', 'NCH');
INSERT INTO `REGION` VALUES ('763', '150430', '敖汉旗', '62', '0', '0', 'Aohan Qi', 'AHN');
INSERT INTO `REGION` VALUES ('764', '150501', '市辖区', '63', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('765', '150502', '科尔沁区', '63', '0', '0', 'Keermi Qu', '2');
INSERT INTO `REGION` VALUES ('766', '150521', '科尔沁左翼中旗', '63', '0', '0', 'Horqin Zuoyi Zhongqi', '2');
INSERT INTO `REGION` VALUES ('767', '150522', '科尔沁左翼后旗', '63', '0', '0', 'Horqin Zuoyi Houqi', '2');
INSERT INTO `REGION` VALUES ('768', '150523', '开鲁县', '63', '0', '0', 'Kailu Xian', '2');
INSERT INTO `REGION` VALUES ('769', '150524', '库伦旗', '63', '0', '0', 'Hure Qi', '2');
INSERT INTO `REGION` VALUES ('770', '150525', '奈曼旗', '63', '0', '0', 'Naiman Qi', '2');
INSERT INTO `REGION` VALUES ('771', '150526', '扎鲁特旗', '63', '0', '0', 'Jarud Qi', '2');
INSERT INTO `REGION` VALUES ('772', '150581', '霍林郭勒市', '63', '0', '0', 'Holingol Shi', '2');
INSERT INTO `REGION` VALUES ('773', '150602', '东胜区', '64', '0', '0', 'Dongsheng Qu', '2');
INSERT INTO `REGION` VALUES ('774', '150621', '达拉特旗', '64', '0', '0', 'Dalad Qi', '2');
INSERT INTO `REGION` VALUES ('775', '150622', '准格尔旗', '64', '0', '0', 'Jungar Qi', '2');
INSERT INTO `REGION` VALUES ('776', '150623', '鄂托克前旗', '64', '0', '0', 'Otog Qianqi', '2');
INSERT INTO `REGION` VALUES ('777', '150624', '鄂托克旗', '64', '0', '0', 'Otog Qi', '2');
INSERT INTO `REGION` VALUES ('778', '150625', '杭锦旗', '64', '0', '0', 'Hanggin Qi', '2');
INSERT INTO `REGION` VALUES ('779', '150626', '乌审旗', '64', '0', '0', 'Uxin Qi', '2');
INSERT INTO `REGION` VALUES ('780', '150627', '伊金霍洛旗', '64', '0', '0', 'Ejin Horo Qi', '2');
INSERT INTO `REGION` VALUES ('781', '150701', '市辖区', '65', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('782', '150702', '海拉尔区', '65', '0', '0', 'Hailaer Qu', '2');
INSERT INTO `REGION` VALUES ('783', '150721', '阿荣旗', '65', '0', '0', 'Arun Qi', '2');
INSERT INTO `REGION` VALUES ('784', '150722', '莫力达瓦达斡尔族自治旗', '65', '0', '0', 'Morin Dawa Daurzu Zizhiqi', '2');
INSERT INTO `REGION` VALUES ('785', '150723', '鄂伦春自治旗', '65', '0', '0', 'Oroqen Zizhiqi', '2');
INSERT INTO `REGION` VALUES ('786', '150724', '鄂温克族自治旗', '65', '0', '0', 'Ewenkizu Zizhiqi', '2');
INSERT INTO `REGION` VALUES ('787', '150725', '陈巴尔虎旗', '65', '0', '0', 'Chen Barag Qi', '2');
INSERT INTO `REGION` VALUES ('788', '150726', '新巴尔虎左旗', '65', '0', '0', 'Xin Barag Zuoqi', '2');
INSERT INTO `REGION` VALUES ('789', '150727', '新巴尔虎右旗', '65', '0', '0', 'Xin Barag Youqi', '2');
INSERT INTO `REGION` VALUES ('790', '150781', '满洲里市', '65', '0', '0', 'Manzhouli Shi', '2');
INSERT INTO `REGION` VALUES ('791', '150782', '牙克石市', '65', '0', '0', 'Yakeshi Shi', '2');
INSERT INTO `REGION` VALUES ('792', '150783', '扎兰屯市', '65', '0', '0', 'Zalantun Shi', '2');
INSERT INTO `REGION` VALUES ('793', '150784', '额尔古纳市', '65', '0', '0', 'Ergun Shi', '2');
INSERT INTO `REGION` VALUES ('794', '150785', '根河市', '65', '0', '0', 'Genhe Shi', '2');
INSERT INTO `REGION` VALUES ('795', '150801', '市辖区', '66', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('796', '150802', '临河区', '66', '0', '0', 'Linhe Qu', '2');
INSERT INTO `REGION` VALUES ('797', '150821', '五原县', '66', '0', '0', 'Wuyuan Xian', '2');
INSERT INTO `REGION` VALUES ('798', '150822', '磴口县', '66', '0', '0', 'Dengkou Xian', '2');
INSERT INTO `REGION` VALUES ('799', '150823', '乌拉特前旗', '66', '0', '0', 'Urad Qianqi', '2');
INSERT INTO `REGION` VALUES ('800', '150824', '乌拉特中旗', '66', '0', '0', 'Urad Zhongqi', '2');
INSERT INTO `REGION` VALUES ('801', '150825', '乌拉特后旗', '66', '0', '0', 'Urad Houqi', '2');
INSERT INTO `REGION` VALUES ('802', '150826', '杭锦后旗', '66', '0', '0', 'Hanggin Houqi', '2');
INSERT INTO `REGION` VALUES ('803', '150901', '市辖区', '67', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('804', '150902', '集宁区', '67', '0', '0', 'Jining Qu', '2');
INSERT INTO `REGION` VALUES ('805', '150921', '卓资县', '67', '0', '0', 'Zhuozi Xian', '2');
INSERT INTO `REGION` VALUES ('806', '150922', '化德县', '67', '0', '0', 'Huade Xian', '2');
INSERT INTO `REGION` VALUES ('807', '150923', '商都县', '67', '0', '0', 'Shangdu Xian', '2');
INSERT INTO `REGION` VALUES ('808', '150924', '兴和县', '67', '0', '0', 'Xinghe Xian', '2');
INSERT INTO `REGION` VALUES ('809', '150925', '凉城县', '67', '0', '0', 'Liangcheng Xian', '2');
INSERT INTO `REGION` VALUES ('810', '150926', '察哈尔右翼前旗', '67', '0', '0', 'Qahar Youyi Qianqi', '2');
INSERT INTO `REGION` VALUES ('811', '150927', '察哈尔右翼中旗', '67', '0', '0', 'Qahar Youyi Zhongqi', '2');
INSERT INTO `REGION` VALUES ('812', '150928', '察哈尔右翼后旗', '67', '0', '0', 'Qahar Youyi Houqi', '2');
INSERT INTO `REGION` VALUES ('813', '150929', '四子王旗', '67', '0', '0', 'Dorbod Qi', '2');
INSERT INTO `REGION` VALUES ('814', '150981', '丰镇市', '67', '0', '0', 'Fengzhen Shi', '2');
INSERT INTO `REGION` VALUES ('815', '152201', '乌兰浩特市', '68', '0', '0', 'Ulan Hot Shi', 'ULO');
INSERT INTO `REGION` VALUES ('816', '152202', '阿尔山市', '68', '0', '0', 'Arxan Shi', 'ARS');
INSERT INTO `REGION` VALUES ('817', '152221', '科尔沁右翼前旗', '68', '0', '0', 'Horqin Youyi Qianqi', 'HYQ');
INSERT INTO `REGION` VALUES ('818', '152222', '科尔沁右翼中旗', '68', '0', '0', 'Horqin Youyi Zhongqi', 'HYZ');
INSERT INTO `REGION` VALUES ('819', '152223', '扎赉特旗', '68', '0', '0', 'JalaID Qi', 'JAL');
INSERT INTO `REGION` VALUES ('820', '152224', '突泉县', '68', '0', '0', 'Tuquan Xian', 'TUQ');
INSERT INTO `REGION` VALUES ('821', '152501', '二连浩特市', '69', '0', '0', 'Erenhot Shi', 'ERC');
INSERT INTO `REGION` VALUES ('822', '152502', '锡林浩特市', '69', '0', '0', 'Xilinhot Shi', 'XLI');
INSERT INTO `REGION` VALUES ('823', '152522', '阿巴嘎旗', '69', '0', '0', 'Abag Qi', 'ABG');
INSERT INTO `REGION` VALUES ('824', '152523', '苏尼特左旗', '69', '0', '0', 'SonID Zuoqi', 'SOZ');
INSERT INTO `REGION` VALUES ('825', '152524', '苏尼特右旗', '69', '0', '0', 'SonID Youqi', 'SOY');
INSERT INTO `REGION` VALUES ('826', '152525', '东乌珠穆沁旗', '69', '0', '0', 'Dong Ujimqin Qi', 'DUJ');
INSERT INTO `REGION` VALUES ('827', '152526', '西乌珠穆沁旗', '69', '0', '0', 'Xi Ujimqin Qi', 'XUJ');
INSERT INTO `REGION` VALUES ('828', '152527', '太仆寺旗', '69', '0', '0', 'Taibus Qi', 'TAB');
INSERT INTO `REGION` VALUES ('829', '152528', '镶黄旗', '69', '0', '0', 'Xianghuang(Hobot Xar) Qi', 'XHG');
INSERT INTO `REGION` VALUES ('830', '152529', '正镶白旗', '69', '0', '0', 'Zhengxiangbai(Xulun Hobot Qagan)Qi', 'ZXB');
INSERT INTO `REGION` VALUES ('831', '152530', '正蓝旗', '69', '0', '0', 'Zhenglan(Xulun Hoh)Qi', 'ZLM');
INSERT INTO `REGION` VALUES ('832', '152531', '多伦县', '69', '0', '0', 'Duolun (Dolonnur)Xian', 'DLM');
INSERT INTO `REGION` VALUES ('833', '152921', '阿拉善左旗', '70', '0', '0', 'Alxa Zuoqi', 'ALZ');
INSERT INTO `REGION` VALUES ('834', '152922', '阿拉善右旗', '70', '0', '0', 'Alxa Youqi', 'ALY');
INSERT INTO `REGION` VALUES ('835', '152923', '额济纳旗', '70', '0', '0', 'Ejin Qi', 'EJI');
INSERT INTO `REGION` VALUES ('836', '210101', '市辖区', '71', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('837', '210102', '和平区', '71', '0', '0', 'Heping Qu', 'HEP');
INSERT INTO `REGION` VALUES ('838', '210103', '沈河区', '71', '0', '0', 'Shenhe Qu ', 'SHQ');
INSERT INTO `REGION` VALUES ('839', '210104', '大东区', '71', '0', '0', 'Dadong Qu ', 'DDQ');
INSERT INTO `REGION` VALUES ('840', '210105', '皇姑区', '71', '0', '0', 'Huanggu Qu', 'HGU');
INSERT INTO `REGION` VALUES ('841', '210106', '铁西区', '71', '0', '0', 'Tiexi Qu', 'TXI');
INSERT INTO `REGION` VALUES ('842', '210111', '苏家屯区', '71', '0', '0', 'Sujiatun Qu', 'SJT');
INSERT INTO `REGION` VALUES ('843', '210112', '东陵区', '71', '0', '0', 'Dongling Qu ', 'DLQ');
INSERT INTO `REGION` VALUES ('844', '210113', '沈北新区', '71', '0', '0', 'Xinchengzi Qu', '2');
INSERT INTO `REGION` VALUES ('845', '210114', '于洪区', '71', '0', '0', 'Yuhong Qu ', 'YHQ');
INSERT INTO `REGION` VALUES ('846', '210122', '辽中县', '71', '0', '0', 'Liaozhong Xian', 'LZL');
INSERT INTO `REGION` VALUES ('847', '210123', '康平县', '71', '0', '0', 'Kangping Xian', 'KPG');
INSERT INTO `REGION` VALUES ('848', '210124', '法库县', '71', '0', '0', 'Faku Xian', 'FKU');
INSERT INTO `REGION` VALUES ('849', '210181', '新民市', '71', '0', '0', 'Xinmin Shi', 'XMS');
INSERT INTO `REGION` VALUES ('850', '210201', '市辖区', '72', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('851', '210202', '中山区', '72', '0', '0', 'Zhongshan Qu', 'ZSD');
INSERT INTO `REGION` VALUES ('852', '210203', '西岗区', '72', '0', '0', 'Xigang Qu', 'XGD');
INSERT INTO `REGION` VALUES ('853', '210204', '沙河口区', '72', '0', '0', 'Shahekou Qu', 'SHK');
INSERT INTO `REGION` VALUES ('854', '210211', '甘井子区', '72', '0', '0', 'Ganjingzi Qu', 'GJZ');
INSERT INTO `REGION` VALUES ('855', '210212', '旅顺口区', '72', '0', '0', 'Lvshunkou Qu ', 'LSK');
INSERT INTO `REGION` VALUES ('856', '210213', '金州区', '72', '0', '0', 'Jinzhou Qu', 'JZH');
INSERT INTO `REGION` VALUES ('857', '210224', '长海县', '72', '0', '0', 'Changhai Xian', 'CHX');
INSERT INTO `REGION` VALUES ('858', '210281', '瓦房店市', '72', '0', '0', 'Wafangdian Shi', 'WFD');
INSERT INTO `REGION` VALUES ('859', '210282', '普兰店市', '72', '0', '0', 'Pulandian Shi', 'PLD');
INSERT INTO `REGION` VALUES ('860', '210283', '庄河市', '72', '0', '0', 'Zhuanghe Shi', 'ZHH');
INSERT INTO `REGION` VALUES ('861', '210301', '市辖区', '73', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('862', '210302', '铁东区', '73', '0', '0', 'Tiedong Qu ', 'TED');
INSERT INTO `REGION` VALUES ('863', '210303', '铁西区', '73', '0', '0', 'Tiexi Qu', 'TXL');
INSERT INTO `REGION` VALUES ('864', '210304', '立山区', '73', '0', '0', 'Lishan Qu', 'LAS');
INSERT INTO `REGION` VALUES ('865', '210311', '千山区', '73', '0', '0', 'Qianshan Qu ', 'QSQ');
INSERT INTO `REGION` VALUES ('866', '210321', '台安县', '73', '0', '0', 'Tai,an Xian', 'TAX');
INSERT INTO `REGION` VALUES ('867', '210323', '岫岩满族自治县', '73', '0', '0', 'Xiuyan Manzu Zizhixian', 'XYL');
INSERT INTO `REGION` VALUES ('868', '210381', '海城市', '73', '0', '0', 'Haicheng Shi', 'HCL');
INSERT INTO `REGION` VALUES ('869', '210401', '市辖区', '74', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('870', '210402', '新抚区', '74', '0', '0', 'Xinfu Qu', 'XFU');
INSERT INTO `REGION` VALUES ('871', '210403', '东洲区', '74', '0', '0', 'Dongzhou Qu', '2');
INSERT INTO `REGION` VALUES ('872', '210404', '望花区', '74', '0', '0', 'Wanghua Qu', 'WHF');
INSERT INTO `REGION` VALUES ('873', '210411', '顺城区', '74', '0', '0', 'Shuncheng Qu', 'SCF');
INSERT INTO `REGION` VALUES ('874', '210421', '抚顺县', '74', '0', '0', 'Fushun Xian', 'FSX');
INSERT INTO `REGION` VALUES ('875', '210422', '新宾满族自治县', '74', '0', '0', 'Xinbinmanzuzizhi Xian', '2');
INSERT INTO `REGION` VALUES ('876', '210423', '清原满族自治县', '74', '0', '0', 'Qingyuanmanzuzizhi Xian', '2');
INSERT INTO `REGION` VALUES ('877', '210501', '市辖区', '75', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('878', '210502', '平山区', '75', '0', '0', 'Pingshan Qu', 'PSN');
INSERT INTO `REGION` VALUES ('879', '210503', '溪湖区', '75', '0', '0', 'Xihu Qu ', 'XHB');
INSERT INTO `REGION` VALUES ('880', '210504', '明山区', '75', '0', '0', 'Mingshan Qu', 'MSB');
INSERT INTO `REGION` VALUES ('881', '210505', '南芬区', '75', '0', '0', 'Nanfen Qu', 'NFQ');
INSERT INTO `REGION` VALUES ('882', '210521', '本溪满族自治县', '75', '0', '0', 'Benxi Manzu Zizhixian', 'BXX');
INSERT INTO `REGION` VALUES ('883', '210522', '桓仁满族自治县', '75', '0', '0', 'Huanren Manzu Zizhixian', 'HRL');
INSERT INTO `REGION` VALUES ('884', '210601', '市辖区', '76', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('885', '210602', '元宝区', '76', '0', '0', 'Yuanbao Qu', 'YBD');
INSERT INTO `REGION` VALUES ('886', '210603', '振兴区', '76', '0', '0', 'Zhenxing Qu ', 'ZXQ');
INSERT INTO `REGION` VALUES ('887', '210604', '振安区', '76', '0', '0', 'Zhen,an Qu', 'ZAQ');
INSERT INTO `REGION` VALUES ('888', '210624', '宽甸满族自治县', '76', '0', '0', 'Kuandian Manzu Zizhixian', 'KDN');
INSERT INTO `REGION` VALUES ('889', '210681', '东港市', '76', '0', '0', 'Donggang Shi', 'DGS');
INSERT INTO `REGION` VALUES ('890', '210682', '凤城市', '76', '0', '0', 'Fengcheng Shi', 'FCL');
INSERT INTO `REGION` VALUES ('891', '210701', '市辖区', '77', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('892', '210702', '古塔区', '77', '0', '0', 'Guta Qu', 'GTQ');
INSERT INTO `REGION` VALUES ('893', '210703', '凌河区', '77', '0', '0', 'Linghe Qu', 'LHF');
INSERT INTO `REGION` VALUES ('894', '210711', '太和区', '77', '0', '0', 'Taihe Qu', '2');
INSERT INTO `REGION` VALUES ('895', '210726', '黑山县', '77', '0', '0', 'Heishan Xian', 'HSL');
INSERT INTO `REGION` VALUES ('896', '210727', '义县', '77', '0', '0', 'Yi Xian', 'YXL');
INSERT INTO `REGION` VALUES ('897', '210781', '凌海市', '77', '0', '0', 'Linghai Shi ', 'LHL');
INSERT INTO `REGION` VALUES ('898', '210782', '北镇市', '77', '0', '0', 'Beining Shi', '2');
INSERT INTO `REGION` VALUES ('899', '210801', '市辖区', '78', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('900', '210802', '站前区', '78', '0', '0', 'Zhanqian Qu', 'ZQQ');
INSERT INTO `REGION` VALUES ('901', '210803', '西市区', '78', '0', '0', 'Xishi Qu', 'XII');
INSERT INTO `REGION` VALUES ('902', '210804', '鲅鱼圈区', '78', '0', '0', 'Bayuquan Qu', 'BYQ');
INSERT INTO `REGION` VALUES ('903', '210811', '老边区', '78', '0', '0', 'Laobian Qu', 'LOB');
INSERT INTO `REGION` VALUES ('904', '210881', '盖州市', '78', '0', '0', 'Gaizhou Shi', 'GZU');
INSERT INTO `REGION` VALUES ('905', '210882', '大石桥市', '78', '0', '0', 'Dashiqiao Shi', 'DSQ');
INSERT INTO `REGION` VALUES ('906', '210901', '市辖区', '79', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('907', '210902', '海州区', '79', '0', '0', 'Haizhou Qu', 'HZF');
INSERT INTO `REGION` VALUES ('908', '210903', '新邱区', '79', '0', '0', 'Xinqiu Qu', 'XQF');
INSERT INTO `REGION` VALUES ('909', '210904', '太平区', '79', '0', '0', 'Taiping Qu', 'TPG');
INSERT INTO `REGION` VALUES ('910', '210905', '清河门区', '79', '0', '0', 'Qinghemen Qu', 'QHM');
INSERT INTO `REGION` VALUES ('911', '210911', '细河区', '79', '0', '0', 'Xihe Qu', 'XHO');
INSERT INTO `REGION` VALUES ('912', '210921', '阜新蒙古族自治县', '79', '0', '0', 'Fuxin Mongolzu Zizhixian', 'FXX');
INSERT INTO `REGION` VALUES ('913', '210922', '彰武县', '79', '0', '0', 'Zhangwu Xian', 'ZWU');
INSERT INTO `REGION` VALUES ('914', '211001', '市辖区', '80', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('915', '211002', '白塔区', '80', '0', '0', 'Baita Qu', 'BTL');
INSERT INTO `REGION` VALUES ('916', '211003', '文圣区', '80', '0', '0', 'Wensheng Qu', 'WST');
INSERT INTO `REGION` VALUES ('917', '211004', '宏伟区', '80', '0', '0', 'Hongwei Qu', 'HWQ');
INSERT INTO `REGION` VALUES ('918', '211005', '弓长岭区', '80', '0', '0', 'Gongchangling Qu', 'GCL');
INSERT INTO `REGION` VALUES ('919', '211011', '太子河区', '80', '0', '0', 'Taizihe Qu', 'TZH');
INSERT INTO `REGION` VALUES ('920', '211021', '辽阳县', '80', '0', '0', 'Liaoyang Xian', 'LYX');
INSERT INTO `REGION` VALUES ('921', '211081', '灯塔市', '80', '0', '0', 'Dengta Shi', 'DTL');
INSERT INTO `REGION` VALUES ('922', '211101', '市辖区', '81', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('923', '211102', '双台子区', '81', '0', '0', 'Shuangtaizi Qu', 'STZ');
INSERT INTO `REGION` VALUES ('924', '211103', '兴隆台区', '81', '0', '0', 'Xinglongtai Qu', 'XLT');
INSERT INTO `REGION` VALUES ('925', '211121', '大洼县', '81', '0', '0', 'Dawa Xian', 'DWA');
INSERT INTO `REGION` VALUES ('926', '211122', '盘山县', '81', '0', '0', 'Panshan Xian', 'PNS');
INSERT INTO `REGION` VALUES ('927', '211201', '市辖区', '82', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('928', '211202', '银州区', '82', '0', '0', 'Yinzhou Qu', 'YZU');
INSERT INTO `REGION` VALUES ('929', '211204', '清河区', '82', '0', '0', 'Qinghe Qu', 'QHQ');
INSERT INTO `REGION` VALUES ('930', '211221', '铁岭县', '82', '0', '0', 'Tieling Xian', 'TLG');
INSERT INTO `REGION` VALUES ('931', '211223', '西丰县', '82', '0', '0', 'Xifeng Xian', 'XIF');
INSERT INTO `REGION` VALUES ('932', '211224', '昌图县', '82', '0', '0', 'Changtu Xian', 'CTX');
INSERT INTO `REGION` VALUES ('933', '211281', '调兵山市', '82', '0', '0', 'Diaobingshan Shi', '2');
INSERT INTO `REGION` VALUES ('934', '211282', '开原市', '82', '0', '0', 'Kaiyuan Shi', 'KYS');
INSERT INTO `REGION` VALUES ('935', '211301', '市辖区', '83', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('936', '211302', '双塔区', '83', '0', '0', 'Shuangta Qu', 'STQ');
INSERT INTO `REGION` VALUES ('937', '211303', '龙城区', '83', '0', '0', 'Longcheng Qu', 'LCL');
INSERT INTO `REGION` VALUES ('938', '211321', '朝阳县', '83', '0', '0', 'Chaoyang Xian', 'CYG');
INSERT INTO `REGION` VALUES ('939', '211322', '建平县', '83', '0', '0', 'Jianping Xian', 'JPG');
INSERT INTO `REGION` VALUES ('940', '211324', '喀喇沁左翼蒙古族自治县', '83', '0', '0', 'Harqin Zuoyi Mongolzu Zizhixian', 'HAZ');
INSERT INTO `REGION` VALUES ('941', '211381', '北票市', '83', '0', '0', 'Beipiao Shi', 'BPO');
INSERT INTO `REGION` VALUES ('942', '211382', '凌源市', '83', '0', '0', 'Lingyuan Shi', 'LYK');
INSERT INTO `REGION` VALUES ('943', '211401', '市辖区', '84', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('944', '211402', '连山区', '84', '0', '0', 'Lianshan Qu', 'LSQ');
INSERT INTO `REGION` VALUES ('945', '211403', '龙港区', '84', '0', '0', 'Longgang Qu', 'LGD');
INSERT INTO `REGION` VALUES ('946', '211404', '南票区', '84', '0', '0', 'Nanpiao Qu', 'NPQ');
INSERT INTO `REGION` VALUES ('947', '211421', '绥中县', '84', '0', '0', 'Suizhong Xian', 'SZL');
INSERT INTO `REGION` VALUES ('948', '211422', '建昌县', '84', '0', '0', 'Jianchang Xian', 'JCL');
INSERT INTO `REGION` VALUES ('949', '211481', '兴城市', '84', '0', '0', 'Xingcheng Shi', 'XCL');
INSERT INTO `REGION` VALUES ('950', '220101', '市辖区', '85', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('951', '220102', '南关区', '85', '0', '0', 'Nanguan Qu', 'NGN');
INSERT INTO `REGION` VALUES ('952', '220103', '宽城区', '85', '0', '0', 'Kuancheng Qu', 'KCQ');
INSERT INTO `REGION` VALUES ('953', '220104', '朝阳区', '85', '0', '0', 'Chaoyang Qu ', 'CYC');
INSERT INTO `REGION` VALUES ('954', '220105', '二道区', '85', '0', '0', 'Erdao Qu', 'EDQ');
INSERT INTO `REGION` VALUES ('955', '220106', '绿园区', '85', '0', '0', 'Lvyuan Qu', 'LYQ');
INSERT INTO `REGION` VALUES ('956', '220112', '双阳区', '85', '0', '0', 'Shuangyang Qu', 'SYQ');
INSERT INTO `REGION` VALUES ('957', '220122', '农安县', '85', '0', '0', 'Nong,an Xian ', 'NAJ');
INSERT INTO `REGION` VALUES ('958', '220181', '九台市', '85', '0', '0', 'Jiutai Shi', '2');
INSERT INTO `REGION` VALUES ('959', '220182', '榆树市', '85', '0', '0', 'Yushu Shi', 'YSS');
INSERT INTO `REGION` VALUES ('960', '220183', '德惠市', '85', '0', '0', 'Dehui Shi', 'DEH');
INSERT INTO `REGION` VALUES ('961', '220201', '市辖区', '86', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('962', '220202', '昌邑区', '86', '0', '0', 'Changyi Qu', 'CYI');
INSERT INTO `REGION` VALUES ('963', '220203', '龙潭区', '86', '0', '0', 'Longtan Qu', 'LTQ');
INSERT INTO `REGION` VALUES ('964', '220204', '船营区', '86', '0', '0', 'Chuanying Qu', 'CYJ');
INSERT INTO `REGION` VALUES ('965', '220211', '丰满区', '86', '0', '0', 'Fengman Qu', 'FMQ');
INSERT INTO `REGION` VALUES ('966', '220221', '永吉县', '86', '0', '0', 'Yongji Xian', 'YOJ');
INSERT INTO `REGION` VALUES ('967', '220281', '蛟河市', '86', '0', '0', 'Jiaohe Shi', 'JHJ');
INSERT INTO `REGION` VALUES ('968', '220282', '桦甸市', '86', '0', '0', 'Huadian Shi', 'HDJ');
INSERT INTO `REGION` VALUES ('969', '220283', '舒兰市', '86', '0', '0', 'Shulan Shi', 'SLN');
INSERT INTO `REGION` VALUES ('970', '220284', '磐石市', '86', '0', '0', 'Panshi Shi', 'PSI');
INSERT INTO `REGION` VALUES ('971', '220301', '市辖区', '87', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('972', '220302', '铁西区', '87', '0', '0', 'Tiexi Qu', 'TXS');
INSERT INTO `REGION` VALUES ('973', '220303', '铁东区', '87', '0', '0', 'Tiedong Qu ', 'TDQ');
INSERT INTO `REGION` VALUES ('974', '220322', '梨树县', '87', '0', '0', 'Lishu Xian', 'LSU');
INSERT INTO `REGION` VALUES ('975', '220323', '伊通满族自治县', '87', '0', '0', 'Yitong Manzu Zizhixian', 'YTO');
INSERT INTO `REGION` VALUES ('976', '220381', '公主岭市', '87', '0', '0', 'Gongzhuling Shi', 'GZL');
INSERT INTO `REGION` VALUES ('977', '220382', '双辽市', '87', '0', '0', 'Shuangliao Shi', 'SLS');
INSERT INTO `REGION` VALUES ('978', '220401', '市辖区', '88', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('979', '220402', '龙山区', '88', '0', '0', 'Longshan Qu', 'LGS');
INSERT INTO `REGION` VALUES ('980', '220403', '西安区', '88', '0', '0', 'Xi,an Qu', 'XAA');
INSERT INTO `REGION` VALUES ('981', '220421', '东丰县', '88', '0', '0', 'Dongfeng Xian', 'DGF');
INSERT INTO `REGION` VALUES ('982', '220422', '东辽县', '88', '0', '0', 'Dongliao Xian ', 'DLX');
INSERT INTO `REGION` VALUES ('983', '220501', '市辖区', '89', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('984', '220502', '东昌区', '89', '0', '0', 'Dongchang Qu', 'DCT');
INSERT INTO `REGION` VALUES ('985', '220503', '二道江区', '89', '0', '0', 'Erdaojiang Qu', 'EDJ');
INSERT INTO `REGION` VALUES ('986', '220521', '通化县', '89', '0', '0', 'Tonghua Xian ', 'THX');
INSERT INTO `REGION` VALUES ('987', '220523', '辉南县', '89', '0', '0', 'Huinan Xian ', 'HNA');
INSERT INTO `REGION` VALUES ('988', '220524', '柳河县', '89', '0', '0', 'Liuhe Xian ', 'LHC');
INSERT INTO `REGION` VALUES ('989', '220581', '梅河口市', '89', '0', '0', 'Meihekou Shi', 'MHK');
INSERT INTO `REGION` VALUES ('990', '220582', '集安市', '89', '0', '0', 'Ji,an Shi', 'KNC');
INSERT INTO `REGION` VALUES ('991', '220601', '市辖区', '90', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('992', '220602', '八道江区', '90', '0', '0', 'Badaojiang Qu', 'BDJ');
INSERT INTO `REGION` VALUES ('993', '220621', '抚松县', '90', '0', '0', 'Fusong Xian', 'FSG');
INSERT INTO `REGION` VALUES ('994', '220622', '靖宇县', '90', '0', '0', 'Jingyu Xian', 'JYJ');
INSERT INTO `REGION` VALUES ('995', '220623', '长白朝鲜族自治县', '90', '0', '0', 'Changbaichaoxianzuzizhi Xian', '2');
INSERT INTO `REGION` VALUES ('996', '220605', '江源区', '90', '0', '0', 'Jiangyuan Xian', '2');
INSERT INTO `REGION` VALUES ('997', '220681', '临江市', '90', '0', '0', 'Linjiang Shi', 'LIN');
INSERT INTO `REGION` VALUES ('998', '220701', '市辖区', '91', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('999', '220702', '宁江区', '91', '0', '0', 'Ningjiang Qu', 'NJA');
INSERT INTO `REGION` VALUES ('1000', '220721', '前郭尔罗斯蒙古族自治县', '91', '0', '0', 'Qian Gorlos Mongolzu Zizhixian', 'QGO');
INSERT INTO `REGION` VALUES ('1001', '220722', '长岭县', '91', '0', '0', 'Changling Xian', 'CLG');
INSERT INTO `REGION` VALUES ('1002', '220723', '乾安县', '91', '0', '0', 'Qian,an Xian', 'QAJ');
INSERT INTO `REGION` VALUES ('1003', '220724', '扶余县', '91', '0', '0', 'Fuyu Xian', 'FYU');
INSERT INTO `REGION` VALUES ('1004', '220801', '市辖区', '92', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1005', '220802', '洮北区', '92', '0', '0', 'Taobei Qu', 'TBQ');
INSERT INTO `REGION` VALUES ('1006', '220821', '镇赉县', '92', '0', '0', 'Zhenlai Xian', 'ZLA');
INSERT INTO `REGION` VALUES ('1007', '220822', '通榆县', '92', '0', '0', 'Tongyu Xian', 'TGY');
INSERT INTO `REGION` VALUES ('1008', '220881', '洮南市', '92', '0', '0', 'Taonan Shi', 'TNS');
INSERT INTO `REGION` VALUES ('1009', '220882', '大安市', '92', '0', '0', 'Da,an Shi', 'DNA');
INSERT INTO `REGION` VALUES ('1010', '222401', '延吉市', '93', '0', '0', 'Yanji Shi', 'YNJ');
INSERT INTO `REGION` VALUES ('1011', '222402', '图们市', '93', '0', '0', 'Tumen Shi', 'TME');
INSERT INTO `REGION` VALUES ('1012', '222403', '敦化市', '93', '0', '0', 'Dunhua Shi', 'DHS');
INSERT INTO `REGION` VALUES ('1013', '222404', '珲春市', '93', '0', '0', 'Hunchun Shi', 'HUC');
INSERT INTO `REGION` VALUES ('1014', '222405', '龙井市', '93', '0', '0', 'Longjing Shi', 'LJJ');
INSERT INTO `REGION` VALUES ('1015', '222406', '和龙市', '93', '0', '0', 'Helong Shi', 'HEL');
INSERT INTO `REGION` VALUES ('1016', '222424', '汪清县', '93', '0', '0', 'Wangqing Xian', 'WGQ');
INSERT INTO `REGION` VALUES ('1017', '222426', '安图县', '93', '0', '0', 'Antu Xian', 'ATU');
INSERT INTO `REGION` VALUES ('1018', '230101', '市辖区', '94', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1019', '230102', '道里区', '94', '0', '0', 'Daoli Qu', 'DLH');
INSERT INTO `REGION` VALUES ('1020', '230103', '南岗区', '94', '0', '0', 'Nangang Qu', 'NGQ');
INSERT INTO `REGION` VALUES ('1021', '230104', '道外区', '94', '0', '0', 'Daowai Qu', 'DWQ');
INSERT INTO `REGION` VALUES ('1022', '230110', '香坊区', '94', '0', '0', 'Xiangfang Qu', '2');
INSERT INTO `REGION` VALUES ('1024', '230108', '平房区', '94', '0', '0', 'Pingfang Qu', 'PFQ');
INSERT INTO `REGION` VALUES ('1025', '230109', '松北区', '94', '0', '0', 'Songbei Qu', '2');
INSERT INTO `REGION` VALUES ('1026', '230111', '呼兰区', '94', '0', '0', 'Hulan Qu', '2');
INSERT INTO `REGION` VALUES ('1027', '230123', '依兰县', '94', '0', '0', 'Yilan Xian', 'YLH');
INSERT INTO `REGION` VALUES ('1028', '230124', '方正县', '94', '0', '0', 'Fangzheng Xian', 'FZH');
INSERT INTO `REGION` VALUES ('1029', '230125', '宾县', '94', '0', '0', 'Bin Xian', 'BNX');
INSERT INTO `REGION` VALUES ('1030', '230126', '巴彦县', '94', '0', '0', 'Bayan Xian', 'BYH');
INSERT INTO `REGION` VALUES ('1031', '230127', '木兰县', '94', '0', '0', 'Mulan Xian ', 'MUL');
INSERT INTO `REGION` VALUES ('1032', '230128', '通河县', '94', '0', '0', 'Tonghe Xian', 'TOH');
INSERT INTO `REGION` VALUES ('1033', '230129', '延寿县', '94', '0', '0', 'Yanshou Xian', 'YSU');
INSERT INTO `REGION` VALUES ('1034', '230112', '阿城区', '94', '0', '0', 'Acheng Shi', '2');
INSERT INTO `REGION` VALUES ('1035', '230182', '双城市', '94', '0', '0', 'Shuangcheng Shi', 'SCS');
INSERT INTO `REGION` VALUES ('1036', '230183', '尚志市', '94', '0', '0', 'Shangzhi Shi', 'SZI');
INSERT INTO `REGION` VALUES ('1037', '230184', '五常市', '94', '0', '0', 'Wuchang Shi', 'WCA');
INSERT INTO `REGION` VALUES ('1038', '230201', '市辖区', '95', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1039', '230202', '龙沙区', '95', '0', '0', 'Longsha Qu', 'LQQ');
INSERT INTO `REGION` VALUES ('1040', '230203', '建华区', '95', '0', '0', 'Jianhua Qu', 'JHQ');
INSERT INTO `REGION` VALUES ('1041', '230204', '铁锋区', '95', '0', '0', 'Tiefeng Qu', '2');
INSERT INTO `REGION` VALUES ('1042', '230205', '昂昂溪区', '95', '0', '0', 'Ang,angxi Qu', 'AAX');
INSERT INTO `REGION` VALUES ('1043', '230206', '富拉尔基区', '95', '0', '0', 'Hulan Ergi Qu', 'HUE');
INSERT INTO `REGION` VALUES ('1044', '230207', '碾子山区', '95', '0', '0', 'Nianzishan Qu', 'NZS');
INSERT INTO `REGION` VALUES ('1045', '230208', '梅里斯达斡尔族区', '95', '0', '0', 'MeilisIDawoerzu Qu', '2');
INSERT INTO `REGION` VALUES ('1046', '230221', '龙江县', '95', '0', '0', 'Longjiang Xian', 'LGJ');
INSERT INTO `REGION` VALUES ('1047', '230223', '依安县', '95', '0', '0', 'Yi,an Xian', 'YAN');
INSERT INTO `REGION` VALUES ('1048', '230224', '泰来县', '95', '0', '0', 'Tailai Xian', 'TLA');
INSERT INTO `REGION` VALUES ('1049', '230225', '甘南县', '95', '0', '0', 'Gannan Xian', 'GNX');
INSERT INTO `REGION` VALUES ('1050', '230227', '富裕县', '95', '0', '0', 'Fuyu Xian', 'FYX');
INSERT INTO `REGION` VALUES ('1051', '230229', '克山县', '95', '0', '0', 'Keshan Xian', 'KSN');
INSERT INTO `REGION` VALUES ('1052', '230230', '克东县', '95', '0', '0', 'Kedong Xian', 'KDO');
INSERT INTO `REGION` VALUES ('1053', '230231', '拜泉县', '95', '0', '0', 'Baiquan Xian', 'BQN');
INSERT INTO `REGION` VALUES ('1054', '230281', '讷河市', '95', '0', '0', 'Nehe Shi', 'NEH');
INSERT INTO `REGION` VALUES ('1055', '230301', '市辖区', '96', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1056', '230302', '鸡冠区', '96', '0', '0', 'Jiguan Qu', 'JGU');
INSERT INTO `REGION` VALUES ('1057', '230303', '恒山区', '96', '0', '0', 'Hengshan Qu', 'HSD');
INSERT INTO `REGION` VALUES ('1058', '230304', '滴道区', '96', '0', '0', 'DIDao Qu', 'DDO');
INSERT INTO `REGION` VALUES ('1059', '230305', '梨树区', '96', '0', '0', 'Lishu Qu', 'LJX');
INSERT INTO `REGION` VALUES ('1060', '230306', '城子河区', '96', '0', '0', 'Chengzihe Qu', 'CZH');
INSERT INTO `REGION` VALUES ('1061', '230307', '麻山区', '96', '0', '0', 'Mashan Qu', 'MSN');
INSERT INTO `REGION` VALUES ('1062', '230321', '鸡东县', '96', '0', '0', 'JIDong Xian', 'JID');
INSERT INTO `REGION` VALUES ('1063', '230381', '虎林市', '96', '0', '0', 'Hulin Shi', 'HUL');
INSERT INTO `REGION` VALUES ('1064', '230382', '密山市', '96', '0', '0', 'Mishan Shi', 'MIS');
INSERT INTO `REGION` VALUES ('1065', '230401', '市辖区', '97', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1066', '230402', '向阳区', '97', '0', '0', 'Xiangyang  Qu ', 'XYZ');
INSERT INTO `REGION` VALUES ('1067', '230403', '工农区', '97', '0', '0', 'Gongnong Qu', 'GNH');
INSERT INTO `REGION` VALUES ('1068', '230404', '南山区', '97', '0', '0', 'Nanshan Qu', 'NSQ');
INSERT INTO `REGION` VALUES ('1069', '230405', '兴安区', '97', '0', '0', 'Xing,an Qu', 'XAH');
INSERT INTO `REGION` VALUES ('1070', '230406', '东山区', '97', '0', '0', 'Dongshan Qu', 'DSA');
INSERT INTO `REGION` VALUES ('1071', '230407', '兴山区', '97', '0', '0', 'Xingshan Qu', 'XSQ');
INSERT INTO `REGION` VALUES ('1072', '230421', '萝北县', '97', '0', '0', 'Luobei Xian', 'LUB');
INSERT INTO `REGION` VALUES ('1073', '230422', '绥滨县', '97', '0', '0', 'Suibin Xian', '2');
INSERT INTO `REGION` VALUES ('1074', '230501', '市辖区', '98', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1075', '230502', '尖山区', '98', '0', '0', 'Jianshan Qu', 'JSQ');
INSERT INTO `REGION` VALUES ('1076', '230503', '岭东区', '98', '0', '0', 'Lingdong Qu', 'LDQ');
INSERT INTO `REGION` VALUES ('1077', '230505', '四方台区', '98', '0', '0', 'Sifangtai Qu', 'SFT');
INSERT INTO `REGION` VALUES ('1078', '230506', '宝山区', '98', '0', '0', 'Baoshan Qu', 'BSQ');
INSERT INTO `REGION` VALUES ('1079', '230521', '集贤县', '98', '0', '0', 'Jixian Xian', 'JXH');
INSERT INTO `REGION` VALUES ('1080', '230522', '友谊县', '98', '0', '0', 'Youyi Xian', 'YYI');
INSERT INTO `REGION` VALUES ('1081', '230523', '宝清县', '98', '0', '0', 'Baoqing Xian', 'BQG');
INSERT INTO `REGION` VALUES ('1082', '230524', '饶河县', '98', '0', '0', 'Raohe Xian ', 'ROH');
INSERT INTO `REGION` VALUES ('1083', '230601', '市辖区', '99', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1084', '230602', '萨尔图区', '99', '0', '0', 'Sairt Qu', 'SAI');
INSERT INTO `REGION` VALUES ('1085', '230603', '龙凤区', '99', '0', '0', 'Longfeng Qu', 'LFQ');
INSERT INTO `REGION` VALUES ('1086', '230604', '让胡路区', '99', '0', '0', 'Ranghulu Qu', 'RHL');
INSERT INTO `REGION` VALUES ('1087', '230605', '红岗区', '99', '0', '0', 'Honggang Qu', 'HGD');
INSERT INTO `REGION` VALUES ('1088', '230606', '大同区', '99', '0', '0', 'Datong Qu', 'DHD');
INSERT INTO `REGION` VALUES ('1089', '230621', '肇州县', '99', '0', '0', 'Zhaozhou Xian', 'ZAZ');
INSERT INTO `REGION` VALUES ('1090', '230622', '肇源县', '99', '0', '0', 'Zhaoyuan Xian', 'ZYH');
INSERT INTO `REGION` VALUES ('1091', '230623', '林甸县', '99', '0', '0', 'Lindian Xian ', 'LDN');
INSERT INTO `REGION` VALUES ('1092', '230624', '杜尔伯特蒙古族自治县', '99', '0', '0', 'Dorbod Mongolzu Zizhixian', 'DOM');
INSERT INTO `REGION` VALUES ('1093', '230701', '市辖区', '100', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1094', '230702', '伊春区', '100', '0', '0', 'Yichun Qu', 'YYC');
INSERT INTO `REGION` VALUES ('1095', '230703', '南岔区', '100', '0', '0', 'Nancha Qu', 'NCQ');
INSERT INTO `REGION` VALUES ('1096', '230704', '友好区', '100', '0', '0', 'Youhao Qu', 'YOH');
INSERT INTO `REGION` VALUES ('1097', '230705', '西林区', '100', '0', '0', 'Xilin Qu', 'XIL');
INSERT INTO `REGION` VALUES ('1098', '230706', '翠峦区', '100', '0', '0', 'Cuiluan Qu', 'CLN');
INSERT INTO `REGION` VALUES ('1099', '230707', '新青区', '100', '0', '0', 'Xinqing Qu', 'XQQ');
INSERT INTO `REGION` VALUES ('1100', '230708', '美溪区', '100', '0', '0', 'Meixi Qu', 'MXQ');
INSERT INTO `REGION` VALUES ('1101', '230709', '金山屯区', '100', '0', '0', 'Jinshantun Qu', 'JST');
INSERT INTO `REGION` VALUES ('1102', '230710', '五营区', '100', '0', '0', 'Wuying Qu', 'WYQ');
INSERT INTO `REGION` VALUES ('1103', '230711', '乌马河区', '100', '0', '0', 'Wumahe Qu', 'WMH');
INSERT INTO `REGION` VALUES ('1104', '230712', '汤旺河区', '100', '0', '0', 'Tangwanghe Qu', 'TWH');
INSERT INTO `REGION` VALUES ('1105', '230713', '带岭区', '100', '0', '0', 'Dailing Qu', 'DLY');
INSERT INTO `REGION` VALUES ('1106', '230714', '乌伊岭区', '100', '0', '0', 'Wuyiling Qu', 'WYL');
INSERT INTO `REGION` VALUES ('1107', '230715', '红星区', '100', '0', '0', 'Hongxing Qu', 'HGX');
INSERT INTO `REGION` VALUES ('1108', '230716', '上甘岭区', '100', '0', '0', 'Shangganling Qu', 'SGL');
INSERT INTO `REGION` VALUES ('1109', '230722', '嘉荫县', '100', '0', '0', 'Jiayin Xian', '2');
INSERT INTO `REGION` VALUES ('1110', '230781', '铁力市', '100', '0', '0', 'Tieli Shi', 'TEL');
INSERT INTO `REGION` VALUES ('1111', '230801', '市辖区', '101', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1113', '230803', '向阳区', '101', '0', '0', 'Xiangyang  Qu ', 'XYQ');
INSERT INTO `REGION` VALUES ('1114', '230804', '前进区', '101', '0', '0', 'Qianjin Qu', 'QJQ');
INSERT INTO `REGION` VALUES ('1115', '230805', '东风区', '101', '0', '0', 'Dongfeng Qu', 'DFQ');
INSERT INTO `REGION` VALUES ('1116', '230811', '郊区', '101', '0', '0', 'Jiaoqu', 'JQJ');
INSERT INTO `REGION` VALUES ('1117', '230822', '桦南县', '101', '0', '0', 'Huanan Xian', 'HNH');
INSERT INTO `REGION` VALUES ('1118', '230826', '桦川县', '101', '0', '0', 'Huachuan Xian', 'HCN');
INSERT INTO `REGION` VALUES ('1119', '230828', '汤原县', '101', '0', '0', 'Tangyuan Xian', 'TYX');
INSERT INTO `REGION` VALUES ('1120', '230833', '抚远县', '101', '0', '0', 'Fuyuan Xian', 'FUY');
INSERT INTO `REGION` VALUES ('1121', '230881', '同江市', '101', '0', '0', 'Tongjiang Shi', 'TOJ');
INSERT INTO `REGION` VALUES ('1122', '230882', '富锦市', '101', '0', '0', 'Fujin Shi', 'FUJ');
INSERT INTO `REGION` VALUES ('1123', '230901', '市辖区', '102', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1124', '230902', '新兴区', '102', '0', '0', 'Xinxing Qu', 'XXQ');
INSERT INTO `REGION` VALUES ('1125', '230903', '桃山区', '102', '0', '0', 'Taoshan Qu', 'TSC');
INSERT INTO `REGION` VALUES ('1126', '230904', '茄子河区', '102', '0', '0', 'Qiezihe Qu', 'QZI');
INSERT INTO `REGION` VALUES ('1127', '230921', '勃利县', '102', '0', '0', 'Boli Xian', 'BLI');
INSERT INTO `REGION` VALUES ('1128', '231001', '市辖区', '103', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1129', '231002', '东安区', '103', '0', '0', 'Dong,an Qu', 'DGA');
INSERT INTO `REGION` VALUES ('1130', '231003', '阳明区', '103', '0', '0', 'Yangming Qu', 'YMQ');
INSERT INTO `REGION` VALUES ('1131', '231004', '爱民区', '103', '0', '0', 'Aimin Qu', 'AMQ');
INSERT INTO `REGION` VALUES ('1132', '231005', '西安区', '103', '0', '0', 'Xi,an Qu', 'XAQ');
INSERT INTO `REGION` VALUES ('1133', '231024', '东宁县', '103', '0', '0', 'Dongning Xian', 'DON');
INSERT INTO `REGION` VALUES ('1134', '231025', '林口县', '103', '0', '0', 'Linkou Xian', 'LKO');
INSERT INTO `REGION` VALUES ('1135', '231081', '绥芬河市', '103', '0', '0', 'Suifenhe Shi', 'SFE');
INSERT INTO `REGION` VALUES ('1136', '231083', '海林市', '103', '0', '0', 'Hailin Shi', 'HLS');
INSERT INTO `REGION` VALUES ('1137', '231084', '宁安市', '103', '0', '0', 'Ning,an Shi', 'NAI');
INSERT INTO `REGION` VALUES ('1138', '231085', '穆棱市', '103', '0', '0', 'Muling Shi', 'MLG');
INSERT INTO `REGION` VALUES ('1139', '231101', '市辖区', '104', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1140', '231102', '爱辉区', '104', '0', '0', 'Aihui Qu', 'AHQ');
INSERT INTO `REGION` VALUES ('1141', '231121', '嫩江县', '104', '0', '0', 'Nenjiang Xian', 'NJH');
INSERT INTO `REGION` VALUES ('1142', '231123', '逊克县', '104', '0', '0', 'Xunke Xian', 'XUK');
INSERT INTO `REGION` VALUES ('1143', '231124', '孙吴县', '104', '0', '0', 'Sunwu Xian', 'SUW');
INSERT INTO `REGION` VALUES ('1144', '231181', '北安市', '104', '0', '0', 'Bei,an Shi', 'BAS');
INSERT INTO `REGION` VALUES ('1145', '231182', '五大连池市', '104', '0', '0', 'Wudalianchi Shi', 'WDL');
INSERT INTO `REGION` VALUES ('1146', '231201', '市辖区', '105', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1147', '231202', '北林区', '105', '0', '0', 'Beilin Qu', '2');
INSERT INTO `REGION` VALUES ('1148', '231221', '望奎县', '105', '0', '0', 'Wangkui Xian', '2');
INSERT INTO `REGION` VALUES ('1149', '231222', '兰西县', '105', '0', '0', 'Lanxi Xian', '2');
INSERT INTO `REGION` VALUES ('1150', '231223', '青冈县', '105', '0', '0', 'Qinggang Xian', '2');
INSERT INTO `REGION` VALUES ('1151', '231224', '庆安县', '105', '0', '0', 'Qing,an Xian', '2');
INSERT INTO `REGION` VALUES ('1152', '231225', '明水县', '105', '0', '0', 'Mingshui Xian', '2');
INSERT INTO `REGION` VALUES ('1153', '231226', '绥棱县', '105', '0', '0', 'Suileng Xian', '2');
INSERT INTO `REGION` VALUES ('1154', '231281', '安达市', '105', '0', '0', 'Anda Shi', '2');
INSERT INTO `REGION` VALUES ('1155', '231282', '肇东市', '105', '0', '0', 'Zhaodong Shi', '2');
INSERT INTO `REGION` VALUES ('1156', '231283', '海伦市', '105', '0', '0', 'Hailun Shi', '2');
INSERT INTO `REGION` VALUES ('1157', '232721', '呼玛县', '106', '0', '0', 'Huma Xian', 'HUM');
INSERT INTO `REGION` VALUES ('1158', '232722', '塔河县', '106', '0', '0', 'Tahe Xian', 'TAH');
INSERT INTO `REGION` VALUES ('1159', '232723', '漠河县', '106', '0', '0', 'Mohe Xian', 'MOH');
INSERT INTO `REGION` VALUES ('1160', '310101', '黄浦区', '107', '0', '0', 'Huangpu Qu', 'HGP');
INSERT INTO `REGION` VALUES ('1161', '310103', '卢湾区', '107', '0', '0', 'Luwan Qu', 'LWN');
INSERT INTO `REGION` VALUES ('1162', '310104', '徐汇区', '107', '0', '0', 'Xuhui Qu', 'XHI');
INSERT INTO `REGION` VALUES ('1163', '310105', '长宁区', '107', '0', '0', 'Changning Qu', 'CNQ');
INSERT INTO `REGION` VALUES ('1164', '310106', '静安区', '107', '0', '0', 'Jing,an Qu', 'JAQ');
INSERT INTO `REGION` VALUES ('1165', '310107', '普陀区', '107', '0', '0', 'Putuo Qu', 'PTQ');
INSERT INTO `REGION` VALUES ('1166', '310108', '闸北区', '107', '0', '0', 'Zhabei Qu', 'ZBE');
INSERT INTO `REGION` VALUES ('1167', '310109', '虹口区', '107', '0', '0', 'Hongkou Qu', 'HKQ');
INSERT INTO `REGION` VALUES ('1168', '310110', '杨浦区', '107', '0', '0', 'Yangpu Qu', 'YPU');
INSERT INTO `REGION` VALUES ('1169', '310112', '闵行区', '107', '0', '0', 'Minhang Qu', 'MHQ');
INSERT INTO `REGION` VALUES ('1170', '310113', '宝山区', '107', '0', '0', 'Baoshan Qu', 'BAO');
INSERT INTO `REGION` VALUES ('1171', '310114', '嘉定区', '107', '0', '0', 'Jiading Qu', 'JDG');
INSERT INTO `REGION` VALUES ('1172', '310115', '浦东新区', '107', '0', '0', 'Pudong Xinqu', 'PDX');
INSERT INTO `REGION` VALUES ('1173', '310116', '金山区', '107', '0', '0', 'Jinshan Qu', 'JSH');
INSERT INTO `REGION` VALUES ('1174', '310117', '松江区', '107', '0', '0', 'Songjiang Qu', 'SOJ');
INSERT INTO `REGION` VALUES ('1175', '310118', '青浦区', '107', '0', '0', 'Qingpu  Qu', 'QPU');
INSERT INTO `REGION` VALUES ('1177', '310120', '奉贤区', '107', '0', '0', 'Fengxian Qu', 'FXI');
INSERT INTO `REGION` VALUES ('1178', '310230', '崇明县', '108', '0', '0', 'Chongming Xian', 'CMI');
INSERT INTO `REGION` VALUES ('1179', '320101', '市辖区', '109', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1180', '320102', '玄武区', '109', '0', '0', 'Xuanwu Qu', 'XWU');
INSERT INTO `REGION` VALUES ('1181', '320103', '白下区', '109', '0', '0', 'Baixia Qu', 'BXQ');
INSERT INTO `REGION` VALUES ('1182', '320104', '秦淮区', '109', '0', '0', 'Qinhuai Qu', 'QHU');
INSERT INTO `REGION` VALUES ('1183', '320105', '建邺区', '109', '0', '0', 'Jianye Qu', 'JYQ');
INSERT INTO `REGION` VALUES ('1184', '320106', '鼓楼区', '109', '0', '0', 'Gulou Qu', 'GLQ');
INSERT INTO `REGION` VALUES ('1185', '320107', '下关区', '109', '0', '0', 'Xiaguan Qu', 'XGQ');
INSERT INTO `REGION` VALUES ('1186', '320111', '浦口区', '109', '0', '0', 'Pukou Qu', 'PKO');
INSERT INTO `REGION` VALUES ('1187', '320113', '栖霞区', '109', '0', '0', 'Qixia Qu', 'QAX');
INSERT INTO `REGION` VALUES ('1188', '320114', '雨花台区', '109', '0', '0', 'Yuhuatai Qu', 'YHT');
INSERT INTO `REGION` VALUES ('1189', '320115', '江宁区', '109', '0', '0', 'Jiangning Qu', '2');
INSERT INTO `REGION` VALUES ('1190', '320116', '六合区', '109', '0', '0', 'Liuhe Qu', '2');
INSERT INTO `REGION` VALUES ('1191', '320124', '溧水县', '109', '0', '0', 'Lishui Xian', 'LIS');
INSERT INTO `REGION` VALUES ('1192', '320125', '高淳县', '109', '0', '0', 'Gaochun Xian', 'GCN');
INSERT INTO `REGION` VALUES ('1193', '320201', '市辖区', '110', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1194', '320202', '崇安区', '110', '0', '0', 'Chong,an Qu', 'CGA');
INSERT INTO `REGION` VALUES ('1195', '320203', '南长区', '110', '0', '0', 'Nanchang Qu', 'NCG');
INSERT INTO `REGION` VALUES ('1196', '320204', '北塘区', '110', '0', '0', 'Beitang Qu', 'BTQ');
INSERT INTO `REGION` VALUES ('1197', '320205', '锡山区', '110', '0', '0', 'Xishan Qu', '2');
INSERT INTO `REGION` VALUES ('1198', '320206', '惠山区', '110', '0', '0', 'Huishan Qu', '2');
INSERT INTO `REGION` VALUES ('1199', '320211', '滨湖区', '110', '0', '0', 'Binhu Qu', '2');
INSERT INTO `REGION` VALUES ('1200', '320281', '江阴市', '110', '0', '0', 'Jiangyin Shi', 'JIA');
INSERT INTO `REGION` VALUES ('1201', '320282', '宜兴市', '110', '0', '0', 'Yixing Shi', 'YIX');
INSERT INTO `REGION` VALUES ('1202', '320301', '市辖区', '111', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1203', '320302', '鼓楼区', '111', '0', '0', 'Gulou Qu', 'GLU');
INSERT INTO `REGION` VALUES ('1204', '320303', '云龙区', '111', '0', '0', 'Yunlong Qu', 'YLF');
INSERT INTO `REGION` VALUES ('1206', '320305', '贾汪区', '111', '0', '0', 'Jiawang Qu', 'JWQ');
INSERT INTO `REGION` VALUES ('1207', '320311', '泉山区', '111', '0', '0', 'Quanshan Qu', 'QSX');
INSERT INTO `REGION` VALUES ('1208', '320321', '丰县', '111', '0', '0', 'Feng Xian', 'FXN');
INSERT INTO `REGION` VALUES ('1209', '320322', '沛县', '111', '0', '0', 'Pei Xian', 'PEI');
INSERT INTO `REGION` VALUES ('1210', '320312', '铜山区', '111', '0', '0', 'Tongshan Xian', '2');
INSERT INTO `REGION` VALUES ('1211', '320324', '睢宁县', '111', '0', '0', 'Suining Xian', 'SNI');
INSERT INTO `REGION` VALUES ('1212', '320381', '新沂市', '111', '0', '0', 'Xinyi Shi', 'XYW');
INSERT INTO `REGION` VALUES ('1213', '320382', '邳州市', '111', '0', '0', 'Pizhou Shi', 'PZO');
INSERT INTO `REGION` VALUES ('1214', '320401', '市辖区', '112', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1215', '320402', '天宁区', '112', '0', '0', 'Tianning Qu', 'TNQ');
INSERT INTO `REGION` VALUES ('1216', '320404', '钟楼区', '112', '0', '0', 'Zhonglou Qu', 'ZLQ');
INSERT INTO `REGION` VALUES ('1217', '320405', '戚墅堰区', '112', '0', '0', 'Qishuyan Qu', 'QSY');
INSERT INTO `REGION` VALUES ('1218', '320411', '新北区', '112', '0', '0', 'Xinbei Qu', '2');
INSERT INTO `REGION` VALUES ('1219', '320412', '武进区', '112', '0', '0', 'Wujin Qu', '2');
INSERT INTO `REGION` VALUES ('1220', '320481', '溧阳市', '112', '0', '0', 'Liyang Shi', 'LYR');
INSERT INTO `REGION` VALUES ('1221', '320482', '金坛市', '112', '0', '0', 'Jintan Shi', 'JTS');
INSERT INTO `REGION` VALUES ('1222', '320501', '市辖区', '113', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1223', '320502', '沧浪区', '113', '0', '0', 'Canglang Qu', 'CLQ');
INSERT INTO `REGION` VALUES ('1224', '320503', '平江区', '113', '0', '0', 'Pingjiang Qu', 'PJQ');
INSERT INTO `REGION` VALUES ('1225', '320504', '金阊区', '113', '0', '0', 'Jinchang Qu', 'JCA');
INSERT INTO `REGION` VALUES ('1226', '320505', '虎丘区', '113', '0', '0', 'Huqiu Qu', '2');
INSERT INTO `REGION` VALUES ('1227', '320506', '吴中区', '113', '0', '0', 'Wuzhong Qu', '2');
INSERT INTO `REGION` VALUES ('1228', '320507', '相城区', '113', '0', '0', 'Xiangcheng Qu', '2');
INSERT INTO `REGION` VALUES ('1229', '320581', '常熟市', '113', '0', '0', 'Changshu Shi', 'CGS');
INSERT INTO `REGION` VALUES ('1230', '320582', '张家港市', '113', '0', '0', 'Zhangjiagang Shi ', 'ZJG');
INSERT INTO `REGION` VALUES ('1231', '320583', '昆山市', '113', '0', '0', 'Kunshan Shi', 'KUS');
INSERT INTO `REGION` VALUES ('1232', '320584', '吴江市', '113', '0', '0', 'Wujiang Shi', 'WUJ');
INSERT INTO `REGION` VALUES ('1233', '320585', '太仓市', '113', '0', '0', 'Taicang Shi', 'TAC');
INSERT INTO `REGION` VALUES ('1234', '320601', '市辖区', '114', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1235', '320602', '崇川区', '114', '0', '0', 'Chongchuan Qu', 'CCQ');
INSERT INTO `REGION` VALUES ('1236', '320611', '港闸区', '114', '0', '0', 'Gangzha Qu', 'GZQ');
INSERT INTO `REGION` VALUES ('1237', '320621', '海安县', '114', '0', '0', 'Hai,an Xian', 'HIA');
INSERT INTO `REGION` VALUES ('1238', '320623', '如东县', '114', '0', '0', 'Rudong Xian', 'RDG');
INSERT INTO `REGION` VALUES ('1239', '320681', '启东市', '114', '0', '0', 'QIDong Shi', 'QID');
INSERT INTO `REGION` VALUES ('1240', '320682', '如皋市', '114', '0', '0', 'Rugao Shi', 'RGO');
INSERT INTO `REGION` VALUES ('1241', '320612', '通州区', '114', '0', '0', 'Tongzhou Shi', '2');
INSERT INTO `REGION` VALUES ('1242', '320684', '海门市', '114', '0', '0', 'Haimen Shi', 'HME');
INSERT INTO `REGION` VALUES ('1243', '320701', '市辖区', '115', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1244', '320703', '连云区', '115', '0', '0', 'Lianyun Qu', 'LYB');
INSERT INTO `REGION` VALUES ('1245', '320705', '新浦区', '115', '0', '0', 'Xinpu Qu', 'XPQ');
INSERT INTO `REGION` VALUES ('1246', '320706', '海州区', '115', '0', '0', 'Haizhou Qu', 'HIZ');
INSERT INTO `REGION` VALUES ('1247', '320721', '赣榆县', '115', '0', '0', 'Ganyu Xian', 'GYU');
INSERT INTO `REGION` VALUES ('1248', '320722', '东海县', '115', '0', '0', 'Donghai Xian', 'DHX');
INSERT INTO `REGION` VALUES ('1249', '320723', '灌云县', '115', '0', '0', 'Guanyun Xian', 'GYS');
INSERT INTO `REGION` VALUES ('1250', '320724', '灌南县', '115', '0', '0', 'Guannan Xian', 'GUN');
INSERT INTO `REGION` VALUES ('1251', '320801', '市辖区', '116', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1252', '320802', '清河区', '116', '0', '0', 'Qinghe Qu', 'QHH');
INSERT INTO `REGION` VALUES ('1253', '320803', '楚州区', '116', '0', '0', 'Chuzhou Qu', '2');
INSERT INTO `REGION` VALUES ('1254', '320804', '淮阴区', '116', '0', '0', 'Huaiyin Qu', '2');
INSERT INTO `REGION` VALUES ('1255', '320811', '清浦区', '116', '0', '0', 'Qingpu Qu', 'QPQ');
INSERT INTO `REGION` VALUES ('1256', '320826', '涟水县', '116', '0', '0', 'Lianshui Xian', 'LSI');
INSERT INTO `REGION` VALUES ('1257', '320829', '洪泽县', '116', '0', '0', 'Hongze Xian', 'HGZ');
INSERT INTO `REGION` VALUES ('1258', '320830', '盱眙县', '116', '0', '0', 'Xuyi Xian', 'XUY');
INSERT INTO `REGION` VALUES ('1259', '320831', '金湖县', '116', '0', '0', 'Jinhu Xian', 'JHU');
INSERT INTO `REGION` VALUES ('1260', '320901', '市辖区', '117', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1261', '320902', '亭湖区', '117', '0', '0', 'Tinghu Qu', '2');
INSERT INTO `REGION` VALUES ('1262', '320903', '盐都区', '117', '0', '0', 'Yandu Qu', '2');
INSERT INTO `REGION` VALUES ('1263', '320921', '响水县', '117', '0', '0', 'Xiangshui Xian', 'XSH');
INSERT INTO `REGION` VALUES ('1264', '320922', '滨海县', '117', '0', '0', 'Binhai Xian', 'BHI');
INSERT INTO `REGION` VALUES ('1265', '320923', '阜宁县', '117', '0', '0', 'Funing Xian', 'FNG');
INSERT INTO `REGION` VALUES ('1266', '320924', '射阳县', '117', '0', '0', 'Sheyang Xian', 'SEY');
INSERT INTO `REGION` VALUES ('1267', '320925', '建湖县', '117', '0', '0', 'Jianhu Xian', 'JIH');
INSERT INTO `REGION` VALUES ('1268', '320981', '东台市', '117', '0', '0', 'Dongtai Shi', 'DTS');
INSERT INTO `REGION` VALUES ('1269', '320982', '大丰市', '117', '0', '0', 'Dafeng Shi', 'DFS');
INSERT INTO `REGION` VALUES ('1270', '321001', '市辖区', '118', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1271', '321002', '广陵区', '118', '0', '0', 'Guangling Qu', 'GGL');
INSERT INTO `REGION` VALUES ('1272', '321003', '邗江区', '118', '0', '0', 'Hanjiang Qu', '2');
INSERT INTO `REGION` VALUES ('1273', '321011', '维扬区', '118', '0', '0', 'Weiyang Qu', '2');
INSERT INTO `REGION` VALUES ('1274', '321023', '宝应县', '118', '0', '0', 'Baoying Xian ', 'BYI');
INSERT INTO `REGION` VALUES ('1275', '321081', '仪征市', '118', '0', '0', 'Yizheng Shi', 'YZE');
INSERT INTO `REGION` VALUES ('1276', '321084', '高邮市', '118', '0', '0', 'Gaoyou Shi', 'GYO');
INSERT INTO `REGION` VALUES ('1277', '321088', '江都市', '118', '0', '0', 'Jiangdu Shi', 'JDU');
INSERT INTO `REGION` VALUES ('1278', '321101', '市辖区', '119', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1279', '321102', '京口区', '119', '0', '0', 'Jingkou Qu', '2');
INSERT INTO `REGION` VALUES ('1280', '321111', '润州区', '119', '0', '0', 'Runzhou Qu', 'RZQ');
INSERT INTO `REGION` VALUES ('1281', '321112', '丹徒区', '119', '0', '0', 'Dantu Qu', '2');
INSERT INTO `REGION` VALUES ('1282', '321181', '丹阳市', '119', '0', '0', 'Danyang Xian', 'DNY');
INSERT INTO `REGION` VALUES ('1283', '321182', '扬中市', '119', '0', '0', 'Yangzhong Shi', 'YZG');
INSERT INTO `REGION` VALUES ('1284', '321183', '句容市', '119', '0', '0', 'Jurong Shi', 'JRG');
INSERT INTO `REGION` VALUES ('1285', '321201', '市辖区', '120', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1286', '321202', '海陵区', '120', '0', '0', 'Hailing Qu', 'HIL');
INSERT INTO `REGION` VALUES ('1287', '321203', '高港区', '120', '0', '0', 'Gaogang Qu', 'GGQ');
INSERT INTO `REGION` VALUES ('1288', '321281', '兴化市', '120', '0', '0', 'Xinghua Shi', 'XHS');
INSERT INTO `REGION` VALUES ('1289', '321282', '靖江市', '120', '0', '0', 'Jingjiang Shi', 'JGJ');
INSERT INTO `REGION` VALUES ('1290', '321283', '泰兴市', '120', '0', '0', 'Taixing Shi', 'TXG');
INSERT INTO `REGION` VALUES ('1291', '321284', '姜堰市', '120', '0', '0', 'Jiangyan Shi', 'JYS');
INSERT INTO `REGION` VALUES ('1292', '321301', '市辖区', '121', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1293', '321302', '宿城区', '121', '0', '0', 'Sucheng Qu', 'SCE');
INSERT INTO `REGION` VALUES ('1294', '321311', '宿豫区', '121', '0', '0', 'Suyu Qu', '2');
INSERT INTO `REGION` VALUES ('1295', '321322', '沭阳县', '121', '0', '0', 'Shuyang Xian', 'SYD');
INSERT INTO `REGION` VALUES ('1296', '321323', '泗阳县', '121', '0', '0', 'Siyang Xian ', 'SIY');
INSERT INTO `REGION` VALUES ('1297', '321324', '泗洪县', '121', '0', '0', 'Sihong Xian', 'SIH');
INSERT INTO `REGION` VALUES ('1298', '330101', '市辖区', '122', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1299', '330102', '上城区', '122', '0', '0', 'Shangcheng Qu', 'SCQ');
INSERT INTO `REGION` VALUES ('1300', '330103', '下城区', '122', '0', '0', 'Xiacheng Qu', 'XCG');
INSERT INTO `REGION` VALUES ('1301', '330104', '江干区', '122', '0', '0', 'Jianggan Qu', 'JGQ');
INSERT INTO `REGION` VALUES ('1302', '330105', '拱墅区', '122', '0', '0', 'Gongshu Qu', 'GSQ');
INSERT INTO `REGION` VALUES ('1303', '330106', '西湖区', '122', '0', '0', 'Xihu Qu ', 'XHU');
INSERT INTO `REGION` VALUES ('1304', '330108', '滨江区', '122', '0', '0', 'Binjiang Qu', 'BJQ');
INSERT INTO `REGION` VALUES ('1305', '330109', '萧山区', '122', '0', '0', 'Xiaoshan Qu', '2');
INSERT INTO `REGION` VALUES ('1306', '330110', '余杭区', '122', '0', '0', 'Yuhang Qu', '2');
INSERT INTO `REGION` VALUES ('1307', '330122', '桐庐县', '122', '0', '0', 'Tonglu Xian', 'TLU');
INSERT INTO `REGION` VALUES ('1308', '330127', '淳安县', '122', '0', '0', 'Chun,an Xian', 'CAZ');
INSERT INTO `REGION` VALUES ('1309', '330182', '建德市', '122', '0', '0', 'Jiande Shi', 'JDS');
INSERT INTO `REGION` VALUES ('1310', '330183', '富阳市', '122', '0', '0', 'Fuyang Shi', 'FYZ');
INSERT INTO `REGION` VALUES ('1311', '330185', '临安市', '122', '0', '0', 'Lin,an Shi', 'LNA');
INSERT INTO `REGION` VALUES ('1312', '330201', '市辖区', '123', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1313', '330203', '海曙区', '123', '0', '0', 'Haishu Qu', 'HNB');
INSERT INTO `REGION` VALUES ('1314', '330204', '江东区', '123', '0', '0', 'Jiangdong Qu', 'JDO');
INSERT INTO `REGION` VALUES ('1315', '330205', '江北区', '123', '0', '0', 'Jiangbei Qu', 'JBQ');
INSERT INTO `REGION` VALUES ('1316', '330206', '北仑区', '123', '0', '0', 'Beilun Qu', 'BLN');
INSERT INTO `REGION` VALUES ('1317', '330211', '镇海区', '123', '0', '0', 'Zhenhai Qu', 'ZHF');
INSERT INTO `REGION` VALUES ('1318', '330212', '鄞州区', '123', '0', '0', 'Yinzhou Qu', '2');
INSERT INTO `REGION` VALUES ('1319', '330225', '象山县', '123', '0', '0', 'Xiangshan Xian', 'YSZ');
INSERT INTO `REGION` VALUES ('1320', '330226', '宁海县', '123', '0', '0', 'Ninghai Xian', 'NHI');
INSERT INTO `REGION` VALUES ('1321', '330281', '余姚市', '123', '0', '0', 'Yuyao Shi', 'YYO');
INSERT INTO `REGION` VALUES ('1322', '330282', '慈溪市', '123', '0', '0', 'Cixi Shi', 'CXI');
INSERT INTO `REGION` VALUES ('1323', '330283', '奉化市', '123', '0', '0', 'Fenghua Shi', 'FHU');
INSERT INTO `REGION` VALUES ('1324', '330301', '市辖区', '124', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1325', '330302', '鹿城区', '124', '0', '0', 'Lucheng Qu', 'LUW');
INSERT INTO `REGION` VALUES ('1326', '330303', '龙湾区', '124', '0', '0', 'Longwan Qu', 'LWW');
INSERT INTO `REGION` VALUES ('1327', '330304', '瓯海区', '124', '0', '0', 'Ouhai Qu', 'OHQ');
INSERT INTO `REGION` VALUES ('1328', '330322', '洞头县', '124', '0', '0', 'Dongtou Xian', 'DTO');
INSERT INTO `REGION` VALUES ('1329', '330324', '永嘉县', '124', '0', '0', 'Yongjia Xian', 'YJX');
INSERT INTO `REGION` VALUES ('1330', '330326', '平阳县', '124', '0', '0', 'Pingyang Xian', 'PYG');
INSERT INTO `REGION` VALUES ('1331', '330327', '苍南县', '124', '0', '0', 'Cangnan Xian', 'CAN');
INSERT INTO `REGION` VALUES ('1332', '330328', '文成县', '124', '0', '0', 'Wencheng Xian', 'WCZ');
INSERT INTO `REGION` VALUES ('1333', '330329', '泰顺县', '124', '0', '0', 'Taishun Xian', 'TSZ');
INSERT INTO `REGION` VALUES ('1334', '330381', '瑞安市', '124', '0', '0', 'Rui,an Xian', 'RAS');
INSERT INTO `REGION` VALUES ('1335', '330382', '乐清市', '124', '0', '0', 'Yueqing Shi', 'YQZ');
INSERT INTO `REGION` VALUES ('1336', '330401', '市辖区', '125', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1338', '330411', '秀洲区', '125', '0', '0', 'Xiuzhou Qu', '2');
INSERT INTO `REGION` VALUES ('1339', '330421', '嘉善县', '125', '0', '0', 'Jiashan Xian', 'JSK');
INSERT INTO `REGION` VALUES ('1340', '330424', '海盐县', '125', '0', '0', 'Haiyan Xian', 'HYN');
INSERT INTO `REGION` VALUES ('1341', '330481', '海宁市', '125', '0', '0', 'Haining Shi', 'HNG');
INSERT INTO `REGION` VALUES ('1342', '330482', '平湖市', '125', '0', '0', 'Pinghu Shi', 'PHU');
INSERT INTO `REGION` VALUES ('1343', '330483', '桐乡市', '125', '0', '0', 'Tongxiang Shi', 'TXZ');
INSERT INTO `REGION` VALUES ('1344', '330501', '市辖区', '126', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1345', '330502', '吴兴区', '126', '0', '0', 'Wuxing Qu', '2');
INSERT INTO `REGION` VALUES ('1346', '330503', '南浔区', '126', '0', '0', 'Nanxun Qu', '2');
INSERT INTO `REGION` VALUES ('1347', '330521', '德清县', '126', '0', '0', 'Deqing Xian', 'DQX');
INSERT INTO `REGION` VALUES ('1348', '330522', '长兴县', '126', '0', '0', 'Changxing Xian', 'CXG');
INSERT INTO `REGION` VALUES ('1349', '330523', '安吉县', '126', '0', '0', 'Anji Xian', 'AJI');
INSERT INTO `REGION` VALUES ('1350', '330601', '市辖区', '127', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1351', '330602', '越城区', '127', '0', '0', 'Yuecheng Qu', 'YSX');
INSERT INTO `REGION` VALUES ('1352', '330621', '绍兴县', '127', '0', '0', 'Shaoxing Xian', 'SXZ');
INSERT INTO `REGION` VALUES ('1353', '330624', '新昌县', '127', '0', '0', 'Xinchang Xian', 'XCX');
INSERT INTO `REGION` VALUES ('1354', '330681', '诸暨市', '127', '0', '0', 'Zhuji Shi', 'ZHJ');
INSERT INTO `REGION` VALUES ('1355', '330682', '上虞市', '127', '0', '0', 'Shangyu Shi', 'SYZ');
INSERT INTO `REGION` VALUES ('1356', '330683', '嵊州市', '127', '0', '0', 'Shengzhou Shi', 'SGZ');
INSERT INTO `REGION` VALUES ('1357', '330701', '市辖区', '128', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1358', '330702', '婺城区', '128', '0', '0', 'Wucheng Qu', 'WCF');
INSERT INTO `REGION` VALUES ('1359', '330703', '金东区', '128', '0', '0', 'Jindong Qu', '2');
INSERT INTO `REGION` VALUES ('1360', '330723', '武义县', '128', '0', '0', 'Wuyi Xian', 'WYX');
INSERT INTO `REGION` VALUES ('1361', '330726', '浦江县', '128', '0', '0', 'Pujiang Xian ', 'PJG');
INSERT INTO `REGION` VALUES ('1362', '330727', '磐安县', '128', '0', '0', 'Pan,an Xian', 'PAX');
INSERT INTO `REGION` VALUES ('1363', '330781', '兰溪市', '128', '0', '0', 'Lanxi Shi', 'LXZ');
INSERT INTO `REGION` VALUES ('1364', '330782', '义乌市', '128', '0', '0', 'Yiwu Shi', 'YWS');
INSERT INTO `REGION` VALUES ('1365', '330783', '东阳市', '128', '0', '0', 'Dongyang Shi', 'DGY');
INSERT INTO `REGION` VALUES ('1366', '330784', '永康市', '128', '0', '0', 'Yongkang Shi', 'YKG');
INSERT INTO `REGION` VALUES ('1367', '330801', '市辖区', '129', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1368', '330802', '柯城区', '129', '0', '0', 'Kecheng Qu', 'KEC');
INSERT INTO `REGION` VALUES ('1369', '330803', '衢江区', '129', '0', '0', 'Qujiang Qu', '2');
INSERT INTO `REGION` VALUES ('1370', '330822', '常山县', '129', '0', '0', 'Changshan Xian', 'CSN');
INSERT INTO `REGION` VALUES ('1371', '330824', '开化县', '129', '0', '0', 'Kaihua Xian', 'KHU');
INSERT INTO `REGION` VALUES ('1372', '330825', '龙游县', '129', '0', '0', 'Longyou Xian ', 'LGY');
INSERT INTO `REGION` VALUES ('1373', '330881', '江山市', '129', '0', '0', 'Jiangshan Shi', 'JIS');
INSERT INTO `REGION` VALUES ('1374', '330901', '市辖区', '130', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1375', '330902', '定海区', '130', '0', '0', 'Dinghai Qu', 'DHQ');
INSERT INTO `REGION` VALUES ('1376', '330903', '普陀区', '130', '0', '0', 'Putuo Qu', 'PTO');
INSERT INTO `REGION` VALUES ('1377', '330921', '岱山县', '130', '0', '0', 'Daishan Xian', 'DSH');
INSERT INTO `REGION` VALUES ('1378', '330922', '嵊泗县', '130', '0', '0', 'Shengsi Xian', 'SSZ');
INSERT INTO `REGION` VALUES ('1379', '331001', '市辖区', '131', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1380', '331002', '椒江区', '131', '0', '0', 'Jiaojiang Qu', 'JJT');
INSERT INTO `REGION` VALUES ('1381', '331003', '黄岩区', '131', '0', '0', 'Huangyan Qu', 'HYT');
INSERT INTO `REGION` VALUES ('1382', '331004', '路桥区', '131', '0', '0', 'Luqiao Qu', 'LQT');
INSERT INTO `REGION` VALUES ('1383', '331021', '玉环县', '131', '0', '0', 'Yuhuan Xian', 'YHN');
INSERT INTO `REGION` VALUES ('1384', '331022', '三门县', '131', '0', '0', 'Sanmen Xian', 'SMN');
INSERT INTO `REGION` VALUES ('1385', '331023', '天台县', '131', '0', '0', 'Tiantai Xian', 'TTA');
INSERT INTO `REGION` VALUES ('1386', '331024', '仙居县', '131', '0', '0', 'Xianju Xian', 'XJU');
INSERT INTO `REGION` VALUES ('1387', '331081', '温岭市', '131', '0', '0', 'Wenling Shi', 'WLS');
INSERT INTO `REGION` VALUES ('1388', '331082', '临海市', '131', '0', '0', 'Linhai Shi', 'LHI');
INSERT INTO `REGION` VALUES ('1389', '331101', '市辖区', '132', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1390', '331102', '莲都区', '132', '0', '0', 'Liandu Qu', '2');
INSERT INTO `REGION` VALUES ('1391', '331121', '青田县', '132', '0', '0', 'Qingtian Xian', '2');
INSERT INTO `REGION` VALUES ('1392', '331122', '缙云县', '132', '0', '0', 'Jinyun Xian', '2');
INSERT INTO `REGION` VALUES ('1393', '331123', '遂昌县', '132', '0', '0', 'Suichang Xian', '2');
INSERT INTO `REGION` VALUES ('1394', '331124', '松阳县', '132', '0', '0', 'Songyang Xian', '2');
INSERT INTO `REGION` VALUES ('1395', '331125', '云和县', '132', '0', '0', 'Yunhe Xian', '2');
INSERT INTO `REGION` VALUES ('1396', '331126', '庆元县', '132', '0', '0', 'Qingyuan Xian', '2');
INSERT INTO `REGION` VALUES ('1397', '331127', '景宁畲族自治县', '132', '0', '0', 'Jingning Shezu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('1398', '331181', '龙泉市', '132', '0', '0', 'Longquan Shi', '2');
INSERT INTO `REGION` VALUES ('1399', '340101', '市辖区', '133', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1400', '340102', '瑶海区', '133', '0', '0', 'Yaohai Qu', '2');
INSERT INTO `REGION` VALUES ('1401', '340103', '庐阳区', '133', '0', '0', 'Luyang Qu', '2');
INSERT INTO `REGION` VALUES ('1402', '340104', '蜀山区', '133', '0', '0', 'Shushan Qu', '2');
INSERT INTO `REGION` VALUES ('1403', '340111', '包河区', '133', '0', '0', 'Baohe Qu', '2');
INSERT INTO `REGION` VALUES ('1404', '340121', '长丰县', '133', '0', '0', 'Changfeng Xian', 'CFG');
INSERT INTO `REGION` VALUES ('1405', '340122', '肥东县', '133', '0', '0', 'FeIDong Xian', 'FDO');
INSERT INTO `REGION` VALUES ('1406', '340123', '肥西县', '133', '0', '0', 'Feixi Xian', 'FIX');
INSERT INTO `REGION` VALUES ('1407', '340201', '市辖区', '1412', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1408', '340202', '镜湖区', '1412', '0', '0', 'Jinghu Qu', 'JHW');
INSERT INTO `REGION` VALUES ('1409', '340208', '三山区', '1412', '0', '0', 'Matang Qu', '2');
INSERT INTO `REGION` VALUES ('1410', '340203', '弋江区', '1412', '0', '0', 'Xinwu Qu', '2');
INSERT INTO `REGION` VALUES ('1411', '340207', '鸠江区', '1412', '0', '0', 'Jiujiang Qu', 'JJW');
INSERT INTO `REGION` VALUES ('1412', '340200', '芜湖市', '134', '0', '0', 'Wuhu Shi', 'WHI');
INSERT INTO `REGION` VALUES ('1413', '340222', '繁昌县', '1412', '0', '0', 'Fanchang Xian', 'FCH');
INSERT INTO `REGION` VALUES ('1414', '340223', '南陵县', '1412', '0', '0', 'Nanling Xian', 'NLX');
INSERT INTO `REGION` VALUES ('1415', '340301', '市辖区', '135', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1416', '340302', '龙子湖区', '135', '0', '0', 'Longzihu Qu', '2');
INSERT INTO `REGION` VALUES ('1417', '340303', '蚌山区', '135', '0', '0', 'Bangshan Qu', '2');
INSERT INTO `REGION` VALUES ('1418', '340304', '禹会区', '135', '0', '0', 'Yuhui Qu', '2');
INSERT INTO `REGION` VALUES ('1419', '340311', '淮上区', '135', '0', '0', 'Huaishang Qu', '2');
INSERT INTO `REGION` VALUES ('1420', '340321', '怀远县', '135', '0', '0', 'Huaiyuan Qu', 'HYW');
INSERT INTO `REGION` VALUES ('1421', '340322', '五河县', '135', '0', '0', 'Wuhe Xian', 'WHE');
INSERT INTO `REGION` VALUES ('1422', '340323', '固镇县', '135', '0', '0', 'Guzhen Xian', 'GZX');
INSERT INTO `REGION` VALUES ('1423', '340401', '市辖区', '136', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1424', '340402', '大通区', '136', '0', '0', 'Datong Qu', 'DTQ');
INSERT INTO `REGION` VALUES ('1425', '340403', '田家庵区', '136', '0', '0', 'Tianjia,an Qu', 'TJA');
INSERT INTO `REGION` VALUES ('1426', '340404', '谢家集区', '136', '0', '0', 'Xiejiaji Qu', 'XJJ');
INSERT INTO `REGION` VALUES ('1427', '340405', '八公山区', '136', '0', '0', 'Bagongshan Qu', 'BGS');
INSERT INTO `REGION` VALUES ('1428', '340406', '潘集区', '136', '0', '0', 'Panji Qu', 'PJI');
INSERT INTO `REGION` VALUES ('1429', '340421', '凤台县', '136', '0', '0', 'Fengtai Xian', '2');
INSERT INTO `REGION` VALUES ('1430', '340501', '市辖区', '137', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1431', '340502', '金家庄区', '137', '0', '0', 'Jinjiazhuang Qu', 'JJZ');
INSERT INTO `REGION` VALUES ('1432', '340503', '花山区', '137', '0', '0', 'Huashan Qu', 'HSM');
INSERT INTO `REGION` VALUES ('1433', '340504', '雨山区', '137', '0', '0', 'Yushan Qu', 'YSQ');
INSERT INTO `REGION` VALUES ('1434', '340521', '当涂县', '137', '0', '0', 'Dangtu Xian', 'DTU');
INSERT INTO `REGION` VALUES ('1435', '340601', '市辖区', '138', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1436', '340602', '杜集区', '138', '0', '0', 'Duji Qu', 'DJQ');
INSERT INTO `REGION` VALUES ('1437', '340603', '相山区', '138', '0', '0', 'Xiangshan Qu', 'XSA');
INSERT INTO `REGION` VALUES ('1438', '340604', '烈山区', '138', '0', '0', 'Lieshan Qu', 'LHB');
INSERT INTO `REGION` VALUES ('1439', '340621', '濉溪县', '138', '0', '0', 'Suixi Xian', 'SXW');
INSERT INTO `REGION` VALUES ('1440', '340701', '市辖区', '139', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1441', '340702', '铜官山区', '139', '0', '0', 'Tongguanshan Qu', 'TGQ');
INSERT INTO `REGION` VALUES ('1442', '340703', '狮子山区', '139', '0', '0', 'Shizishan Qu', 'SZN');
INSERT INTO `REGION` VALUES ('1443', '340711', '郊区', '139', '0', '0', 'Jiaoqu', 'JTL');
INSERT INTO `REGION` VALUES ('1444', '340721', '铜陵县', '139', '0', '0', 'Tongling Xian', 'TLX');
INSERT INTO `REGION` VALUES ('1445', '340801', '市辖区', '140', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1446', '340802', '迎江区', '140', '0', '0', 'Yingjiang Qu', 'YJQ');
INSERT INTO `REGION` VALUES ('1447', '340803', '大观区', '140', '0', '0', 'Daguan Qu', 'DGQ');
INSERT INTO `REGION` VALUES ('1448', '340811', '宜秀区', '140', '0', '0', 'Yixiu Qu', '2');
INSERT INTO `REGION` VALUES ('1449', '340822', '怀宁县', '140', '0', '0', 'Huaining Xian', 'HNW');
INSERT INTO `REGION` VALUES ('1450', '340823', '枞阳县', '140', '0', '0', 'Zongyang Xian', 'ZYW');
INSERT INTO `REGION` VALUES ('1451', '340824', '潜山县', '140', '0', '0', 'Qianshan Xian', 'QSW');
INSERT INTO `REGION` VALUES ('1452', '340825', '太湖县', '140', '0', '0', 'Taihu Xian', 'THU');
INSERT INTO `REGION` VALUES ('1453', '340826', '宿松县', '140', '0', '0', 'Susong Xian', 'SUS');
INSERT INTO `REGION` VALUES ('1454', '340827', '望江县', '140', '0', '0', 'Wangjiang Xian', 'WJX');
INSERT INTO `REGION` VALUES ('1455', '340828', '岳西县', '140', '0', '0', 'Yuexi Xian', 'YXW');
INSERT INTO `REGION` VALUES ('1456', '340881', '桐城市', '140', '0', '0', 'Tongcheng Shi', 'TCW');
INSERT INTO `REGION` VALUES ('1457', '341001', '市辖区', '141', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1458', '341002', '屯溪区', '141', '0', '0', 'Tunxi Qu', 'TXN');
INSERT INTO `REGION` VALUES ('1459', '341003', '黄山区', '141', '0', '0', 'Huangshan Qu', 'HSK');
INSERT INTO `REGION` VALUES ('1460', '341004', '徽州区', '141', '0', '0', 'Huizhou Qu', 'HZQ');
INSERT INTO `REGION` VALUES ('1461', '341021', '歙县', '141', '0', '0', 'She Xian', 'SEX');
INSERT INTO `REGION` VALUES ('1462', '341022', '休宁县', '141', '0', '0', 'Xiuning Xian', 'XUN');
INSERT INTO `REGION` VALUES ('1463', '341023', '黟县', '141', '0', '0', 'Yi Xian', 'YIW');
INSERT INTO `REGION` VALUES ('1464', '341024', '祁门县', '141', '0', '0', 'Qimen Xian', 'QMN');
INSERT INTO `REGION` VALUES ('1465', '341101', '市辖区', '142', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1466', '341102', '琅琊区', '142', '0', '0', 'Langya Qu', 'LYU');
INSERT INTO `REGION` VALUES ('1467', '341103', '南谯区', '142', '0', '0', 'Nanqiao Qu', 'NQQ');
INSERT INTO `REGION` VALUES ('1468', '341122', '来安县', '142', '0', '0', 'Lai,an Xian', 'LAX');
INSERT INTO `REGION` VALUES ('1469', '341124', '全椒县', '142', '0', '0', 'Quanjiao Xian', 'QJO');
INSERT INTO `REGION` VALUES ('1470', '341125', '定远县', '142', '0', '0', 'Dingyuan Xian', 'DYW');
INSERT INTO `REGION` VALUES ('1471', '341126', '凤阳县', '142', '0', '0', 'Fengyang Xian', 'FYG');
INSERT INTO `REGION` VALUES ('1472', '341181', '天长市', '142', '0', '0', 'Tianchang Shi', 'TNC');
INSERT INTO `REGION` VALUES ('1473', '341182', '明光市', '142', '0', '0', 'Mingguang Shi', 'MGG');
INSERT INTO `REGION` VALUES ('1474', '341201', '市辖区', '143', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1475', '341202', '颍州区', '143', '0', '0', 'Yingzhou Qu', '2');
INSERT INTO `REGION` VALUES ('1476', '341203', '颍东区', '143', '0', '0', 'Yingdong Qu', '2');
INSERT INTO `REGION` VALUES ('1477', '341204', '颍泉区', '143', '0', '0', 'Yingquan Qu', '2');
INSERT INTO `REGION` VALUES ('1478', '341221', '临泉县', '143', '0', '0', 'Linquan Xian', 'LQN');
INSERT INTO `REGION` VALUES ('1479', '341222', '太和县', '143', '0', '0', 'Taihe Xian', 'TIH');
INSERT INTO `REGION` VALUES ('1480', '341225', '阜南县', '143', '0', '0', 'Funan Xian', 'FNX');
INSERT INTO `REGION` VALUES ('1481', '341226', '颍上县', '143', '0', '0', 'Yingshang Xian', '2');
INSERT INTO `REGION` VALUES ('1482', '341282', '界首市', '143', '0', '0', 'Jieshou Shi', 'JSW');
INSERT INTO `REGION` VALUES ('1483', '341301', '市辖区', '144', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1484', '341302', '埇桥区', '144', '0', '0', 'Yongqiao Qu', '2');
INSERT INTO `REGION` VALUES ('1485', '341321', '砀山县', '144', '0', '0', 'Dangshan Xian', 'DSW');
INSERT INTO `REGION` VALUES ('1486', '341322', '萧县', '144', '0', '0', 'Xiao Xian', 'XIO');
INSERT INTO `REGION` VALUES ('1487', '341323', '灵璧县', '144', '0', '0', 'Lingbi Xian', 'LBI');
INSERT INTO `REGION` VALUES ('1488', '341324', '泗县', '144', '0', '0', 'Si Xian ', 'SIX');
INSERT INTO `REGION` VALUES ('1489', '341401', '市辖区', '145', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1490', '341402', '居巢区', '145', '0', '0', 'Juchao Qu', '2');
INSERT INTO `REGION` VALUES ('1491', '341421', '庐江县', '145', '0', '0', 'Lujiang Xian', '2');
INSERT INTO `REGION` VALUES ('1492', '341422', '无为县', '145', '0', '0', 'Wuwei Xian', '2');
INSERT INTO `REGION` VALUES ('1493', '341423', '含山县', '145', '0', '0', 'Hanshan Xian', '2');
INSERT INTO `REGION` VALUES ('1494', '341424', '和县', '145', '0', '0', 'He Xian ', '2');
INSERT INTO `REGION` VALUES ('1495', '341501', '市辖区', '146', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1496', '341502', '金安区', '146', '0', '0', 'Jinan Qu', '2');
INSERT INTO `REGION` VALUES ('1497', '341503', '裕安区', '146', '0', '0', 'Yuan Qu', '2');
INSERT INTO `REGION` VALUES ('1498', '341521', '寿县', '146', '0', '0', 'Shou Xian', '2');
INSERT INTO `REGION` VALUES ('1499', '341522', '霍邱县', '146', '0', '0', 'Huoqiu Xian', '2');
INSERT INTO `REGION` VALUES ('1500', '341523', '舒城县', '146', '0', '0', 'Shucheng Xian', '2');
INSERT INTO `REGION` VALUES ('1501', '341524', '金寨县', '146', '0', '0', 'Jingzhai Xian', '2');
INSERT INTO `REGION` VALUES ('1502', '341525', '霍山县', '146', '0', '0', 'Huoshan Xian', '2');
INSERT INTO `REGION` VALUES ('1503', '341601', '市辖区', '147', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1504', '341602', '谯城区', '147', '0', '0', 'Qiaocheng Qu', '2');
INSERT INTO `REGION` VALUES ('1505', '341621', '涡阳县', '147', '0', '0', 'Guoyang Xian', '2');
INSERT INTO `REGION` VALUES ('1506', '341622', '蒙城县', '147', '0', '0', 'Mengcheng Xian', '2');
INSERT INTO `REGION` VALUES ('1507', '341623', '利辛县', '147', '0', '0', 'Lixin Xian', '2');
INSERT INTO `REGION` VALUES ('1508', '341701', '市辖区', '148', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1509', '341702', '贵池区', '148', '0', '0', 'Guichi Qu', '2');
INSERT INTO `REGION` VALUES ('1510', '341721', '东至县', '148', '0', '0', 'Dongzhi Xian', '2');
INSERT INTO `REGION` VALUES ('1511', '341722', '石台县', '148', '0', '0', 'Shitai Xian', '2');
INSERT INTO `REGION` VALUES ('1512', '341723', '青阳县', '148', '0', '0', 'Qingyang Xian', '2');
INSERT INTO `REGION` VALUES ('1513', '341801', '市辖区', '149', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1514', '341802', '宣州区', '149', '0', '0', 'Xuanzhou Qu', '2');
INSERT INTO `REGION` VALUES ('1515', '341821', '郎溪县', '149', '0', '0', 'Langxi Xian', '2');
INSERT INTO `REGION` VALUES ('1516', '341822', '广德县', '149', '0', '0', 'Guangde Xian', '2');
INSERT INTO `REGION` VALUES ('1517', '341823', '泾县', '149', '0', '0', 'Jing Xian', '2');
INSERT INTO `REGION` VALUES ('1518', '341824', '绩溪县', '149', '0', '0', 'Jixi Xian', '2');
INSERT INTO `REGION` VALUES ('1519', '341825', '旌德县', '149', '0', '0', 'Jingde Xian', '2');
INSERT INTO `REGION` VALUES ('1520', '341881', '宁国市', '149', '0', '0', 'Ningguo Shi', '2');
INSERT INTO `REGION` VALUES ('1521', '350101', '市辖区', '150', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1522', '350102', '鼓楼区', '150', '0', '0', 'Gulou Qu', 'GLR');
INSERT INTO `REGION` VALUES ('1523', '350103', '台江区', '150', '0', '0', 'Taijiang Qu', 'TJQ');
INSERT INTO `REGION` VALUES ('1524', '350104', '仓山区', '150', '0', '0', 'Cangshan Qu', 'CSQ');
INSERT INTO `REGION` VALUES ('1525', '350105', '马尾区', '150', '0', '0', 'Mawei Qu', 'MWQ');
INSERT INTO `REGION` VALUES ('1526', '350111', '晋安区', '150', '0', '0', 'Jin,an Qu', 'JAF');
INSERT INTO `REGION` VALUES ('1527', '350121', '闽侯县', '150', '0', '0', 'Minhou Qu', 'MHO');
INSERT INTO `REGION` VALUES ('1528', '350122', '连江县', '150', '0', '0', 'Lianjiang Xian', 'LJF');
INSERT INTO `REGION` VALUES ('1529', '350123', '罗源县', '150', '0', '0', 'Luoyuan Xian', 'LOY');
INSERT INTO `REGION` VALUES ('1530', '350124', '闽清县', '150', '0', '0', 'Minqing Xian', 'MQG');
INSERT INTO `REGION` VALUES ('1531', '350125', '永泰县', '150', '0', '0', 'Yongtai Xian', 'YTX');
INSERT INTO `REGION` VALUES ('1532', '350128', '平潭县', '150', '0', '0', 'Pingtan Xian', 'PTN');
INSERT INTO `REGION` VALUES ('1533', '350181', '福清市', '150', '0', '0', 'Fuqing Shi', 'FQS');
INSERT INTO `REGION` VALUES ('1534', '350182', '长乐市', '150', '0', '0', 'Changle Shi', 'CLS');
INSERT INTO `REGION` VALUES ('1535', '350201', '市辖区', '151', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1536', '350203', '思明区', '151', '0', '0', 'Siming Qu', 'SMQ');
INSERT INTO `REGION` VALUES ('1537', '350205', '海沧区', '151', '0', '0', 'Haicang Qu', '2');
INSERT INTO `REGION` VALUES ('1538', '350206', '湖里区', '151', '0', '0', 'Huli Qu', 'HLQ');
INSERT INTO `REGION` VALUES ('1539', '350211', '集美区', '151', '0', '0', 'Jimei Qu', 'JMQ');
INSERT INTO `REGION` VALUES ('1540', '350212', '同安区', '151', '0', '0', 'Tong,an Qu', 'TAQ');
INSERT INTO `REGION` VALUES ('1541', '350213', '翔安区', '151', '0', '0', 'Xiangan Qu', '2');
INSERT INTO `REGION` VALUES ('1542', '350301', '市辖区', '152', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1543', '350302', '城厢区', '152', '0', '0', 'Chengxiang Qu', 'CXP');
INSERT INTO `REGION` VALUES ('1544', '350303', '涵江区', '152', '0', '0', 'Hanjiang Qu', 'HJQ');
INSERT INTO `REGION` VALUES ('1545', '350304', '荔城区', '152', '0', '0', 'Licheng Qu', '2');
INSERT INTO `REGION` VALUES ('1546', '350305', '秀屿区', '152', '0', '0', 'Xiuyu Qu', '2');
INSERT INTO `REGION` VALUES ('1547', '350322', '仙游县', '152', '0', '0', 'Xianyou Xian', 'XYF');
INSERT INTO `REGION` VALUES ('1548', '350401', '市辖区', '153', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1549', '350402', '梅列区', '153', '0', '0', 'Meilie Qu', 'MLQ');
INSERT INTO `REGION` VALUES ('1550', '350403', '三元区', '153', '0', '0', 'Sanyuan Qu', 'SYB');
INSERT INTO `REGION` VALUES ('1551', '350421', '明溪县', '153', '0', '0', 'Mingxi Xian', 'MXI');
INSERT INTO `REGION` VALUES ('1552', '350423', '清流县', '153', '0', '0', 'Qingliu Xian', 'QLX');
INSERT INTO `REGION` VALUES ('1553', '350424', '宁化县', '153', '0', '0', 'Ninghua Xian', 'NGH');
INSERT INTO `REGION` VALUES ('1554', '350425', '大田县', '153', '0', '0', 'Datian Xian', 'DTM');
INSERT INTO `REGION` VALUES ('1555', '350426', '尤溪县', '153', '0', '0', 'Youxi Xian', 'YXF');
INSERT INTO `REGION` VALUES ('1556', '350427', '沙县', '153', '0', '0', 'Sha Xian', 'SAX');
INSERT INTO `REGION` VALUES ('1557', '350428', '将乐县', '153', '0', '0', 'Jiangle Xian', 'JLE');
INSERT INTO `REGION` VALUES ('1558', '350429', '泰宁县', '153', '0', '0', 'Taining Xian', 'TNG');
INSERT INTO `REGION` VALUES ('1559', '350430', '建宁县', '153', '0', '0', 'Jianning Xian', 'JNF');
INSERT INTO `REGION` VALUES ('1560', '350481', '永安市', '153', '0', '0', 'Yong,an Shi', 'YAF');
INSERT INTO `REGION` VALUES ('1561', '350501', '市辖区', '154', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1562', '350502', '鲤城区', '154', '0', '0', 'Licheng Qu', 'LCQ');
INSERT INTO `REGION` VALUES ('1563', '350503', '丰泽区', '154', '0', '0', 'Fengze Qu', 'FZE');
INSERT INTO `REGION` VALUES ('1564', '350504', '洛江区', '154', '0', '0', 'Luojiang Qu', 'LJQ');
INSERT INTO `REGION` VALUES ('1565', '350505', '泉港区', '154', '0', '0', 'Quangang Qu', '2');
INSERT INTO `REGION` VALUES ('1566', '350521', '惠安县', '154', '0', '0', 'Hui,an Xian', 'HAF');
INSERT INTO `REGION` VALUES ('1567', '350524', '安溪县', '154', '0', '0', 'Anxi Xian', 'ANX');
INSERT INTO `REGION` VALUES ('1568', '350525', '永春县', '154', '0', '0', 'Yongchun Xian', 'YCM');
INSERT INTO `REGION` VALUES ('1569', '350526', '德化县', '154', '0', '0', 'Dehua Xian', 'DHA');
INSERT INTO `REGION` VALUES ('1570', '350527', '金门县', '154', '0', '0', 'Jinmen Xian', 'JME');
INSERT INTO `REGION` VALUES ('1571', '350581', '石狮市', '154', '0', '0', 'Shishi Shi', 'SHH');
INSERT INTO `REGION` VALUES ('1572', '350582', '晋江市', '154', '0', '0', 'Jinjiang Shi', 'JJG');
INSERT INTO `REGION` VALUES ('1573', '350583', '南安市', '154', '0', '0', 'Nan,an Shi', 'NAS');
INSERT INTO `REGION` VALUES ('1574', '350601', '市辖区', '155', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1575', '350602', '芗城区', '155', '0', '0', 'Xiangcheng Qu', 'XZZ');
INSERT INTO `REGION` VALUES ('1576', '350603', '龙文区', '155', '0', '0', 'Longwen Qu', 'LWZ');
INSERT INTO `REGION` VALUES ('1577', '350622', '云霄县', '155', '0', '0', 'Yunxiao Xian', 'YXO');
INSERT INTO `REGION` VALUES ('1578', '350623', '漳浦县', '155', '0', '0', 'Zhangpu Xian', 'ZPU');
INSERT INTO `REGION` VALUES ('1579', '350624', '诏安县', '155', '0', '0', 'Zhao,an Xian', 'ZAF');
INSERT INTO `REGION` VALUES ('1580', '350625', '长泰县', '155', '0', '0', 'Changtai Xian', 'CTA');
INSERT INTO `REGION` VALUES ('1581', '350626', '东山县', '155', '0', '0', 'Dongshan Xian', 'DSN');
INSERT INTO `REGION` VALUES ('1582', '350627', '南靖县', '155', '0', '0', 'Nanjing Xian', 'NJX');
INSERT INTO `REGION` VALUES ('1583', '350628', '平和县', '155', '0', '0', 'Pinghe Xian', 'PHE');
INSERT INTO `REGION` VALUES ('1584', '350629', '华安县', '155', '0', '0', 'Hua,an Xian', 'HAN');
INSERT INTO `REGION` VALUES ('1585', '350681', '龙海市', '155', '0', '0', 'Longhai Shi', 'LHM');
INSERT INTO `REGION` VALUES ('1586', '350701', '市辖区', '156', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1587', '350702', '延平区', '156', '0', '0', 'Yanping Qu', 'YPQ');
INSERT INTO `REGION` VALUES ('1588', '350721', '顺昌县', '156', '0', '0', 'Shunchang Xian', 'SCG');
INSERT INTO `REGION` VALUES ('1589', '350722', '浦城县', '156', '0', '0', 'Pucheng Xian', 'PCX');
INSERT INTO `REGION` VALUES ('1590', '350723', '光泽县', '156', '0', '0', 'Guangze Xian', 'GZE');
INSERT INTO `REGION` VALUES ('1591', '350724', '松溪县', '156', '0', '0', 'Songxi Xian', 'SOX');
INSERT INTO `REGION` VALUES ('1592', '350725', '政和县', '156', '0', '0', 'Zhenghe Xian', 'ZGH');
INSERT INTO `REGION` VALUES ('1593', '350781', '邵武市', '156', '0', '0', 'Shaowu Shi', 'SWU');
INSERT INTO `REGION` VALUES ('1594', '350782', '武夷山市', '156', '0', '0', 'Wuyishan Shi', 'WUS');
INSERT INTO `REGION` VALUES ('1595', '350783', '建瓯市', '156', '0', '0', 'Jian,ou Shi', 'JOU');
INSERT INTO `REGION` VALUES ('1596', '350784', '建阳市', '156', '0', '0', 'Jianyang Shi', 'JNY');
INSERT INTO `REGION` VALUES ('1597', '350801', '市辖区', '157', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1598', '350802', '新罗区', '157', '0', '0', 'Xinluo Qu', 'XNL');
INSERT INTO `REGION` VALUES ('1599', '350821', '长汀县', '157', '0', '0', 'Changting Xian', 'CTG');
INSERT INTO `REGION` VALUES ('1600', '350822', '永定县', '157', '0', '0', 'Yongding Xian', 'YDI');
INSERT INTO `REGION` VALUES ('1601', '350823', '上杭县', '157', '0', '0', 'Shanghang Xian', 'SHF');
INSERT INTO `REGION` VALUES ('1602', '350824', '武平县', '157', '0', '0', 'Wuping Xian', 'WPG');
INSERT INTO `REGION` VALUES ('1603', '350825', '连城县', '157', '0', '0', 'Liancheng Xian', 'LCF');
INSERT INTO `REGION` VALUES ('1604', '350881', '漳平市', '157', '0', '0', 'Zhangping Xian', 'ZGP');
INSERT INTO `REGION` VALUES ('1605', '350901', '市辖区', '158', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1606', '350902', '蕉城区', '158', '0', '0', 'Jiaocheng Qu', '2');
INSERT INTO `REGION` VALUES ('1607', '350921', '霞浦县', '158', '0', '0', 'Xiapu Xian', '2');
INSERT INTO `REGION` VALUES ('1608', '350922', '古田县', '158', '0', '0', 'Gutian Xian', '2');
INSERT INTO `REGION` VALUES ('1609', '350923', '屏南县', '158', '0', '0', 'Pingnan Xian', '2');
INSERT INTO `REGION` VALUES ('1610', '350924', '寿宁县', '158', '0', '0', 'Shouning Xian', '2');
INSERT INTO `REGION` VALUES ('1611', '350925', '周宁县', '158', '0', '0', 'Zhouning Xian', '2');
INSERT INTO `REGION` VALUES ('1612', '350926', '柘荣县', '158', '0', '0', 'Zherong Xian', '2');
INSERT INTO `REGION` VALUES ('1613', '350981', '福安市', '158', '0', '0', 'Fu,an Shi', '2');
INSERT INTO `REGION` VALUES ('1614', '350982', '福鼎市', '158', '0', '0', 'Fuding Shi', '2');
INSERT INTO `REGION` VALUES ('1615', '360101', '市辖区', '159', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1616', '360102', '东湖区', '159', '0', '0', 'Donghu Qu', 'DHU');
INSERT INTO `REGION` VALUES ('1617', '360103', '西湖区', '159', '0', '0', 'Xihu Qu ', 'XHQ');
INSERT INTO `REGION` VALUES ('1618', '360104', '青云谱区', '159', '0', '0', 'Qingyunpu Qu', 'QYP');
INSERT INTO `REGION` VALUES ('1619', '360105', '湾里区', '159', '0', '0', 'Wanli Qu', 'WLI');
INSERT INTO `REGION` VALUES ('1620', '360111', '青山湖区', '159', '0', '0', 'Qingshanhu Qu', '2');
INSERT INTO `REGION` VALUES ('1621', '360121', '南昌县', '159', '0', '0', 'Nanchang Xian', 'NCA');
INSERT INTO `REGION` VALUES ('1622', '360122', '新建县', '159', '0', '0', 'Xinjian Xian', 'XJN');
INSERT INTO `REGION` VALUES ('1623', '360123', '安义县', '159', '0', '0', 'Anyi Xian', 'AYI');
INSERT INTO `REGION` VALUES ('1624', '360124', '进贤县', '159', '0', '0', 'Jinxian Xian', 'JXX');
INSERT INTO `REGION` VALUES ('1625', '360201', '市辖区', '160', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1626', '360202', '昌江区', '160', '0', '0', 'Changjiang Qu', 'CJG');
INSERT INTO `REGION` VALUES ('1627', '360203', '珠山区', '160', '0', '0', 'Zhushan Qu', 'ZSJ');
INSERT INTO `REGION` VALUES ('1628', '360222', '浮梁县', '160', '0', '0', 'Fuliang Xian', 'FLX');
INSERT INTO `REGION` VALUES ('1629', '360281', '乐平市', '160', '0', '0', 'Leping Shi', 'LEP');
INSERT INTO `REGION` VALUES ('1630', '360301', '市辖区', '161', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1631', '360302', '安源区', '161', '0', '0', 'Anyuan Qu', 'AYQ');
INSERT INTO `REGION` VALUES ('1632', '360313', '湘东区', '161', '0', '0', 'Xiangdong Qu', 'XDG');
INSERT INTO `REGION` VALUES ('1633', '360321', '莲花县', '161', '0', '0', 'Lianhua Xian', 'LHG');
INSERT INTO `REGION` VALUES ('1634', '360322', '上栗县', '161', '0', '0', 'Shangli Xian', 'SLI');
INSERT INTO `REGION` VALUES ('1635', '360323', '芦溪县', '161', '0', '0', 'Lixi Xian', 'LXP');
INSERT INTO `REGION` VALUES ('1636', '360401', '市辖区', '162', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1637', '360402', '庐山区', '162', '0', '0', 'Lushan Qu', 'LSV');
INSERT INTO `REGION` VALUES ('1638', '360403', '浔阳区', '162', '0', '0', 'Xunyang Qu', 'XYC');
INSERT INTO `REGION` VALUES ('1639', '360421', '九江县', '162', '0', '0', 'Jiujiang Xian', 'JUJ');
INSERT INTO `REGION` VALUES ('1640', '360423', '武宁县', '162', '0', '0', 'Wuning Xian', 'WUN');
INSERT INTO `REGION` VALUES ('1641', '360424', '修水县', '162', '0', '0', 'Xiushui Xian', 'XSG');
INSERT INTO `REGION` VALUES ('1642', '360425', '永修县', '162', '0', '0', 'Yongxiu Xian', 'YOX');
INSERT INTO `REGION` VALUES ('1643', '360426', '德安县', '162', '0', '0', 'De,an Xian', 'DEA');
INSERT INTO `REGION` VALUES ('1644', '360427', '星子县', '162', '0', '0', 'Xingzi Xian', 'XZI');
INSERT INTO `REGION` VALUES ('1645', '360428', '都昌县', '162', '0', '0', 'Duchang Xian', 'DUC');
INSERT INTO `REGION` VALUES ('1646', '360429', '湖口县', '162', '0', '0', 'Hukou Xian', 'HUK');
INSERT INTO `REGION` VALUES ('1647', '360430', '彭泽县', '162', '0', '0', 'Pengze Xian', 'PZE');
INSERT INTO `REGION` VALUES ('1648', '360481', '瑞昌市', '162', '0', '0', 'Ruichang Shi', 'RCG');
INSERT INTO `REGION` VALUES ('1649', '360501', '市辖区', '163', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1650', '360502', '渝水区', '163', '0', '0', 'Yushui Qu', 'YSR');
INSERT INTO `REGION` VALUES ('1651', '360521', '分宜县', '163', '0', '0', 'Fenyi Xian', 'FYI');
INSERT INTO `REGION` VALUES ('1652', '360601', '市辖区', '164', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1653', '360602', '月湖区', '164', '0', '0', 'Yuehu Qu', 'YHY');
INSERT INTO `REGION` VALUES ('1654', '360622', '余江县', '164', '0', '0', 'Yujiang Xian', 'YUJ');
INSERT INTO `REGION` VALUES ('1655', '360681', '贵溪市', '164', '0', '0', 'Guixi Shi', 'GXS');
INSERT INTO `REGION` VALUES ('1656', '360701', '市辖区', '165', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1657', '360702', '章贡区', '165', '0', '0', 'Zhanggong Qu', 'ZGG');
INSERT INTO `REGION` VALUES ('1658', '360721', '赣县', '165', '0', '0', 'Gan Xian', 'GXN');
INSERT INTO `REGION` VALUES ('1659', '360722', '信丰县', '165', '0', '0', 'Xinfeng Xian ', 'XNF');
INSERT INTO `REGION` VALUES ('1660', '360723', '大余县', '165', '0', '0', 'Dayu Xian', 'DYX');
INSERT INTO `REGION` VALUES ('1661', '360724', '上犹县', '165', '0', '0', 'Shangyou Xian', 'SYO');
INSERT INTO `REGION` VALUES ('1662', '360725', '崇义县', '165', '0', '0', 'Chongyi Xian', 'CYX');
INSERT INTO `REGION` VALUES ('1663', '360726', '安远县', '165', '0', '0', 'Anyuan Xian', 'AYN');
INSERT INTO `REGION` VALUES ('1664', '360727', '龙南县', '165', '0', '0', 'Longnan Xian', 'LNX');
INSERT INTO `REGION` VALUES ('1665', '360728', '定南县', '165', '0', '0', 'Dingnan Xian', 'DNN');
INSERT INTO `REGION` VALUES ('1666', '360729', '全南县', '165', '0', '0', 'Quannan Xian', 'QNN');
INSERT INTO `REGION` VALUES ('1667', '360730', '宁都县', '165', '0', '0', 'Ningdu Xian', 'NDU');
INSERT INTO `REGION` VALUES ('1668', '360731', '于都县', '165', '0', '0', 'Yudu Xian', 'YUD');
INSERT INTO `REGION` VALUES ('1669', '360732', '兴国县', '165', '0', '0', 'Xingguo Xian', 'XGG');
INSERT INTO `REGION` VALUES ('1670', '360733', '会昌县', '165', '0', '0', 'Huichang Xian', 'HIC');
INSERT INTO `REGION` VALUES ('1671', '360734', '寻乌县', '165', '0', '0', 'Xunwu Xian', 'XNW');
INSERT INTO `REGION` VALUES ('1672', '360735', '石城县', '165', '0', '0', 'Shicheng Xian', 'SIC');
INSERT INTO `REGION` VALUES ('1673', '360781', '瑞金市', '165', '0', '0', 'Ruijin Shi', 'RJS');
INSERT INTO `REGION` VALUES ('1674', '360782', '南康市', '165', '0', '0', 'Nankang Shi', 'NNK');
INSERT INTO `REGION` VALUES ('1675', '360801', '市辖区', '166', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1676', '360802', '吉州区', '166', '0', '0', 'Jizhou Qu', '2');
INSERT INTO `REGION` VALUES ('1677', '360803', '青原区', '166', '0', '0', 'Qingyuan Qu', '2');
INSERT INTO `REGION` VALUES ('1678', '360821', '吉安县', '166', '0', '0', 'Ji,an Xian', '2');
INSERT INTO `REGION` VALUES ('1679', '360822', '吉水县', '166', '0', '0', 'Jishui Xian', '2');
INSERT INTO `REGION` VALUES ('1680', '360823', '峡江县', '166', '0', '0', 'Xiajiang Xian', '2');
INSERT INTO `REGION` VALUES ('1681', '360824', '新干县', '166', '0', '0', 'Xingan Xian', '2');
INSERT INTO `REGION` VALUES ('1682', '360825', '永丰县', '166', '0', '0', 'Yongfeng Xian', '2');
INSERT INTO `REGION` VALUES ('1683', '360826', '泰和县', '166', '0', '0', 'Taihe Xian', '2');
INSERT INTO `REGION` VALUES ('1684', '360827', '遂川县', '166', '0', '0', 'Suichuan Xian', '2');
INSERT INTO `REGION` VALUES ('1685', '360828', '万安县', '166', '0', '0', 'Wan,an Xian', '2');
INSERT INTO `REGION` VALUES ('1686', '360829', '安福县', '166', '0', '0', 'Anfu Xian', '2');
INSERT INTO `REGION` VALUES ('1687', '360830', '永新县', '166', '0', '0', 'Yongxin Xian ', '2');
INSERT INTO `REGION` VALUES ('1688', '360881', '井冈山市', '166', '0', '0', 'Jinggangshan Shi', '2');
INSERT INTO `REGION` VALUES ('1689', '360901', '市辖区', '167', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1690', '360902', '袁州区', '167', '0', '0', 'Yuanzhou Qu', '2');
INSERT INTO `REGION` VALUES ('1691', '360921', '奉新县', '167', '0', '0', 'Fengxin Xian', '2');
INSERT INTO `REGION` VALUES ('1692', '360922', '万载县', '167', '0', '0', 'Wanzai Xian', '2');
INSERT INTO `REGION` VALUES ('1693', '360923', '上高县', '167', '0', '0', 'Shanggao Xian', '2');
INSERT INTO `REGION` VALUES ('1694', '360924', '宜丰县', '167', '0', '0', 'Yifeng Xian', '2');
INSERT INTO `REGION` VALUES ('1695', '360925', '靖安县', '167', '0', '0', 'Jing,an Xian', '2');
INSERT INTO `REGION` VALUES ('1696', '360926', '铜鼓县', '167', '0', '0', 'Tonggu Xian', '2');
INSERT INTO `REGION` VALUES ('1697', '360981', '丰城市', '167', '0', '0', 'Fengcheng Shi', '2');
INSERT INTO `REGION` VALUES ('1698', '360982', '樟树市', '167', '0', '0', 'Zhangshu Shi', '2');
INSERT INTO `REGION` VALUES ('1699', '360983', '高安市', '167', '0', '0', 'Gao,an Shi', '2');
INSERT INTO `REGION` VALUES ('1700', '361001', '市辖区', '168', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1701', '361002', '临川区', '168', '0', '0', 'Linchuan Qu', '2');
INSERT INTO `REGION` VALUES ('1702', '361021', '南城县', '168', '0', '0', 'Nancheng Xian', '2');
INSERT INTO `REGION` VALUES ('1703', '361022', '黎川县', '168', '0', '0', 'Lichuan Xian', '2');
INSERT INTO `REGION` VALUES ('1704', '361023', '南丰县', '168', '0', '0', 'Nanfeng Xian', '2');
INSERT INTO `REGION` VALUES ('1705', '361024', '崇仁县', '168', '0', '0', 'Chongren Xian', '2');
INSERT INTO `REGION` VALUES ('1706', '361025', '乐安县', '168', '0', '0', 'Le,an Xian', '2');
INSERT INTO `REGION` VALUES ('1707', '361026', '宜黄县', '168', '0', '0', 'Yihuang Xian', '2');
INSERT INTO `REGION` VALUES ('1708', '361027', '金溪县', '168', '0', '0', 'Jinxi Xian', '2');
INSERT INTO `REGION` VALUES ('1709', '361028', '资溪县', '168', '0', '0', 'Zixi Xian', '2');
INSERT INTO `REGION` VALUES ('1710', '361029', '东乡县', '168', '0', '0', 'Dongxiang Xian', '2');
INSERT INTO `REGION` VALUES ('1711', '361030', '广昌县', '168', '0', '0', 'Guangchang Xian', '2');
INSERT INTO `REGION` VALUES ('1712', '361101', '市辖区', '169', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1713', '361102', '信州区', '169', '0', '0', 'Xinzhou Qu', 'XZQ');
INSERT INTO `REGION` VALUES ('1714', '361121', '上饶县', '169', '0', '0', 'Shangrao Xian ', '2');
INSERT INTO `REGION` VALUES ('1715', '361122', '广丰县', '169', '0', '0', 'Guangfeng Xian', '2');
INSERT INTO `REGION` VALUES ('1716', '361123', '玉山县', '169', '0', '0', 'Yushan Xian', '2');
INSERT INTO `REGION` VALUES ('1717', '361124', '铅山县', '169', '0', '0', 'Qianshan Xian', '2');
INSERT INTO `REGION` VALUES ('1718', '361125', '横峰县', '169', '0', '0', 'Hengfeng Xian', '2');
INSERT INTO `REGION` VALUES ('1719', '361126', '弋阳县', '169', '0', '0', 'Yiyang Xian', '2');
INSERT INTO `REGION` VALUES ('1720', '361127', '余干县', '169', '0', '0', 'Yugan Xian', '2');
INSERT INTO `REGION` VALUES ('1721', '361128', '鄱阳县', '169', '0', '0', 'Poyang Xian', 'PYX');
INSERT INTO `REGION` VALUES ('1722', '361129', '万年县', '169', '0', '0', 'Wannian Xian', '2');
INSERT INTO `REGION` VALUES ('1723', '361130', '婺源县', '169', '0', '0', 'Wuyuan Xian', '2');
INSERT INTO `REGION` VALUES ('1724', '361181', '德兴市', '169', '0', '0', 'Dexing Shi', '2');
INSERT INTO `REGION` VALUES ('1725', '370101', '市辖区', '170', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1726', '370102', '历下区', '170', '0', '0', 'Lixia Qu', 'LXQ');
INSERT INTO `REGION` VALUES ('1727', '370101', '市中区', '170', '0', '0', 'Shizhong Qu', 'SZQ');
INSERT INTO `REGION` VALUES ('1728', '370104', '槐荫区', '170', '0', '0', 'Huaiyin Qu', 'HYF');
INSERT INTO `REGION` VALUES ('1729', '370105', '天桥区', '170', '0', '0', 'Tianqiao Qu', 'TQQ');
INSERT INTO `REGION` VALUES ('1730', '370112', '历城区', '170', '0', '0', 'Licheng Qu', 'LCZ');
INSERT INTO `REGION` VALUES ('1731', '370113', '长清区', '170', '0', '0', 'Changqing Qu', '2');
INSERT INTO `REGION` VALUES ('1732', '370124', '平阴县', '170', '0', '0', 'Pingyin Xian', 'PYL');
INSERT INTO `REGION` VALUES ('1733', '370125', '济阳县', '170', '0', '0', 'Jiyang Xian', 'JYL');
INSERT INTO `REGION` VALUES ('1734', '370126', '商河县', '170', '0', '0', 'Shanghe Xian', 'SGH');
INSERT INTO `REGION` VALUES ('1735', '370181', '章丘市', '170', '0', '0', 'Zhangqiu Shi', 'ZQS');
INSERT INTO `REGION` VALUES ('1736', '370201', '市辖区', '171', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1737', '370202', '市南区', '171', '0', '0', 'Shinan Qu', 'SNQ');
INSERT INTO `REGION` VALUES ('1738', '370203', '市北区', '171', '0', '0', 'Shibei Qu', 'SBQ');
INSERT INTO `REGION` VALUES ('1739', '370205', '四方区', '171', '0', '0', 'Sifang Qu', 'SFQ');
INSERT INTO `REGION` VALUES ('1740', '370211', '黄岛区', '171', '0', '0', 'Huangdao Qu', 'HDO');
INSERT INTO `REGION` VALUES ('1741', '370212', '崂山区', '171', '0', '0', 'Laoshan Qu', 'LQD');
INSERT INTO `REGION` VALUES ('1742', '370213', '李沧区', '171', '0', '0', 'Licang Qu', 'LCT');
INSERT INTO `REGION` VALUES ('1743', '370214', '城阳区', '171', '0', '0', 'Chengyang Qu', 'CEY');
INSERT INTO `REGION` VALUES ('1744', '370281', '胶州市', '171', '0', '0', 'Jiaozhou Shi', 'JZS');
INSERT INTO `REGION` VALUES ('1745', '370282', '即墨市', '171', '0', '0', 'Jimo Shi', 'JMO');
INSERT INTO `REGION` VALUES ('1746', '370283', '平度市', '171', '0', '0', 'Pingdu Shi', 'PDU');
INSERT INTO `REGION` VALUES ('1747', '370284', '胶南市', '171', '0', '0', 'Jiaonan Shi', 'JNS');
INSERT INTO `REGION` VALUES ('1748', '370285', '莱西市', '171', '0', '0', 'Laixi Shi', 'LXE');
INSERT INTO `REGION` VALUES ('1749', '370301', '市辖区', '172', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1750', '370302', '淄川区', '172', '0', '0', 'Zichuan Qu', 'ZCQ');
INSERT INTO `REGION` VALUES ('1751', '370303', '张店区', '172', '0', '0', 'Zhangdian Qu', 'ZDQ');
INSERT INTO `REGION` VALUES ('1752', '370304', '博山区', '172', '0', '0', 'Boshan Qu', 'BSZ');
INSERT INTO `REGION` VALUES ('1753', '370305', '临淄区', '172', '0', '0', 'Linzi Qu', 'LZQ');
INSERT INTO `REGION` VALUES ('1754', '370306', '周村区', '172', '0', '0', 'Zhoucun Qu', 'ZCN');
INSERT INTO `REGION` VALUES ('1755', '370321', '桓台县', '172', '0', '0', 'Huantai Xian', 'HTL');
INSERT INTO `REGION` VALUES ('1756', '370322', '高青县', '172', '0', '0', 'Gaoqing Xian', 'GQG');
INSERT INTO `REGION` VALUES ('1757', '370323', '沂源县', '172', '0', '0', 'Yiyuan Xian', 'YIY');
INSERT INTO `REGION` VALUES ('1758', '370401', '市辖区', '173', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1759', '370402', '市中区', '173', '0', '0', 'Shizhong Qu', 'SZZ');
INSERT INTO `REGION` VALUES ('1760', '370403', '薛城区', '173', '0', '0', 'Xuecheng Qu', 'XEC');
INSERT INTO `REGION` VALUES ('1761', '370404', '峄城区', '173', '0', '0', 'Yicheng Qu', 'YZZ');
INSERT INTO `REGION` VALUES ('1762', '370405', '台儿庄区', '173', '0', '0', 'Tai,erzhuang Qu', 'TEZ');
INSERT INTO `REGION` VALUES ('1763', '370406', '山亭区', '173', '0', '0', 'Shanting Qu', 'STG');
INSERT INTO `REGION` VALUES ('1764', '370481', '滕州市', '173', '0', '0', 'Tengzhou Shi', 'TZO');
INSERT INTO `REGION` VALUES ('1765', '370501', '市辖区', '174', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1766', '370502', '东营区', '174', '0', '0', 'Dongying Qu', 'DYQ');
INSERT INTO `REGION` VALUES ('1767', '370503', '河口区', '174', '0', '0', 'Hekou Qu', 'HKO');
INSERT INTO `REGION` VALUES ('1768', '370521', '垦利县', '174', '0', '0', 'Kenli Xian', 'KLI');
INSERT INTO `REGION` VALUES ('1769', '370522', '利津县', '174', '0', '0', 'Lijin Xian', 'LJN');
INSERT INTO `REGION` VALUES ('1770', '370523', '广饶县', '174', '0', '0', 'Guangrao Xian ', 'GRO');
INSERT INTO `REGION` VALUES ('1771', '370601', '市辖区', '175', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1772', '370602', '芝罘区', '175', '0', '0', 'Zhifu Qu', 'ZFQ');
INSERT INTO `REGION` VALUES ('1773', '370611', '福山区', '175', '0', '0', 'Fushan Qu', 'FUS');
INSERT INTO `REGION` VALUES ('1774', '370612', '牟平区', '175', '0', '0', 'Muping Qu', 'MPQ');
INSERT INTO `REGION` VALUES ('1775', '370613', '莱山区', '175', '0', '0', 'Laishan Qu', 'LYT');
INSERT INTO `REGION` VALUES ('1776', '370634', '长岛县', '175', '0', '0', 'Changdao Xian', 'CDO');
INSERT INTO `REGION` VALUES ('1777', '370681', '龙口市', '175', '0', '0', 'Longkou Shi', 'LKU');
INSERT INTO `REGION` VALUES ('1778', '370682', '莱阳市', '175', '0', '0', 'Laiyang Shi', 'LYD');
INSERT INTO `REGION` VALUES ('1779', '370683', '莱州市', '175', '0', '0', 'Laizhou Shi', 'LZG');
INSERT INTO `REGION` VALUES ('1780', '370684', '蓬莱市', '175', '0', '0', 'Penglai Shi', 'PLI');
INSERT INTO `REGION` VALUES ('1781', '370685', '招远市', '175', '0', '0', 'Zhaoyuan Shi', 'ZYL');
INSERT INTO `REGION` VALUES ('1782', '370686', '栖霞市', '175', '0', '0', 'Qixia Shi', 'QXS');
INSERT INTO `REGION` VALUES ('1783', '370687', '海阳市', '175', '0', '0', 'Haiyang Shi', 'HYL');
INSERT INTO `REGION` VALUES ('1784', '370701', '市辖区', '176', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1785', '370702', '潍城区', '176', '0', '0', 'Weicheng Qu', 'WCG');
INSERT INTO `REGION` VALUES ('1786', '370703', '寒亭区', '176', '0', '0', 'Hanting Qu', 'HNT');
INSERT INTO `REGION` VALUES ('1787', '370704', '坊子区', '176', '0', '0', 'Fangzi Qu', 'FZQ');
INSERT INTO `REGION` VALUES ('1788', '370705', '奎文区', '176', '0', '0', 'Kuiwen Qu', 'KWN');
INSERT INTO `REGION` VALUES ('1789', '370724', '临朐县', '176', '0', '0', 'Linqu Xian', 'LNQ');
INSERT INTO `REGION` VALUES ('1790', '370725', '昌乐县', '176', '0', '0', 'Changle Xian', 'CLX');
INSERT INTO `REGION` VALUES ('1791', '370781', '青州市', '176', '0', '0', 'Qingzhou Shi', 'QGZ');
INSERT INTO `REGION` VALUES ('1792', '370782', '诸城市', '176', '0', '0', 'Zhucheng Shi', 'ZCL');
INSERT INTO `REGION` VALUES ('1793', '370783', '寿光市', '176', '0', '0', 'Shouguang Shi', 'SGG');
INSERT INTO `REGION` VALUES ('1794', '370784', '安丘市', '176', '0', '0', 'Anqiu Shi', 'AQU');
INSERT INTO `REGION` VALUES ('1795', '370785', '高密市', '176', '0', '0', 'Gaomi Shi', 'GMI');
INSERT INTO `REGION` VALUES ('1796', '370786', '昌邑市', '176', '0', '0', 'Changyi Shi', 'CYL');
INSERT INTO `REGION` VALUES ('1797', '370801', '市辖区', '177', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1798', '370802', '市中区', '177', '0', '0', 'Shizhong Qu', 'SZU');
INSERT INTO `REGION` VALUES ('1799', '370811', '任城区', '177', '0', '0', 'Rencheng Qu', 'RCQ');
INSERT INTO `REGION` VALUES ('1800', '370826', '微山县', '177', '0', '0', 'Weishan Xian', 'WSA');
INSERT INTO `REGION` VALUES ('1801', '370827', '鱼台县', '177', '0', '0', 'Yutai Xian', 'YTL');
INSERT INTO `REGION` VALUES ('1802', '370828', '金乡县', '177', '0', '0', 'Jinxiang Xian', 'JXG');
INSERT INTO `REGION` VALUES ('1803', '370829', '嘉祥县', '177', '0', '0', 'Jiaxiang Xian', 'JXP');
INSERT INTO `REGION` VALUES ('1804', '370830', '汶上县', '177', '0', '0', 'Wenshang Xian', 'WNS');
INSERT INTO `REGION` VALUES ('1805', '370831', '泗水县', '177', '0', '0', 'Sishui Xian', 'SSH');
INSERT INTO `REGION` VALUES ('1806', '370832', '梁山县', '177', '0', '0', 'Liangshan Xian', 'LSN');
INSERT INTO `REGION` VALUES ('1807', '370881', '曲阜市', '177', '0', '0', 'Qufu Shi', 'QFU');
INSERT INTO `REGION` VALUES ('1808', '370882', '兖州市', '177', '0', '0', 'Yanzhou Shi', 'YZL');
INSERT INTO `REGION` VALUES ('1809', '370883', '邹城市', '177', '0', '0', 'Zoucheng Shi', 'ZCG');
INSERT INTO `REGION` VALUES ('1810', '370901', '市辖区', '178', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1811', '370902', '泰山区', '178', '0', '0', 'Taishan Qu', 'TSQ');
INSERT INTO `REGION` VALUES ('1812', '370911', '岱岳区', '178', '0', '0', 'Daiyue Qu', '2');
INSERT INTO `REGION` VALUES ('1813', '370921', '宁阳县', '178', '0', '0', 'Ningyang Xian', 'NGY');
INSERT INTO `REGION` VALUES ('1814', '370923', '东平县', '178', '0', '0', 'Dongping Xian', 'DPG');
INSERT INTO `REGION` VALUES ('1815', '370982', '新泰市', '178', '0', '0', 'Xintai Shi', 'XTA');
INSERT INTO `REGION` VALUES ('1816', '370983', '肥城市', '178', '0', '0', 'Feicheng Shi', 'FEC');
INSERT INTO `REGION` VALUES ('1817', '371001', '市辖区', '179', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1818', '371002', '环翠区', '179', '0', '0', 'Huancui Qu', 'HNC');
INSERT INTO `REGION` VALUES ('1819', '371081', '文登市', '179', '0', '0', 'Wendeng Shi', 'WDS');
INSERT INTO `REGION` VALUES ('1820', '371082', '荣成市', '179', '0', '0', 'Rongcheng Shi', '2');
INSERT INTO `REGION` VALUES ('1821', '371083', '乳山市', '179', '0', '0', 'Rushan Shi', 'RSN');
INSERT INTO `REGION` VALUES ('1822', '371101', '市辖区', '180', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1823', '371102', '东港区', '180', '0', '0', 'Donggang Qu', 'DGR');
INSERT INTO `REGION` VALUES ('1824', '371103', '岚山区', '180', '0', '0', 'Lanshan Qu', '2');
INSERT INTO `REGION` VALUES ('1825', '371121', '五莲县', '180', '0', '0', 'Wulian Xian', 'WLN');
INSERT INTO `REGION` VALUES ('1826', '371122', '莒县', '180', '0', '0', 'Ju Xian', 'JUX');
INSERT INTO `REGION` VALUES ('1827', '371201', '市辖区', '181', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1828', '371202', '莱城区', '181', '0', '0', 'Laicheng Qu', 'LAC');
INSERT INTO `REGION` VALUES ('1829', '371203', '钢城区', '181', '0', '0', 'Gangcheng Qu', 'GCQ');
INSERT INTO `REGION` VALUES ('1830', '371301', '市辖区', '182', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1831', '371302', '兰山区', '182', '0', '0', 'Lanshan Qu', 'LLS');
INSERT INTO `REGION` VALUES ('1832', '371311', '罗庄区', '182', '0', '0', 'Luozhuang Qu', 'LZU');
INSERT INTO `REGION` VALUES ('1833', '371301', '河东区', '182', '0', '0', 'Hedong Qu', '2');
INSERT INTO `REGION` VALUES ('1834', '371321', '沂南县', '182', '0', '0', 'Yinan Xian', 'YNN');
INSERT INTO `REGION` VALUES ('1835', '371322', '郯城县', '182', '0', '0', 'Tancheng Xian', 'TCE');
INSERT INTO `REGION` VALUES ('1836', '371323', '沂水县', '182', '0', '0', 'Yishui Xian', 'YIS');
INSERT INTO `REGION` VALUES ('1837', '371324', '苍山县', '182', '0', '0', 'Cangshan Xian', 'CSH');
INSERT INTO `REGION` VALUES ('1838', '371325', '费县', '182', '0', '0', 'Fei Xian', 'FEI');
INSERT INTO `REGION` VALUES ('1839', '371326', '平邑县', '182', '0', '0', 'Pingyi Xian', 'PYI');
INSERT INTO `REGION` VALUES ('1840', '371327', '莒南县', '182', '0', '0', 'Junan Xian', 'JNB');
INSERT INTO `REGION` VALUES ('1841', '371328', '蒙阴县', '182', '0', '0', 'Mengyin Xian', 'MYL');
INSERT INTO `REGION` VALUES ('1842', '371329', '临沭县', '182', '0', '0', 'Linshu Xian', 'LSP');
INSERT INTO `REGION` VALUES ('1843', '371401', '市辖区', '183', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1844', '371402', '德城区', '183', '0', '0', 'Decheng Qu', 'DCD');
INSERT INTO `REGION` VALUES ('1845', '371421', '陵县', '183', '0', '0', 'Ling Xian', 'LXL');
INSERT INTO `REGION` VALUES ('1846', '371422', '宁津县', '183', '0', '0', 'Ningjin Xian', 'NGJ');
INSERT INTO `REGION` VALUES ('1847', '371423', '庆云县', '183', '0', '0', 'Qingyun Xian', 'QYL');
INSERT INTO `REGION` VALUES ('1848', '371424', '临邑县', '183', '0', '0', 'Linyi xian', 'LYM');
INSERT INTO `REGION` VALUES ('1849', '371425', '齐河县', '183', '0', '0', 'Qihe Xian', 'QIH');
INSERT INTO `REGION` VALUES ('1850', '371426', '平原县', '183', '0', '0', 'Pingyuan Xian', 'PYN');
INSERT INTO `REGION` VALUES ('1851', '371427', '夏津县', '183', '0', '0', 'Xiajin Xian', 'XAJ');
INSERT INTO `REGION` VALUES ('1852', '371428', '武城县', '183', '0', '0', 'Wucheng Xian', 'WUC');
INSERT INTO `REGION` VALUES ('1853', '371481', '乐陵市', '183', '0', '0', 'Leling Shi', 'LEL');
INSERT INTO `REGION` VALUES ('1854', '371482', '禹城市', '183', '0', '0', 'Yucheng Shi', 'YCL');
INSERT INTO `REGION` VALUES ('1855', '371501', '市辖区', '184', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1856', '371502', '东昌府区', '184', '0', '0', 'Dongchangfu Qu', 'DCF');
INSERT INTO `REGION` VALUES ('1857', '371521', '阳谷县', '184', '0', '0', 'Yanggu Xian ', 'YGU');
INSERT INTO `REGION` VALUES ('1858', '371522', '莘县', '184', '0', '0', 'Shen Xian', 'SHN');
INSERT INTO `REGION` VALUES ('1859', '371523', '茌平县', '184', '0', '0', 'Chiping Xian ', 'CPG');
INSERT INTO `REGION` VALUES ('1860', '371524', '东阿县', '184', '0', '0', 'Dong,e Xian', 'DGE');
INSERT INTO `REGION` VALUES ('1861', '371525', '冠县', '184', '0', '0', 'Guan Xian', 'GXL');
INSERT INTO `REGION` VALUES ('1862', '371526', '高唐县', '184', '0', '0', 'Gaotang Xian', 'GTG');
INSERT INTO `REGION` VALUES ('1863', '371581', '临清市', '184', '0', '0', 'Linqing Xian', 'LQS');
INSERT INTO `REGION` VALUES ('1864', '371601', '市辖区', '185', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('1865', '371602', '滨城区', '185', '0', '0', 'Bincheng Qu', '2');
INSERT INTO `REGION` VALUES ('1866', '371621', '惠民县', '185', '0', '0', 'Huimin Xian', '2');
INSERT INTO `REGION` VALUES ('1867', '371622', '阳信县', '185', '0', '0', 'Yangxin Xian', '2');
INSERT INTO `REGION` VALUES ('1868', '371623', '无棣县', '185', '0', '0', 'Wudi Xian', '2');
INSERT INTO `REGION` VALUES ('1869', '371624', '沾化县', '185', '0', '0', 'Zhanhua Xian', '2');
INSERT INTO `REGION` VALUES ('1870', '371625', '博兴县', '185', '0', '0', 'Boxing Xian', '2');
INSERT INTO `REGION` VALUES ('1871', '371626', '邹平县', '185', '0', '0', 'Zouping Xian', '2');
INSERT INTO `REGION` VALUES ('1873', '371702', '牡丹区', '186', '0', '0', 'Mudan Qu', '2');
INSERT INTO `REGION` VALUES ('1874', '371721', '曹县', '186', '0', '0', 'Cao Xian', '2');
INSERT INTO `REGION` VALUES ('1875', '371722', '单县', '186', '0', '0', 'Shan Xian', '2');
INSERT INTO `REGION` VALUES ('1876', '371723', '成武县', '186', '0', '0', 'Chengwu Xian', '2');
INSERT INTO `REGION` VALUES ('1877', '371724', '巨野县', '186', '0', '0', 'Juye Xian', '2');
INSERT INTO `REGION` VALUES ('1878', '371725', '郓城县', '186', '0', '0', 'Yuncheng Xian', '2');
INSERT INTO `REGION` VALUES ('1879', '371726', '鄄城县', '186', '0', '0', 'Juancheng Xian', '2');
INSERT INTO `REGION` VALUES ('1880', '371727', '定陶县', '186', '0', '0', 'Dingtao Xian', '2');
INSERT INTO `REGION` VALUES ('1881', '371728', '东明县', '186', '0', '0', 'Dongming Xian', '2');
INSERT INTO `REGION` VALUES ('1882', '410101', '市辖区', '187', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1883', '410102', '中原区', '187', '0', '0', 'Zhongyuan Qu', 'ZYQ');
INSERT INTO `REGION` VALUES ('1884', '410103', '二七区', '187', '0', '0', 'Erqi Qu', 'EQQ');
INSERT INTO `REGION` VALUES ('1885', '410104', '管城回族区', '187', '0', '0', 'Guancheng Huizu Qu', 'GCH');
INSERT INTO `REGION` VALUES ('1886', '410105', '金水区', '187', '0', '0', 'Jinshui Qu', 'JSU');
INSERT INTO `REGION` VALUES ('1887', '410106', '上街区', '187', '0', '0', 'Shangjie Qu', 'SJE');
INSERT INTO `REGION` VALUES ('1888', '410108', '惠济区', '187', '0', '0', 'Mangshan Qu', '2');
INSERT INTO `REGION` VALUES ('1889', '410122', '中牟县', '187', '0', '0', 'Zhongmou Xian', 'ZMO');
INSERT INTO `REGION` VALUES ('1890', '410181', '巩义市', '187', '0', '0', 'Gongyi Shi', 'GYI');
INSERT INTO `REGION` VALUES ('1891', '410182', '荥阳市', '187', '0', '0', 'Xingyang Shi', 'XYK');
INSERT INTO `REGION` VALUES ('1892', '410183', '新密市', '187', '0', '0', 'Xinmi Shi', 'XMI');
INSERT INTO `REGION` VALUES ('1893', '410184', '新郑市', '187', '0', '0', 'Xinzheng Shi', 'XZG');
INSERT INTO `REGION` VALUES ('1894', '410185', '登封市', '187', '0', '0', 'Dengfeng Shi', '2');
INSERT INTO `REGION` VALUES ('1895', '410201', '市辖区', '188', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1896', '410202', '龙亭区', '188', '0', '0', 'Longting Qu', 'LTK');
INSERT INTO `REGION` VALUES ('1897', '410203', '顺河回族区', '188', '0', '0', 'Shunhe Huizu Qu', 'SHR');
INSERT INTO `REGION` VALUES ('1898', '410204', '鼓楼区', '188', '0', '0', 'Gulou Qu', 'GLK');
INSERT INTO `REGION` VALUES ('1899', '410205', '禹王台区', '188', '0', '0', 'Yuwangtai Qu', '2');
INSERT INTO `REGION` VALUES ('1900', '410211', '金明区', '188', '0', '0', 'Jinming Qu', '2');
INSERT INTO `REGION` VALUES ('1901', '410221', '杞县', '188', '0', '0', 'Qi Xian', 'QIX');
INSERT INTO `REGION` VALUES ('1902', '410222', '通许县', '188', '0', '0', 'Tongxu Xian', 'TXY');
INSERT INTO `REGION` VALUES ('1903', '410223', '尉氏县', '188', '0', '0', 'Weishi Xian', 'WSI');
INSERT INTO `REGION` VALUES ('1904', '410224', '开封县', '188', '0', '0', 'Kaifeng Xian', 'KFX');
INSERT INTO `REGION` VALUES ('1905', '410225', '兰考县', '188', '0', '0', 'Lankao Xian', 'LKA');
INSERT INTO `REGION` VALUES ('1906', '410301', '市辖区', '189', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1907', '410302', '老城区', '189', '0', '0', 'Laocheng Qu', 'LLY');
INSERT INTO `REGION` VALUES ('1908', '410303', '西工区', '189', '0', '0', 'Xigong Qu', 'XGL');
INSERT INTO `REGION` VALUES ('1909', '410304', '瀍河回族区', '189', '0', '0', 'Chanhehuizu Qu', '2');
INSERT INTO `REGION` VALUES ('1910', '410305', '涧西区', '189', '0', '0', 'Jianxi Qu', 'JXL');
INSERT INTO `REGION` VALUES ('1911', '410306', '吉利区', '189', '0', '0', 'Jili Qu', 'JLL');
INSERT INTO `REGION` VALUES ('1912', '410311', '洛龙区', '189', '0', '0', 'Luolong Qu', '2');
INSERT INTO `REGION` VALUES ('1913', '410322', '孟津县', '189', '0', '0', 'Mengjin Xian', 'MGJ');
INSERT INTO `REGION` VALUES ('1914', '410323', '新安县', '189', '0', '0', 'Xin,an Xian', 'XAX');
INSERT INTO `REGION` VALUES ('1915', '410324', '栾川县', '189', '0', '0', 'Luanchuan Xian', 'LCK');
INSERT INTO `REGION` VALUES ('1916', '410325', '嵩县', '189', '0', '0', 'Song Xian', 'SON');
INSERT INTO `REGION` VALUES ('1917', '410326', '汝阳县', '189', '0', '0', 'Ruyang Xian', 'RUY');
INSERT INTO `REGION` VALUES ('1918', '410327', '宜阳县', '189', '0', '0', 'Yiyang Xian', 'YYY');
INSERT INTO `REGION` VALUES ('1919', '410328', '洛宁县', '189', '0', '0', 'Luoning Xian', 'LNI');
INSERT INTO `REGION` VALUES ('1920', '410329', '伊川县', '189', '0', '0', 'Yichuan Xian', 'YCZ');
INSERT INTO `REGION` VALUES ('1921', '410381', '偃师市', '189', '0', '0', 'Yanshi Shi', 'YST');
INSERT INTO `REGION` VALUES ('1922', '410401', '市辖区', '190', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1923', '410402', '新华区', '190', '0', '0', 'Xinhua Qu', 'XHP');
INSERT INTO `REGION` VALUES ('1924', '410403', '卫东区', '190', '0', '0', 'WeIDong Qu', 'WDG');
INSERT INTO `REGION` VALUES ('1925', '410404', '石龙区', '190', '0', '0', 'Shilong Qu', 'SIL');
INSERT INTO `REGION` VALUES ('1926', '410411', '湛河区', '190', '0', '0', 'Zhanhe Qu', 'ZHQ');
INSERT INTO `REGION` VALUES ('1927', '410421', '宝丰县', '190', '0', '0', 'Baofeng Xian', 'BFG');
INSERT INTO `REGION` VALUES ('1928', '410422', '叶县', '190', '0', '0', 'Ye Xian', 'YEX');
INSERT INTO `REGION` VALUES ('1929', '410423', '鲁山县', '190', '0', '0', 'Lushan Xian', 'LUS');
INSERT INTO `REGION` VALUES ('1930', '410425', '郏县', '190', '0', '0', 'Jia Xian', 'JXY');
INSERT INTO `REGION` VALUES ('1931', '410481', '舞钢市', '190', '0', '0', 'Wugang Shi', 'WGY');
INSERT INTO `REGION` VALUES ('1932', '410482', '汝州市', '190', '0', '0', 'Ruzhou Shi', 'RZO');
INSERT INTO `REGION` VALUES ('1933', '410501', '市辖区', '191', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1934', '410502', '文峰区', '191', '0', '0', 'Wenfeng Qu', 'WFQ');
INSERT INTO `REGION` VALUES ('1935', '410503', '北关区', '191', '0', '0', 'Beiguan Qu', 'BGQ');
INSERT INTO `REGION` VALUES ('1936', '410505', '殷都区', '191', '0', '0', 'Yindu Qu', '2');
INSERT INTO `REGION` VALUES ('1937', '410506', '龙安区', '191', '0', '0', 'Longan Qu', '2');
INSERT INTO `REGION` VALUES ('1938', '410522', '安阳县', '191', '0', '0', 'Anyang Xian', 'AYX');
INSERT INTO `REGION` VALUES ('1939', '410523', '汤阴县', '191', '0', '0', 'Tangyin Xian', 'TYI');
INSERT INTO `REGION` VALUES ('1940', '410526', '滑县', '191', '0', '0', 'Hua Xian', 'HUA');
INSERT INTO `REGION` VALUES ('1941', '410527', '内黄县', '191', '0', '0', 'Neihuang Xian', 'NHG');
INSERT INTO `REGION` VALUES ('1942', '410581', '林州市', '191', '0', '0', 'Linzhou Shi', 'LZY');
INSERT INTO `REGION` VALUES ('1943', '410601', '市辖区', '192', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1944', '410602', '鹤山区', '192', '0', '0', 'Heshan Qu', 'HSF');
INSERT INTO `REGION` VALUES ('1945', '410603', '山城区', '192', '0', '0', 'Shancheng Qu', 'SCB');
INSERT INTO `REGION` VALUES ('1946', '410611', '淇滨区', '192', '0', '0', 'Qibin Qu', '2');
INSERT INTO `REGION` VALUES ('1947', '410621', '浚县', '192', '0', '0', 'Xun Xian', 'XUX');
INSERT INTO `REGION` VALUES ('1948', '410622', '淇县', '192', '0', '0', 'Qi Xian', 'QXY');
INSERT INTO `REGION` VALUES ('1949', '410701', '市辖区', '193', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1950', '410702', '红旗区', '193', '0', '0', 'Hongqi Qu', 'HQQ');
INSERT INTO `REGION` VALUES ('1951', '410703', '卫滨区', '193', '0', '0', 'Weibin Qu', '2');
INSERT INTO `REGION` VALUES ('1952', '410704', '凤泉区', '193', '0', '0', 'Fengquan Qu', '2');
INSERT INTO `REGION` VALUES ('1953', '410711', '牧野区', '193', '0', '0', 'Muye Qu', '2');
INSERT INTO `REGION` VALUES ('1954', '410721', '新乡县', '193', '0', '0', 'Xinxiang Xian', 'XXX');
INSERT INTO `REGION` VALUES ('1955', '410724', '获嘉县', '193', '0', '0', 'Huojia Xian', 'HOJ');
INSERT INTO `REGION` VALUES ('1956', '410725', '原阳县', '193', '0', '0', 'Yuanyang Xian', 'YYA');
INSERT INTO `REGION` VALUES ('1957', '410726', '延津县', '193', '0', '0', 'Yanjin Xian', 'YJN');
INSERT INTO `REGION` VALUES ('1958', '410727', '封丘县', '193', '0', '0', 'Fengqiu Xian', 'FQU');
INSERT INTO `REGION` VALUES ('1959', '410728', '长垣县', '193', '0', '0', 'Changyuan Xian', 'CYU');
INSERT INTO `REGION` VALUES ('1960', '410781', '卫辉市', '193', '0', '0', 'Weihui Shi', 'WHS');
INSERT INTO `REGION` VALUES ('1961', '410782', '辉县市', '193', '0', '0', 'Huixian Shi', 'HXS');
INSERT INTO `REGION` VALUES ('1962', '410801', '市辖区', '194', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1963', '410802', '解放区', '194', '0', '0', 'Jiefang Qu', 'JFQ');
INSERT INTO `REGION` VALUES ('1964', '410803', '中站区', '194', '0', '0', 'Zhongzhan Qu', 'ZZQ');
INSERT INTO `REGION` VALUES ('1965', '410804', '马村区', '194', '0', '0', 'Macun Qu', 'MCQ');
INSERT INTO `REGION` VALUES ('1966', '410811', '山阳区', '194', '0', '0', 'Shanyang Qu', 'SYC');
INSERT INTO `REGION` VALUES ('1967', '410821', '修武县', '194', '0', '0', 'Xiuwu Xian', 'XUW');
INSERT INTO `REGION` VALUES ('1968', '410822', '博爱县', '194', '0', '0', 'Bo,ai Xian', 'BOA');
INSERT INTO `REGION` VALUES ('1969', '410823', '武陟县', '194', '0', '0', 'Wuzhi Xian', 'WZI');
INSERT INTO `REGION` VALUES ('1970', '410825', '温县', '194', '0', '0', 'Wen Xian', 'WEN');
INSERT INTO `REGION` VALUES ('1971', '419001', '济源市', '194', '0', '0', 'Jiyuan Shi', '2');
INSERT INTO `REGION` VALUES ('1972', '410882', '沁阳市', '194', '0', '0', 'Qinyang Shi', 'QYS');
INSERT INTO `REGION` VALUES ('1973', '410883', '孟州市', '194', '0', '0', 'Mengzhou Shi', 'MZO');
INSERT INTO `REGION` VALUES ('1974', '410901', '市辖区', '195', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1975', '410902', '华龙区', '195', '0', '0', 'Hualong Qu', '2');
INSERT INTO `REGION` VALUES ('1976', '410922', '清丰县', '195', '0', '0', 'Qingfeng Xian', 'QFG');
INSERT INTO `REGION` VALUES ('1977', '410923', '南乐县', '195', '0', '0', 'Nanle Xian', 'NLE');
INSERT INTO `REGION` VALUES ('1978', '410926', '范县', '195', '0', '0', 'Fan Xian', 'FAX');
INSERT INTO `REGION` VALUES ('1979', '410927', '台前县', '195', '0', '0', 'Taiqian Xian', 'TQN');
INSERT INTO `REGION` VALUES ('1980', '410928', '濮阳县', '195', '0', '0', 'Puyang Xian', 'PUY');
INSERT INTO `REGION` VALUES ('1981', '411001', '市辖区', '196', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1982', '411002', '魏都区', '196', '0', '0', 'WeIDu Qu', 'WED');
INSERT INTO `REGION` VALUES ('1983', '411023', '许昌县', '196', '0', '0', 'Xuchang Xian', 'XUC');
INSERT INTO `REGION` VALUES ('1984', '411024', '鄢陵县', '196', '0', '0', 'Yanling Xian', 'YLY');
INSERT INTO `REGION` VALUES ('1985', '411025', '襄城县', '196', '0', '0', 'Xiangcheng Xian', 'XAC');
INSERT INTO `REGION` VALUES ('1986', '411081', '禹州市', '196', '0', '0', 'Yuzhou Shi', 'YUZ');
INSERT INTO `REGION` VALUES ('1987', '411082', '长葛市', '196', '0', '0', 'Changge Shi', 'CGE');
INSERT INTO `REGION` VALUES ('1988', '411101', '市辖区', '197', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1989', '411102', '源汇区', '197', '0', '0', 'Yuanhui Qu', 'YHI');
INSERT INTO `REGION` VALUES ('1990', '411103', '郾城区', '197', '0', '0', 'Yancheng Qu', '2');
INSERT INTO `REGION` VALUES ('1991', '411104', '召陵区', '197', '0', '0', 'Zhaoling Qu', '2');
INSERT INTO `REGION` VALUES ('1992', '411121', '舞阳县', '197', '0', '0', 'Wuyang Xian', 'WYG');
INSERT INTO `REGION` VALUES ('1993', '411122', '临颍县', '197', '0', '0', 'Linying Xian', 'LNY');
INSERT INTO `REGION` VALUES ('1994', '411201', '市辖区', '198', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('1995', '411202', '湖滨区', '198', '0', '0', 'Hubin Qu', 'HBI');
INSERT INTO `REGION` VALUES ('1996', '411221', '渑池县', '198', '0', '0', 'Mianchi Xian', 'MCI');
INSERT INTO `REGION` VALUES ('1997', '411222', '陕县', '198', '0', '0', 'Shan Xian', 'SHX');
INSERT INTO `REGION` VALUES ('1998', '411224', '卢氏县', '198', '0', '0', 'Lushi Xian', 'LUU');
INSERT INTO `REGION` VALUES ('1999', '411281', '义马市', '198', '0', '0', 'Yima Shi', 'YMA');
INSERT INTO `REGION` VALUES ('2000', '411282', '灵宝市', '198', '0', '0', 'Lingbao Shi', 'LBS');
INSERT INTO `REGION` VALUES ('2001', '411301', '市辖区', '199', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2002', '411302', '宛城区', '199', '0', '0', 'Wancheng Qu', 'WCN');
INSERT INTO `REGION` VALUES ('2003', '411303', '卧龙区', '199', '0', '0', 'Wolong Qu', 'WOL');
INSERT INTO `REGION` VALUES ('2004', '411321', '南召县', '199', '0', '0', 'Nanzhao Xian', 'NZO');
INSERT INTO `REGION` VALUES ('2005', '411322', '方城县', '199', '0', '0', 'Fangcheng Xian', 'FCX');
INSERT INTO `REGION` VALUES ('2006', '411323', '西峡县', '199', '0', '0', 'Xixia Xian', 'XXY');
INSERT INTO `REGION` VALUES ('2007', '411324', '镇平县', '199', '0', '0', 'Zhenping Xian', 'ZPX');
INSERT INTO `REGION` VALUES ('2008', '411325', '内乡县', '199', '0', '0', 'Neixiang Xian', 'NXG');
INSERT INTO `REGION` VALUES ('2009', '411326', '淅川县', '199', '0', '0', 'Xichuan Xian', 'XCY');
INSERT INTO `REGION` VALUES ('2010', '411327', '社旗县', '199', '0', '0', 'Sheqi Xian', 'SEQ');
INSERT INTO `REGION` VALUES ('2011', '411328', '唐河县', '199', '0', '0', 'Tanghe Xian', 'TGH');
INSERT INTO `REGION` VALUES ('2012', '411329', '新野县', '199', '0', '0', 'Xinye Xian', 'XYE');
INSERT INTO `REGION` VALUES ('2013', '411330', '桐柏县', '199', '0', '0', 'Tongbai Xian', 'TBX');
INSERT INTO `REGION` VALUES ('2014', '411381', '邓州市', '199', '0', '0', 'Dengzhou Shi', 'DGZ');
INSERT INTO `REGION` VALUES ('2015', '411401', '市辖区', '200', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2016', '411402', '梁园区', '200', '0', '0', 'Liangyuan Qu', 'LYY');
INSERT INTO `REGION` VALUES ('2017', '411403', '睢阳区', '200', '0', '0', 'Suiyang Qu', 'SYA');
INSERT INTO `REGION` VALUES ('2018', '411421', '民权县', '200', '0', '0', 'Minquan Xian', 'MQY');
INSERT INTO `REGION` VALUES ('2019', '411422', '睢县', '200', '0', '0', 'Sui Xian', 'SUI');
INSERT INTO `REGION` VALUES ('2020', '411423', '宁陵县', '200', '0', '0', 'Ningling Xian', 'NGL');
INSERT INTO `REGION` VALUES ('2021', '411424', '柘城县', '200', '0', '0', 'Zhecheng Xian', 'ZHC');
INSERT INTO `REGION` VALUES ('2022', '411425', '虞城县', '200', '0', '0', 'Yucheng Xian', 'YUC');
INSERT INTO `REGION` VALUES ('2023', '411426', '夏邑县', '200', '0', '0', 'Xiayi Xian', 'XAY');
INSERT INTO `REGION` VALUES ('2024', '411481', '永城市', '200', '0', '0', 'Yongcheng Shi', 'YOC');
INSERT INTO `REGION` VALUES ('2025', '411501', '市辖区', '201', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2026', '411502', '浉河区', '201', '0', '0', 'Shihe Qu', 'SHU');
INSERT INTO `REGION` VALUES ('2027', '411503', '平桥区', '201', '0', '0', 'Pingqiao Qu', 'PQQ');
INSERT INTO `REGION` VALUES ('2028', '411521', '罗山县', '201', '0', '0', 'Luoshan Xian', 'LSE');
INSERT INTO `REGION` VALUES ('2029', '411522', '光山县', '201', '0', '0', 'Guangshan Xian', 'GSX');
INSERT INTO `REGION` VALUES ('2030', '411523', '新县', '201', '0', '0', 'Xin Xian', 'XXI');
INSERT INTO `REGION` VALUES ('2031', '411524', '商城县', '201', '0', '0', 'Shangcheng Xian', 'SCX');
INSERT INTO `REGION` VALUES ('2032', '411525', '固始县', '201', '0', '0', 'Gushi Xian', 'GSI');
INSERT INTO `REGION` VALUES ('2033', '411526', '潢川县', '201', '0', '0', 'Huangchuan Xian', 'HCU');
INSERT INTO `REGION` VALUES ('2034', '411527', '淮滨县', '201', '0', '0', 'Huaibin Xian', 'HBN');
INSERT INTO `REGION` VALUES ('2035', '411528', '息县', '201', '0', '0', 'Xi Xian', 'XIX');
INSERT INTO `REGION` VALUES ('2036', '411601', '市辖区', '202', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2037', '411602', '川汇区', '202', '0', '0', 'Chuanhui Qu', '2');
INSERT INTO `REGION` VALUES ('2038', '411621', '扶沟县', '202', '0', '0', 'Fugou Xian', '2');
INSERT INTO `REGION` VALUES ('2039', '411622', '西华县', '202', '0', '0', 'Xihua Xian', '2');
INSERT INTO `REGION` VALUES ('2040', '411623', '商水县', '202', '0', '0', 'Shangshui Xian', '2');
INSERT INTO `REGION` VALUES ('2041', '411624', '沈丘县', '202', '0', '0', 'Shenqiu Xian', '2');
INSERT INTO `REGION` VALUES ('2042', '411625', '郸城县', '202', '0', '0', 'Dancheng Xian', '2');
INSERT INTO `REGION` VALUES ('2043', '411626', '淮阳县', '202', '0', '0', 'Huaiyang Xian', '2');
INSERT INTO `REGION` VALUES ('2044', '411627', '太康县', '202', '0', '0', 'Taikang Xian', '2');
INSERT INTO `REGION` VALUES ('2045', '411628', '鹿邑县', '202', '0', '0', 'Luyi Xian', '2');
INSERT INTO `REGION` VALUES ('2046', '411681', '项城市', '202', '0', '0', 'Xiangcheng Shi', '2');
INSERT INTO `REGION` VALUES ('2047', '411701', '市辖区', '203', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2048', '411702', '驿城区', '203', '0', '0', 'Yicheng Qu', '2');
INSERT INTO `REGION` VALUES ('2049', '411721', '西平县', '203', '0', '0', 'Xiping Xian', '2');
INSERT INTO `REGION` VALUES ('2050', '411722', '上蔡县', '203', '0', '0', 'Shangcai Xian', '2');
INSERT INTO `REGION` VALUES ('2051', '411723', '平舆县', '203', '0', '0', 'Pingyu Xian', '2');
INSERT INTO `REGION` VALUES ('2052', '411724', '正阳县', '203', '0', '0', 'Zhengyang Xian', '2');
INSERT INTO `REGION` VALUES ('2053', '411725', '确山县', '203', '0', '0', 'Queshan Xian', '2');
INSERT INTO `REGION` VALUES ('2054', '411726', '泌阳县', '203', '0', '0', 'Biyang Xian', '2');
INSERT INTO `REGION` VALUES ('2055', '411727', '汝南县', '203', '0', '0', 'Runan Xian', '2');
INSERT INTO `REGION` VALUES ('2056', '411728', '遂平县', '203', '0', '0', 'Suiping Xian', '2');
INSERT INTO `REGION` VALUES ('2057', '411729', '新蔡县', '203', '0', '0', 'Xincai Xian', '2');
INSERT INTO `REGION` VALUES ('2058', '420101', '市辖区', '204', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2059', '420102', '江岸区', '204', '0', '0', 'Jiang,an Qu', 'JAA');
INSERT INTO `REGION` VALUES ('2060', '420103', '江汉区', '204', '0', '0', 'Jianghan Qu', 'JHN');
INSERT INTO `REGION` VALUES ('2061', '420104', '硚口区', '204', '0', '0', 'Qiaokou Qu', 'QKQ');
INSERT INTO `REGION` VALUES ('2062', '420105', '汉阳区', '204', '0', '0', 'Hanyang Qu', 'HYA');
INSERT INTO `REGION` VALUES ('2063', '420106', '武昌区', '204', '0', '0', 'Wuchang Qu', 'WCQ');
INSERT INTO `REGION` VALUES ('2064', '420107', '青山区', '204', '0', '0', 'Qingshan Qu', 'QSN');
INSERT INTO `REGION` VALUES ('2065', '420111', '洪山区', '204', '0', '0', 'Hongshan Qu', 'HSQ');
INSERT INTO `REGION` VALUES ('2066', '420112', '东西湖区', '204', '0', '0', 'Dongxihu Qu', 'DXH');
INSERT INTO `REGION` VALUES ('2067', '420113', '汉南区', '204', '0', '0', 'Hannan Qu', 'HNQ');
INSERT INTO `REGION` VALUES ('2068', '420114', '蔡甸区', '204', '0', '0', 'CaIDian Qu', 'CDN');
INSERT INTO `REGION` VALUES ('2069', '420115', '江夏区', '204', '0', '0', 'Jiangxia Qu', 'JXQ');
INSERT INTO `REGION` VALUES ('2070', '420116', '黄陂区', '204', '0', '0', 'Huangpi Qu', 'HPI');
INSERT INTO `REGION` VALUES ('2071', '420117', '新洲区', '204', '0', '0', 'Xinzhou Qu', 'XNZ');
INSERT INTO `REGION` VALUES ('2072', '420201', '市辖区', '205', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2073', '420202', '黄石港区', '205', '0', '0', 'Huangshigang Qu', 'HSG');
INSERT INTO `REGION` VALUES ('2074', '420203', '西塞山区', '205', '0', '0', 'Xisaishan Qu', '2');
INSERT INTO `REGION` VALUES ('2075', '420204', '下陆区', '205', '0', '0', 'Xialu Qu', 'XAL');
INSERT INTO `REGION` VALUES ('2076', '420205', '铁山区', '205', '0', '0', 'Tieshan Qu', 'TSH');
INSERT INTO `REGION` VALUES ('2077', '420222', '阳新县', '205', '0', '0', 'Yangxin Xian', 'YXE');
INSERT INTO `REGION` VALUES ('2078', '420281', '大冶市', '205', '0', '0', 'Daye Shi', 'DYE');
INSERT INTO `REGION` VALUES ('2079', '420301', '市辖区', '206', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2080', '420302', '茅箭区', '206', '0', '0', 'Maojian Qu', 'MJN');
INSERT INTO `REGION` VALUES ('2081', '420303', '张湾区', '206', '0', '0', 'Zhangwan Qu', 'ZWQ');
INSERT INTO `REGION` VALUES ('2082', '420321', '郧县', '206', '0', '0', 'Yun Xian', 'YUN');
INSERT INTO `REGION` VALUES ('2083', '420322', '郧西县', '206', '0', '0', 'Yunxi Xian', 'YNX');
INSERT INTO `REGION` VALUES ('2084', '420323', '竹山县', '206', '0', '0', 'Zhushan Xian', 'ZHS');
INSERT INTO `REGION` VALUES ('2085', '420324', '竹溪县', '206', '0', '0', 'Zhuxi Xian', 'ZXX');
INSERT INTO `REGION` VALUES ('2086', '420325', '房县', '206', '0', '0', 'Fang Xian', 'FAG');
INSERT INTO `REGION` VALUES ('2087', '420381', '丹江口市', '206', '0', '0', 'Danjiangkou Shi', 'DJK');
INSERT INTO `REGION` VALUES ('2088', '420501', '市辖区', '207', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2089', '420502', '西陵区', '207', '0', '0', 'Xiling Qu', 'XLQ');
INSERT INTO `REGION` VALUES ('2090', '420503', '伍家岗区', '207', '0', '0', 'Wujiagang Qu', 'WJG');
INSERT INTO `REGION` VALUES ('2091', '420504', '点军区', '207', '0', '0', 'Dianjun Qu', 'DJN');
INSERT INTO `REGION` VALUES ('2092', '420505', '猇亭区', '207', '0', '0', 'Xiaoting Qu', 'XTQ');
INSERT INTO `REGION` VALUES ('2093', '420506', '夷陵区', '207', '0', '0', 'Yiling Qu', '2');
INSERT INTO `REGION` VALUES ('2094', '420525', '远安县', '207', '0', '0', 'Yuan,an Xian', 'YAX');
INSERT INTO `REGION` VALUES ('2095', '420526', '兴山县', '207', '0', '0', 'Xingshan Xian', 'XSX');
INSERT INTO `REGION` VALUES ('2096', '420527', '秭归县', '207', '0', '0', 'Zigui Xian', 'ZGI');
INSERT INTO `REGION` VALUES ('2097', '420528', '长阳土家族自治县', '207', '0', '0', 'Changyang Tujiazu Zizhixian', 'CYA');
INSERT INTO `REGION` VALUES ('2098', '420529', '五峰土家族自治县', '207', '0', '0', 'Wufeng Tujiazu Zizhixian', 'WFG');
INSERT INTO `REGION` VALUES ('2099', '420581', '宜都市', '207', '0', '0', 'YIDu Shi', 'YID');
INSERT INTO `REGION` VALUES ('2100', '420582', '当阳市', '207', '0', '0', 'Dangyang Shi', 'DYS');
INSERT INTO `REGION` VALUES ('2101', '420583', '枝江市', '207', '0', '0', 'Zhijiang Shi', 'ZIJ');
INSERT INTO `REGION` VALUES ('2102', '420601', '市辖区', '208', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2103', '420602', '襄城区', '208', '0', '0', 'Xiangcheng Qu', 'XXF');
INSERT INTO `REGION` VALUES ('2104', '420606', '樊城区', '208', '0', '0', 'Fancheng Qu', 'FNC');
INSERT INTO `REGION` VALUES ('2105', '420607', '襄阳区', '208', '0', '0', 'Xiangyang Qu', '2');
INSERT INTO `REGION` VALUES ('2106', '420624', '南漳县', '208', '0', '0', 'Nanzhang Xian', 'NZH');
INSERT INTO `REGION` VALUES ('2107', '420625', '谷城县', '208', '0', '0', 'Gucheng Xian', 'GUC');
INSERT INTO `REGION` VALUES ('2108', '420626', '保康县', '208', '0', '0', 'Baokang Xian', 'BKG');
INSERT INTO `REGION` VALUES ('2109', '420682', '老河口市', '208', '0', '0', 'Laohekou Shi', 'LHK');
INSERT INTO `REGION` VALUES ('2110', '420683', '枣阳市', '208', '0', '0', 'Zaoyang Shi', 'ZOY');
INSERT INTO `REGION` VALUES ('2111', '420684', '宜城市', '208', '0', '0', 'Yicheng Shi', 'YCW');
INSERT INTO `REGION` VALUES ('2112', '420701', '市辖区', '209', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2113', '420702', '梁子湖区', '209', '0', '0', 'Liangzihu Qu', 'LZI');
INSERT INTO `REGION` VALUES ('2114', '420703', '华容区', '209', '0', '0', 'Huarong Qu', 'HRQ');
INSERT INTO `REGION` VALUES ('2115', '420704', '鄂城区', '209', '0', '0', 'Echeng Qu', 'ECQ');
INSERT INTO `REGION` VALUES ('2116', '420801', '市辖区', '210', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2117', '420802', '东宝区', '210', '0', '0', 'Dongbao Qu', 'DBQ');
INSERT INTO `REGION` VALUES ('2118', '420804', '掇刀区', '210', '0', '0', 'Duodao Qu', '2');
INSERT INTO `REGION` VALUES ('2119', '420821', '京山县', '210', '0', '0', 'Jingshan Xian', 'JSA');
INSERT INTO `REGION` VALUES ('2120', '420822', '沙洋县', '210', '0', '0', 'Shayang Xian', 'SYF');
INSERT INTO `REGION` VALUES ('2121', '420881', '钟祥市', '210', '0', '0', 'Zhongxiang Shi', '2');
INSERT INTO `REGION` VALUES ('2122', '420901', '市辖区', '211', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2123', '420902', '孝南区', '211', '0', '0', 'Xiaonan Qu', 'XNA');
INSERT INTO `REGION` VALUES ('2124', '420921', '孝昌县', '211', '0', '0', 'Xiaochang Xian', 'XOC');
INSERT INTO `REGION` VALUES ('2125', '420922', '大悟县', '211', '0', '0', 'Dawu Xian', 'DWU');
INSERT INTO `REGION` VALUES ('2126', '420923', '云梦县', '211', '0', '0', 'Yunmeng Xian', 'YMX');
INSERT INTO `REGION` VALUES ('2127', '420981', '应城市', '211', '0', '0', 'Yingcheng Shi', 'YCG');
INSERT INTO `REGION` VALUES ('2128', '420982', '安陆市', '211', '0', '0', 'Anlu Shi', 'ALU');
INSERT INTO `REGION` VALUES ('2129', '420984', '汉川市', '211', '0', '0', 'Hanchuan Shi', 'HCH');
INSERT INTO `REGION` VALUES ('2130', '421001', '市辖区', '212', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2131', '421002', '沙市区', '212', '0', '0', 'Shashi Qu', 'SSJ');
INSERT INTO `REGION` VALUES ('2132', '421003', '荆州区', '212', '0', '0', 'Jingzhou Qu', 'JZQ');
INSERT INTO `REGION` VALUES ('2133', '421022', '公安县', '212', '0', '0', 'Gong,an Xian', 'GGA');
INSERT INTO `REGION` VALUES ('2134', '421023', '监利县', '212', '0', '0', 'Jianli Xian', 'JLI');
INSERT INTO `REGION` VALUES ('2135', '421024', '江陵县', '212', '0', '0', 'Jiangling Xian', 'JLX');
INSERT INTO `REGION` VALUES ('2136', '421081', '石首市', '212', '0', '0', 'Shishou Shi', 'SSO');
INSERT INTO `REGION` VALUES ('2137', '421083', '洪湖市', '212', '0', '0', 'Honghu Shi', 'HHU');
INSERT INTO `REGION` VALUES ('2138', '421087', '松滋市', '212', '0', '0', 'Songzi Shi', 'SZF');
INSERT INTO `REGION` VALUES ('2139', '421101', '市辖区', '213', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2140', '421102', '黄州区', '213', '0', '0', 'Huangzhou Qu', 'HZC');
INSERT INTO `REGION` VALUES ('2141', '421121', '团风县', '213', '0', '0', 'Tuanfeng Xian', 'TFG');
INSERT INTO `REGION` VALUES ('2142', '421122', '红安县', '213', '0', '0', 'Hong,an Xian', 'HGA');
INSERT INTO `REGION` VALUES ('2143', '421123', '罗田县', '213', '0', '0', 'Luotian Xian', 'LTE');
INSERT INTO `REGION` VALUES ('2144', '421124', '英山县', '213', '0', '0', 'Yingshan Xian', 'YSE');
INSERT INTO `REGION` VALUES ('2145', '421125', '浠水县', '213', '0', '0', 'Xishui Xian', 'XSE');
INSERT INTO `REGION` VALUES ('2146', '421126', '蕲春县', '213', '0', '0', 'Qichun Xian', 'QCN');
INSERT INTO `REGION` VALUES ('2147', '421127', '黄梅县', '213', '0', '0', 'Huangmei Xian', 'HGM');
INSERT INTO `REGION` VALUES ('2148', '421181', '麻城市', '213', '0', '0', 'Macheng Shi', 'MCS');
INSERT INTO `REGION` VALUES ('2149', '421182', '武穴市', '213', '0', '0', 'Wuxue Shi', 'WXE');
INSERT INTO `REGION` VALUES ('2150', '421201', '市辖区', '214', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2151', '421202', '咸安区', '214', '0', '0', 'Xian,an Qu', 'XAN');
INSERT INTO `REGION` VALUES ('2152', '421221', '嘉鱼县', '214', '0', '0', 'Jiayu Xian', 'JYX');
INSERT INTO `REGION` VALUES ('2153', '421222', '通城县', '214', '0', '0', 'Tongcheng Xian', 'TCX');
INSERT INTO `REGION` VALUES ('2154', '421223', '崇阳县', '214', '0', '0', 'Chongyang Xian', 'CGY');
INSERT INTO `REGION` VALUES ('2155', '421224', '通山县', '214', '0', '0', 'Tongshan Xian', 'TSA');
INSERT INTO `REGION` VALUES ('2156', '421281', '赤壁市', '214', '0', '0', 'Chibi Shi', 'CBI');
INSERT INTO `REGION` VALUES ('2157', '421301', '市辖区', '215', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2158', '421303', '曾都区', '215', '0', '0', 'Zengdu Qu', '2');
INSERT INTO `REGION` VALUES ('2159', '421381', '广水市', '215', '0', '0', 'Guangshui Shi', '2');
INSERT INTO `REGION` VALUES ('2160', '422801', '恩施市', '216', '0', '0', 'Enshi Shi', 'ESS');
INSERT INTO `REGION` VALUES ('2161', '422802', '利川市', '216', '0', '0', 'Lichuan Shi', 'LCE');
INSERT INTO `REGION` VALUES ('2162', '422822', '建始县', '216', '0', '0', 'Jianshi Xian', 'JSE');
INSERT INTO `REGION` VALUES ('2163', '422823', '巴东县', '216', '0', '0', 'Badong Xian', 'BDG');
INSERT INTO `REGION` VALUES ('2164', '422825', '宣恩县', '216', '0', '0', 'Xuan,en Xian', 'XEN');
INSERT INTO `REGION` VALUES ('2165', '422826', '咸丰县', '216', '0', '0', 'Xianfeng Xian', 'XFG');
INSERT INTO `REGION` VALUES ('2166', '422827', '来凤县', '216', '0', '0', 'Laifeng Xian', 'LFG');
INSERT INTO `REGION` VALUES ('2167', '422828', '鹤峰县', '216', '0', '0', 'Hefeng Xian', 'HEF');
INSERT INTO `REGION` VALUES ('2168', '429004', '仙桃市', '217', '0', '0', 'Xiantao Shi', 'XNT');
INSERT INTO `REGION` VALUES ('2169', '429005', '潜江市', '217', '0', '0', 'Qianjiang Shi', 'QNJ');
INSERT INTO `REGION` VALUES ('2170', '429006', '天门市', '217', '0', '0', 'Tianmen Shi', 'TMS');
INSERT INTO `REGION` VALUES ('2171', '429021', '神农架林区', '217', '0', '0', 'Shennongjia Linqu', 'SNJ');
INSERT INTO `REGION` VALUES ('2172', '430101', '市辖区', '218', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2173', '430102', '芙蓉区', '218', '0', '0', 'Furong Qu', 'FRQ');
INSERT INTO `REGION` VALUES ('2174', '430103', '天心区', '218', '0', '0', 'Tianxin Qu', 'TXQ');
INSERT INTO `REGION` VALUES ('2175', '430104', '岳麓区', '218', '0', '0', 'Yuelu Qu', 'YLU');
INSERT INTO `REGION` VALUES ('2176', '430105', '开福区', '218', '0', '0', 'Kaifu Qu', 'KFQ');
INSERT INTO `REGION` VALUES ('2177', '430111', '雨花区', '218', '0', '0', 'Yuhua Qu', 'YHA');
INSERT INTO `REGION` VALUES ('2178', '430121', '长沙县', '218', '0', '0', 'Changsha Xian', 'CSA');
INSERT INTO `REGION` VALUES ('2179', '430122', '望城县', '218', '0', '0', 'Wangcheng Xian', 'WCH');
INSERT INTO `REGION` VALUES ('2180', '430124', '宁乡县', '218', '0', '0', 'Ningxiang Xian', 'NXX');
INSERT INTO `REGION` VALUES ('2181', '430181', '浏阳市', '218', '0', '0', 'Liuyang Shi', 'LYS');
INSERT INTO `REGION` VALUES ('2182', '430201', '市辖区', '219', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2183', '430202', '荷塘区', '219', '0', '0', 'Hetang Qu', 'HTZ');
INSERT INTO `REGION` VALUES ('2184', '430203', '芦淞区', '219', '0', '0', 'Lusong Qu', 'LZZ');
INSERT INTO `REGION` VALUES ('2185', '430204', '石峰区', '219', '0', '0', 'Shifeng Qu', 'SFG');
INSERT INTO `REGION` VALUES ('2186', '430211', '天元区', '219', '0', '0', 'Tianyuan Qu', 'TYQ');
INSERT INTO `REGION` VALUES ('2187', '430221', '株洲县', '219', '0', '0', 'Zhuzhou Xian', 'ZZX');
INSERT INTO `REGION` VALUES ('2188', '430223', '攸县', '219', '0', '0', 'You Xian', 'YOU');
INSERT INTO `REGION` VALUES ('2189', '430224', '茶陵县', '219', '0', '0', 'Chaling Xian', 'CAL');
INSERT INTO `REGION` VALUES ('2190', '430225', '炎陵县', '219', '0', '0', 'Yanling Xian', 'YLX');
INSERT INTO `REGION` VALUES ('2191', '430281', '醴陵市', '219', '0', '0', 'Liling Shi', 'LIL');
INSERT INTO `REGION` VALUES ('2192', '430301', '市辖区', '220', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2193', '430302', '雨湖区', '220', '0', '0', 'Yuhu Qu', 'YHU');
INSERT INTO `REGION` VALUES ('2194', '430304', '岳塘区', '220', '0', '0', 'Yuetang Qu', 'YTG');
INSERT INTO `REGION` VALUES ('2195', '430321', '湘潭县', '220', '0', '0', 'Xiangtan Qu', 'XTX');
INSERT INTO `REGION` VALUES ('2196', '430381', '湘乡市', '220', '0', '0', 'Xiangxiang Shi', 'XXG');
INSERT INTO `REGION` VALUES ('2197', '430382', '韶山市', '220', '0', '0', 'Shaoshan Shi', 'SSN');
INSERT INTO `REGION` VALUES ('2198', '430401', '市辖区', '221', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2199', '430405', '珠晖区', '221', '0', '0', 'Zhuhui Qu', '2');
INSERT INTO `REGION` VALUES ('2200', '430406', '雁峰区', '221', '0', '0', 'Yanfeng Qu', '2');
INSERT INTO `REGION` VALUES ('2201', '430407', '石鼓区', '221', '0', '0', 'Shigu Qu', '2');
INSERT INTO `REGION` VALUES ('2202', '430408', '蒸湘区', '221', '0', '0', 'Zhengxiang Qu', '2');
INSERT INTO `REGION` VALUES ('2203', '430412', '南岳区', '221', '0', '0', 'Nanyue Qu', 'NYQ');
INSERT INTO `REGION` VALUES ('2204', '430421', '衡阳县', '221', '0', '0', 'Hengyang Xian', 'HYO');
INSERT INTO `REGION` VALUES ('2205', '430422', '衡南县', '221', '0', '0', 'Hengnan Xian', 'HNX');
INSERT INTO `REGION` VALUES ('2206', '430423', '衡山县', '221', '0', '0', 'Hengshan Xian', 'HSH');
INSERT INTO `REGION` VALUES ('2207', '430424', '衡东县', '221', '0', '0', 'Hengdong Xian', 'HED');
INSERT INTO `REGION` VALUES ('2208', '430426', '祁东县', '221', '0', '0', 'QIDong Xian', 'QDX');
INSERT INTO `REGION` VALUES ('2209', '430481', '耒阳市', '221', '0', '0', 'Leiyang Shi', 'LEY');
INSERT INTO `REGION` VALUES ('2210', '430482', '常宁市', '221', '0', '0', 'Changning Shi', 'CNS');
INSERT INTO `REGION` VALUES ('2211', '430501', '市辖区', '222', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2212', '430502', '双清区', '222', '0', '0', 'Shuangqing Qu', 'SGQ');
INSERT INTO `REGION` VALUES ('2213', '430503', '大祥区', '222', '0', '0', 'Daxiang Qu', 'DXS');
INSERT INTO `REGION` VALUES ('2214', '430511', '北塔区', '222', '0', '0', 'Beita Qu', 'BET');
INSERT INTO `REGION` VALUES ('2215', '430521', '邵东县', '222', '0', '0', 'Shaodong Xian', 'SDG');
INSERT INTO `REGION` VALUES ('2216', '430522', '新邵县', '222', '0', '0', 'Xinshao Xian', 'XSO');
INSERT INTO `REGION` VALUES ('2217', '430523', '邵阳县', '222', '0', '0', 'Shaoyang Xian', 'SYW');
INSERT INTO `REGION` VALUES ('2218', '430524', '隆回县', '222', '0', '0', 'Longhui Xian', 'LGH');
INSERT INTO `REGION` VALUES ('2219', '430525', '洞口县', '222', '0', '0', 'Dongkou Xian', 'DGK');
INSERT INTO `REGION` VALUES ('2220', '430527', '绥宁县', '222', '0', '0', 'Suining Xian', 'SNX');
INSERT INTO `REGION` VALUES ('2221', '430528', '新宁县', '222', '0', '0', 'Xinning Xian', 'XNI');
INSERT INTO `REGION` VALUES ('2222', '430529', '城步苗族自治县', '222', '0', '0', 'Chengbu Miaozu Zizhixian', 'CBU');
INSERT INTO `REGION` VALUES ('2223', '430581', '武冈市', '222', '0', '0', 'Wugang Shi', 'WGS');
INSERT INTO `REGION` VALUES ('2224', '430601', '市辖区', '223', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2225', '430602', '岳阳楼区', '223', '0', '0', 'Yueyanglou Qu', 'YYL');
INSERT INTO `REGION` VALUES ('2226', '430603', '云溪区', '223', '0', '0', 'Yunxi Qu', 'YXI');
INSERT INTO `REGION` VALUES ('2227', '430611', '君山区', '223', '0', '0', 'Junshan Qu', 'JUS');
INSERT INTO `REGION` VALUES ('2228', '430621', '岳阳县', '223', '0', '0', 'Yueyang Xian', 'YYX');
INSERT INTO `REGION` VALUES ('2229', '430623', '华容县', '223', '0', '0', 'Huarong Xian', 'HRG');
INSERT INTO `REGION` VALUES ('2230', '430624', '湘阴县', '223', '0', '0', 'Xiangyin Xian', 'XYN');
INSERT INTO `REGION` VALUES ('2231', '430626', '平江县', '223', '0', '0', 'Pingjiang Xian', 'PJH');
INSERT INTO `REGION` VALUES ('2232', '430681', '汨罗市', '223', '0', '0', 'Miluo Shi', 'MLU');
INSERT INTO `REGION` VALUES ('2233', '430682', '临湘市', '223', '0', '0', 'Linxiang Shi', 'LXY');
INSERT INTO `REGION` VALUES ('2234', '430701', '市辖区', '224', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2235', '430702', '武陵区', '224', '0', '0', 'Wuling Qu', 'WLQ');
INSERT INTO `REGION` VALUES ('2236', '430703', '鼎城区', '224', '0', '0', 'Dingcheng Qu', 'DCE');
INSERT INTO `REGION` VALUES ('2237', '430721', '安乡县', '224', '0', '0', 'Anxiang Xian', 'AXG');
INSERT INTO `REGION` VALUES ('2238', '430722', '汉寿县', '224', '0', '0', 'Hanshou Xian', 'HSO');
INSERT INTO `REGION` VALUES ('2239', '430723', '澧县', '224', '0', '0', 'Li Xian', 'LXX');
INSERT INTO `REGION` VALUES ('2240', '430724', '临澧县', '224', '0', '0', 'Linli Xian', 'LNL');
INSERT INTO `REGION` VALUES ('2241', '430725', '桃源县', '224', '0', '0', 'Taoyuan Xian', 'TOY');
INSERT INTO `REGION` VALUES ('2242', '430726', '石门县', '224', '0', '0', 'Shimen Xian', 'SHM');
INSERT INTO `REGION` VALUES ('2243', '430781', '津市市', '224', '0', '0', 'Jinshi Shi', 'JSS');
INSERT INTO `REGION` VALUES ('2244', '430801', '市辖区', '225', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2245', '430802', '永定区', '225', '0', '0', 'Yongding Qu', 'YDQ');
INSERT INTO `REGION` VALUES ('2246', '430811', '武陵源区', '225', '0', '0', 'Wulingyuan Qu', 'WLY');
INSERT INTO `REGION` VALUES ('2247', '430821', '慈利县', '225', '0', '0', 'Cili Xian', 'CLI');
INSERT INTO `REGION` VALUES ('2248', '430822', '桑植县', '225', '0', '0', 'Sangzhi Xian', 'SZT');
INSERT INTO `REGION` VALUES ('2249', '430901', '市辖区', '226', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2250', '430902', '资阳区', '226', '0', '0', 'Ziyang Qu', 'ZYC');
INSERT INTO `REGION` VALUES ('2251', '430903', '赫山区', '226', '0', '0', 'Heshan Qu', 'HSY');
INSERT INTO `REGION` VALUES ('2252', '430921', '南县', '226', '0', '0', 'Nan Xian', 'NXN');
INSERT INTO `REGION` VALUES ('2253', '430922', '桃江县', '226', '0', '0', 'Taojiang Xian', 'TJG');
INSERT INTO `REGION` VALUES ('2254', '430923', '安化县', '226', '0', '0', 'Anhua Xian', 'ANH');
INSERT INTO `REGION` VALUES ('2255', '430981', '沅江市', '226', '0', '0', 'Yuanjiang Shi', 'YJS');
INSERT INTO `REGION` VALUES ('2256', '431001', '市辖区', '227', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2257', '431002', '北湖区', '227', '0', '0', 'Beihu Qu', 'BHQ');
INSERT INTO `REGION` VALUES ('2258', '431003', '苏仙区', '227', '0', '0', 'Suxian Qu', '2');
INSERT INTO `REGION` VALUES ('2259', '431021', '桂阳县', '227', '0', '0', 'Guiyang Xian', 'GYX');
INSERT INTO `REGION` VALUES ('2260', '431022', '宜章县', '227', '0', '0', 'yizhang Xian', 'YZA');
INSERT INTO `REGION` VALUES ('2261', '431023', '永兴县', '227', '0', '0', 'Yongxing Xian', 'YXX');
INSERT INTO `REGION` VALUES ('2262', '431024', '嘉禾县', '227', '0', '0', 'Jiahe Xian', 'JAH');
INSERT INTO `REGION` VALUES ('2263', '431025', '临武县', '227', '0', '0', 'Linwu Xian', 'LWX');
INSERT INTO `REGION` VALUES ('2264', '431026', '汝城县', '227', '0', '0', 'Rucheng Xian', 'RCE');
INSERT INTO `REGION` VALUES ('2265', '431027', '桂东县', '227', '0', '0', 'GuIDong Xian', 'GDO');
INSERT INTO `REGION` VALUES ('2266', '431028', '安仁县', '227', '0', '0', 'Anren Xian', 'ARN');
INSERT INTO `REGION` VALUES ('2267', '431081', '资兴市', '227', '0', '0', 'Zixing Shi', 'ZXG');
INSERT INTO `REGION` VALUES ('2268', '431101', '市辖区', '228', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2270', '431103', '冷水滩区', '228', '0', '0', 'Lengshuitan Qu', 'LST');
INSERT INTO `REGION` VALUES ('2271', '431121', '祁阳县', '228', '0', '0', 'Qiyang Xian', 'QJY');
INSERT INTO `REGION` VALUES ('2272', '431122', '东安县', '228', '0', '0', 'Dong,an Xian', 'DOA');
INSERT INTO `REGION` VALUES ('2273', '431123', '双牌县', '228', '0', '0', 'Shuangpai Xian', 'SPA');
INSERT INTO `REGION` VALUES ('2274', '431124', '道县', '228', '0', '0', 'Dao Xian', 'DAO');
INSERT INTO `REGION` VALUES ('2275', '431125', '江永县', '228', '0', '0', 'Jiangyong Xian', 'JYD');
INSERT INTO `REGION` VALUES ('2276', '431126', '宁远县', '228', '0', '0', 'Ningyuan Xian', 'NYN');
INSERT INTO `REGION` VALUES ('2277', '431127', '蓝山县', '228', '0', '0', 'Lanshan Xian', 'LNS');
INSERT INTO `REGION` VALUES ('2278', '431128', '新田县', '228', '0', '0', 'Xintian Xian', 'XTN');
INSERT INTO `REGION` VALUES ('2279', '431129', '江华瑶族自治县', '228', '0', '0', 'Jianghua Yaozu Zizhixian', 'JHX');
INSERT INTO `REGION` VALUES ('2280', '431201', '市辖区', '229', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2281', '431202', '鹤城区', '229', '0', '0', 'Hecheng Qu', 'HCG');
INSERT INTO `REGION` VALUES ('2282', '431221', '中方县', '229', '0', '0', 'Zhongfang Xian', 'ZFX');
INSERT INTO `REGION` VALUES ('2283', '431222', '沅陵县', '229', '0', '0', 'Yuanling Xian', 'YNL');
INSERT INTO `REGION` VALUES ('2284', '431223', '辰溪县', '229', '0', '0', 'Chenxi Xian', 'CXX');
INSERT INTO `REGION` VALUES ('2285', '431224', '溆浦县', '229', '0', '0', 'Xupu Xian', 'XUP');
INSERT INTO `REGION` VALUES ('2286', '431225', '会同县', '229', '0', '0', 'Huitong Xian', 'HTG');
INSERT INTO `REGION` VALUES ('2287', '431226', '麻阳苗族自治县', '229', '0', '0', 'Mayang Miaozu Zizhixian', 'MYX');
INSERT INTO `REGION` VALUES ('2288', '431227', '新晃侗族自治县', '229', '0', '0', 'Xinhuang Dongzu Zizhixian', 'XHD');
INSERT INTO `REGION` VALUES ('2289', '431228', '芷江侗族自治县', '229', '0', '0', 'Zhijiang Dongzu Zizhixian', 'ZJX');
INSERT INTO `REGION` VALUES ('2290', '431229', '靖州苗族侗族自治县', '229', '0', '0', 'Jingzhou Miaozu Dongzu Zizhixian', 'JZO');
INSERT INTO `REGION` VALUES ('2291', '431230', '通道侗族自治县', '229', '0', '0', 'Tongdao Dongzu Zizhixian', 'TDD');
INSERT INTO `REGION` VALUES ('2292', '431281', '洪江市', '229', '0', '0', 'Hongjiang Shi', 'HGJ');
INSERT INTO `REGION` VALUES ('2293', '431301', '市辖区', '230', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2294', '431302', '娄星区', '230', '0', '0', 'Louxing Qu', '2');
INSERT INTO `REGION` VALUES ('2295', '431321', '双峰县', '230', '0', '0', 'Shuangfeng Xian', '2');
INSERT INTO `REGION` VALUES ('2296', '431322', '新化县', '230', '0', '0', 'Xinhua Xian', '2');
INSERT INTO `REGION` VALUES ('2297', '431381', '冷水江市', '230', '0', '0', 'Lengshuijiang Shi', '2');
INSERT INTO `REGION` VALUES ('2298', '431382', '涟源市', '230', '0', '0', 'Lianyuan Shi', '2');
INSERT INTO `REGION` VALUES ('2299', '433101', '吉首市', '231', '0', '0', 'Jishou Shi', 'JSO');
INSERT INTO `REGION` VALUES ('2300', '433122', '泸溪县', '231', '0', '0', 'Luxi Xian', 'LXW');
INSERT INTO `REGION` VALUES ('2301', '433123', '凤凰县', '231', '0', '0', 'Fenghuang Xian', 'FHX');
INSERT INTO `REGION` VALUES ('2302', '433124', '花垣县', '231', '0', '0', 'Huayuan Xian', 'HYH');
INSERT INTO `REGION` VALUES ('2303', '433125', '保靖县', '231', '0', '0', 'Baojing Xian', 'BJG');
INSERT INTO `REGION` VALUES ('2304', '433126', '古丈县', '231', '0', '0', 'Guzhang Xian', 'GZG');
INSERT INTO `REGION` VALUES ('2305', '433127', '永顺县', '231', '0', '0', 'Yongshun Xian', 'YSF');
INSERT INTO `REGION` VALUES ('2306', '433130', '龙山县', '231', '0', '0', 'Longshan Xian', 'LSR');
INSERT INTO `REGION` VALUES ('2307', '440101', '市辖区', '232', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2308', '440115', '南沙区', '232', '0', '0', 'Nansha Qu', '2');
INSERT INTO `REGION` VALUES ('2309', '440103', '荔湾区', '232', '0', '0', 'Liwan Qu', 'LWQ');
INSERT INTO `REGION` VALUES ('2310', '440104', '越秀区', '232', '0', '0', 'Yuexiu Qu', 'YXU');
INSERT INTO `REGION` VALUES ('2311', '440105', '海珠区', '232', '0', '0', 'Haizhu Qu', 'HZU');
INSERT INTO `REGION` VALUES ('2312', '440106', '天河区', '232', '0', '0', 'Tianhe Qu', 'THQ');
INSERT INTO `REGION` VALUES ('2313', '440116', '萝岗区', '232', '0', '0', 'Luogang Qu', '2');
INSERT INTO `REGION` VALUES ('2314', '440111', '白云区', '232', '0', '0', 'Baiyun Qu', 'BYN');
INSERT INTO `REGION` VALUES ('2315', '440112', '黄埔区', '232', '0', '0', 'Huangpu Qu', 'HPU');
INSERT INTO `REGION` VALUES ('2316', '440113', '番禺区', '232', '0', '0', 'Panyu Qu', 'PNY');
INSERT INTO `REGION` VALUES ('2317', '440114', '花都区', '232', '0', '0', 'Huadu Qu', 'HDU');
INSERT INTO `REGION` VALUES ('2318', '440183', '增城市', '232', '0', '0', 'Zengcheng Shi', 'ZEC');
INSERT INTO `REGION` VALUES ('2319', '440184', '从化市', '232', '0', '0', 'Conghua Shi', 'CNH');
INSERT INTO `REGION` VALUES ('2320', '440201', '市辖区', '233', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2321', '440203', '武江区', '233', '0', '0', 'Wujiang Qu', 'WJQ');
INSERT INTO `REGION` VALUES ('2322', '440204', '浈江区', '233', '0', '0', 'Zhenjiang Qu', 'ZJQ');
INSERT INTO `REGION` VALUES ('2323', '440205', '曲江区', '233', '0', '0', 'Qujiang Qu', '2');
INSERT INTO `REGION` VALUES ('2324', '440222', '始兴县', '233', '0', '0', 'Shixing Xian', 'SXX');
INSERT INTO `REGION` VALUES ('2325', '440224', '仁化县', '233', '0', '0', 'Renhua Xian', 'RHA');
INSERT INTO `REGION` VALUES ('2326', '440229', '翁源县', '233', '0', '0', 'Wengyuan Xian', 'WYN');
INSERT INTO `REGION` VALUES ('2327', '440232', '乳源瑶族自治县', '233', '0', '0', 'Ruyuan Yaozu Zizhixian', 'RYN');
INSERT INTO `REGION` VALUES ('2328', '440233', '新丰县', '233', '0', '0', 'Xinfeng Xian', 'XFY');
INSERT INTO `REGION` VALUES ('2329', '440281', '乐昌市', '233', '0', '0', 'Lechang Shi', 'LEC');
INSERT INTO `REGION` VALUES ('2330', '440282', '南雄市', '233', '0', '0', 'Nanxiong Shi', 'NXS');
INSERT INTO `REGION` VALUES ('2331', '440301', '市辖区', '234', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2332', '440303', '罗湖区', '234', '0', '0', 'Luohu Qu', 'LHQ');
INSERT INTO `REGION` VALUES ('2333', '440304', '福田区', '234', '0', '0', 'Futian Qu', 'FTN');
INSERT INTO `REGION` VALUES ('2334', '440305', '南山区', '234', '0', '0', 'Nanshan Qu', 'NSN');
INSERT INTO `REGION` VALUES ('2335', '440306', '宝安区', '234', '0', '0', 'Bao,an Qu', 'BAQ');
INSERT INTO `REGION` VALUES ('2336', '440307', '龙岗区', '234', '0', '0', 'Longgang Qu', 'LGG');
INSERT INTO `REGION` VALUES ('2337', '440308', '盐田区', '234', '0', '0', 'Yan Tian Qu', 'YTQ');
INSERT INTO `REGION` VALUES ('2338', '440401', '市辖区', '235', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2339', '440402', '香洲区', '235', '0', '0', 'Xiangzhou Qu', 'XZQ');
INSERT INTO `REGION` VALUES ('2340', '440403', '斗门区', '235', '0', '0', 'Doumen Qu', 'DOU');
INSERT INTO `REGION` VALUES ('2341', '440404', '金湾区', '235', '0', '0', 'Jinwan Qu', 'JW Q');
INSERT INTO `REGION` VALUES ('2342', '440501', '市辖区', '236', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2343', '440507', '龙湖区', '236', '0', '0', 'Longhu Qu', 'LHH');
INSERT INTO `REGION` VALUES ('2344', '440511', '金平区', '236', '0', '0', 'Jinping Qu', 'JPQ');
INSERT INTO `REGION` VALUES ('2345', '440512', '濠江区', '236', '0', '0', 'Haojiang Qu', 'HJ Q');
INSERT INTO `REGION` VALUES ('2346', '440513', '潮阳区', '236', '0', '0', 'Chaoyang  Qu', 'CHY');
INSERT INTO `REGION` VALUES ('2347', '440514', '潮南区', '236', '0', '0', 'Chaonan Qu', 'CN Q');
INSERT INTO `REGION` VALUES ('2348', '440515', '澄海区', '236', '0', '0', 'Chenghai QU', 'CHS');
INSERT INTO `REGION` VALUES ('2349', '440523', '南澳县', '236', '0', '0', 'Nan,ao Xian', 'NAN');
INSERT INTO `REGION` VALUES ('2350', '440601', '市辖区', '237', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2351', '440604', '禅城区', '237', '0', '0', 'Chancheng Qu', 'CC Q');
INSERT INTO `REGION` VALUES ('2352', '440605', '南海区', '237', '0', '0', 'Nanhai Shi', 'NAH');
INSERT INTO `REGION` VALUES ('2353', '440606', '顺德区', '237', '0', '0', 'Shunde Shi', 'SUD');
INSERT INTO `REGION` VALUES ('2354', '440607', '三水区', '237', '0', '0', 'Sanshui Shi', 'SJQ');
INSERT INTO `REGION` VALUES ('2355', '440608', '高明区', '237', '0', '0', 'Gaoming Shi', 'GOM');
INSERT INTO `REGION` VALUES ('2356', '440701', '市辖区', '238', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2357', '440703', '蓬江区', '238', '0', '0', 'Pengjiang Qu', 'PJJ');
INSERT INTO `REGION` VALUES ('2358', '440704', '江海区', '238', '0', '0', 'Jianghai Qu', 'JHI');
INSERT INTO `REGION` VALUES ('2359', '440705', '新会区', '238', '0', '0', 'Xinhui Shi', 'XIN');
INSERT INTO `REGION` VALUES ('2360', '440781', '台山市', '238', '0', '0', 'Taishan Shi', 'TSS');
INSERT INTO `REGION` VALUES ('2361', '440783', '开平市', '238', '0', '0', 'Kaiping Shi', 'KPS');
INSERT INTO `REGION` VALUES ('2362', '440784', '鹤山市', '238', '0', '0', 'Heshan Shi', 'HES');
INSERT INTO `REGION` VALUES ('2363', '440785', '恩平市', '238', '0', '0', 'Enping Shi', 'ENP');
INSERT INTO `REGION` VALUES ('2364', '440801', '市辖区', '239', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2365', '440802', '赤坎区', '239', '0', '0', 'Chikan Qu', 'CKQ');
INSERT INTO `REGION` VALUES ('2366', '440803', '霞山区', '239', '0', '0', 'Xiashan Qu', 'XAS');
INSERT INTO `REGION` VALUES ('2367', '440804', '坡头区', '239', '0', '0', 'Potou Qu', 'PTU');
INSERT INTO `REGION` VALUES ('2368', '440811', '麻章区', '239', '0', '0', 'Mazhang Qu', 'MZQ');
INSERT INTO `REGION` VALUES ('2369', '440823', '遂溪县', '239', '0', '0', 'Suixi Xian', 'SXI');
INSERT INTO `REGION` VALUES ('2370', '440825', '徐闻县', '239', '0', '0', 'Xuwen Xian', 'XWN');
INSERT INTO `REGION` VALUES ('2371', '440881', '廉江市', '239', '0', '0', 'Lianjiang Shi', 'LJS');
INSERT INTO `REGION` VALUES ('2372', '440882', '雷州市', '239', '0', '0', 'Leizhou Shi', 'LEZ');
INSERT INTO `REGION` VALUES ('2373', '440883', '吴川市', '239', '0', '0', 'Wuchuan Shi', 'WCS');
INSERT INTO `REGION` VALUES ('2374', '440901', '市辖区', '240', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2375', '440902', '茂南区', '240', '0', '0', 'Maonan Qu', 'MNQ');
INSERT INTO `REGION` VALUES ('2376', '440903', '茂港区', '240', '0', '0', 'Maogang Qu', 'MGQ');
INSERT INTO `REGION` VALUES ('2377', '440923', '电白县', '240', '0', '0', 'Dianbai Xian', 'DBI');
INSERT INTO `REGION` VALUES ('2378', '440981', '高州市', '240', '0', '0', 'Gaozhou Shi', 'GZO');
INSERT INTO `REGION` VALUES ('2379', '440982', '化州市', '240', '0', '0', 'Huazhou Shi', 'HZY');
INSERT INTO `REGION` VALUES ('2380', '440983', '信宜市', '240', '0', '0', 'Xinyi Shi', 'XYY');
INSERT INTO `REGION` VALUES ('2381', '441201', '市辖区', '241', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2382', '441202', '端州区', '241', '0', '0', 'Duanzhou Qu', 'DZQ');
INSERT INTO `REGION` VALUES ('2383', '441203', '鼎湖区', '241', '0', '0', 'Dinghu Qu', 'DGH');
INSERT INTO `REGION` VALUES ('2384', '441223', '广宁县', '241', '0', '0', 'Guangning Xian', 'GNG');
INSERT INTO `REGION` VALUES ('2385', '441224', '怀集县', '241', '0', '0', 'Huaiji Xian', 'HJX');
INSERT INTO `REGION` VALUES ('2386', '441225', '封开县', '241', '0', '0', 'Fengkai Xian', 'FKX');
INSERT INTO `REGION` VALUES ('2387', '441226', '德庆县', '241', '0', '0', 'Deqing Xian', 'DQY');
INSERT INTO `REGION` VALUES ('2388', '441283', '高要市', '241', '0', '0', 'Gaoyao Xian', 'GYY');
INSERT INTO `REGION` VALUES ('2389', '441284', '四会市', '241', '0', '0', 'Sihui Shi', 'SHI');
INSERT INTO `REGION` VALUES ('2390', '441301', '市辖区', '242', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2391', '441302', '惠城区', '242', '0', '0', 'Huicheng Qu', 'HCQ');
INSERT INTO `REGION` VALUES ('2392', '441303', '惠阳区', '242', '0', '0', 'Huiyang Shi', 'HUY');
INSERT INTO `REGION` VALUES ('2393', '441322', '博罗县', '242', '0', '0', 'Boluo Xian', 'BOL');
INSERT INTO `REGION` VALUES ('2394', '441323', '惠东县', '242', '0', '0', 'HuIDong Xian', 'HID');
INSERT INTO `REGION` VALUES ('2395', '441324', '龙门县', '242', '0', '0', 'Longmen Xian', 'LMN');
INSERT INTO `REGION` VALUES ('2396', '441401', '市辖区', '243', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2397', '441402', '梅江区', '243', '0', '0', 'Meijiang Qu', 'MJQ');
INSERT INTO `REGION` VALUES ('2398', '441421', '梅县', '243', '0', '0', 'Mei Xian', 'MEX');
INSERT INTO `REGION` VALUES ('2399', '441422', '大埔县', '243', '0', '0', 'Dabu Xian', 'DBX');
INSERT INTO `REGION` VALUES ('2400', '441423', '丰顺县', '243', '0', '0', 'Fengshun Xian', 'FES');
INSERT INTO `REGION` VALUES ('2401', '441424', '五华县', '243', '0', '0', 'Wuhua Xian', 'WHY');
INSERT INTO `REGION` VALUES ('2402', '441426', '平远县', '243', '0', '0', 'Pingyuan Xian', 'PYY');
INSERT INTO `REGION` VALUES ('2403', '441427', '蕉岭县', '243', '0', '0', 'Jiaoling Xian', 'JOL');
INSERT INTO `REGION` VALUES ('2404', '441481', '兴宁市', '243', '0', '0', 'Xingning Shi', 'XNG');
INSERT INTO `REGION` VALUES ('2405', '441501', '市辖区', '244', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2406', '441502', '城区', '244', '0', '0', 'Chengqu', 'CQS');
INSERT INTO `REGION` VALUES ('2407', '441521', '海丰县', '244', '0', '0', 'Haifeng Xian', 'HIF');
INSERT INTO `REGION` VALUES ('2408', '441523', '陆河县', '244', '0', '0', 'Luhe Xian', 'LHY');
INSERT INTO `REGION` VALUES ('2409', '441581', '陆丰市', '244', '0', '0', 'Lufeng Shi', 'LUF');
INSERT INTO `REGION` VALUES ('2410', '441601', '市辖区', '245', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2411', '441602', '源城区', '245', '0', '0', 'Yuancheng Qu', 'YCQ');
INSERT INTO `REGION` VALUES ('2412', '441621', '紫金县', '245', '0', '0', 'Zijin Xian', 'ZJY');
INSERT INTO `REGION` VALUES ('2413', '441622', '龙川县', '245', '0', '0', 'Longchuan Xian', 'LCY');
INSERT INTO `REGION` VALUES ('2414', '441623', '连平县', '245', '0', '0', 'Lianping Xian', 'LNP');
INSERT INTO `REGION` VALUES ('2415', '441624', '和平县', '245', '0', '0', 'Heping Xian', 'HPY');
INSERT INTO `REGION` VALUES ('2416', '441625', '东源县', '245', '0', '0', 'Dongyuan Xian', 'DYN');
INSERT INTO `REGION` VALUES ('2417', '441701', '市辖区', '246', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2418', '441702', '江城区', '246', '0', '0', 'Jiangcheng Qu', 'JCQ');
INSERT INTO `REGION` VALUES ('2419', '441721', '阳西县', '246', '0', '0', 'Yangxi Xian', 'YXY');
INSERT INTO `REGION` VALUES ('2420', '441723', '阳东县', '246', '0', '0', 'Yangdong Xian', 'YGD');
INSERT INTO `REGION` VALUES ('2421', '441781', '阳春市', '246', '0', '0', 'Yangchun Shi', 'YCU');
INSERT INTO `REGION` VALUES ('2422', '441801', '市辖区', '247', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2423', '441802', '清城区', '247', '0', '0', 'Qingcheng Qu', 'QCQ');
INSERT INTO `REGION` VALUES ('2424', '441821', '佛冈县', '247', '0', '0', 'Fogang Xian', 'FGY');
INSERT INTO `REGION` VALUES ('2425', '441823', '阳山县', '247', '0', '0', 'Yangshan Xian', 'YSN');
INSERT INTO `REGION` VALUES ('2426', '441825', '连山壮族瑶族自治县', '247', '0', '0', 'Lianshan Zhuangzu Yaozu Zizhixian', 'LSZ');
INSERT INTO `REGION` VALUES ('2427', '441826', '连南瑶族自治县', '247', '0', '0', 'Liannanyaozuzizhi Qu', '2');
INSERT INTO `REGION` VALUES ('2428', '441827', '清新县', '247', '0', '0', 'Qingxin Xian', 'QGX');
INSERT INTO `REGION` VALUES ('2429', '441881', '英德市', '247', '0', '0', 'Yingde Shi', 'YDS');
INSERT INTO `REGION` VALUES ('2430', '441882', '连州市', '247', '0', '0', 'Lianzhou Shi', 'LZO');
INSERT INTO `REGION` VALUES ('2431', '445101', '市辖区', '250', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2432', '445102', '湘桥区', '250', '0', '0', 'Xiangqiao Qu', 'XQO');
INSERT INTO `REGION` VALUES ('2433', '445121', '潮安县', '250', '0', '0', 'Chao,an Xian', 'CAY');
INSERT INTO `REGION` VALUES ('2434', '445122', '饶平县', '250', '0', '0', 'Raoping Xian', 'RPG');
INSERT INTO `REGION` VALUES ('2435', '445201', '市辖区', '251', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2436', '445202', '榕城区', '251', '0', '0', 'Rongcheng Qu', 'RCH');
INSERT INTO `REGION` VALUES ('2437', '445221', '揭东县', '251', '0', '0', 'Jiedong Xian', 'JDX');
INSERT INTO `REGION` VALUES ('2438', '445222', '揭西县', '251', '0', '0', 'Jiexi Xian', 'JEX');
INSERT INTO `REGION` VALUES ('2439', '445224', '惠来县', '251', '0', '0', 'Huilai Xian', 'HLY');
INSERT INTO `REGION` VALUES ('2440', '445281', '普宁市', '251', '0', '0', 'Puning Shi', 'PNG');
INSERT INTO `REGION` VALUES ('2441', '445301', '市辖区', '252', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2442', '445302', '云城区', '252', '0', '0', 'Yuncheng Qu', 'YYF');
INSERT INTO `REGION` VALUES ('2443', '445321', '新兴县', '252', '0', '0', 'Xinxing Xian', 'XNX');
INSERT INTO `REGION` VALUES ('2444', '445322', '郁南县', '252', '0', '0', 'Yunan Xian', 'YNK');
INSERT INTO `REGION` VALUES ('2445', '445323', '云安县', '252', '0', '0', 'Yun,an Xian', 'YUA');
INSERT INTO `REGION` VALUES ('2446', '445381', '罗定市', '252', '0', '0', 'Luoding Shi', 'LUO');
INSERT INTO `REGION` VALUES ('2447', '450101', '市辖区', '253', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2448', '450102', '兴宁区', '253', '0', '0', 'Xingning Qu', 'XNE');
INSERT INTO `REGION` VALUES ('2449', '450103', '青秀区', '253', '0', '0', 'Qingxiu Qu', '2');
INSERT INTO `REGION` VALUES ('2450', '450105', '江南区', '253', '0', '0', 'Jiangnan Qu', 'JNA');
INSERT INTO `REGION` VALUES ('2451', '450107', '西乡塘区', '253', '0', '0', 'Xixiangtang Qu', '2');
INSERT INTO `REGION` VALUES ('2452', '450108', '良庆区', '253', '0', '0', 'Liangqing Qu', '2');
INSERT INTO `REGION` VALUES ('2453', '450109', '邕宁区', '253', '0', '0', 'Yongning Qu', '2');
INSERT INTO `REGION` VALUES ('2454', '450122', '武鸣县', '253', '0', '0', 'Wuming Xian', 'WMG');
INSERT INTO `REGION` VALUES ('2455', '450123', '隆安县', '253', '0', '0', 'Long,an Xian', '2');
INSERT INTO `REGION` VALUES ('2456', '450124', '马山县', '253', '0', '0', 'Mashan Xian', '2');
INSERT INTO `REGION` VALUES ('2457', '450125', '上林县', '253', '0', '0', 'Shanglin Xian', '2');
INSERT INTO `REGION` VALUES ('2458', '450126', '宾阳县', '253', '0', '0', 'Binyang Xian', '2');
INSERT INTO `REGION` VALUES ('2459', '450127', '横县', '253', '0', '0', 'Heng Xian', '2');
INSERT INTO `REGION` VALUES ('2460', '450201', '市辖区', '254', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2461', '450202', '城中区', '254', '0', '0', 'Chengzhong Qu', 'CZG');
INSERT INTO `REGION` VALUES ('2462', '450203', '鱼峰区', '254', '0', '0', 'Yufeng Qu', 'YFQ');
INSERT INTO `REGION` VALUES ('2463', '450204', '柳南区', '254', '0', '0', 'Liunan Qu', 'LNU');
INSERT INTO `REGION` VALUES ('2464', '450205', '柳北区', '254', '0', '0', 'Liubei Qu', 'LBE');
INSERT INTO `REGION` VALUES ('2465', '450221', '柳江县', '254', '0', '0', 'Liujiang Xian', 'LUJ');
INSERT INTO `REGION` VALUES ('2466', '450222', '柳城县', '254', '0', '0', 'Liucheng Xian', 'LCB');
INSERT INTO `REGION` VALUES ('2467', '450223', '鹿寨县', '254', '0', '0', 'Luzhai Xian', '2');
INSERT INTO `REGION` VALUES ('2468', '450224', '融安县', '254', '0', '0', 'Rong,an Xian', '2');
INSERT INTO `REGION` VALUES ('2469', '450225', '融水苗族自治县', '254', '0', '0', 'Rongshui Miaozu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2470', '450226', '三江侗族自治县', '254', '0', '0', 'Sanjiang Dongzu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2471', '450301', '市辖区', '255', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2472', '450302', '秀峰区', '255', '0', '0', 'Xiufeng Qu', 'XUF');
INSERT INTO `REGION` VALUES ('2473', '450303', '叠彩区', '255', '0', '0', 'Diecai Qu', 'DCA');
INSERT INTO `REGION` VALUES ('2474', '450304', '象山区', '255', '0', '0', 'Xiangshan Qu', 'XSK');
INSERT INTO `REGION` VALUES ('2475', '450305', '七星区', '255', '0', '0', 'Qixing Qu', 'QXG');
INSERT INTO `REGION` VALUES ('2476', '450311', '雁山区', '255', '0', '0', 'Yanshan Qu', 'YSA');
INSERT INTO `REGION` VALUES ('2477', '450321', '阳朔县', '255', '0', '0', 'Yangshuo Xian', 'YSO');
INSERT INTO `REGION` VALUES ('2478', '450322', '临桂县', '255', '0', '0', 'Lingui Xian', 'LGI');
INSERT INTO `REGION` VALUES ('2479', '450323', '灵川县', '255', '0', '0', 'Lingchuan Xian', 'LCU');
INSERT INTO `REGION` VALUES ('2480', '450324', '全州县', '255', '0', '0', 'Quanzhou Xian', 'QZO');
INSERT INTO `REGION` VALUES ('2481', '450325', '兴安县', '255', '0', '0', 'Xing,an Xian', 'XAG');
INSERT INTO `REGION` VALUES ('2482', '450326', '永福县', '255', '0', '0', 'Yongfu Xian', 'YFU');
INSERT INTO `REGION` VALUES ('2483', '450327', '灌阳县', '255', '0', '0', 'Guanyang Xian', 'GNY');
INSERT INTO `REGION` VALUES ('2484', '450328', '龙胜各族自治县', '255', '0', '0', 'Longsheng Gezu Zizhixian', 'LSG');
INSERT INTO `REGION` VALUES ('2485', '450329', '资源县', '255', '0', '0', 'Ziyuan Xian', 'ZYU');
INSERT INTO `REGION` VALUES ('2486', '450330', '平乐县', '255', '0', '0', 'Pingle Xian', 'PLE');
INSERT INTO `REGION` VALUES ('2487', '450331', '荔蒲县', '255', '0', '0', 'Lipu Xian', '2');
INSERT INTO `REGION` VALUES ('2488', '450332', '恭城瑶族自治县', '255', '0', '0', 'Gongcheng Yaozu Zizhixian', 'GGC');
INSERT INTO `REGION` VALUES ('2489', '450401', '市辖区', '256', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2490', '450403', '万秀区', '256', '0', '0', 'Wanxiu Qu', 'WXQ');
INSERT INTO `REGION` VALUES ('2491', '450404', '蝶山区', '256', '0', '0', 'Dieshan Qu', 'DES');
INSERT INTO `REGION` VALUES ('2492', '450405', '长洲区', '256', '0', '0', 'Changzhou Qu', '2');
INSERT INTO `REGION` VALUES ('2493', '450421', '苍梧县', '256', '0', '0', 'Cangwu Xian', 'CAW');
INSERT INTO `REGION` VALUES ('2494', '450422', '藤县', '256', '0', '0', 'Teng Xian', '2');
INSERT INTO `REGION` VALUES ('2495', '450423', '蒙山县', '256', '0', '0', 'Mengshan Xian', 'MSA');
INSERT INTO `REGION` VALUES ('2496', '450481', '岑溪市', '256', '0', '0', 'Cenxi Shi', 'CEX');
INSERT INTO `REGION` VALUES ('2497', '450501', '市辖区', '257', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2498', '450502', '海城区', '257', '0', '0', 'Haicheng Qu', 'HCB');
INSERT INTO `REGION` VALUES ('2499', '450503', '银海区', '257', '0', '0', 'Yinhai Qu', 'YHB');
INSERT INTO `REGION` VALUES ('2500', '450512', '铁山港区', '257', '0', '0', 'Tieshangangqu ', 'TSG');
INSERT INTO `REGION` VALUES ('2501', '450521', '合浦县', '257', '0', '0', 'Hepu Xian', 'HPX');
INSERT INTO `REGION` VALUES ('2502', '450601', '市辖区', '258', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2503', '450602', '港口区', '258', '0', '0', 'Gangkou Qu', 'GKQ');
INSERT INTO `REGION` VALUES ('2504', '450603', '防城区', '258', '0', '0', 'Fangcheng Qu', 'FCQ');
INSERT INTO `REGION` VALUES ('2505', '450621', '上思县', '258', '0', '0', 'Shangsi Xian', 'SGS');
INSERT INTO `REGION` VALUES ('2506', '450681', '东兴市', '258', '0', '0', 'Dongxing Shi', 'DOX');
INSERT INTO `REGION` VALUES ('2507', '450701', '市辖区', '259', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2508', '450702', '钦南区', '259', '0', '0', 'Qinnan Qu', 'QNQ');
INSERT INTO `REGION` VALUES ('2509', '450703', '钦北区', '259', '0', '0', 'Qinbei Qu', 'QBQ');
INSERT INTO `REGION` VALUES ('2510', '450721', '灵山县', '259', '0', '0', 'Lingshan Xian', 'LSB');
INSERT INTO `REGION` VALUES ('2511', '450722', '浦北县', '259', '0', '0', 'Pubei Xian', 'PBE');
INSERT INTO `REGION` VALUES ('2512', '450801', '市辖区', '260', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2513', '450802', '港北区', '260', '0', '0', 'Gangbei Qu', 'GBE');
INSERT INTO `REGION` VALUES ('2514', '450803', '港南区', '260', '0', '0', 'Gangnan Qu', 'GNQ');
INSERT INTO `REGION` VALUES ('2515', '450804', '覃塘区', '260', '0', '0', 'Tantang Qu', '2');
INSERT INTO `REGION` VALUES ('2516', '450821', '平南县', '260', '0', '0', 'Pingnan Xian', 'PNN');
INSERT INTO `REGION` VALUES ('2517', '450881', '桂平市', '260', '0', '0', 'Guiping Shi', 'GPS');
INSERT INTO `REGION` VALUES ('2518', '450901', '市辖区', '261', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2519', '450902', '玉州区', '261', '0', '0', 'Yuzhou Qu', 'YZO');
INSERT INTO `REGION` VALUES ('2520', '450921', '容县', '261', '0', '0', 'Rong Xian', 'ROG');
INSERT INTO `REGION` VALUES ('2521', '450922', '陆川县', '261', '0', '0', 'Luchuan Xian', 'LCJ');
INSERT INTO `REGION` VALUES ('2522', '450923', '博白县', '261', '0', '0', 'Bobai Xian', 'BBA');
INSERT INTO `REGION` VALUES ('2523', '450924', '兴业县', '261', '0', '0', 'Xingye Xian', 'XGY');
INSERT INTO `REGION` VALUES ('2524', '450981', '北流市', '261', '0', '0', 'Beiliu Shi', 'BLS');
INSERT INTO `REGION` VALUES ('2525', '451001', '市辖区', '262', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2526', '451002', '右江区', '262', '0', '0', 'Youjiang Qu', '2');
INSERT INTO `REGION` VALUES ('2527', '451021', '田阳县', '262', '0', '0', 'Tianyang Xian', '2');
INSERT INTO `REGION` VALUES ('2528', '451022', '田东县', '262', '0', '0', 'Tiandong Xian', '2');
INSERT INTO `REGION` VALUES ('2529', '451023', '平果县', '262', '0', '0', 'Pingguo Xian', '2');
INSERT INTO `REGION` VALUES ('2530', '451024', '德保县', '262', '0', '0', 'Debao Xian', '2');
INSERT INTO `REGION` VALUES ('2531', '451025', '靖西县', '262', '0', '0', 'Jingxi Xian', '2');
INSERT INTO `REGION` VALUES ('2532', '451026', '那坡县', '262', '0', '0', 'Napo Xian', '2');
INSERT INTO `REGION` VALUES ('2533', '451027', '凌云县', '262', '0', '0', 'Lingyun Xian', '2');
INSERT INTO `REGION` VALUES ('2534', '451028', '乐业县', '262', '0', '0', 'Leye Xian', '2');
INSERT INTO `REGION` VALUES ('2535', '451029', '田林县', '262', '0', '0', 'Tianlin Xian', '2');
INSERT INTO `REGION` VALUES ('2536', '451030', '西林县', '262', '0', '0', 'Xilin Xian', '2');
INSERT INTO `REGION` VALUES ('2537', '451031', '隆林各族自治县', '262', '0', '0', 'Longlin Gezu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2538', '451101', '市辖区', '263', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2539', '451102', '八步区', '263', '0', '0', 'Babu Qu', '2');
INSERT INTO `REGION` VALUES ('2540', '451121', '昭平县', '263', '0', '0', 'Zhaoping Xian', '2');
INSERT INTO `REGION` VALUES ('2541', '451122', '钟山县', '263', '0', '0', 'Zhongshan Xian', '2');
INSERT INTO `REGION` VALUES ('2542', '451123', '富川瑶族自治县', '263', '0', '0', 'Fuchuan Yaozu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2543', '451201', '市辖区', '264', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2544', '451202', '金城江区', '264', '0', '0', 'Jinchengjiang Qu', '2');
INSERT INTO `REGION` VALUES ('2545', '451221', '南丹县', '264', '0', '0', 'Nandan Xian', '2');
INSERT INTO `REGION` VALUES ('2546', '451222', '天峨县', '264', '0', '0', 'Tian,e Xian', '2');
INSERT INTO `REGION` VALUES ('2547', '451223', '凤山县', '264', '0', '0', 'Fengshan Xian', '2');
INSERT INTO `REGION` VALUES ('2548', '451224', '东兰县', '264', '0', '0', 'Donglan Xian', '2');
INSERT INTO `REGION` VALUES ('2549', '451225', '罗城仫佬族自治县', '264', '0', '0', 'Luocheng Mulaozu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2550', '451226', '环江毛南族自治县', '264', '0', '0', 'Huanjiang Maonanzu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2551', '451227', '巴马瑶族自治县', '264', '0', '0', 'Bama Yaozu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2552', '451228', '都安瑶族自治县', '264', '0', '0', 'Du,an Yaozu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2553', '451229', '大化瑶族自治县', '264', '0', '0', 'Dahua Yaozu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2554', '451281', '宜州市', '264', '0', '0', 'Yizhou Shi', '2');
INSERT INTO `REGION` VALUES ('2555', '451301', '市辖区', '265', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2556', '451302', '兴宾区', '265', '0', '0', 'Xingbin Qu', '2');
INSERT INTO `REGION` VALUES ('2557', '451321', '忻城县', '265', '0', '0', 'Xincheng Xian', '2');
INSERT INTO `REGION` VALUES ('2558', '451322', '象州县', '265', '0', '0', 'Xiangzhou Xian', '2');
INSERT INTO `REGION` VALUES ('2559', '451323', '武宣县', '265', '0', '0', 'Wuxuan Xian', '2');
INSERT INTO `REGION` VALUES ('2560', '451324', '金秀瑶族自治县', '265', '0', '0', 'Jinxiu Yaozu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2561', '451381', '合山市', '265', '0', '0', 'Heshan Shi', '2');
INSERT INTO `REGION` VALUES ('2562', '451401', '市辖区', '266', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2563', '451402', '江洲区', '266', '0', '0', 'Jiangzhou Qu', '2');
INSERT INTO `REGION` VALUES ('2564', '451421', '扶绥县', '266', '0', '0', 'Fusui Xian', '2');
INSERT INTO `REGION` VALUES ('2565', '451422', '宁明县', '266', '0', '0', 'Ningming Xian', '2');
INSERT INTO `REGION` VALUES ('2566', '451423', '龙州县', '266', '0', '0', 'Longzhou Xian', '2');
INSERT INTO `REGION` VALUES ('2567', '451424', '大新县', '266', '0', '0', 'Daxin Xian', '2');
INSERT INTO `REGION` VALUES ('2568', '451425', '天等县', '266', '0', '0', 'Tiandeng Xian', '2');
INSERT INTO `REGION` VALUES ('2569', '451481', '凭祥市', '266', '0', '0', 'Pingxiang Shi', '2');
INSERT INTO `REGION` VALUES ('2570', '460101', '市辖区', '267', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2571', '460105', '秀英区', '267', '0', '0', 'Xiuying Qu', 'XYH');
INSERT INTO `REGION` VALUES ('2572', '460106', '龙华区', '267', '0', '0', 'LongHua Qu', 'LH');
INSERT INTO `REGION` VALUES ('2573', '460107', '琼山区', '267', '0', '0', 'QiongShan Qu', 'QS');
INSERT INTO `REGION` VALUES ('2574', '460108', '美兰区', '267', '0', '0', 'MeiLan Qu', 'ML');
INSERT INTO `REGION` VALUES ('2575', '460201', '市辖区', '268', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2576', '469001', '五指山市', '269', '0', '0', 'Wuzhishan Qu', '2');
INSERT INTO `REGION` VALUES ('2577', '469002', '琼海市', '269', '0', '0', 'Qionghai Shi', '2');
INSERT INTO `REGION` VALUES ('2578', '469003', '儋州市', '269', '0', '0', 'Danzhou Shi', '2');
INSERT INTO `REGION` VALUES ('2579', '469005', '文昌市', '269', '0', '0', 'Wenchang Shi', '2');
INSERT INTO `REGION` VALUES ('2580', '469006', '万宁市', '269', '0', '0', 'Wanning Shi', '2');
INSERT INTO `REGION` VALUES ('2581', '469007', '东方市', '269', '0', '0', 'Dongfang Shi', '2');
INSERT INTO `REGION` VALUES ('2582', '469021', '定安县', '269', '0', '0', 'Ding,an Xian', '2');
INSERT INTO `REGION` VALUES ('2583', '469022', '屯昌县', '269', '0', '0', 'Tunchang Xian', '2');
INSERT INTO `REGION` VALUES ('2584', '469023', '澄迈县', '269', '0', '0', 'Chengmai Xian', '2');
INSERT INTO `REGION` VALUES ('2585', '469024', '临高县', '269', '0', '0', 'Lingao Xian', '2');
INSERT INTO `REGION` VALUES ('2586', '469025', '白沙黎族自治县', '269', '0', '0', 'Baisha Lizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2587', '469026', '昌江黎族自治县', '269', '0', '0', 'Changjiang Lizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2588', '469027', '乐东黎族自治县', '269', '0', '0', 'Ledong Lizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2589', '469028', '陵水黎族自治县', '269', '0', '0', 'Lingshui Lizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2590', '469029', '保亭黎族苗族自治县', '269', '0', '0', 'Baoting Lizu Miaozu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2591', '469030', '琼中黎族苗族自治县', '269', '0', '0', 'Qiongzhong Lizu Miaozu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2592', '469031', '西沙群岛', '269', '0', '0', 'Xisha Qundao', '2');
INSERT INTO `REGION` VALUES ('2593', '469032', '南沙群岛', '269', '0', '0', 'Nansha Qundao', '2');
INSERT INTO `REGION` VALUES ('2594', '469033', '中沙群岛的岛礁及其海域', '269', '0', '0', 'Zhongsha Qundao de Daojiao Jiqi Haiyu', '2');
INSERT INTO `REGION` VALUES ('2595', '500101', '万州区', '270', '0', '0', 'Wanzhou Qu', 'WZO ');
INSERT INTO `REGION` VALUES ('2596', '500102', '涪陵区', '270', '0', '0', 'Fuling Qu', 'FLG');
INSERT INTO `REGION` VALUES ('2597', '500103', '渝中区', '270', '0', '0', 'Yuzhong Qu', 'YZQ');
INSERT INTO `REGION` VALUES ('2598', '500104', '大渡口区', '270', '0', '0', 'Dadukou Qu', 'DDK');
INSERT INTO `REGION` VALUES ('2599', '500105', '江北区', '270', '0', '0', 'Jiangbei Qu', 'JBE');
INSERT INTO `REGION` VALUES ('2600', '500106', '沙坪坝区', '270', '0', '0', 'Shapingba Qu', 'SPB');
INSERT INTO `REGION` VALUES ('2601', '500107', '九龙坡区', '270', '0', '0', 'Jiulongpo Qu', 'JLP');
INSERT INTO `REGION` VALUES ('2602', '500108', '南岸区', '270', '0', '0', 'Nan,an Qu', 'NAQ');
INSERT INTO `REGION` VALUES ('2603', '500109', '北碚区', '270', '0', '0', 'Beibei Qu', 'BBE');
INSERT INTO `REGION` VALUES ('2604', '500110', '万盛区', '270', '0', '0', 'Wansheng Qu', 'WSQ');
INSERT INTO `REGION` VALUES ('2605', '500111', '双桥区', '270', '0', '0', 'Shuangqiao Qu', 'SQQ');
INSERT INTO `REGION` VALUES ('2606', '500112', '渝北区', '270', '0', '0', 'Yubei Qu', 'YBE');
INSERT INTO `REGION` VALUES ('2607', '500113', '巴南区', '270', '0', '0', 'Banan Qu', 'BNN');
INSERT INTO `REGION` VALUES ('2608', '500114', '黔江区', '270', '0', '0', 'Qianjiang Qu', '2');
INSERT INTO `REGION` VALUES ('2609', '500115', '长寿区', '270', '0', '0', 'Changshou Qu', '2');
INSERT INTO `REGION` VALUES ('2610', '500222', '綦江县', '271', '0', '0', 'Qijiang Xian', 'QJG');
INSERT INTO `REGION` VALUES ('2611', '500223', '潼南县', '271', '0', '0', 'Tongnan Xian', 'TNN');
INSERT INTO `REGION` VALUES ('2612', '500224', '铜梁县', '271', '0', '0', 'Tongliang Xian', 'TGL');
INSERT INTO `REGION` VALUES ('2613', '500225', '大足县', '271', '0', '0', 'Dazu Xian', 'DZX');
INSERT INTO `REGION` VALUES ('2614', '500226', '荣昌县', '271', '0', '0', 'Rongchang Xian', 'RGC');
INSERT INTO `REGION` VALUES ('2615', '500227', '璧山县', '271', '0', '0', 'Bishan Xian', 'BSY');
INSERT INTO `REGION` VALUES ('2616', '500228', '梁平县', '271', '0', '0', 'Liangping Xian', 'LGP');
INSERT INTO `REGION` VALUES ('2617', '500229', '城口县', '271', '0', '0', 'Chengkou Xian', 'CKO');
INSERT INTO `REGION` VALUES ('2618', '500230', '丰都县', '271', '0', '0', 'Fengdu Xian', 'FDU');
INSERT INTO `REGION` VALUES ('2619', '500231', '垫江县', '271', '0', '0', 'Dianjiang Xian', 'DJG');
INSERT INTO `REGION` VALUES ('2620', '500232', '武隆县', '271', '0', '0', 'Wulong Xian', 'WLG');
INSERT INTO `REGION` VALUES ('2621', '500233', '忠县', '271', '0', '0', 'Zhong Xian', 'ZHX');
INSERT INTO `REGION` VALUES ('2622', '500234', '开县', '271', '0', '0', 'Kai Xian', 'KAI');
INSERT INTO `REGION` VALUES ('2623', '500235', '云阳县', '271', '0', '0', 'Yunyang Xian', 'YNY');
INSERT INTO `REGION` VALUES ('2624', '500236', '奉节县', '271', '0', '0', 'Fengjie Xian', 'FJE');
INSERT INTO `REGION` VALUES ('2625', '500237', '巫山县', '271', '0', '0', 'Wushan Xian', 'WSN');
INSERT INTO `REGION` VALUES ('2626', '500238', '巫溪县', '271', '0', '0', 'Wuxi Xian', 'WXX');
INSERT INTO `REGION` VALUES ('2627', '500240', '石柱土家族自治县', '271', '0', '0', 'Shizhu Tujiazu Zizhixian', 'SZY');
INSERT INTO `REGION` VALUES ('2628', '500241', '秀山土家族苗族自治县', '271', '0', '0', 'Xiushan Tujiazu Miaozu Zizhixian', 'XUS');
INSERT INTO `REGION` VALUES ('2629', '500242', '酉阳土家族苗族自治县', '271', '0', '0', 'Youyang Tujiazu Miaozu Zizhixian', 'YUY');
INSERT INTO `REGION` VALUES ('2630', '500243', '彭水苗族土家族自治县', '271', '0', '0', 'Pengshui Miaozu Tujiazu Zizhixian', 'PSU');
INSERT INTO `REGION` VALUES ('2631', '500116', '江津区', '272', '0', '0', 'Jiangjin Qu', '2');
INSERT INTO `REGION` VALUES ('2632', '500117', '合川区', '272', '0', '0', 'Hechuan Qu', '2');
INSERT INTO `REGION` VALUES ('2633', '500118', '永川区', '272', '0', '0', 'Yongchuan Qu', '2');
INSERT INTO `REGION` VALUES ('2634', '500119', '南川区', '272', '0', '0', 'Nanchuan Qu', '2');
INSERT INTO `REGION` VALUES ('2635', '510101', '市辖区', '273', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2636', '510104', '锦江区', '273', '0', '0', 'Jinjiang Qu', 'JJQ');
INSERT INTO `REGION` VALUES ('2637', '510105', '青羊区', '273', '0', '0', 'Qingyang Qu', 'QYQ');
INSERT INTO `REGION` VALUES ('2638', '510106', '金牛区', '273', '0', '0', 'Jinniu Qu', 'JNU');
INSERT INTO `REGION` VALUES ('2639', '510107', '武侯区', '273', '0', '0', 'Wuhou Qu', 'WHQ');
INSERT INTO `REGION` VALUES ('2640', '510108', '成华区', '273', '0', '0', 'Chenghua Qu', 'CHQ');
INSERT INTO `REGION` VALUES ('2641', '510112', '龙泉驿区', '273', '0', '0', 'Longquanyi Qu', 'LQY');
INSERT INTO `REGION` VALUES ('2642', '510113', '青白江区', '273', '0', '0', 'Qingbaijiang Qu', 'QBJ');
INSERT INTO `REGION` VALUES ('2643', '510114', '新都区', '273', '0', '0', 'Xindu Qu', '2');
INSERT INTO `REGION` VALUES ('2644', '510115', '温江区', '273', '0', '0', 'Wenjiang Qu', '2');
INSERT INTO `REGION` VALUES ('2645', '510121', '金堂县', '273', '0', '0', 'Jintang Xian', 'JNT');
INSERT INTO `REGION` VALUES ('2646', '510122', '双流县', '273', '0', '0', 'Shuangliu Xian', 'SLU');
INSERT INTO `REGION` VALUES ('2647', '510124', '郫县', '273', '0', '0', 'Pi Xian', 'PIX');
INSERT INTO `REGION` VALUES ('2648', '510129', '大邑县', '273', '0', '0', 'Dayi Xian', 'DYI');
INSERT INTO `REGION` VALUES ('2649', '510131', '蒲江县', '273', '0', '0', 'Pujiang Xian', 'PJX');
INSERT INTO `REGION` VALUES ('2650', '510132', '新津县', '273', '0', '0', 'Xinjin Xian', 'XJC');
INSERT INTO `REGION` VALUES ('2651', '510181', '都江堰市', '273', '0', '0', 'Dujiangyan Shi', 'DJY');
INSERT INTO `REGION` VALUES ('2652', '510182', '彭州市', '273', '0', '0', 'Pengzhou Shi', 'PZS');
INSERT INTO `REGION` VALUES ('2653', '510183', '邛崃市', '273', '0', '0', 'Qionglai Shi', 'QLA');
INSERT INTO `REGION` VALUES ('2654', '510184', '崇州市', '273', '0', '0', 'Chongzhou Shi', 'CZO');
INSERT INTO `REGION` VALUES ('2655', '510301', '市辖区', '274', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2656', '510302', '自流井区', '274', '0', '0', 'Ziliujing Qu', 'ZLJ');
INSERT INTO `REGION` VALUES ('2657', '510303', '贡井区', '274', '0', '0', 'Gongjing Qu', '2');
INSERT INTO `REGION` VALUES ('2658', '510304', '大安区', '274', '0', '0', 'Da,an Qu', 'DAQ');
INSERT INTO `REGION` VALUES ('2659', '510311', '沿滩区', '274', '0', '0', 'Yantan Qu', 'YTN');
INSERT INTO `REGION` VALUES ('2660', '510321', '荣县', '274', '0', '0', 'Rong Xian', 'RGX');
INSERT INTO `REGION` VALUES ('2661', '510322', '富顺县', '274', '0', '0', 'Fushun Xian', 'FSH');
INSERT INTO `REGION` VALUES ('2662', '510401', '市辖区', '275', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2663', '510402', '东区', '275', '0', '0', 'Dong Qu', 'DQP');
INSERT INTO `REGION` VALUES ('2664', '510403', '西区', '275', '0', '0', 'Xi Qu', 'XIQ');
INSERT INTO `REGION` VALUES ('2665', '510411', '仁和区', '275', '0', '0', 'Renhe Qu', 'RHQ');
INSERT INTO `REGION` VALUES ('2666', '510421', '米易县', '275', '0', '0', 'Miyi Xian', 'MIY');
INSERT INTO `REGION` VALUES ('2667', '510422', '盐边县', '275', '0', '0', 'Yanbian Xian', 'YBN');
INSERT INTO `REGION` VALUES ('2668', '510501', '市辖区', '276', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2669', '510502', '江阳区', '276', '0', '0', 'Jiangyang Qu', 'JYB');
INSERT INTO `REGION` VALUES ('2670', '510503', '纳溪区', '276', '0', '0', 'Naxi Qu', 'NXI');
INSERT INTO `REGION` VALUES ('2671', '510504', '龙马潭区', '276', '0', '0', 'Longmatan Qu', 'LMT');
INSERT INTO `REGION` VALUES ('2672', '510521', '泸县', '276', '0', '0', 'Lu Xian', 'LUX');
INSERT INTO `REGION` VALUES ('2673', '510522', '合江县', '276', '0', '0', 'Hejiang Xian', 'HEJ');
INSERT INTO `REGION` VALUES ('2674', '510524', '叙永县', '276', '0', '0', 'Xuyong Xian', 'XYO');
INSERT INTO `REGION` VALUES ('2675', '510525', '古蔺县', '276', '0', '0', 'Gulin Xian', 'GUL');
INSERT INTO `REGION` VALUES ('2676', '510601', '市辖区', '277', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2677', '510603', '旌阳区', '277', '0', '0', 'Jingyang Qu', 'JYF');
INSERT INTO `REGION` VALUES ('2678', '510623', '中江县', '277', '0', '0', 'Zhongjiang Xian', 'ZGJ');
INSERT INTO `REGION` VALUES ('2679', '510626', '罗江县', '277', '0', '0', 'Luojiang Xian', 'LOJ');
INSERT INTO `REGION` VALUES ('2680', '510681', '广汉市', '277', '0', '0', 'Guanghan Shi', 'GHN');
INSERT INTO `REGION` VALUES ('2681', '510682', '什邡市', '277', '0', '0', 'Shifang Shi', 'SFS');
INSERT INTO `REGION` VALUES ('2682', '510683', '绵竹市', '277', '0', '0', 'Jinzhou Shi', 'MZU');
INSERT INTO `REGION` VALUES ('2683', '510701', '市辖区', '278', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2684', '510703', '涪城区', '278', '0', '0', 'Fucheng Qu', 'FCM');
INSERT INTO `REGION` VALUES ('2685', '510704', '游仙区', '278', '0', '0', 'Youxian Qu', 'YXM');
INSERT INTO `REGION` VALUES ('2686', '510722', '三台县', '278', '0', '0', 'Santai Xian', 'SNT');
INSERT INTO `REGION` VALUES ('2687', '510723', '盐亭县', '278', '0', '0', 'Yanting Xian', 'YTC');
INSERT INTO `REGION` VALUES ('2688', '510724', '安县', '278', '0', '0', 'An Xian', 'AXN');
INSERT INTO `REGION` VALUES ('2689', '510725', '梓潼县', '278', '0', '0', 'Zitong Xian', 'ZTG');
INSERT INTO `REGION` VALUES ('2690', '510726', '北川羌族自治县', '278', '0', '0', 'Beichuanqiangzuzizhi Qu', '2');
INSERT INTO `REGION` VALUES ('2691', '510727', '平武县', '278', '0', '0', 'Pingwu Xian', 'PWU');
INSERT INTO `REGION` VALUES ('2692', '510781', '江油市', '278', '0', '0', 'Jiangyou Shi', 'JYO');
INSERT INTO `REGION` VALUES ('2693', '510801', '市辖区', '279', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2694', '511002', '市中区', '279', '0', '0', 'Shizhong Qu', 'SZM');
INSERT INTO `REGION` VALUES ('2695', '510811', '元坝区', '279', '0', '0', 'Yuanba Qu', 'YBQ');
INSERT INTO `REGION` VALUES ('2696', '510812', '朝天区', '279', '0', '0', 'Chaotian Qu', 'CTN');
INSERT INTO `REGION` VALUES ('2697', '510821', '旺苍县', '279', '0', '0', 'Wangcang Xian', 'WGC');
INSERT INTO `REGION` VALUES ('2698', '510822', '青川县', '279', '0', '0', 'Qingchuan Xian', 'QCX');
INSERT INTO `REGION` VALUES ('2699', '510823', '剑阁县', '279', '0', '0', 'Jiange Xian', 'JGE');
INSERT INTO `REGION` VALUES ('2700', '510824', '苍溪县', '279', '0', '0', 'Cangxi Xian', 'CXC');
INSERT INTO `REGION` VALUES ('2701', '510901', '市辖区', '280', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2702', '510903', '船山区', '280', '0', '0', 'Chuanshan Qu', '2');
INSERT INTO `REGION` VALUES ('2703', '510904', '安居区', '280', '0', '0', 'Anju Qu', '2');
INSERT INTO `REGION` VALUES ('2704', '510921', '蓬溪县', '280', '0', '0', 'Pengxi Xian', 'PXI');
INSERT INTO `REGION` VALUES ('2705', '510922', '射洪县', '280', '0', '0', 'Shehong Xian', 'SHE');
INSERT INTO `REGION` VALUES ('2706', '510923', '大英县', '280', '0', '0', 'Daying Xian', 'DAY');
INSERT INTO `REGION` VALUES ('2707', '511001', '市辖区', '281', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2708', '511002', '市中区', '281', '0', '0', 'Shizhong Qu', 'SZM');
INSERT INTO `REGION` VALUES ('2709', '511011', '东兴区', '281', '0', '0', 'Dongxing Qu', 'DXQ');
INSERT INTO `REGION` VALUES ('2710', '511024', '威远县', '281', '0', '0', 'Weiyuan Xian', 'WYU');
INSERT INTO `REGION` VALUES ('2711', '511025', '资中县', '281', '0', '0', 'Zizhong Xian', 'ZZC');
INSERT INTO `REGION` VALUES ('2712', '511028', '隆昌县', '281', '0', '0', 'Longchang Xian', 'LCC');
INSERT INTO `REGION` VALUES ('2713', '511101', '市辖区', '282', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2714', '511102', '市中区', '282', '0', '0', 'Shizhong Qu', 'SZP');
INSERT INTO `REGION` VALUES ('2715', '511111', '沙湾区', '282', '0', '0', 'Shawan Qu', 'SWN');
INSERT INTO `REGION` VALUES ('2716', '511112', '五通桥区', '282', '0', '0', 'Wutongqiao Qu', 'WTQ');
INSERT INTO `REGION` VALUES ('2717', '511113', '金口河区', '282', '0', '0', 'Jinkouhe Qu', 'JKH');
INSERT INTO `REGION` VALUES ('2718', '511123', '犍为县', '282', '0', '0', 'Qianwei Xian', 'QWE');
INSERT INTO `REGION` VALUES ('2719', '511124', '井研县', '282', '0', '0', 'Jingyan Xian', 'JYA');
INSERT INTO `REGION` VALUES ('2720', '511126', '夹江县', '282', '0', '0', 'Jiajiang Xian', 'JJC');
INSERT INTO `REGION` VALUES ('2721', '511129', '沐川县', '282', '0', '0', 'Muchuan Xian', 'MCH');
INSERT INTO `REGION` VALUES ('2722', '511132', '峨边彝族自治县', '282', '0', '0', 'Ebian Yizu Zizhixian', 'EBN');
INSERT INTO `REGION` VALUES ('2723', '511133', '马边彝族自治县', '282', '0', '0', 'Mabian Yizu Zizhixian', 'MBN');
INSERT INTO `REGION` VALUES ('2724', '511181', '峨眉山市', '282', '0', '0', 'Emeishan Shi', 'EMS');
INSERT INTO `REGION` VALUES ('2725', '511301', '市辖区', '283', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2726', '511302', '顺庆区', '283', '0', '0', 'Shunqing Xian', 'SQG');
INSERT INTO `REGION` VALUES ('2727', '511303', '高坪区', '283', '0', '0', 'Gaoping Qu', 'GPQ');
INSERT INTO `REGION` VALUES ('2728', '511304', '嘉陵区', '283', '0', '0', 'Jialing Qu', 'JLG');
INSERT INTO `REGION` VALUES ('2729', '511321', '南部县', '283', '0', '0', 'Nanbu Xian', 'NBU');
INSERT INTO `REGION` VALUES ('2730', '511322', '营山县', '283', '0', '0', 'Yingshan Xian', 'YGS');
INSERT INTO `REGION` VALUES ('2731', '511323', '蓬安县', '283', '0', '0', 'Peng,an Xian', 'PGA');
INSERT INTO `REGION` VALUES ('2732', '511324', '仪陇县', '283', '0', '0', 'Yilong Xian', 'YLC');
INSERT INTO `REGION` VALUES ('2733', '511325', '西充县', '283', '0', '0', 'Xichong Xian', 'XCO');
INSERT INTO `REGION` VALUES ('2734', '511381', '阆中市', '283', '0', '0', 'Langzhong Shi', 'LZJ');
INSERT INTO `REGION` VALUES ('2735', '511401', '市辖区', '284', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2736', '511402', '东坡区', '284', '0', '0', 'Dongpo Qu', '2');
INSERT INTO `REGION` VALUES ('2737', '511421', '仁寿县', '284', '0', '0', 'Renshou Xian', '2');
INSERT INTO `REGION` VALUES ('2738', '511422', '彭山县', '284', '0', '0', 'Pengshan Xian', '2');
INSERT INTO `REGION` VALUES ('2739', '511423', '洪雅县', '284', '0', '0', 'Hongya Xian', '2');
INSERT INTO `REGION` VALUES ('2740', '511424', '丹棱县', '284', '0', '0', 'Danling Xian', '2');
INSERT INTO `REGION` VALUES ('2741', '511425', '青神县', '284', '0', '0', 'Qingshen Xian', '2');
INSERT INTO `REGION` VALUES ('2742', '511501', '市辖区', '285', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2743', '511502', '翠屏区', '285', '0', '0', 'Cuiping Qu', 'CPQ');
INSERT INTO `REGION` VALUES ('2744', '511521', '宜宾县', '285', '0', '0', 'Yibin Xian', 'YBX');
INSERT INTO `REGION` VALUES ('2745', '511522', '南溪县', '285', '0', '0', 'Nanxi Xian', 'NNX');
INSERT INTO `REGION` VALUES ('2746', '511523', '江安县', '285', '0', '0', 'Jiang,an Xian', 'JAC');
INSERT INTO `REGION` VALUES ('2747', '511524', '长宁县', '285', '0', '0', 'Changning Xian', 'CNX');
INSERT INTO `REGION` VALUES ('2748', '511525', '高县', '285', '0', '0', 'Gao Xian', 'GAO');
INSERT INTO `REGION` VALUES ('2749', '511526', '珙县', '285', '0', '0', 'Gong Xian', 'GOG');
INSERT INTO `REGION` VALUES ('2750', '511527', '筠连县', '285', '0', '0', 'Junlian Xian', 'JNL');
INSERT INTO `REGION` VALUES ('2751', '511528', '兴文县', '285', '0', '0', 'Xingwen Xian', 'XWC');
INSERT INTO `REGION` VALUES ('2752', '511529', '屏山县', '285', '0', '0', 'Pingshan Xian', 'PSC');
INSERT INTO `REGION` VALUES ('2753', '511601', '市辖区', '286', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2754', '511602', '广安区', '286', '0', '0', 'Guang,an Qu', 'GAQ');
INSERT INTO `REGION` VALUES ('2755', '511621', '岳池县', '286', '0', '0', 'Yuechi Xian', 'YCC');
INSERT INTO `REGION` VALUES ('2756', '511622', '武胜县', '286', '0', '0', 'Wusheng Xian', 'WSG');
INSERT INTO `REGION` VALUES ('2757', '511623', '邻水县', '286', '0', '0', 'Linshui Xian', 'LSH');
INSERT INTO `REGION` VALUES ('2759', '511701', '市辖区', '287', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2760', '511702', '通川区', '287', '0', '0', 'Tongchuan Qu', '2');
INSERT INTO `REGION` VALUES ('2761', '511721', '达县', '287', '0', '0', 'Da Xian', '2');
INSERT INTO `REGION` VALUES ('2762', '511722', '宣汉县', '287', '0', '0', 'Xuanhan Xian', '2');
INSERT INTO `REGION` VALUES ('2763', '511723', '开江县', '287', '0', '0', 'Kaijiang Xian', '2');
INSERT INTO `REGION` VALUES ('2764', '511724', '大竹县', '287', '0', '0', 'Dazhu Xian', '2');
INSERT INTO `REGION` VALUES ('2765', '511725', '渠县', '287', '0', '0', 'Qu Xian', '2');
INSERT INTO `REGION` VALUES ('2766', '511781', '万源市', '287', '0', '0', 'Wanyuan Shi', '2');
INSERT INTO `REGION` VALUES ('2767', '511801', '市辖区', '288', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2768', '511802', '雨城区', '288', '0', '0', 'Yucheg Qu', '2');
INSERT INTO `REGION` VALUES ('2769', '511821', '名山县', '288', '0', '0', 'Mingshan Xian', '2');
INSERT INTO `REGION` VALUES ('2770', '511822', '荥经县', '288', '0', '0', 'Yingjing Xian', '2');
INSERT INTO `REGION` VALUES ('2771', '511823', '汉源县', '288', '0', '0', 'Hanyuan Xian', '2');
INSERT INTO `REGION` VALUES ('2772', '511824', '石棉县', '288', '0', '0', 'Shimian Xian', '2');
INSERT INTO `REGION` VALUES ('2773', '511825', '天全县', '288', '0', '0', 'Tianquan Xian', '2');
INSERT INTO `REGION` VALUES ('2774', '511826', '芦山县', '288', '0', '0', 'Lushan Xian', '2');
INSERT INTO `REGION` VALUES ('2775', '511827', '宝兴县', '288', '0', '0', 'Baoxing Xian', '2');
INSERT INTO `REGION` VALUES ('2776', '511901', '市辖区', '289', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2777', '511902', '巴州区', '289', '0', '0', 'Bazhou Qu', '2');
INSERT INTO `REGION` VALUES ('2778', '511921', '通江县', '289', '0', '0', 'Tongjiang Xian', '2');
INSERT INTO `REGION` VALUES ('2779', '511922', '南江县', '289', '0', '0', 'Nanjiang Xian', '2');
INSERT INTO `REGION` VALUES ('2780', '511923', '平昌县', '289', '0', '0', 'Pingchang Xian', '2');
INSERT INTO `REGION` VALUES ('2781', '512001', '市辖区', '290', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2782', '512002', '雁江区', '290', '0', '0', 'Yanjiang Qu', '2');
INSERT INTO `REGION` VALUES ('2783', '512021', '安岳县', '290', '0', '0', 'Anyue Xian', '2');
INSERT INTO `REGION` VALUES ('2784', '512022', '乐至县', '290', '0', '0', 'Lezhi Xian', '2');
INSERT INTO `REGION` VALUES ('2785', '512081', '简阳市', '290', '0', '0', 'Jianyang Shi', '2');
INSERT INTO `REGION` VALUES ('2786', '513221', '汶川县', '291', '0', '0', 'Wenchuan Xian', 'WNC');
INSERT INTO `REGION` VALUES ('2787', '513222', '理县', '291', '0', '0', 'Li Xian', 'LXC');
INSERT INTO `REGION` VALUES ('2788', '513223', '茂县', '291', '0', '0', 'Mao Xian', 'MAO');
INSERT INTO `REGION` VALUES ('2789', '513224', '松潘县', '291', '0', '0', 'Songpan Xian', 'SOP');
INSERT INTO `REGION` VALUES ('2790', '513225', '九寨沟县', '291', '0', '0', 'Jiuzhaigou Xian', 'JZG');
INSERT INTO `REGION` VALUES ('2791', '513226', '金川县', '291', '0', '0', 'Jinchuan Xian', 'JCH');
INSERT INTO `REGION` VALUES ('2792', '513227', '小金县', '291', '0', '0', 'Xiaojin Xian', 'XJX');
INSERT INTO `REGION` VALUES ('2793', '513228', '黑水县', '291', '0', '0', 'Heishui Xian', 'HIS');
INSERT INTO `REGION` VALUES ('2794', '513229', '马尔康县', '291', '0', '0', 'Barkam Xian', 'BAK');
INSERT INTO `REGION` VALUES ('2795', '513230', '壤塘县', '291', '0', '0', 'Zamtang Xian', 'ZAM');
INSERT INTO `REGION` VALUES ('2796', '513231', '阿坝县', '291', '0', '0', 'Aba(Ngawa) Xian', 'ABX');
INSERT INTO `REGION` VALUES ('2797', '513232', '若尔盖县', '291', '0', '0', 'ZoigeXian', 'ZOI');
INSERT INTO `REGION` VALUES ('2798', '513233', '红原县', '291', '0', '0', 'Hongyuan Xian', 'HOY');
INSERT INTO `REGION` VALUES ('2799', '513321', '康定县', '292', '0', '0', 'Kangding(Dardo) Xian', 'KDX');
INSERT INTO `REGION` VALUES ('2800', '513322', '泸定县', '292', '0', '0', 'Luding(Jagsamka) Xian', 'LUD');
INSERT INTO `REGION` VALUES ('2801', '513323', '丹巴县', '292', '0', '0', 'Danba(Rongzhag) Xian', 'DBA');
INSERT INTO `REGION` VALUES ('2802', '513324', '九龙县', '292', '0', '0', 'Jiulong(Gyaisi) Xian', 'JLC');
INSERT INTO `REGION` VALUES ('2803', '513325', '雅江县', '292', '0', '0', 'Yajiang(Nyagquka) Xian', 'YAJ');
INSERT INTO `REGION` VALUES ('2804', '513326', '道孚县', '292', '0', '0', 'Dawu Xian', 'DAW');
INSERT INTO `REGION` VALUES ('2805', '513327', '炉霍县', '292', '0', '0', 'Luhuo(Zhaggo) Xian', 'LUH');
INSERT INTO `REGION` VALUES ('2806', '513328', '甘孜县', '292', '0', '0', 'Garze Xian', 'GRZ');
INSERT INTO `REGION` VALUES ('2807', '513329', '新龙县', '292', '0', '0', 'Xinlong(Nyagrong) Xian', 'XLG');
INSERT INTO `REGION` VALUES ('2808', '513330', '德格县', '292', '0', '0', 'DegeXian', 'DEG');
INSERT INTO `REGION` VALUES ('2809', '513331', '白玉县', '292', '0', '0', 'Baiyu Xian', 'BYC');
INSERT INTO `REGION` VALUES ('2810', '513332', '石渠县', '292', '0', '0', 'Serxv Xian', 'SER');
INSERT INTO `REGION` VALUES ('2811', '513333', '色达县', '292', '0', '0', 'Sertar Xian', 'STX');
INSERT INTO `REGION` VALUES ('2812', '513334', '理塘县', '292', '0', '0', 'Litang Xian', 'LIT');
INSERT INTO `REGION` VALUES ('2813', '513335', '巴塘县', '292', '0', '0', 'Batang Xian', 'BTC');
INSERT INTO `REGION` VALUES ('2814', '513336', '乡城县', '292', '0', '0', 'Xiangcheng(Qagcheng) Xian', 'XCC');
INSERT INTO `REGION` VALUES ('2815', '513337', '稻城县', '292', '0', '0', 'Daocheng(Dabba) Xian', 'DCX');
INSERT INTO `REGION` VALUES ('2816', '513338', '得荣县', '292', '0', '0', 'Derong Xian', 'DER');
INSERT INTO `REGION` VALUES ('2817', '513401', '西昌市', '293', '0', '0', 'Xichang Shi', 'XCA');
INSERT INTO `REGION` VALUES ('2818', '513422', '木里藏族自治县', '293', '0', '0', 'Muli Zangzu Zizhixian', 'MLI');
INSERT INTO `REGION` VALUES ('2819', '513423', '盐源县', '293', '0', '0', 'Yanyuan Xian', 'YYU');
INSERT INTO `REGION` VALUES ('2820', '513424', '德昌县', '293', '0', '0', 'Dechang Xian', 'DEC');
INSERT INTO `REGION` VALUES ('2821', '513425', '会理县', '293', '0', '0', 'Huili Xian', 'HLI');
INSERT INTO `REGION` VALUES ('2822', '513426', '会东县', '293', '0', '0', 'HuIDong Xian', 'HDG');
INSERT INTO `REGION` VALUES ('2823', '513427', '宁南县', '293', '0', '0', 'Ningnan Xian', 'NIN');
INSERT INTO `REGION` VALUES ('2824', '513428', '普格县', '293', '0', '0', 'Puge Xian', 'PGE');
INSERT INTO `REGION` VALUES ('2825', '513429', '布拖县', '293', '0', '0', 'Butuo Xian', 'BTO');
INSERT INTO `REGION` VALUES ('2826', '513430', '金阳县', '293', '0', '0', 'Jinyang Xian', 'JYW');
INSERT INTO `REGION` VALUES ('2827', '513431', '昭觉县', '293', '0', '0', 'Zhaojue Xian', 'ZJE');
INSERT INTO `REGION` VALUES ('2828', '513432', '喜德县', '293', '0', '0', 'XIDe Xian', 'XDE');
INSERT INTO `REGION` VALUES ('2829', '513433', '冕宁县', '293', '0', '0', 'Mianning Xian', 'MNG');
INSERT INTO `REGION` VALUES ('2830', '513434', '越西县', '293', '0', '0', 'Yuexi Xian', 'YXC');
INSERT INTO `REGION` VALUES ('2831', '513435', '甘洛县', '293', '0', '0', 'Ganluo Xian', 'GLO');
INSERT INTO `REGION` VALUES ('2832', '513436', '美姑县', '293', '0', '0', 'Meigu Xian', 'MEG');
INSERT INTO `REGION` VALUES ('2833', '513437', '雷波县', '293', '0', '0', 'Leibo Xian', 'LBX');
INSERT INTO `REGION` VALUES ('2834', '520101', '市辖区', '294', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2835', '520102', '南明区', '294', '0', '0', 'Nanming Qu', 'NMQ');
INSERT INTO `REGION` VALUES ('2836', '520103', '云岩区', '294', '0', '0', 'Yunyan Qu', 'YYQ');
INSERT INTO `REGION` VALUES ('2837', '520111', '花溪区', '294', '0', '0', 'Huaxi Qu', 'HXI');
INSERT INTO `REGION` VALUES ('2838', '520112', '乌当区', '294', '0', '0', 'Wudang Qu', 'WDQ');
INSERT INTO `REGION` VALUES ('2839', '520113', '白云区', '294', '0', '0', 'Baiyun Qu', 'BYU');
INSERT INTO `REGION` VALUES ('2840', '520114', '小河区', '294', '0', '0', 'Xiaohe Qu', '2');
INSERT INTO `REGION` VALUES ('2841', '520121', '开阳县', '294', '0', '0', 'Kaiyang Xian', 'KYG');
INSERT INTO `REGION` VALUES ('2842', '520122', '息烽县', '294', '0', '0', 'Xifeng Xian', 'XFX');
INSERT INTO `REGION` VALUES ('2843', '520123', '修文县', '294', '0', '0', 'Xiuwen Xian', 'XWX');
INSERT INTO `REGION` VALUES ('2844', '520181', '清镇市', '294', '0', '0', 'Qingzhen Shi', 'QZN');
INSERT INTO `REGION` VALUES ('2845', '520201', '钟山区', '295', '0', '0', 'Zhongshan Qu', 'ZSQ');
INSERT INTO `REGION` VALUES ('2846', '520203', '六枝特区', '295', '0', '0', 'Liuzhi Tequ', 'LZT');
INSERT INTO `REGION` VALUES ('2847', '520221', '水城县', '295', '0', '0', 'Shuicheng Xian', 'SUC');
INSERT INTO `REGION` VALUES ('2848', '520222', '盘县', '295', '0', '0', 'Pan Xian', '2');
INSERT INTO `REGION` VALUES ('2849', '520301', '市辖区', '296', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2850', '520302', '红花岗区', '296', '0', '0', 'Honghuagang Qu', 'HHG');
INSERT INTO `REGION` VALUES ('2851', '520303', '汇川区', '296', '0', '0', 'Huichuan Qu', '2');
INSERT INTO `REGION` VALUES ('2852', '520321', '遵义县', '296', '0', '0', 'Zunyi Xian', 'ZYI');
INSERT INTO `REGION` VALUES ('2853', '520322', '桐梓县', '296', '0', '0', 'Tongzi Xian', 'TZI');
INSERT INTO `REGION` VALUES ('2854', '520323', '绥阳县', '296', '0', '0', 'Suiyang Xian', 'SUY');
INSERT INTO `REGION` VALUES ('2855', '520324', '正安县', '296', '0', '0', 'Zhengan Xan', '2');
INSERT INTO `REGION` VALUES ('2856', '520325', '道真仡佬族苗族自治县', '296', '0', '0', 'Daozhen Gelaozu Miaozu Zizhixian', 'DZN');
INSERT INTO `REGION` VALUES ('2857', '520326', '务川仡佬族苗族自治县', '296', '0', '0', 'Wuchuan Gelaozu Miaozu Zizhixian', 'WCU');
INSERT INTO `REGION` VALUES ('2858', '520327', '凤冈县', '296', '0', '0', 'Fenggang Xian', 'FGG');
INSERT INTO `REGION` VALUES ('2859', '520328', '湄潭县', '296', '0', '0', 'Meitan Xian', 'MTN');
INSERT INTO `REGION` VALUES ('2860', '520329', '余庆县', '296', '0', '0', 'Yuqing Xian', 'YUQ');
INSERT INTO `REGION` VALUES ('2861', '520330', '习水县', '296', '0', '0', 'Xishui Xian', 'XSI');
INSERT INTO `REGION` VALUES ('2862', '520381', '赤水市', '296', '0', '0', 'Chishui Shi', 'CSS');
INSERT INTO `REGION` VALUES ('2863', '520382', '仁怀市', '296', '0', '0', 'Renhuai Shi', 'RHS');
INSERT INTO `REGION` VALUES ('2864', '520401', '市辖区', '297', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2865', '520402', '西秀区', '297', '0', '0', 'Xixiu Qu', '2');
INSERT INTO `REGION` VALUES ('2866', '520421', '平坝县', '297', '0', '0', 'Pingba Xian', '2');
INSERT INTO `REGION` VALUES ('2867', '520422', '普定县', '297', '0', '0', 'Puding Xian', '2');
INSERT INTO `REGION` VALUES ('2868', '520423', '镇宁布依族苗族自治县', '297', '0', '0', 'Zhenning Buyeizu Miaozu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2869', '520424', '关岭布依族苗族自治县', '297', '0', '0', 'Guanling Buyeizu Miaozu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2870', '520425', '紫云苗族布依族自治县', '297', '0', '0', 'Ziyun Miaozu Buyeizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2871', '522201', '铜仁市', '298', '0', '0', 'Tongren Shi', 'TRS');
INSERT INTO `REGION` VALUES ('2872', '522222', '江口县', '298', '0', '0', 'Jiangkou Xian', 'JGK');
INSERT INTO `REGION` VALUES ('2873', '522223', '玉屏侗族自治县', '298', '0', '0', 'Yuping Dongzu Zizhixian', 'YPG');
INSERT INTO `REGION` VALUES ('2874', '522224', '石阡县', '298', '0', '0', 'Shiqian Xian', 'SQI');
INSERT INTO `REGION` VALUES ('2875', '522225', '思南县', '298', '0', '0', 'Sinan Xian', 'SNA');
INSERT INTO `REGION` VALUES ('2876', '522226', '印江土家族苗族自治县', '298', '0', '0', 'Yinjiang Tujiazu Miaozu Zizhixian', 'YJY');
INSERT INTO `REGION` VALUES ('2877', '522227', '德江县', '298', '0', '0', 'Dejiang Xian', 'DEJ');
INSERT INTO `REGION` VALUES ('2878', '522228', '沿河土家族自治县', '298', '0', '0', 'Yanhe Tujiazu Zizhixian', 'YHE');
INSERT INTO `REGION` VALUES ('2879', '522229', '松桃苗族自治县', '298', '0', '0', 'Songtao Miaozu Zizhixian', 'STM');
INSERT INTO `REGION` VALUES ('2880', '522230', '万山特区', '298', '0', '0', 'Wanshan Tequ', 'WAS');
INSERT INTO `REGION` VALUES ('2881', '522301', '兴义市', '299', '0', '0', 'Xingyi Shi', 'XYI');
INSERT INTO `REGION` VALUES ('2882', '522322', '兴仁县', '299', '0', '0', 'Xingren Xian', 'XRN');
INSERT INTO `REGION` VALUES ('2883', '522323', '普安县', '299', '0', '0', 'Pu,an Xian', 'PUA');
INSERT INTO `REGION` VALUES ('2884', '522324', '晴隆县', '299', '0', '0', 'Qinglong Xian', 'QLG');
INSERT INTO `REGION` VALUES ('2885', '522325', '贞丰县', '299', '0', '0', 'Zhenfeng Xian', 'ZFG');
INSERT INTO `REGION` VALUES ('2886', '522326', '望谟县', '299', '0', '0', 'Wangmo Xian', 'WMO');
INSERT INTO `REGION` VALUES ('2887', '522327', '册亨县', '299', '0', '0', 'Ceheng Xian', 'CEH');
INSERT INTO `REGION` VALUES ('2888', '522328', '安龙县', '299', '0', '0', 'Anlong Xian', 'ALG');
INSERT INTO `REGION` VALUES ('2889', '522401', '毕节市', '300', '0', '0', 'Bijie Shi', 'BJE');
INSERT INTO `REGION` VALUES ('2890', '522422', '大方县', '300', '0', '0', 'Dafang Xian', 'DAF');
INSERT INTO `REGION` VALUES ('2891', '522423', '黔西县', '300', '0', '0', 'Qianxi Xian', 'QNX');
INSERT INTO `REGION` VALUES ('2892', '522424', '金沙县', '300', '0', '0', 'Jinsha Xian', 'JSX');
INSERT INTO `REGION` VALUES ('2893', '522425', '织金县', '300', '0', '0', 'Zhijin Xian', 'ZJN');
INSERT INTO `REGION` VALUES ('2894', '522426', '纳雍县', '300', '0', '0', 'Nayong Xian', 'NYG');
INSERT INTO `REGION` VALUES ('2895', '522427', '威宁彝族回族苗族自治县', '300', '0', '0', 'Weining Yizu Huizu Miaozu Zizhixian', 'WNG');
INSERT INTO `REGION` VALUES ('2896', '522428', '赫章县', '300', '0', '0', 'Hezhang Xian', 'HZA');
INSERT INTO `REGION` VALUES ('2897', '522601', '凯里市', '301', '0', '0', 'Kaili Shi', 'KLS');
INSERT INTO `REGION` VALUES ('2898', '522622', '黄平县', '301', '0', '0', 'Huangping Xian', 'HPN');
INSERT INTO `REGION` VALUES ('2899', '522623', '施秉县', '301', '0', '0', 'Shibing Xian', 'SBG');
INSERT INTO `REGION` VALUES ('2900', '522624', '三穗县', '301', '0', '0', 'Sansui Xian', 'SAS');
INSERT INTO `REGION` VALUES ('2901', '522625', '镇远县', '301', '0', '0', 'Zhenyuan Xian', 'ZYX');
INSERT INTO `REGION` VALUES ('2902', '522626', '岑巩县', '301', '0', '0', 'Cengong Xian', 'CGX');
INSERT INTO `REGION` VALUES ('2903', '522627', '天柱县', '301', '0', '0', 'Tianzhu Xian', 'TZU');
INSERT INTO `REGION` VALUES ('2904', '522628', '锦屏县', '301', '0', '0', 'Jinping Xian', 'JPX');
INSERT INTO `REGION` VALUES ('2905', '522629', '剑河县', '301', '0', '0', 'Jianhe Xian', 'JHE');
INSERT INTO `REGION` VALUES ('2906', '522630', '台江县', '301', '0', '0', 'Taijiang Xian', 'TJX');
INSERT INTO `REGION` VALUES ('2907', '522631', '黎平县', '301', '0', '0', 'Liping Xian', 'LIP');
INSERT INTO `REGION` VALUES ('2908', '522632', '榕江县', '301', '0', '0', 'Rongjiang Xian', 'RJG');
INSERT INTO `REGION` VALUES ('2909', '522633', '从江县', '301', '0', '0', 'Congjiang Xian', 'COJ');
INSERT INTO `REGION` VALUES ('2910', '522634', '雷山县', '301', '0', '0', 'Leishan Xian', 'LSA');
INSERT INTO `REGION` VALUES ('2911', '522635', '麻江县', '301', '0', '0', 'Majiang Xian', 'MAJ');
INSERT INTO `REGION` VALUES ('2912', '522636', '丹寨县', '301', '0', '0', 'Danzhai Xian', 'DZH');
INSERT INTO `REGION` VALUES ('2913', '522701', '都匀市', '302', '0', '0', 'Duyun Shi', 'DUY');
INSERT INTO `REGION` VALUES ('2914', '522702', '福泉市', '302', '0', '0', 'Fuquan Shi', 'FQN');
INSERT INTO `REGION` VALUES ('2915', '522722', '荔波县', '302', '0', '0', 'Libo Xian', 'LBO');
INSERT INTO `REGION` VALUES ('2916', '522723', '贵定县', '302', '0', '0', 'GuIDing Xian', 'GDG');
INSERT INTO `REGION` VALUES ('2917', '522725', '瓮安县', '302', '0', '0', 'Weng,an Xian', 'WGA');
INSERT INTO `REGION` VALUES ('2918', '522726', '独山县', '302', '0', '0', 'Dushan Xian', 'DSX');
INSERT INTO `REGION` VALUES ('2919', '522727', '平塘县', '302', '0', '0', 'Pingtang Xian', 'PTG');
INSERT INTO `REGION` VALUES ('2920', '522728', '罗甸县', '302', '0', '0', 'Luodian Xian', 'LOD');
INSERT INTO `REGION` VALUES ('2921', '522729', '长顺县', '302', '0', '0', 'Changshun Xian', 'CSU');
INSERT INTO `REGION` VALUES ('2922', '522730', '龙里县', '302', '0', '0', 'Longli Xian', 'LLI');
INSERT INTO `REGION` VALUES ('2923', '522731', '惠水县', '302', '0', '0', 'Huishui Xian', 'HUS');
INSERT INTO `REGION` VALUES ('2924', '522732', '三都水族自治县', '302', '0', '0', 'Sandu Suizu Zizhixian', 'SDU');
INSERT INTO `REGION` VALUES ('2925', '530101', '市辖区', '303', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2926', '530102', '五华区', '303', '0', '0', 'Wuhua Qu', 'WHA');
INSERT INTO `REGION` VALUES ('2927', '530103', '盘龙区', '303', '0', '0', 'Panlong Qu', 'PLQ');
INSERT INTO `REGION` VALUES ('2928', '530111', '官渡区', '303', '0', '0', 'Guandu Qu', 'GDU');
INSERT INTO `REGION` VALUES ('2929', '530112', '西山区', '303', '0', '0', 'Xishan Qu', 'XSN');
INSERT INTO `REGION` VALUES ('2930', '530113', '东川区', '303', '0', '0', 'Dongchuan Qu', 'DCU');
INSERT INTO `REGION` VALUES ('2931', '530121', '呈贡县', '303', '0', '0', 'Chenggong Xian', 'CGD');
INSERT INTO `REGION` VALUES ('2932', '530122', '晋宁县', '303', '0', '0', 'Jinning Xian', 'JND');
INSERT INTO `REGION` VALUES ('2933', '530124', '富民县', '303', '0', '0', 'Fumin Xian', 'FMN');
INSERT INTO `REGION` VALUES ('2934', '530125', '宜良县', '303', '0', '0', 'Yiliang Xian', 'YIL');
INSERT INTO `REGION` VALUES ('2935', '530126', '石林彝族自治县', '303', '0', '0', 'Shilin Yizu Zizhixian', 'SLY');
INSERT INTO `REGION` VALUES ('2936', '530127', '嵩明县', '303', '0', '0', 'Songming Xian', 'SMI');
INSERT INTO `REGION` VALUES ('2937', '530128', '禄劝彝族苗族自治县', '303', '0', '0', 'Luchuan Yizu Miaozu Zizhixian', 'LUC');
INSERT INTO `REGION` VALUES ('2938', '530129', '寻甸回族彝族自治县', '303', '0', '0', 'Xundian Huizu Yizu Zizhixian', 'XDN');
INSERT INTO `REGION` VALUES ('2939', '530181', '安宁市', '303', '0', '0', 'Anning Shi', 'ANG');
INSERT INTO `REGION` VALUES ('2940', '530301', '市辖区', '304', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2941', '530302', '麒麟区', '304', '0', '0', 'Qilin Xian', 'QLQ');
INSERT INTO `REGION` VALUES ('2942', '530321', '马龙县', '304', '0', '0', 'Malong Xian', 'MLO');
INSERT INTO `REGION` VALUES ('2943', '530322', '陆良县', '304', '0', '0', 'Luliang Xian', 'LLX');
INSERT INTO `REGION` VALUES ('2944', '530323', '师宗县', '304', '0', '0', 'Shizong Xian', 'SZD');
INSERT INTO `REGION` VALUES ('2945', '530324', '罗平县', '304', '0', '0', 'Luoping Xian', 'LPX');
INSERT INTO `REGION` VALUES ('2946', '530325', '富源县', '304', '0', '0', 'Fuyuan Xian', 'FYD');
INSERT INTO `REGION` VALUES ('2947', '530326', '会泽县', '304', '0', '0', 'Huize Xian', 'HUZ');
INSERT INTO `REGION` VALUES ('2948', '530328', '沾益县', '304', '0', '0', 'Zhanyi Xian', 'ZYD');
INSERT INTO `REGION` VALUES ('2949', '530381', '宣威市', '304', '0', '0', 'Xuanwei Shi', 'XWS');
INSERT INTO `REGION` VALUES ('2950', '530401', '市辖区', '305', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('2951', '530402', '红塔区', '305', '0', '0', 'Hongta Qu', 'HTA');
INSERT INTO `REGION` VALUES ('2952', '530421', '江川县', '305', '0', '0', 'Jiangchuan Xian', 'JGC');
INSERT INTO `REGION` VALUES ('2953', '530422', '澄江县', '305', '0', '0', 'Chengjiang Xian', 'CGJ');
INSERT INTO `REGION` VALUES ('2954', '530423', '通海县', '305', '0', '0', 'Tonghai Xian', 'THI');
INSERT INTO `REGION` VALUES ('2955', '530424', '华宁县', '305', '0', '0', 'Huaning Xian', 'HND');
INSERT INTO `REGION` VALUES ('2956', '530425', '易门县', '305', '0', '0', 'Yimen Xian', 'YMD');
INSERT INTO `REGION` VALUES ('2957', '530426', '峨山彝族自治县', '305', '0', '0', 'Eshan Yizu Zizhixian', 'ESN');
INSERT INTO `REGION` VALUES ('2958', '530427', '新平彝族傣族自治县', '305', '0', '0', 'Xinping Yizu Daizu Zizhixian', 'XNP');
INSERT INTO `REGION` VALUES ('2959', '530428', '元江哈尼族彝族傣族自治县', '305', '0', '0', 'Yuanjiang Hanizu Yizu Daizu Zizhixian', 'YJA');
INSERT INTO `REGION` VALUES ('2960', '530501', '市辖区', '306', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2961', '530502', '隆阳区', '306', '0', '0', 'Longyang Qu', '2');
INSERT INTO `REGION` VALUES ('2962', '530521', '施甸县', '306', '0', '0', 'ShIDian Xian', '2');
INSERT INTO `REGION` VALUES ('2963', '530522', '腾冲县', '306', '0', '0', 'Tengchong Xian', '2');
INSERT INTO `REGION` VALUES ('2964', '530523', '龙陵县', '306', '0', '0', 'Longling Xian', '2');
INSERT INTO `REGION` VALUES ('2965', '530524', '昌宁县', '306', '0', '0', 'Changning Xian', '2');
INSERT INTO `REGION` VALUES ('2966', '530601', '市辖区', '307', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2967', '530602', '昭阳区', '307', '0', '0', 'Zhaoyang Qu', '2');
INSERT INTO `REGION` VALUES ('2968', '530621', '鲁甸县', '307', '0', '0', 'Ludian Xian', '2');
INSERT INTO `REGION` VALUES ('2969', '530622', '巧家县', '307', '0', '0', 'Qiaojia Xian', '2');
INSERT INTO `REGION` VALUES ('2970', '530623', '盐津县', '307', '0', '0', 'Yanjin Xian', '2');
INSERT INTO `REGION` VALUES ('2971', '530624', '大关县', '307', '0', '0', 'Daguan Xian', '2');
INSERT INTO `REGION` VALUES ('2972', '530625', '永善县', '307', '0', '0', 'Yongshan Xian', '2');
INSERT INTO `REGION` VALUES ('2973', '530626', '绥江县', '307', '0', '0', 'Suijiang Xian', '2');
INSERT INTO `REGION` VALUES ('2974', '530627', '镇雄县', '307', '0', '0', 'Zhenxiong Xian', '2');
INSERT INTO `REGION` VALUES ('2975', '530628', '彝良县', '307', '0', '0', 'Yiliang Xian', '2');
INSERT INTO `REGION` VALUES ('2976', '530629', '威信县', '307', '0', '0', 'Weixin Xian', '2');
INSERT INTO `REGION` VALUES ('2977', '530630', '水富县', '307', '0', '0', 'Shuifu Xian ', '2');
INSERT INTO `REGION` VALUES ('2978', '530701', '市辖区', '308', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2979', '530702', '古城区', '308', '0', '0', 'Gucheng Qu', '2');
INSERT INTO `REGION` VALUES ('2980', '530721', '玉龙纳西族自治县', '308', '0', '0', 'Yulongnaxizuzizhi Xian', '2');
INSERT INTO `REGION` VALUES ('2981', '530722', '永胜县', '308', '0', '0', 'Yongsheng Xian', '2');
INSERT INTO `REGION` VALUES ('2982', '530723', '华坪县', '308', '0', '0', 'Huaping Xian', '2');
INSERT INTO `REGION` VALUES ('2983', '530724', '宁蒗彝族自治县', '308', '0', '0', 'Ninglang Yizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2984', '530801', '市辖区', '309', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2985', '530802', '思茅区', '309', '0', '0', 'Simao Qu', '2');
INSERT INTO `REGION` VALUES ('2986', '530821', '宁洱哈尼族彝族自治县', '309', '0', '0', 'Pu,er Hanizu Yizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2987', '530822', '墨江哈尼族自治县', '309', '0', '0', 'Mojiang Hanizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2988', '530823', '景东彝族自治县', '309', '0', '0', 'Jingdong Yizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2989', '530824', '景谷傣族彝族自治县', '309', '0', '0', 'Jinggu Daizu Yizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2990', '530825', '镇沅彝族哈尼族拉祜族自治县', '309', '0', '0', 'Zhenyuan Yizu Hanizu Lahuzu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2991', '530826', '江城哈尼族彝族自治县', '309', '0', '0', 'Jiangcheng Hanizu Yizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2992', '530827', '孟连傣族拉祜族佤族自治县', '309', '0', '0', 'Menglian Daizu Lahuzu Vazu Zizixian', '2');
INSERT INTO `REGION` VALUES ('2993', '530828', '澜沧拉祜族自治县', '309', '0', '0', 'Lancang Lahuzu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2994', '530829', '西盟佤族自治县', '309', '0', '0', 'Ximeng Vazu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('2995', '530901', '市辖区', '310', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('2996', '530902', '临翔区', '310', '0', '0', 'Linxiang Qu', '2');
INSERT INTO `REGION` VALUES ('2997', '530921', '凤庆县', '310', '0', '0', 'Fengqing Xian', '2');
INSERT INTO `REGION` VALUES ('2998', '530922', '云县', '310', '0', '0', 'Yun Xian', '2');
INSERT INTO `REGION` VALUES ('2999', '530923', '永德县', '310', '0', '0', 'Yongde Xian', '2');
INSERT INTO `REGION` VALUES ('3000', '530924', '镇康县', '310', '0', '0', 'Zhenkang Xian', '2');
INSERT INTO `REGION` VALUES ('3001', '530925', '双江拉祜族佤族布朗族傣族自治县', '310', '0', '0', 'Shuangjiang Lahuzu Vazu Bulangzu Daizu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('3002', '530926', '耿马傣族佤族自治县', '310', '0', '0', 'Gengma Daizu Vazu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('3003', '530927', '沧源佤族自治县', '310', '0', '0', 'Cangyuan Vazu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('3004', '532301', '楚雄市', '311', '0', '0', 'Chuxiong Shi', 'CXS');
INSERT INTO `REGION` VALUES ('3005', '532322', '双柏县', '311', '0', '0', 'Shuangbai Xian', 'SBA');
INSERT INTO `REGION` VALUES ('3006', '532323', '牟定县', '311', '0', '0', 'Mouding Xian', 'MDI');
INSERT INTO `REGION` VALUES ('3007', '532324', '南华县', '311', '0', '0', 'Nanhua Xian', 'NHA');
INSERT INTO `REGION` VALUES ('3008', '532325', '姚安县', '311', '0', '0', 'Yao,an Xian', 'YOA');
INSERT INTO `REGION` VALUES ('3009', '532326', '大姚县', '311', '0', '0', 'Dayao Xian', 'DYO');
INSERT INTO `REGION` VALUES ('3010', '532327', '永仁县', '311', '0', '0', 'Yongren Xian', 'YRN');
INSERT INTO `REGION` VALUES ('3011', '532328', '元谋县', '311', '0', '0', 'Yuanmou Xian', 'YMO');
INSERT INTO `REGION` VALUES ('3012', '532329', '武定县', '311', '0', '0', 'Wuding Xian', 'WDX');
INSERT INTO `REGION` VALUES ('3013', '532331', '禄丰县', '311', '0', '0', 'Lufeng Xian', 'LFX');
INSERT INTO `REGION` VALUES ('3014', '532501', '个旧市', '312', '0', '0', 'Gejiu Shi', 'GJU');
INSERT INTO `REGION` VALUES ('3015', '532502', '开远市', '312', '0', '0', 'Kaiyuan Shi', 'KYD');
INSERT INTO `REGION` VALUES ('3016', '532503', '蒙自市', '312', '0', '0', 'Mengzi Xian', '2');
INSERT INTO `REGION` VALUES ('3017', '532523', '屏边苗族自治县', '312', '0', '0', 'Pingbian Miaozu Zizhixian', 'PBN');
INSERT INTO `REGION` VALUES ('3018', '532524', '建水县', '312', '0', '0', 'Jianshui Xian', 'JSD');
INSERT INTO `REGION` VALUES ('3019', '532525', '石屏县', '312', '0', '0', 'Shiping Xian', 'SPG');
INSERT INTO `REGION` VALUES ('3020', '532526', '弥勒县', '312', '0', '0', 'Mile Xian', 'MIL');
INSERT INTO `REGION` VALUES ('3021', '532527', '泸西县', '312', '0', '0', 'Luxi Xian', 'LXD');
INSERT INTO `REGION` VALUES ('3022', '532528', '元阳县', '312', '0', '0', 'Yuanyang Xian', 'YYD');
INSERT INTO `REGION` VALUES ('3023', '532529', '红河县', '312', '0', '0', 'Honghe Xian', 'HHX');
INSERT INTO `REGION` VALUES ('3024', '532530', '金平苗族瑶族傣族自治县', '312', '0', '0', 'Jinping Miaozu Yaozu Daizu Zizhixian', 'JNP');
INSERT INTO `REGION` VALUES ('3025', '532531', '绿春县', '312', '0', '0', 'Lvchun Xian', 'LCX');
INSERT INTO `REGION` VALUES ('3026', '532532', '河口瑶族自治县', '312', '0', '0', 'Hekou Yaozu Zizhixian', 'HKM');
INSERT INTO `REGION` VALUES ('3027', '532621', '文山县', '313', '0', '0', 'Wenshan Xian', 'WES');
INSERT INTO `REGION` VALUES ('3028', '532622', '砚山县', '313', '0', '0', 'Yanshan Xian', 'YSD');
INSERT INTO `REGION` VALUES ('3029', '532623', '西畴县', '313', '0', '0', 'Xichou Xian', 'XIC');
INSERT INTO `REGION` VALUES ('3030', '532624', '麻栗坡县', '313', '0', '0', 'Malipo Xian', 'MLP');
INSERT INTO `REGION` VALUES ('3031', '532625', '马关县', '313', '0', '0', 'Maguan Xian', 'MGN');
INSERT INTO `REGION` VALUES ('3032', '532626', '丘北县', '313', '0', '0', 'Qiubei Xian', 'QBE');
INSERT INTO `REGION` VALUES ('3033', '532627', '广南县', '313', '0', '0', 'Guangnan Xian', 'GGN');
INSERT INTO `REGION` VALUES ('3034', '532628', '富宁县', '313', '0', '0', 'Funing Xian', 'FND');
INSERT INTO `REGION` VALUES ('3035', '532801', '景洪市', '314', '0', '0', 'Jinghong Shi', 'JHG');
INSERT INTO `REGION` VALUES ('3036', '532822', '勐海县', '314', '0', '0', 'Menghai Xian', 'MHI');
INSERT INTO `REGION` VALUES ('3037', '532823', '勐腊县', '314', '0', '0', 'Mengla Xian', 'MLA');
INSERT INTO `REGION` VALUES ('3038', '532901', '大理市', '315', '0', '0', 'Dali Shi', 'DLS');
INSERT INTO `REGION` VALUES ('3039', '532922', '漾濞彝族自治县', '315', '0', '0', 'Yangbi Yizu Zizhixian', 'YGB');
INSERT INTO `REGION` VALUES ('3040', '532923', '祥云县', '315', '0', '0', 'Xiangyun Xian', 'XYD');
INSERT INTO `REGION` VALUES ('3041', '532924', '宾川县', '315', '0', '0', 'Binchuan Xian', 'BCD');
INSERT INTO `REGION` VALUES ('3042', '532925', '弥渡县', '315', '0', '0', 'MIDu Xian', 'MDU');
INSERT INTO `REGION` VALUES ('3043', '532926', '南涧彝族自治县', '315', '0', '0', 'Nanjian Yizu Zizhixian', 'NNJ');
INSERT INTO `REGION` VALUES ('3044', '532927', '巍山彝族回族自治县', '315', '0', '0', 'Weishan Yizu Huizu Zizhixian', 'WSY');
INSERT INTO `REGION` VALUES ('3045', '532928', '永平县', '315', '0', '0', 'Yongping Xian', 'YPX');
INSERT INTO `REGION` VALUES ('3046', '532929', '云龙县', '315', '0', '0', 'Yunlong Xian', 'YLO');
INSERT INTO `REGION` VALUES ('3047', '532930', '洱源县', '315', '0', '0', 'Eryuan Xian', 'EYN');
INSERT INTO `REGION` VALUES ('3048', '532931', '剑川县', '315', '0', '0', 'Jianchuan Xian', 'JIC');
INSERT INTO `REGION` VALUES ('3049', '532932', '鹤庆县', '315', '0', '0', 'Heqing Xian', 'HQG');
INSERT INTO `REGION` VALUES ('3050', '533102', '瑞丽市', '316', '0', '0', 'Ruili Shi', 'RUI');
INSERT INTO `REGION` VALUES ('3051', '533103', '芒市', '316', '0', '0', 'Luxi Shi', '2');
INSERT INTO `REGION` VALUES ('3052', '533122', '梁河县', '316', '0', '0', 'Lianghe Xian', 'LHD');
INSERT INTO `REGION` VALUES ('3053', '533123', '盈江县', '316', '0', '0', 'Yingjiang Xian', 'YGJ');
INSERT INTO `REGION` VALUES ('3054', '533124', '陇川县', '316', '0', '0', 'Longchuan Xian', 'LCN');
INSERT INTO `REGION` VALUES ('3055', '533321', '泸水县', '317', '0', '0', 'Lushui Xian', 'LSX');
INSERT INTO `REGION` VALUES ('3056', '533323', '福贡县', '317', '0', '0', 'Fugong Xian', 'FGO');
INSERT INTO `REGION` VALUES ('3057', '533324', '贡山独龙族怒族自治县', '317', '0', '0', 'Gongshan Dulongzu Nuzu Zizhixian', 'GSN');
INSERT INTO `REGION` VALUES ('3058', '533325', '兰坪白族普米族自治县', '317', '0', '0', 'Lanping Baizu Pumizu Zizhixian', 'LPG');
INSERT INTO `REGION` VALUES ('3059', '533421', '香格里拉县', '318', '0', '0', 'Xianggelila Xian', '2');
INSERT INTO `REGION` VALUES ('3060', '533422', '德钦县', '318', '0', '0', 'Deqen Xian', 'DQN');
INSERT INTO `REGION` VALUES ('3061', '533423', '维西傈僳族自治县', '318', '0', '0', 'Weixi Lisuzu Zizhixian', 'WXI');
INSERT INTO `REGION` VALUES ('3062', '540101', '市辖区', '319', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3063', '540102', '城关区', '319', '0', '0', 'Chengguang Qu', 'CGN');
INSERT INTO `REGION` VALUES ('3064', '540121', '林周县', '319', '0', '0', 'Lhvnzhub Xian', 'LZB');
INSERT INTO `REGION` VALUES ('3065', '540122', '当雄县', '319', '0', '0', 'Damxung Xian', 'DAM');
INSERT INTO `REGION` VALUES ('3066', '540123', '尼木县', '319', '0', '0', 'Nyemo Xian', 'NYE');
INSERT INTO `REGION` VALUES ('3067', '540124', '曲水县', '319', '0', '0', 'Qvxv Xian', 'QUX');
INSERT INTO `REGION` VALUES ('3068', '540125', '堆龙德庆县', '319', '0', '0', 'Doilungdeqen Xian', 'DOI');
INSERT INTO `REGION` VALUES ('3069', '540126', '达孜县', '319', '0', '0', 'Dagze Xian', 'DAG');
INSERT INTO `REGION` VALUES ('3070', '540127', '墨竹工卡县', '319', '0', '0', 'Maizhokunggar Xian', 'MAI');
INSERT INTO `REGION` VALUES ('3071', '542121', '昌都县', '320', '0', '0', 'Qamdo Xian', 'QAX');
INSERT INTO `REGION` VALUES ('3072', '542122', '江达县', '320', '0', '0', 'Jomda Xian', 'JOM');
INSERT INTO `REGION` VALUES ('3073', '542123', '贡觉县', '320', '0', '0', 'Konjo Xian', 'KON');
INSERT INTO `REGION` VALUES ('3074', '542124', '类乌齐县', '320', '0', '0', 'Riwoqe Xian', 'RIW');
INSERT INTO `REGION` VALUES ('3075', '542125', '丁青县', '320', '0', '0', 'Dengqen Xian', 'DEN');
INSERT INTO `REGION` VALUES ('3076', '542126', '察雅县', '320', '0', '0', 'Chagyab Xian', 'CHA');
INSERT INTO `REGION` VALUES ('3077', '542127', '八宿县', '320', '0', '0', 'Baxoi Xian', 'BAX');
INSERT INTO `REGION` VALUES ('3078', '542128', '左贡县', '320', '0', '0', 'Zogang Xian', 'ZOX');
INSERT INTO `REGION` VALUES ('3079', '542129', '芒康县', '320', '0', '0', 'Mangkam Xian', 'MAN');
INSERT INTO `REGION` VALUES ('3080', '542132', '洛隆县', '320', '0', '0', 'Lhorong Xian', 'LHO');
INSERT INTO `REGION` VALUES ('3081', '542133', '边坝县', '320', '0', '0', 'Banbar Xian', 'BAN');
INSERT INTO `REGION` VALUES ('3082', '542221', '乃东县', '321', '0', '0', 'Nedong Xian', 'NED');
INSERT INTO `REGION` VALUES ('3083', '542222', '扎囊县', '321', '0', '0', 'Chanang(Chatang) Xian', 'CNG');
INSERT INTO `REGION` VALUES ('3084', '542223', '贡嘎县', '321', '0', '0', 'Gonggar Xian', 'GON');
INSERT INTO `REGION` VALUES ('3085', '542224', '桑日县', '321', '0', '0', 'Sangri Xian', 'SRI');
INSERT INTO `REGION` VALUES ('3086', '542225', '琼结县', '321', '0', '0', 'Qonggyai Xian', 'QON');
INSERT INTO `REGION` VALUES ('3087', '542226', '曲松县', '321', '0', '0', 'Qusum Xian', 'QUS');
INSERT INTO `REGION` VALUES ('3088', '542227', '措美县', '321', '0', '0', 'Comai Xian', 'COM');
INSERT INTO `REGION` VALUES ('3089', '542228', '洛扎县', '321', '0', '0', 'Lhozhag Xian', 'LHX');
INSERT INTO `REGION` VALUES ('3090', '542229', '加查县', '321', '0', '0', 'Gyaca Xian', 'GYA');
INSERT INTO `REGION` VALUES ('3091', '542231', '隆子县', '321', '0', '0', 'Lhvnze Xian', 'LHZ');
INSERT INTO `REGION` VALUES ('3092', '542232', '错那县', '321', '0', '0', 'Cona Xian', 'CON');
INSERT INTO `REGION` VALUES ('3093', '542233', '浪卡子县', '321', '0', '0', 'Nagarze Xian', 'NAX');
INSERT INTO `REGION` VALUES ('3094', '542301', '日喀则市', '322', '0', '0', 'Xigaze Shi', 'XIG');
INSERT INTO `REGION` VALUES ('3095', '542322', '南木林县', '322', '0', '0', 'Namling Xian', 'NAM');
INSERT INTO `REGION` VALUES ('3096', '542323', '江孜县', '322', '0', '0', 'Gyangze Xian', 'GYZ');
INSERT INTO `REGION` VALUES ('3097', '542324', '定日县', '322', '0', '0', 'Tingri Xian', 'TIN');
INSERT INTO `REGION` VALUES ('3098', '542325', '萨迦县', '322', '0', '0', 'Sa,gya Xian', 'SGX');
INSERT INTO `REGION` VALUES ('3099', '542326', '拉孜县', '322', '0', '0', 'Lhaze Xian', 'LAZ');
INSERT INTO `REGION` VALUES ('3100', '542327', '昂仁县', '322', '0', '0', 'Ngamring Xian', 'NGA');
INSERT INTO `REGION` VALUES ('3101', '542328', '谢通门县', '322', '0', '0', 'Xaitongmoin Xian', 'XTM');
INSERT INTO `REGION` VALUES ('3102', '542329', '白朗县', '322', '0', '0', 'Bainang Xian', 'BAI');
INSERT INTO `REGION` VALUES ('3103', '542330', '仁布县', '322', '0', '0', 'Rinbung Xian', 'RIN');
INSERT INTO `REGION` VALUES ('3104', '542331', '康马县', '322', '0', '0', 'Kangmar Xian', 'KAN');
INSERT INTO `REGION` VALUES ('3105', '542332', '定结县', '322', '0', '0', 'Dinggye Xian', 'DIN');
INSERT INTO `REGION` VALUES ('3106', '542333', '仲巴县', '322', '0', '0', 'Zhongba Xian', 'ZHB');
INSERT INTO `REGION` VALUES ('3107', '542334', '亚东县', '322', '0', '0', 'Yadong(Chomo) Xian', 'YDZ');
INSERT INTO `REGION` VALUES ('3108', '542335', '吉隆县', '322', '0', '0', 'Gyirong Xian', 'GIR');
INSERT INTO `REGION` VALUES ('3109', '542336', '聂拉木县', '322', '0', '0', 'Nyalam Xian', 'NYA');
INSERT INTO `REGION` VALUES ('3110', '542337', '萨嘎县', '322', '0', '0', 'Saga Xian', 'SAG');
INSERT INTO `REGION` VALUES ('3111', '542338', '岗巴县', '322', '0', '0', 'Gamba Xian', 'GAM');
INSERT INTO `REGION` VALUES ('3112', '542421', '那曲县', '323', '0', '0', 'Nagqu Xian', 'NAG');
INSERT INTO `REGION` VALUES ('3113', '542422', '嘉黎县', '323', '0', '0', 'Lhari Xian', 'LHR');
INSERT INTO `REGION` VALUES ('3114', '542423', '比如县', '323', '0', '0', 'Biru Xian', 'BRU');
INSERT INTO `REGION` VALUES ('3115', '542424', '聂荣县', '323', '0', '0', 'Nyainrong Xian', 'NRO');
INSERT INTO `REGION` VALUES ('3116', '542425', '安多县', '323', '0', '0', 'Amdo Xian', 'AMD');
INSERT INTO `REGION` VALUES ('3117', '542426', '申扎县', '323', '0', '0', 'Xainza Xian', 'XZX');
INSERT INTO `REGION` VALUES ('3118', '542427', '索县', '323', '0', '0', 'Sog Xian', 'SOG');
INSERT INTO `REGION` VALUES ('3119', '542428', '班戈县', '323', '0', '0', 'Bangoin Xian', 'BGX');
INSERT INTO `REGION` VALUES ('3120', '542429', '巴青县', '323', '0', '0', 'Baqen Xian', 'BQE');
INSERT INTO `REGION` VALUES ('3121', '542430', '尼玛县', '323', '0', '0', 'Nyima Xian', 'NYX');
INSERT INTO `REGION` VALUES ('3122', '542521', '普兰县', '324', '0', '0', 'Burang Xian', 'BUR');
INSERT INTO `REGION` VALUES ('3123', '542522', '札达县', '324', '0', '0', 'Zanda Xian', 'ZAN');
INSERT INTO `REGION` VALUES ('3124', '542523', '噶尔县', '324', '0', '0', 'Gar Xian', 'GAR');
INSERT INTO `REGION` VALUES ('3125', '542524', '日土县', '324', '0', '0', 'Rutog Xian', 'RUT');
INSERT INTO `REGION` VALUES ('3126', '542525', '革吉县', '324', '0', '0', 'Ge,gyai Xian', 'GEG');
INSERT INTO `REGION` VALUES ('3127', '542526', '改则县', '324', '0', '0', 'Gerze Xian', 'GER');
INSERT INTO `REGION` VALUES ('3128', '542527', '措勤县', '324', '0', '0', 'Coqen Xian', 'COQ');
INSERT INTO `REGION` VALUES ('3129', '542621', '林芝县', '325', '0', '0', 'Nyingchi Xian', 'NYI');
INSERT INTO `REGION` VALUES ('3130', '542622', '工布江达县', '325', '0', '0', 'Gongbo,gyamda Xian', 'GOX');
INSERT INTO `REGION` VALUES ('3131', '542623', '米林县', '325', '0', '0', 'Mainling Xian', 'MAX');
INSERT INTO `REGION` VALUES ('3132', '542624', '墨脱县', '325', '0', '0', 'Metog Xian', 'MET');
INSERT INTO `REGION` VALUES ('3133', '542625', '波密县', '325', '0', '0', 'Bomi(Bowo) Xian', 'BMI');
INSERT INTO `REGION` VALUES ('3134', '542626', '察隅县', '325', '0', '0', 'Zayv Xian', 'ZAY');
INSERT INTO `REGION` VALUES ('3135', '542627', '朗县', '325', '0', '0', 'Nang Xian', 'NGX');
INSERT INTO `REGION` VALUES ('3136', '610101', '市辖区', '326', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3137', '610102', '新城区', '326', '0', '0', 'Xincheng Qu', 'XCK');
INSERT INTO `REGION` VALUES ('3138', '610103', '碑林区', '326', '0', '0', 'Beilin Qu', 'BLQ');
INSERT INTO `REGION` VALUES ('3139', '610104', '莲湖区', '326', '0', '0', 'Lianhu Qu', 'LHU');
INSERT INTO `REGION` VALUES ('3140', '610111', '灞桥区', '326', '0', '0', 'Baqiao Qu', 'BQQ');
INSERT INTO `REGION` VALUES ('3141', '610112', '未央区', '326', '0', '0', 'Weiyang Qu', '2');
INSERT INTO `REGION` VALUES ('3142', '610113', '雁塔区', '326', '0', '0', 'Yanta Qu', 'YTA');
INSERT INTO `REGION` VALUES ('3143', '610114', '阎良区', '326', '0', '0', 'Yanliang Qu', 'YLQ');
INSERT INTO `REGION` VALUES ('3144', '610115', '临潼区', '326', '0', '0', 'Lintong Qu', 'LTG');
INSERT INTO `REGION` VALUES ('3145', '610116', '长安区', '326', '0', '0', 'Changan Qu', '2');
INSERT INTO `REGION` VALUES ('3146', '610122', '蓝田县', '326', '0', '0', 'Lantian Xian', 'LNT');
INSERT INTO `REGION` VALUES ('3147', '610124', '周至县', '326', '0', '0', 'Zhouzhi Xian', 'ZOZ');
INSERT INTO `REGION` VALUES ('3148', '610125', '户县', '326', '0', '0', 'Hu Xian', 'HUX');
INSERT INTO `REGION` VALUES ('3149', '610126', '高陵县', '326', '0', '0', 'Gaoling Xian', 'GLS');
INSERT INTO `REGION` VALUES ('3150', '610201', '市辖区', '327', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3151', '610202', '王益区', '327', '0', '0', 'Wangyi Qu', '2');
INSERT INTO `REGION` VALUES ('3152', '610203', '印台区', '327', '0', '0', 'Yintai Qu', '2');
INSERT INTO `REGION` VALUES ('3153', '610204', '耀州区', '327', '0', '0', 'Yaozhou Qu', '2');
INSERT INTO `REGION` VALUES ('3154', '610222', '宜君县', '327', '0', '0', 'Yijun Xian', 'YJU');
INSERT INTO `REGION` VALUES ('3155', '610301', '市辖区', '328', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3156', '610302', '渭滨区', '328', '0', '0', 'Weibin Qu', 'WBQ');
INSERT INTO `REGION` VALUES ('3157', '610303', '金台区', '328', '0', '0', 'Jintai Qu', 'JTQ');
INSERT INTO `REGION` VALUES ('3158', '610304', '陈仓区', '328', '0', '0', 'Chencang Qu', '2');
INSERT INTO `REGION` VALUES ('3159', '610322', '凤翔县', '328', '0', '0', 'Fengxiang Xian', 'FXG');
INSERT INTO `REGION` VALUES ('3160', '610323', '岐山县', '328', '0', '0', 'Qishan Xian', 'QIS');
INSERT INTO `REGION` VALUES ('3161', '610324', '扶风县', '328', '0', '0', 'Fufeng Xian', 'FFG');
INSERT INTO `REGION` VALUES ('3162', '610326', '眉县', '328', '0', '0', 'Mei Xian', 'MEI');
INSERT INTO `REGION` VALUES ('3163', '610327', '陇县', '328', '0', '0', 'Long Xian', 'LON');
INSERT INTO `REGION` VALUES ('3164', '610328', '千阳县', '328', '0', '0', 'Qianyang Xian', 'QNY');
INSERT INTO `REGION` VALUES ('3165', '610329', '麟游县', '328', '0', '0', 'Linyou Xian', 'LYP');
INSERT INTO `REGION` VALUES ('3166', '610330', '凤县', '328', '0', '0', 'Feng Xian', 'FEG');
INSERT INTO `REGION` VALUES ('3167', '610331', '太白县', '328', '0', '0', 'Taibai Xian', 'TBA');
INSERT INTO `REGION` VALUES ('3168', '610401', '市辖区', '329', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3169', '610402', '秦都区', '329', '0', '0', 'Qindu Qu', 'QDU');
INSERT INTO `REGION` VALUES ('3170', '610403', '杨陵区', '329', '0', '0', 'Yangling Qu', 'YGL');
INSERT INTO `REGION` VALUES ('3171', '610404', '渭城区', '329', '0', '0', 'Weicheng Qu', 'WIC');
INSERT INTO `REGION` VALUES ('3172', '610422', '三原县', '329', '0', '0', 'Sanyuan Xian', 'SYN');
INSERT INTO `REGION` VALUES ('3173', '610423', '泾阳县', '329', '0', '0', 'Jingyang Xian', 'JGY');
INSERT INTO `REGION` VALUES ('3174', '610424', '乾县', '329', '0', '0', 'Qian Xian', 'QIA');
INSERT INTO `REGION` VALUES ('3175', '610425', '礼泉县', '329', '0', '0', 'Liquan Xian', 'LIQ');
INSERT INTO `REGION` VALUES ('3176', '610426', '永寿县', '329', '0', '0', 'Yongshou Xian', 'YSH');
INSERT INTO `REGION` VALUES ('3177', '610427', '彬县', '329', '0', '0', 'Bin Xian', 'BIX');
INSERT INTO `REGION` VALUES ('3178', '610428', '长武县', '329', '0', '0', 'Changwu Xian', 'CWU');
INSERT INTO `REGION` VALUES ('3179', '610429', '旬邑县', '329', '0', '0', 'Xunyi Xian', 'XNY');
INSERT INTO `REGION` VALUES ('3180', '610430', '淳化县', '329', '0', '0', 'Chunhua Xian', 'CHU');
INSERT INTO `REGION` VALUES ('3181', '610431', '武功县', '329', '0', '0', 'Wugong Xian', 'WGG');
INSERT INTO `REGION` VALUES ('3182', '610481', '兴平市', '329', '0', '0', 'Xingping Shi', 'XPG');
INSERT INTO `REGION` VALUES ('3183', '610501', '市辖区', '330', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3184', '610502', '临渭区', '330', '0', '0', 'Linwei Qu', 'LWE');
INSERT INTO `REGION` VALUES ('3185', '610521', '华县', '330', '0', '0', 'Hua Xian', 'HXN');
INSERT INTO `REGION` VALUES ('3186', '610522', '潼关县', '330', '0', '0', 'Tongguan Xian', 'TGN');
INSERT INTO `REGION` VALUES ('3187', '610523', '大荔县', '330', '0', '0', 'Dali Xian', 'DAL');
INSERT INTO `REGION` VALUES ('3188', '610524', '合阳县', '330', '0', '0', 'Heyang Xian', 'HYK');
INSERT INTO `REGION` VALUES ('3189', '610525', '澄城县', '330', '0', '0', 'Chengcheng Xian', 'CCG');
INSERT INTO `REGION` VALUES ('3190', '610526', '蒲城县', '330', '0', '0', 'Pucheng Xian', 'PUC');
INSERT INTO `REGION` VALUES ('3191', '610527', '白水县', '330', '0', '0', 'Baishui Xian', 'BSU');
INSERT INTO `REGION` VALUES ('3192', '610528', '富平县', '330', '0', '0', 'Fuping Xian', 'FPX');
INSERT INTO `REGION` VALUES ('3193', '610581', '韩城市', '330', '0', '0', 'Hancheng Shi', 'HCE');
INSERT INTO `REGION` VALUES ('3194', '610582', '华阴市', '330', '0', '0', 'Huayin Shi', 'HYI');
INSERT INTO `REGION` VALUES ('3195', '610601', '市辖区', '331', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3196', '610602', '宝塔区', '331', '0', '0', 'Baota Qu', 'BTA');
INSERT INTO `REGION` VALUES ('3197', '610621', '延长县', '331', '0', '0', 'Yanchang Xian', 'YCA');
INSERT INTO `REGION` VALUES ('3198', '610622', '延川县', '331', '0', '0', 'Yanchuan Xian', 'YCT');
INSERT INTO `REGION` VALUES ('3199', '610623', '子长县', '331', '0', '0', 'Zichang Xian', 'ZCA');
INSERT INTO `REGION` VALUES ('3200', '610624', '安塞县', '331', '0', '0', 'Ansai Xian', 'ANS');
INSERT INTO `REGION` VALUES ('3201', '610625', '志丹县', '331', '0', '0', 'ZhIDan Xian', 'ZDN');
INSERT INTO `REGION` VALUES ('3202', '610626', '吴起县', '331', '0', '0', 'Wuqi Xian', '2');
INSERT INTO `REGION` VALUES ('3203', '610627', '甘泉县', '331', '0', '0', 'Ganquan Xian', 'GQN');
INSERT INTO `REGION` VALUES ('3204', '610628', '富县', '331', '0', '0', 'Fu Xian', 'FUX');
INSERT INTO `REGION` VALUES ('3205', '610629', '洛川县', '331', '0', '0', 'Luochuan Xian', 'LCW');
INSERT INTO `REGION` VALUES ('3206', '610630', '宜川县', '331', '0', '0', 'Yichuan Xian', 'YIC');
INSERT INTO `REGION` VALUES ('3207', '610631', '黄龙县', '331', '0', '0', 'Huanglong Xian', 'HGL');
INSERT INTO `REGION` VALUES ('3208', '610632', '黄陵县', '331', '0', '0', 'Huangling Xian', 'HLG');
INSERT INTO `REGION` VALUES ('3209', '610701', '市辖区', '332', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3210', '610702', '汉台区', '332', '0', '0', 'Hantai Qu', 'HTQ');
INSERT INTO `REGION` VALUES ('3211', '610721', '南郑县', '332', '0', '0', 'Nanzheng Xian', 'NZG');
INSERT INTO `REGION` VALUES ('3212', '610722', '城固县', '332', '0', '0', 'Chenggu Xian', 'CGU');
INSERT INTO `REGION` VALUES ('3213', '610723', '洋县', '332', '0', '0', 'Yang Xian', 'YGX');
INSERT INTO `REGION` VALUES ('3214', '610724', '西乡县', '332', '0', '0', 'Xixiang Xian', 'XXA');
INSERT INTO `REGION` VALUES ('3215', '610725', '勉县', '332', '0', '0', 'Mian Xian', 'MIA');
INSERT INTO `REGION` VALUES ('3216', '610726', '宁强县', '332', '0', '0', 'Ningqiang Xian', 'NQG');
INSERT INTO `REGION` VALUES ('3217', '610727', '略阳县', '332', '0', '0', 'Lueyang Xian', 'LYC');
INSERT INTO `REGION` VALUES ('3218', '610728', '镇巴县', '332', '0', '0', 'Zhenba Xian', 'ZBA');
INSERT INTO `REGION` VALUES ('3219', '610729', '留坝县', '332', '0', '0', 'Liuba Xian', 'LBA');
INSERT INTO `REGION` VALUES ('3220', '610730', '佛坪县', '332', '0', '0', 'Foping Xian', 'FPG');
INSERT INTO `REGION` VALUES ('3221', '610801', '市辖区', '333', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3222', '610802', '榆阳区', '333', '0', '0', 'Yuyang Qu', '2');
INSERT INTO `REGION` VALUES ('3223', '610821', '神木县', '333', '0', '0', 'Shenmu Xian', '2');
INSERT INTO `REGION` VALUES ('3224', '610822', '府谷县', '333', '0', '0', 'Fugu Xian', '2');
INSERT INTO `REGION` VALUES ('3225', '610823', '横山县', '333', '0', '0', 'Hengshan Xian', '2');
INSERT INTO `REGION` VALUES ('3226', '610824', '靖边县', '333', '0', '0', 'Jingbian Xian', '2');
INSERT INTO `REGION` VALUES ('3227', '610825', '定边县', '333', '0', '0', 'Dingbian Xian', '2');
INSERT INTO `REGION` VALUES ('3228', '610826', '绥德县', '333', '0', '0', 'SuIDe Xian', '2');
INSERT INTO `REGION` VALUES ('3229', '610827', '米脂县', '333', '0', '0', 'Mizhi Xian', '2');
INSERT INTO `REGION` VALUES ('3230', '610828', '佳县', '333', '0', '0', 'Jia Xian', '2');
INSERT INTO `REGION` VALUES ('3231', '610829', '吴堡县', '333', '0', '0', 'Wubu Xian', '2');
INSERT INTO `REGION` VALUES ('3232', '610830', '清涧县', '333', '0', '0', 'Qingjian Xian', '2');
INSERT INTO `REGION` VALUES ('3233', '610831', '子洲县', '333', '0', '0', 'Zizhou Xian', '2');
INSERT INTO `REGION` VALUES ('3234', '610901', '市辖区', '334', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3235', '610902', '汉滨区', '334', '0', '0', 'Hanbin Qu', '2');
INSERT INTO `REGION` VALUES ('3236', '610921', '汉阴县', '334', '0', '0', 'Hanyin Xian', '2');
INSERT INTO `REGION` VALUES ('3237', '610922', '石泉县', '334', '0', '0', 'Shiquan Xian', '2');
INSERT INTO `REGION` VALUES ('3238', '610923', '宁陕县', '334', '0', '0', 'Ningshan Xian', '2');
INSERT INTO `REGION` VALUES ('3239', '610924', '紫阳县', '334', '0', '0', 'Ziyang Xian', '2');
INSERT INTO `REGION` VALUES ('3240', '610925', '岚皋县', '334', '0', '0', 'Langao Xian', '2');
INSERT INTO `REGION` VALUES ('3241', '610926', '平利县', '334', '0', '0', 'Pingli Xian', '2');
INSERT INTO `REGION` VALUES ('3242', '610927', '镇坪县', '334', '0', '0', 'Zhenping Xian', '2');
INSERT INTO `REGION` VALUES ('3243', '610928', '旬阳县', '334', '0', '0', 'Xunyang Xian', '2');
INSERT INTO `REGION` VALUES ('3244', '610929', '白河县', '334', '0', '0', 'Baihe Xian', '2');
INSERT INTO `REGION` VALUES ('3245', '611001', '市辖区', '335', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3246', '611002', '商州区', '335', '0', '0', 'Shangzhou Qu', '2');
INSERT INTO `REGION` VALUES ('3247', '611021', '洛南县', '335', '0', '0', 'Luonan Xian', '2');
INSERT INTO `REGION` VALUES ('3248', '611022', '丹凤县', '335', '0', '0', 'Danfeng Xian', '2');
INSERT INTO `REGION` VALUES ('3249', '611023', '商南县', '335', '0', '0', 'Shangnan Xian', '2');
INSERT INTO `REGION` VALUES ('3250', '611024', '山阳县', '335', '0', '0', 'Shanyang Xian', '2');
INSERT INTO `REGION` VALUES ('3251', '611025', '镇安县', '335', '0', '0', 'Zhen,an Xian', '2');
INSERT INTO `REGION` VALUES ('3252', '611026', '柞水县', '335', '0', '0', 'Zhashui Xian', '2');
INSERT INTO `REGION` VALUES ('3253', '620101', '市辖区', '336', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3254', '620102', '城关区', '336', '0', '0', 'Chengguan Qu', 'CLZ');
INSERT INTO `REGION` VALUES ('3255', '620103', '七里河区', '336', '0', '0', 'Qilihe Qu', 'QLH');
INSERT INTO `REGION` VALUES ('3256', '620104', '西固区', '336', '0', '0', 'Xigu Qu', 'XGU');
INSERT INTO `REGION` VALUES ('3257', '620105', '安宁区', '336', '0', '0', 'Anning Qu', 'ANQ');
INSERT INTO `REGION` VALUES ('3258', '620111', '红古区', '336', '0', '0', 'Honggu Qu', 'HOG');
INSERT INTO `REGION` VALUES ('3259', '620121', '永登县', '336', '0', '0', 'Yongdeng Xian', 'YDG');
INSERT INTO `REGION` VALUES ('3260', '620122', '皋兰县', '336', '0', '0', 'Gaolan Xian', 'GAL');
INSERT INTO `REGION` VALUES ('3261', '620123', '榆中县', '336', '0', '0', 'Yuzhong Xian', 'YZX');
INSERT INTO `REGION` VALUES ('3262', '620201', '市辖区', '337', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3263', '620301', '市辖区', '338', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3264', '620302', '金川区', '338', '0', '0', 'Jinchuan Qu', 'JCU');
INSERT INTO `REGION` VALUES ('3265', '620321', '永昌县', '338', '0', '0', 'Yongchang Xian', 'YCF');
INSERT INTO `REGION` VALUES ('3266', '620401', '市辖区', '339', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3267', '620402', '白银区', '339', '0', '0', 'Baiyin Qu', 'BYB');
INSERT INTO `REGION` VALUES ('3268', '620403', '平川区', '339', '0', '0', 'Pingchuan Qu', 'PCQ');
INSERT INTO `REGION` VALUES ('3269', '620421', '靖远县', '339', '0', '0', 'Jingyuan Xian', 'JYH');
INSERT INTO `REGION` VALUES ('3270', '620422', '会宁县', '339', '0', '0', 'Huining xian', 'HNI');
INSERT INTO `REGION` VALUES ('3271', '620423', '景泰县', '339', '0', '0', 'Jingtai Xian', 'JGT');
INSERT INTO `REGION` VALUES ('3272', '620501', '市辖区', '340', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3274', '620502', '秦州区', '340', '0', '0', 'BeIDao Qu', '2');
INSERT INTO `REGION` VALUES ('3275', '620521', '清水县', '340', '0', '0', 'Qingshui Xian', 'QSG');
INSERT INTO `REGION` VALUES ('3276', '620522', '秦安县', '340', '0', '0', 'Qin,an Xian', 'QNA');
INSERT INTO `REGION` VALUES ('3277', '620523', '甘谷县', '340', '0', '0', 'Gangu Xian', 'GGU');
INSERT INTO `REGION` VALUES ('3278', '620524', '武山县', '340', '0', '0', 'Wushan Xian', 'WSX');
INSERT INTO `REGION` VALUES ('3279', '620525', '张家川回族自治县', '340', '0', '0', 'Zhangjiachuan Huizu Zizhixian', 'ZJC');
INSERT INTO `REGION` VALUES ('3280', '620601', '市辖区', '341', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3281', '620602', '凉州区', '341', '0', '0', 'Liangzhou Qu', '2');
INSERT INTO `REGION` VALUES ('3282', '620621', '民勤县', '341', '0', '0', 'Minqin Xian', '2');
INSERT INTO `REGION` VALUES ('3283', '620622', '古浪县', '341', '0', '0', 'Gulang Xian', '2');
INSERT INTO `REGION` VALUES ('3284', '620623', '天祝藏族自治县', '341', '0', '0', 'Tianzhu Zangzu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('3285', '620701', '市辖区', '342', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3286', '620702', '甘州区', '342', '0', '0', 'Ganzhou Qu', '2');
INSERT INTO `REGION` VALUES ('3287', '620721', '肃南裕固族自治县', '342', '0', '0', 'Sunan Yugurzu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('3288', '620722', '民乐县', '342', '0', '0', 'Minle Xian', '2');
INSERT INTO `REGION` VALUES ('3289', '620723', '临泽县', '342', '0', '0', 'Linze Xian', '2');
INSERT INTO `REGION` VALUES ('3290', '620724', '高台县', '342', '0', '0', 'Gaotai Xian', '2');
INSERT INTO `REGION` VALUES ('3291', '620725', '山丹县', '342', '0', '0', 'Shandan Xian', '2');
INSERT INTO `REGION` VALUES ('3292', '620801', '市辖区', '343', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3293', '620802', '崆峒区', '343', '0', '0', 'Kongdong Qu', '2');
INSERT INTO `REGION` VALUES ('3294', '620821', '泾川县', '343', '0', '0', 'Jingchuan Xian', '2');
INSERT INTO `REGION` VALUES ('3295', '620822', '灵台县', '343', '0', '0', 'Lingtai Xian', '2');
INSERT INTO `REGION` VALUES ('3296', '620823', '崇信县', '343', '0', '0', 'Chongxin Xian', '2');
INSERT INTO `REGION` VALUES ('3297', '620824', '华亭县', '343', '0', '0', 'Huating Xian', '2');
INSERT INTO `REGION` VALUES ('3298', '620825', '庄浪县', '343', '0', '0', 'Zhuanglang Xian', '2');
INSERT INTO `REGION` VALUES ('3299', '620826', '静宁县', '343', '0', '0', 'Jingning Xian', '2');
INSERT INTO `REGION` VALUES ('3300', '620901', '市辖区', '344', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3301', '620902', '肃州区', '344', '0', '0', 'Suzhou Qu', '2');
INSERT INTO `REGION` VALUES ('3302', '620921', '金塔县', '344', '0', '0', 'Jinta Xian', '2');
INSERT INTO `REGION` VALUES ('3304', '620923', '肃北蒙古族自治县', '344', '0', '0', 'Subei Monguzu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('3305', '620924', '阿克塞哈萨克族自治县', '344', '0', '0', 'Aksay Kazakzu Zizhixian', '2');
INSERT INTO `REGION` VALUES ('3306', '620981', '玉门市', '344', '0', '0', 'Yumen Shi', '2');
INSERT INTO `REGION` VALUES ('3307', '620982', '敦煌市', '344', '0', '0', 'Dunhuang Shi', '2');
INSERT INTO `REGION` VALUES ('3308', '621001', '市辖区', '345', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3309', '621002', '西峰区', '345', '0', '0', 'Xifeng Qu', '2');
INSERT INTO `REGION` VALUES ('3310', '621021', '庆城县', '345', '0', '0', 'Qingcheng Xian', '2');
INSERT INTO `REGION` VALUES ('3311', '621022', '环县', '345', '0', '0', 'Huan Xian', '2');
INSERT INTO `REGION` VALUES ('3312', '621023', '华池县', '345', '0', '0', 'Huachi Xian', '2');
INSERT INTO `REGION` VALUES ('3313', '621024', '合水县', '345', '0', '0', 'Heshui Xian', '2');
INSERT INTO `REGION` VALUES ('3314', '621025', '正宁县', '345', '0', '0', 'Zhengning Xian', '2');
INSERT INTO `REGION` VALUES ('3315', '621026', '宁县', '345', '0', '0', 'Ning Xian', '2');
INSERT INTO `REGION` VALUES ('3316', '621027', '镇原县', '345', '0', '0', 'Zhenyuan Xian', '2');
INSERT INTO `REGION` VALUES ('3317', '621101', '市辖区', '346', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3318', '621102', '安定区', '346', '0', '0', 'Anding Qu', '2');
INSERT INTO `REGION` VALUES ('3319', '621121', '通渭县', '346', '0', '0', 'Tongwei Xian', '2');
INSERT INTO `REGION` VALUES ('3320', '621122', '陇西县', '346', '0', '0', 'Longxi Xian', '2');
INSERT INTO `REGION` VALUES ('3321', '621123', '渭源县', '346', '0', '0', 'Weiyuan Xian', '2');
INSERT INTO `REGION` VALUES ('3322', '621124', '临洮县', '346', '0', '0', 'Lintao Xian', '2');
INSERT INTO `REGION` VALUES ('3323', '621125', '漳县', '346', '0', '0', 'Zhang Xian', '2');
INSERT INTO `REGION` VALUES ('3324', '621126', '岷县', '346', '0', '0', 'Min Xian', '2');
INSERT INTO `REGION` VALUES ('3325', '621201', '市辖区', '347', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3326', '621202', '武都区', '347', '0', '0', 'Wudu Qu', '2');
INSERT INTO `REGION` VALUES ('3327', '621221', '成县', '347', '0', '0', 'Cheng Xian', '2');
INSERT INTO `REGION` VALUES ('3328', '621222', '文县', '347', '0', '0', 'Wen Xian', '2');
INSERT INTO `REGION` VALUES ('3329', '621223', '宕昌县', '347', '0', '0', 'Dangchang Xian', '2');
INSERT INTO `REGION` VALUES ('3330', '621224', '康县', '347', '0', '0', 'Kang Xian', '2');
INSERT INTO `REGION` VALUES ('3331', '621225', '西和县', '347', '0', '0', 'Xihe Xian', '2');
INSERT INTO `REGION` VALUES ('3332', '621226', '礼县', '347', '0', '0', 'Li Xian', '2');
INSERT INTO `REGION` VALUES ('3333', '621227', '徽县', '347', '0', '0', 'Hui Xian', '2');
INSERT INTO `REGION` VALUES ('3334', '621228', '两当县', '347', '0', '0', 'Liangdang Xian', '2');
INSERT INTO `REGION` VALUES ('3335', '622901', '临夏市', '348', '0', '0', 'Linxia Shi', 'LXR');
INSERT INTO `REGION` VALUES ('3336', '622921', '临夏县', '348', '0', '0', 'Linxia Xian', 'LXF');
INSERT INTO `REGION` VALUES ('3337', '622922', '康乐县', '348', '0', '0', 'Kangle Xian', 'KLE');
INSERT INTO `REGION` VALUES ('3338', '622923', '永靖县', '348', '0', '0', 'Yongjing Xian', 'YJG');
INSERT INTO `REGION` VALUES ('3339', '622924', '广河县', '348', '0', '0', 'Guanghe Xian', 'GHX');
INSERT INTO `REGION` VALUES ('3340', '622925', '和政县', '348', '0', '0', 'Hezheng Xian', 'HZG');
INSERT INTO `REGION` VALUES ('3341', '622926', '东乡族自治县', '348', '0', '0', 'Dongxiangzu Zizhixian', 'DXZ');
INSERT INTO `REGION` VALUES ('3342', '622927', '积石山保安族东乡族撒拉族自治县', '348', '0', '0', 'Jishishan Bonanzu Dongxiangzu Salarzu Zizhixian', 'JSN');
INSERT INTO `REGION` VALUES ('3343', '623001', '合作市', '349', '0', '0', 'Hezuo Shi', 'HEZ');
INSERT INTO `REGION` VALUES ('3344', '623021', '临潭县', '349', '0', '0', 'Lintan Xian', 'LTN');
INSERT INTO `REGION` VALUES ('3345', '623022', '卓尼县', '349', '0', '0', 'Jone', 'JON');
INSERT INTO `REGION` VALUES ('3346', '623023', '舟曲县', '349', '0', '0', 'Zhugqu Xian', 'ZQU');
INSERT INTO `REGION` VALUES ('3347', '623024', '迭部县', '349', '0', '0', 'Tewo Xian', 'TEW');
INSERT INTO `REGION` VALUES ('3348', '623025', '玛曲县', '349', '0', '0', 'Maqu Xian', 'MQU');
INSERT INTO `REGION` VALUES ('3349', '623026', '碌曲县', '349', '0', '0', 'Luqu Xian', 'LQU');
INSERT INTO `REGION` VALUES ('3350', '623027', '夏河县', '349', '0', '0', 'Xiahe Xian', 'XHN');
INSERT INTO `REGION` VALUES ('3351', '630101', '市辖区', '350', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3352', '630102', '城东区', '350', '0', '0', 'Chengdong Qu', 'CDQ');
INSERT INTO `REGION` VALUES ('3353', '630103', '城中区', '350', '0', '0', 'Chengzhong Qu', 'CZQ');
INSERT INTO `REGION` VALUES ('3354', '630104', '城西区', '350', '0', '0', 'Chengxi Qu', 'CXQ');
INSERT INTO `REGION` VALUES ('3355', '630105', '城北区', '350', '0', '0', 'Chengbei Qu', 'CBE');
INSERT INTO `REGION` VALUES ('3356', '630121', '大通回族土族自治县', '350', '0', '0', 'Datong Huizu Tuzu Zizhixian', 'DAT');
INSERT INTO `REGION` VALUES ('3357', '630122', '湟中县', '350', '0', '0', 'Huangzhong Xian', '2');
INSERT INTO `REGION` VALUES ('3358', '630123', '湟源县', '350', '0', '0', 'Huangyuan Xian', '2');
INSERT INTO `REGION` VALUES ('3359', '632121', '平安县', '351', '0', '0', 'Ping,an Xian', 'PAN');
INSERT INTO `REGION` VALUES ('3360', '632122', '民和回族土族自治县', '351', '0', '0', 'Minhe Huizu Tuzu Zizhixian', 'MHE');
INSERT INTO `REGION` VALUES ('3361', '632123', '乐都县', '351', '0', '0', 'Ledu Xian', 'LDU');
INSERT INTO `REGION` VALUES ('3362', '632126', '互助土族自治县', '351', '0', '0', 'Huzhu Tuzu Zizhixian', 'HZT');
INSERT INTO `REGION` VALUES ('3363', '632127', '化隆回族自治县', '351', '0', '0', 'Hualong Huizu Zizhixian', 'HLO');
INSERT INTO `REGION` VALUES ('3364', '632128', '循化撒拉族自治县', '351', '0', '0', 'Xunhua Salazu Zizhixian', 'XUH');
INSERT INTO `REGION` VALUES ('3365', '632221', '门源回族自治县', '352', '0', '0', 'Menyuan Huizu Zizhixian', 'MYU');
INSERT INTO `REGION` VALUES ('3366', '632222', '祁连县', '352', '0', '0', 'Qilian Xian', 'QLN');
INSERT INTO `REGION` VALUES ('3367', '632223', '海晏县', '352', '0', '0', 'Haiyan Xian', 'HIY');
INSERT INTO `REGION` VALUES ('3368', '632224', '刚察县', '352', '0', '0', 'Gangca Xian', 'GAN');
INSERT INTO `REGION` VALUES ('3369', '632321', '同仁县', '353', '0', '0', 'Tongren Xian', 'TRN');
INSERT INTO `REGION` VALUES ('3370', '632322', '尖扎县', '353', '0', '0', 'Jainca Xian', 'JAI');
INSERT INTO `REGION` VALUES ('3371', '632323', '泽库县', '353', '0', '0', 'Zekog Xian', 'ZEK');
INSERT INTO `REGION` VALUES ('3372', '632324', '河南蒙古族自治县', '353', '0', '0', 'Henan Mongolzu Zizhixian', 'HNM');
INSERT INTO `REGION` VALUES ('3373', '632521', '共和县', '354', '0', '0', 'Gonghe Xian', 'GHE');
INSERT INTO `REGION` VALUES ('3374', '632522', '同德县', '354', '0', '0', 'Tongde Xian', 'TDX');
INSERT INTO `REGION` VALUES ('3375', '632523', '贵德县', '354', '0', '0', 'GuIDe Xian', 'GID');
INSERT INTO `REGION` VALUES ('3376', '632524', '兴海县', '354', '0', '0', 'Xinghai Xian', 'XHA');
INSERT INTO `REGION` VALUES ('3377', '632525', '贵南县', '354', '0', '0', 'Guinan Xian', 'GNN');
INSERT INTO `REGION` VALUES ('3378', '632621', '玛沁县', '355', '0', '0', 'Maqen Xian', 'MAQ');
INSERT INTO `REGION` VALUES ('3379', '632622', '班玛县', '355', '0', '0', 'Baima Xian', 'BMX');
INSERT INTO `REGION` VALUES ('3380', '632623', '甘德县', '355', '0', '0', 'Gade Xian', 'GAD');
INSERT INTO `REGION` VALUES ('3381', '632624', '达日县', '355', '0', '0', 'Tarlag Xian', 'TAR');
INSERT INTO `REGION` VALUES ('3382', '632625', '久治县', '355', '0', '0', 'Jigzhi Xian', 'JUZ');
INSERT INTO `REGION` VALUES ('3383', '632626', '玛多县', '355', '0', '0', 'Madoi Xian', 'MAD');
INSERT INTO `REGION` VALUES ('3384', '632721', '玉树县', '356', '0', '0', 'Yushu Xian', 'YSK');
INSERT INTO `REGION` VALUES ('3385', '632722', '杂多县', '356', '0', '0', 'Zadoi Xian', 'ZAD');
INSERT INTO `REGION` VALUES ('3386', '632723', '称多县', '356', '0', '0', 'Chindu Xian', 'CHI');
INSERT INTO `REGION` VALUES ('3387', '632724', '治多县', '356', '0', '0', 'ZhIDoi Xian', 'ZHI');
INSERT INTO `REGION` VALUES ('3388', '632725', '囊谦县', '356', '0', '0', 'Nangqen Xian', 'NQN');
INSERT INTO `REGION` VALUES ('3389', '632726', '曲麻莱县', '356', '0', '0', 'Qumarleb Xian', 'QUM');
INSERT INTO `REGION` VALUES ('3390', '632801', '格尔木市', '357', '0', '0', 'Golmud Shi', 'GOS');
INSERT INTO `REGION` VALUES ('3391', '632802', '德令哈市', '357', '0', '0', 'Delhi Shi', 'DEL');
INSERT INTO `REGION` VALUES ('3392', '632821', '乌兰县', '357', '0', '0', 'Ulan Xian', 'ULA');
INSERT INTO `REGION` VALUES ('3393', '632822', '都兰县', '357', '0', '0', 'Dulan Xian', 'DUL');
INSERT INTO `REGION` VALUES ('3394', '632823', '天峻县', '357', '0', '0', 'Tianjun Xian', 'TJN');
INSERT INTO `REGION` VALUES ('3395', '640101', '市辖区', '358', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3396', '640104', '兴庆区', '358', '0', '0', 'Xingqing Qu', '2');
INSERT INTO `REGION` VALUES ('3397', '640105', '西夏区', '358', '0', '0', 'Xixia Qu', '2');
INSERT INTO `REGION` VALUES ('3398', '640106', '金凤区', '358', '0', '0', 'Jinfeng Qu', '2');
INSERT INTO `REGION` VALUES ('3399', '640121', '永宁县', '358', '0', '0', 'Yongning Xian', 'YGN');
INSERT INTO `REGION` VALUES ('3400', '640122', '贺兰县', '358', '0', '0', 'Helan Xian', 'HLN');
INSERT INTO `REGION` VALUES ('3401', '640181', '灵武市', '358', '0', '0', 'Lingwu Shi', '2');
INSERT INTO `REGION` VALUES ('3402', '640201', '市辖区', '359', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3403', '640202', '大武口区', '359', '0', '0', 'Dawukou Qu', 'DWK');
INSERT INTO `REGION` VALUES ('3404', '640205', '惠农区', '359', '0', '0', 'Huinong Qu', '2');
INSERT INTO `REGION` VALUES ('3405', '640221', '平罗县', '359', '0', '0', 'Pingluo Xian', 'PLO');
INSERT INTO `REGION` VALUES ('3406', '640301', '市辖区', '360', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3407', '640302', '利通区', '360', '0', '0', 'Litong Qu', 'LTW');
INSERT INTO `REGION` VALUES ('3408', '640323', '盐池县', '360', '0', '0', 'Yanchi Xian', 'YCY');
INSERT INTO `REGION` VALUES ('3409', '640324', '同心县', '360', '0', '0', 'Tongxin Xian', 'TGX');
INSERT INTO `REGION` VALUES ('3410', '640381', '青铜峡市', '360', '0', '0', 'Qingtongxia Xian', 'QTX');
INSERT INTO `REGION` VALUES ('3411', '640401', '市辖区', '361', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3412', '640402', '原州区', '361', '0', '0', 'Yuanzhou Qu', '2');
INSERT INTO `REGION` VALUES ('3413', '640422', '西吉县', '361', '0', '0', 'Xiji Xian', '2');
INSERT INTO `REGION` VALUES ('3414', '640423', '隆德县', '361', '0', '0', 'Longde Xian', '2');
INSERT INTO `REGION` VALUES ('3415', '640424', '泾源县', '361', '0', '0', 'Jingyuan Xian', '2');
INSERT INTO `REGION` VALUES ('3416', '640425', '彭阳县', '361', '0', '0', 'Pengyang Xian', '2');
INSERT INTO `REGION` VALUES ('3417', '640501', '市辖区', '362', '0', '0', '1', '2');
INSERT INTO `REGION` VALUES ('3418', '640502', '沙坡头区', '362', '0', '0', 'Shapotou Qu', '2');
INSERT INTO `REGION` VALUES ('3419', '640521', '中宁县', '362', '0', '0', 'Zhongning Xian', '2');
INSERT INTO `REGION` VALUES ('3420', '640522', '海原县', '362', '0', '0', 'Haiyuan Xian', '2');
INSERT INTO `REGION` VALUES ('3421', '650101', '市辖区', '363', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3422', '650102', '天山区', '363', '0', '0', 'Tianshan Qu', 'TSL');
INSERT INTO `REGION` VALUES ('3423', '650103', '沙依巴克区', '363', '0', '0', 'Saybag Qu', 'SAY');
INSERT INTO `REGION` VALUES ('3424', '650104', '新市区', '363', '0', '0', 'Xinshi Qu', 'XSU');
INSERT INTO `REGION` VALUES ('3425', '650105', '水磨沟区', '363', '0', '0', 'Shuimogou Qu', 'SMG');
INSERT INTO `REGION` VALUES ('3426', '650106', '头屯河区', '363', '0', '0', 'Toutunhe Qu', 'TTH');
INSERT INTO `REGION` VALUES ('3427', '650107', '达坂城区', '363', '0', '0', 'Dabancheng Qu', '2');
INSERT INTO `REGION` VALUES ('3428', '650109', '米东区', '363', '0', '0', 'MIDong Qu', '2');
INSERT INTO `REGION` VALUES ('3429', '650121', '乌鲁木齐县', '363', '0', '0', 'Urumqi Xian', 'URX');
INSERT INTO `REGION` VALUES ('3430', '650201', '市辖区', '364', '0', '0', 'Shixiaqu', '2');
INSERT INTO `REGION` VALUES ('3431', '650202', '独山子区', '364', '0', '0', 'Dushanzi Qu', 'DSZ');
INSERT INTO `REGION` VALUES ('3432', '650203', '克拉玛依区', '364', '0', '0', 'Karamay Qu', 'KRQ');
INSERT INTO `REGION` VALUES ('3433', '650204', '白碱滩区', '364', '0', '0', 'Baijiantan Qu', 'BJT');
INSERT INTO `REGION` VALUES ('3434', '650205', '乌尔禾区', '364', '0', '0', 'Orku Qu', 'ORK');
INSERT INTO `REGION` VALUES ('3435', '652101', '吐鲁番市', '365', '0', '0', 'Turpan Shi', 'TUR');
INSERT INTO `REGION` VALUES ('3436', '652122', '鄯善县', '365', '0', '0', 'Shanshan(piqan) Xian', 'SSX');
INSERT INTO `REGION` VALUES ('3437', '652123', '托克逊县', '365', '0', '0', 'Toksun Xian', 'TOK');
INSERT INTO `REGION` VALUES ('3438', '652201', '哈密市', '366', '0', '0', 'Hami(kumul) Shi', 'HAM');
INSERT INTO `REGION` VALUES ('3439', '652222', '巴里坤哈萨克自治县', '366', '0', '0', 'Barkol Kazak Zizhixian', 'BAR');
INSERT INTO `REGION` VALUES ('3440', '652223', '伊吾县', '366', '0', '0', 'Yiwu(Araturuk) Xian', 'YWX');
INSERT INTO `REGION` VALUES ('3441', '652301', '昌吉市', '367', '0', '0', 'Changji Shi', 'CJS');
INSERT INTO `REGION` VALUES ('3442', '652302', '阜康市', '367', '0', '0', 'Fukang Shi', 'FKG');
INSERT INTO `REGION` VALUES ('3444', '652323', '呼图壁县', '367', '0', '0', 'Hutubi Xian', 'HTB');
INSERT INTO `REGION` VALUES ('3445', '652324', '玛纳斯县', '367', '0', '0', 'Manas Xian', 'MAS');
INSERT INTO `REGION` VALUES ('3446', '652325', '奇台县', '367', '0', '0', 'Qitai Xian', 'QTA');
INSERT INTO `REGION` VALUES ('3447', '652327', '吉木萨尔县', '367', '0', '0', 'Jimsar Xian', 'JIM');
INSERT INTO `REGION` VALUES ('3448', '652328', '木垒哈萨克自治县', '367', '0', '0', 'Mori Kazak Zizhixian', 'MOR');
INSERT INTO `REGION` VALUES ('3449', '652701', '博乐市', '368', '0', '0', 'Bole(Bortala) Shi', 'BLE');
INSERT INTO `REGION` VALUES ('3450', '652722', '精河县', '368', '0', '0', 'Jinghe(Jing) Xian', 'JGH');
INSERT INTO `REGION` VALUES ('3451', '652723', '温泉县', '368', '0', '0', 'Wenquan(Arixang) Xian', 'WNQ');
INSERT INTO `REGION` VALUES ('3452', '652801', '库尔勒市', '369', '0', '0', 'Korla Shi', 'KOR');
INSERT INTO `REGION` VALUES ('3453', '652822', '轮台县', '369', '0', '0', 'Luntai(Bugur) Xian', 'LTX');
INSERT INTO `REGION` VALUES ('3454', '652823', '尉犁县', '369', '0', '0', 'Yuli(Lopnur) Xian', 'YLI');
INSERT INTO `REGION` VALUES ('3455', '652824', '若羌县', '369', '0', '0', 'Ruoqiang(Qakilik) Xian', 'RQG');
INSERT INTO `REGION` VALUES ('3456', '652825', '且末县', '369', '0', '0', 'Qiemo(Qarqan) Xian', 'QMO');
INSERT INTO `REGION` VALUES ('3457', '652826', '焉耆回族自治县', '369', '0', '0', 'Yanqi Huizu Zizhixian', 'YQI');
INSERT INTO `REGION` VALUES ('3458', '652827', '和静县', '369', '0', '0', 'Hejing Xian', 'HJG');
INSERT INTO `REGION` VALUES ('3459', '652828', '和硕县', '369', '0', '0', 'Hoxud Xian', 'HOX');
INSERT INTO `REGION` VALUES ('3460', '652829', '博湖县', '369', '0', '0', 'Bohu(Bagrax) Xian', 'BHU');
INSERT INTO `REGION` VALUES ('3461', '652901', '阿克苏市', '370', '0', '0', 'Aksu Shi', 'AKS');
INSERT INTO `REGION` VALUES ('3462', '652922', '温宿县', '370', '0', '0', 'Wensu Xian', 'WSU');
INSERT INTO `REGION` VALUES ('3463', '652923', '库车县', '370', '0', '0', 'Kuqa Xian', 'KUQ');
INSERT INTO `REGION` VALUES ('3464', '652924', '沙雅县', '370', '0', '0', 'Xayar Xian', 'XYR');
INSERT INTO `REGION` VALUES ('3465', '652925', '新和县', '370', '0', '0', 'Xinhe(Toksu) Xian', 'XHT');
INSERT INTO `REGION` VALUES ('3466', '652926', '拜城县', '370', '0', '0', 'Baicheng(Bay) Xian', 'BCG');
INSERT INTO `REGION` VALUES ('3467', '652927', '乌什县', '370', '0', '0', 'Wushi(Uqturpan) Xian', 'WSH');
INSERT INTO `REGION` VALUES ('3468', '652928', '阿瓦提县', '370', '0', '0', 'Awat Xian', 'AWA');
INSERT INTO `REGION` VALUES ('3469', '652929', '柯坪县', '370', '0', '0', 'Kalpin Xian', 'KAL');
INSERT INTO `REGION` VALUES ('3470', '653001', '阿图什市', '371', '0', '0', 'Artux Shi', 'ART');
INSERT INTO `REGION` VALUES ('3471', '653022', '阿克陶县', '371', '0', '0', 'Akto Xian', 'AKT');
INSERT INTO `REGION` VALUES ('3472', '653023', '阿合奇县', '371', '0', '0', 'Akqi Xian', 'AKQ');
INSERT INTO `REGION` VALUES ('3473', '653024', '乌恰县', '371', '0', '0', 'Wuqia(Ulugqat) Xian', 'WQA');
INSERT INTO `REGION` VALUES ('3474', '653101', '喀什市', '372', '0', '0', 'Kashi (Kaxgar) Shi', 'KHG');
INSERT INTO `REGION` VALUES ('3475', '653121', '疏附县', '372', '0', '0', 'Shufu Xian', 'SFU');
INSERT INTO `REGION` VALUES ('3476', '653122', '疏勒县', '372', '0', '0', 'Shule Xian', 'SHL');
INSERT INTO `REGION` VALUES ('3477', '653123', '英吉沙县', '372', '0', '0', 'Yengisar Xian', 'YEN');
INSERT INTO `REGION` VALUES ('3478', '653124', '泽普县', '372', '0', '0', 'Zepu(Poskam) Xian', 'ZEP');
INSERT INTO `REGION` VALUES ('3479', '653125', '莎车县', '372', '0', '0', 'Shache(Yarkant) Xian', 'SHC');
INSERT INTO `REGION` VALUES ('3480', '653126', '叶城县', '372', '0', '0', 'Yecheng(Kargilik) Xian', 'YEC');
INSERT INTO `REGION` VALUES ('3481', '653127', '麦盖提县', '372', '0', '0', 'Markit Xian', 'MAR');
INSERT INTO `REGION` VALUES ('3482', '653128', '岳普湖县', '372', '0', '0', 'Yopurga Xian', 'YOP');
INSERT INTO `REGION` VALUES ('3483', '653129', '伽师县', '372', '0', '0', 'Jiashi(Payzawat) Xian', 'JSI');
INSERT INTO `REGION` VALUES ('3484', '653130', '巴楚县', '372', '0', '0', 'Bachu(Maralbexi) Xian', 'BCX');
INSERT INTO `REGION` VALUES ('3485', '653131', '塔什库尔干塔吉克自治县', '372', '0', '0', 'Taxkorgan Tajik Zizhixian', 'TXK');
INSERT INTO `REGION` VALUES ('3486', '653201', '和田市', '373', '0', '0', 'Hotan Shi', 'HTS');
INSERT INTO `REGION` VALUES ('3487', '653221', '和田县', '373', '0', '0', 'Hotan Xian', 'HOT');
INSERT INTO `REGION` VALUES ('3488', '653222', '墨玉县', '373', '0', '0', 'Moyu(Karakax) Xian', 'MOY');
INSERT INTO `REGION` VALUES ('3489', '653223', '皮山县', '373', '0', '0', 'Pishan(Guma) Xian', 'PSA');
INSERT INTO `REGION` VALUES ('3490', '653224', '洛浦县', '373', '0', '0', 'Lop Xian', 'LOP');
INSERT INTO `REGION` VALUES ('3491', '653225', '策勒县', '373', '0', '0', 'Qira Xian', 'QIR');
INSERT INTO `REGION` VALUES ('3492', '653226', '于田县', '373', '0', '0', 'Yutian(Keriya) Xian', 'YUT');
INSERT INTO `REGION` VALUES ('3493', '653227', '民丰县', '373', '0', '0', 'Minfeng(Niya) Xian', 'MFG');
INSERT INTO `REGION` VALUES ('3494', '654002', '伊宁市', '374', '0', '0', 'Yining(Gulja) Shi', '2');
INSERT INTO `REGION` VALUES ('3495', '654003', '奎屯市', '374', '0', '0', 'Kuytun Shi', '2');
INSERT INTO `REGION` VALUES ('3496', '654021', '伊宁县', '374', '0', '0', 'Yining(Gulja) Xian', '2');
INSERT INTO `REGION` VALUES ('3497', '654022', '察布查尔锡伯自治县', '374', '0', '0', 'Qapqal Xibe Zizhixian', '2');
INSERT INTO `REGION` VALUES ('3498', '654023', '霍城县', '374', '0', '0', 'Huocheng Xin', '2');
INSERT INTO `REGION` VALUES ('3499', '654024', '巩留县', '374', '0', '0', 'Gongliu(Tokkuztara) Xian', '2');
INSERT INTO `REGION` VALUES ('3500', '654025', '新源县', '374', '0', '0', 'Xinyuan(Kunes) Xian', '2');
INSERT INTO `REGION` VALUES ('3501', '654026', '昭苏县', '374', '0', '0', 'Zhaosu(Mongolkure) Xian', '2');
INSERT INTO `REGION` VALUES ('3502', '654027', '特克斯县', '374', '0', '0', 'Tekes Xian', '2');
INSERT INTO `REGION` VALUES ('3503', '654028', '尼勒克县', '374', '0', '0', 'Nilka Xian', '2');
INSERT INTO `REGION` VALUES ('3504', '654201', '塔城市', '375', '0', '0', 'Tacheng(Qoqek) Shi', 'TCS');
INSERT INTO `REGION` VALUES ('3505', '654202', '乌苏市', '375', '0', '0', 'Usu Shi', 'USU');
INSERT INTO `REGION` VALUES ('3506', '654221', '额敏县', '375', '0', '0', 'Emin(Dorbiljin) Xian', 'EMN');
INSERT INTO `REGION` VALUES ('3507', '654223', '沙湾县', '375', '0', '0', 'Shawan Xian', 'SWX');
INSERT INTO `REGION` VALUES ('3508', '654224', '托里县', '375', '0', '0', 'Toli Xian', 'TLI');
INSERT INTO `REGION` VALUES ('3509', '654225', '裕民县', '375', '0', '0', 'Yumin(Qagantokay) Xian', 'YMN');
INSERT INTO `REGION` VALUES ('3510', '654226', '和布克赛尔蒙古自治县', '375', '0', '0', 'Hebukesaiermengguzizhi Xian', '2');
INSERT INTO `REGION` VALUES ('3511', '654301', '阿勒泰市', '376', '0', '0', 'Altay Shi', 'ALT');
INSERT INTO `REGION` VALUES ('3512', '654321', '布尔津县', '376', '0', '0', 'Burqin Xian', 'BUX');
INSERT INTO `REGION` VALUES ('3513', '654322', '富蕴县', '376', '0', '0', 'Fuyun(Koktokay) Xian', 'FYN');
INSERT INTO `REGION` VALUES ('3514', '654323', '福海县', '376', '0', '0', 'Fuhai(Burultokay) Xian', 'FHI');
INSERT INTO `REGION` VALUES ('3515', '654324', '哈巴河县', '376', '0', '0', 'Habahe(Kaba) Xian', 'HBH');
INSERT INTO `REGION` VALUES ('3516', '654325', '青河县', '376', '0', '0', 'Qinghe(Qinggil) Xian', 'QHX');
INSERT INTO `REGION` VALUES ('3517', '654326', '吉木乃县', '376', '0', '0', 'Jeminay Xian', 'JEM');
INSERT INTO `REGION` VALUES ('3518', '659001', '石河子市', '377', '0', '0', 'Shihezi Shi', 'SHZ');
INSERT INTO `REGION` VALUES ('3519', '659002', '阿拉尔市', '377', '0', '0', 'Alaer Shi', '2');
INSERT INTO `REGION` VALUES ('3520', '659003', '图木舒克市', '377', '0', '0', 'Tumushuke Shi', '2');
INSERT INTO `REGION` VALUES ('3521', '659004', '五家渠市', '377', '0', '0', 'Wujiaqu Shi', '2');
INSERT INTO `REGION` VALUES ('4000', '620503', '麦积区', '340', '0', '0', 'Maiji Qu', '2');
INSERT INTO `REGION` VALUES ('4001', '500116', '江津区', '270', '0', '0', 'Jiangjin Qu', '2');
INSERT INTO `REGION` VALUES ('4002', '500117', '合川区', '270', '0', '0', 'Hechuan Qu', '2');
INSERT INTO `REGION` VALUES ('4003', '500118', '永川区', '270', '0', '0', 'Yongchuan Qu', '2');
INSERT INTO `REGION` VALUES ('4004', '500119', '南川区', '270', '0', '0', 'Nanchuan Qu', '2');
INSERT INTO `REGION` VALUES ('4006', '340221', '芜湖县', '1412', '0', '0', 'Wuhu Xian', 'WHX');
INSERT INTO `REGION` VALUES ('4100', '232701', '加格达奇区', '106', '0', '0', 'Jiagedaqi Qu', '2');
INSERT INTO `REGION` VALUES ('4101', '232702', '松岭区', '106', '0', '0', 'Songling Qu', '2');
INSERT INTO `REGION` VALUES ('4102', '232703', '新林区', '106', '0', '0', 'Xinlin Qu', '2');
INSERT INTO `REGION` VALUES ('4103', '232704', '呼中区', '106', '0', '0', 'Huzhong Qu', '2');
INSERT INTO `REGION` VALUES ('4200', '330402', '南湖区', '125', '0', '0', 'Nanhu Qu', '2');
INSERT INTO `REGION` VALUES ('4300', '360482', '共青城市', '162', '0', '0', 'Gongqingcheng Shi', '2');
INSERT INTO `REGION` VALUES ('4400', '640303', '红寺堡区', '360', '0', '0', 'Hongsibao Qu', '2');
INSERT INTO `REGION` VALUES ('4500', '620922', '瓜州县', '344', '0', '0', 'Guazhou Xian', '2');
INSERT INTO `REGION` VALUES ('4600', '421321', '随县', '215', '0', '0', 'Sui Xian', '2');
INSERT INTO `REGION` VALUES ('4700', '431102', '零陵区', '228', '0', '0', 'Lingling Qu', '2');
INSERT INTO `REGION` VALUES ('4800', '451119', '平桂管理区', '263', '0', '0', 'Pingguiguanli Qu', '2');
INSERT INTO `REGION` VALUES ('4900', '510802', '利州区', '279', '0', '0', 'Lizhou Qu', '2');
INSERT INTO `REGION` VALUES ('5000', '511681', '华蓥市', '286', '0', '0', 'Huaying Shi', 'HYC');


update REGION set LEVEL=1 where PARENTID=1;
update REGION set LEVEL=2 where PARENTID between 2 and 32;
update REGION set LEVEL=3 where PARENTID>32;

-- select * from REGION as r1, REGION as r2, REGION as r3 where r2.REGION_NAME='县' and r1.parent_ID=r2.REGION_ID and r2.parent_ID=r3.parent_ID and r3.REGION_NAME='市辖区';
update REGION as r1 join REGION as r2 join REGION as r3 set r1.PARENTID = r3.ID where r2.NAME='县' and r1.PARENTID=r2.ID and r2.PARENTID=r3.PARENTID and r3.NAME='市辖区';
update REGION as r1 join REGION as r2 set r1.NAME = r2.NAME where r1.PARENTID=r2.ID and r1.NAME='市辖区';
delete from REGION where NAME='县';


INSERT INTO `REGION` VALUES ('6000', '710000', '台湾省', '1', '1', '0', 'Taiwan Sheng', 'TW');
INSERT INTO `REGION` VALUES ('7000', '810000', '香港特别行政区', '1', '1', '0', 'Hong Kong', 'HK');
INSERT INTO `REGION` VALUES ('8000', '820000', '澳门特别行政区', '1', '1', '0', 'Macao', 'Mac');

-- 390个
insert into REGION(ID, NAME, LEVEL, PARENTID) values
(45052, '臺北市', 2, 32),
(45053, '新北市', 2, 32),
(45054, '臺中市', 2, 32),
(45055, '臺南市', 2, 32),
(45056, '高雄市', 2, 32),
(45057, '基隆市', 2, 32),
(45058, '新竹市', 2, 32),
(45059, '嘉義市', 2, 32),
(45060, '桃園縣', 2, 32),
(45061, '新竹縣', 2, 32),
(45062, '苗栗縣', 2, 32),
(45063, '彰化縣', 2, 32),
(45064, '南投縣', 2, 32),
(45065, '雲林縣', 2, 32),
(45066, '嘉義縣', 2, 32),
(45067, '屏東縣', 2, 32),
(45068, '宜蘭縣', 2, 32),
(45069, '花蓮縣', 2, 32),
(45070, '臺東縣', 2, 32),
(45071, '澎湖縣', 2, 32),
(45072, '金門縣', 2, 32),
(45073, '連江縣', 2, 32),
(45074, '松山區', 3, 45052),
(45075, '大安區', 3, 45052),
(45076, '大同區', 3, 45052),
(45077, '中山區', 3, 45052),
(45078, '內湖區', 3, 45052),
(45079, '南港區', 3, 45052),
(45080, '士林區', 3, 45052),
(45081, '北投區', 3, 45052),
(45082, '信義區', 3, 45052),
(45083, '中正區', 3, 45052),
(45084, '萬華區', 3, 45052),
(45085, '文山區', 3, 45052),
(45086, '板橋區', 3, 45053),
(45087, '三重區', 3, 45053),
(45088, '永和區', 3, 45053),
(45089, '中和區', 3, 45053),
(45090, '新莊區', 3, 45053),
(45091, '新店區', 3, 45053),
(45092, '土城區', 3, 45053),
(45093, '蘆洲區', 3, 45053),
(45094, '汐止區', 3, 45053),
(45095, '樹林區', 3, 45053),
(45096, '鶯歌區', 3, 45053),
(45097, '三峽區', 3, 45053),
(45098, '淡水區', 3, 45053),
(45099, '瑞芳區', 3, 45053),
(45100, '五股區', 3, 45053),
(45101, '泰山區', 3, 45053),
(45102, '林口區', 3, 45053),
(45103, '深坑區', 3, 45053),
(45104, '石碇區', 3, 45053),
(45105, '坪林區', 3, 45053),
(45106, '三芝區', 3, 45053),
(45107, '石門區', 3, 45053),
(45108, '八里區', 3, 45053),
(45109, '平溪區', 3, 45053),
(45110, '雙溪區', 3, 45053),
(45111, '貢寮區', 3, 45053),
(45112, '金山區', 3, 45053),
(45113, '萬里區', 3, 45053),
(45114, '烏來區', 3, 45053),
(45115, '西區', 3, 45054),
(45116, '北區', 3, 45054),
(45117, '中區', 3, 45054),
(45118, '東區', 3, 45054),
(45119, '南區', 3, 45054),
(45120, '南屯區', 3, 45054),
(45121, '西屯區', 3, 45054),
(45122, '北屯區', 3, 45054),
(45123, '豐原區', 3, 45054),
(45124, '大里區', 3, 45054),
(45125, '太平區', 3, 45054),
(45126, '東勢區', 3, 45054),
(45127, '大甲區', 3, 45054),
(45128, '清水區', 3, 45054),
(45129, '沙鹿區', 3, 45054),
(45130, '梧棲區', 3, 45054),
(45131, '后里區', 3, 45054),
(45132, '神岡區', 3, 45054),
(45133, '潭子區', 3, 45054),
(45134, '大雅區', 3, 45054),
(45135, '新社區', 3, 45054),
(45136, '石岡區', 3, 45054),
(45137, '外埔區', 3, 45054),
(45138, '大安區', 3, 45054),
(45139, '烏日區', 3, 45054),
(45140, '大肚區', 3, 45054),
(45141, '龍井區', 3, 45054),
(45142, '霧峰區', 3, 45054),
(45143, '和平區', 3, 45054),
(45144, '南區', 3, 45055),
(45145, '東區', 3, 45055),
(45146, '北區', 3, 45055),
(45147, '中西區', 3, 45055),
(45148, '安平區', 3, 45055),
(45149, '安南區', 3, 45055),
(45150, '新營區', 3, 45055),
(45151, '永康區', 3, 45055),
(45152, '鹽水區', 3, 45055),
(45153, '白河區', 3, 45055),
(45154, '麻豆區', 3, 45055),
(45155, '佳里區', 3, 45055),
(45156, '新化區', 3, 45055),
(45157, '善化區', 3, 45055),
(45158, '學甲區', 3, 45055),
(45159, '柳營區', 3, 45055),
(45160, '後壁區', 3, 45055),
(45161, '東山區', 3, 45055),
(45162, '下營區', 3, 45055),
(45163, '六甲區', 3, 45055),
(45164, '官田區', 3, 45055),
(45165, '大內區', 3, 45055),
(45166, '西港區', 3, 45055),
(45167, '七股區', 3, 45055),
(45168, '將軍區', 3, 45055),
(45169, '北門區', 3, 45055),
(45170, '安定區', 3, 45055),
(45171, '楠西區', 3, 45055),
(45172, '新市區', 3, 45055),
(45173, '山上區', 3, 45055),
(45174, '玉井區', 3, 45055),
(45175, '南化區', 3, 45055),
(45176, '左鎮區', 3, 45055),
(45177, '仁德區', 3, 45055),
(45178, '歸仁區', 3, 45055),
(45179, '關廟區', 3, 45055),
(45180, '龍崎區', 3, 45055),
(45181, '鹽埕區', 3, 45056),
(45182, '鼓山區', 3, 45056),
(45183, '左營區', 3, 45056),
(45184, '楠梓區', 3, 45056),
(45185, '三民區', 3, 45056),
(45186, '新興區', 3, 45056),
(45187, '前金區', 3, 45056),
(45188, '苓雅區', 3, 45056),
(45189, '前鎮區', 3, 45056),
(45190, '旗津區', 3, 45056),
(45191, '小港區', 3, 45056),
(45192, '鳳山區', 3, 45056),
(45193, '岡山區', 3, 45056),
(45194, '旗山區', 3, 45056),
(45195, '美濃區', 3, 45056),
(45196, '林園區', 3, 45056),
(45197, '大寮區', 3, 45056),
(45198, '大樹區', 3, 45056),
(45199, '仁武區', 3, 45056),
(45200, '大社區', 3, 45056),
(45201, '鳥松區', 3, 45056),
(45202, '橋頭區', 3, 45056),
(45203, '燕巢區', 3, 45056),
(45204, '田寮區', 3, 45056),
(45205, '阿蓮區', 3, 45056),
(45206, '路竹區', 3, 45056),
(45207, '湖內區', 3, 45056),
(45208, '茄萣區', 3, 45056),
(45209, '永安區', 3, 45056),
(45210, '彌陀區', 3, 45056),
(45211, '梓官區', 3, 45056),
(45212, '六龜區', 3, 45056),
(45213, '甲仙區', 3, 45056),
(45214, '杉林區', 3, 45056),
(45215, '內門區', 3, 45056),
(45216, '茂林區', 3, 45056),
(45217, '桃源區', 3, 45056),
(45218, '那瑪夏區', 3, 45056),
(45219, '仁愛區', 3, 45057),
(45220, '中正區', 3, 45057),
(45221, '信義區', 3, 45057),
(45222, '中山區', 3, 45057),
(45223, '安樂區', 3, 45057),
(45224, '暖暖區', 3, 45057),
(45225, '七堵區', 3, 45057),
(45226, '東區', 3, 45058),
(45227, '北區', 3, 45058),
(45228, '香山區', 3, 45058),
(45229, '西區', 3, 45059),
(45230, '東區', 3, 45059),
(45231, '桃園市', 3, 45060),
(45232, '中壢市', 3, 45060),
(45233, '平鎮市', 3, 45060),
(45234, '八德市', 3, 45060),
(45235, '楊梅市', 3, 45060),
(45236, '大溪鎮', 3, 45060),
(45237, '蘆竹鄉', 3, 45060),
(45238, '大園鄉', 3, 45060),
(45239, '龜山鄉', 3, 45060),
(45240, '龍潭鄉', 3, 45060),
(45241, '新屋鄉', 3, 45060),
(45242, '觀音鄉', 3, 45060),
(45243, '復興鄉', 3, 45060),
(45244, '竹北市', 3, 45061),
(45245, '關西鎮', 3, 45061),
(45246, '新埔鎮', 3, 45061),
(45247, '竹東鎮', 3, 45061),
(45248, '湖口鄉', 3, 45061),
(45249, '橫山鄉', 3, 45061),
(45250, '新豐鄉', 3, 45061),
(45251, '芎林鄉', 3, 45061),
(45252, '寶山鄉', 3, 45061),
(45253, '北埔鄉', 3, 45061),
(45254, '峨眉鄉', 3, 45061),
(45255, '尖石鄉', 3, 45061),
(45256, '五峰鄉', 3, 45061),
(45257, '苗栗市', 3, 45062),
(45258, '苑裡鎮', 3, 45062),
(45259, '通霄鎮', 3, 45062),
(45260, '竹南鎮', 3, 45062),
(45261, '頭份鎮', 3, 45062),
(45262, '後龍鎮', 3, 45062),
(45263, '卓蘭鎮', 3, 45062),
(45264, '大湖鄉', 3, 45062),
(45265, '公館鄉', 3, 45062),
(45266, '銅鑼鄉', 3, 45062),
(45267, '南庄鄉', 3, 45062),
(45268, '頭屋鄉', 3, 45062),
(45269, '三義鄉', 3, 45062),
(45270, '西湖鄉', 3, 45062),
(45271, '造橋鄉', 3, 45062),
(45272, '三灣鄉', 3, 45062),
(45273, '獅潭鄉', 3, 45062),
(45274, '泰安鄉', 3, 45062),
(45275, '彰化市', 3, 45063),
(45276, '鹿港鎮', 3, 45063),
(45277, '和美鎮', 3, 45063),
(45278, '北斗鎮', 3, 45063),
(45279, '員林鎮', 3, 45063),
(45280, '溪湖鎮', 3, 45063),
(45281, '田中鎮', 3, 45063),
(45282, '二林鎮', 3, 45063),
(45283, '線西鄉', 3, 45063),
(45284, '伸港鄉', 3, 45063),
(45285, '福興鄉', 3, 45063),
(45286, '秀水鄉', 3, 45063),
(45287, '花壇鄉', 3, 45063),
(45288, '芬園鄉', 3, 45063),
(45289, '大村鄉', 3, 45063),
(45290, '埔鹽鄉', 3, 45063),
(45291, '埔心鄉', 3, 45063),
(45292, '永靖鄉', 3, 45063),
(45293, '社頭鄉', 3, 45063),
(45294, '二水鄉', 3, 45063),
(45295, '田尾鄉', 3, 45063),
(45296, '埤頭鄉', 3, 45063),
(45297, '芳苑鄉', 3, 45063),
(45298, '大城鄉', 3, 45063),
(45299, '竹塘鄉', 3, 45063),
(45300, '溪州鄉', 3, 45063),
(45301, '南投市', 3, 45064),
(45302, '埔里鎮', 3, 45064),
(45303, '草屯鎮', 3, 45064),
(45304, '竹山鎮', 3, 45064),
(45305, '集集鎮', 3, 45064),
(45306, '名間鄉', 3, 45064),
(45307, '鹿谷鄉', 3, 45064),
(45308, '中寮鄉', 3, 45064),
(45309, '魚池鄉', 3, 45064),
(45310, '國姓鄉', 3, 45064),
(45311, '水里鄉', 3, 45064),
(45312, '信義鄉', 3, 45064),
(45313, '仁愛鄉', 3, 45064),
(45314, '斗六市', 3, 45065),
(45315, '斗南鎮', 3, 45065),
(45316, '虎尾鎮', 3, 45065),
(45317, '西螺鎮', 3, 45065),
(45318, '土庫鎮', 3, 45065),
(45319, '北港鎮', 3, 45065),
(45320, '古坑鄉', 3, 45065),
(45321, '大埤鄉', 3, 45065),
(45322, '莿桐鄉', 3, 45065),
(45323, '林內鄉', 3, 45065),
(45324, '二崙鄉', 3, 45065),
(45325, '崙背鄉', 3, 45065),
(45326, '麥寮鄉', 3, 45065),
(45327, '東勢鄉', 3, 45065),
(45328, '褒忠鄉', 3, 45065),
(45329, '臺西鄉', 3, 45065),
(45330, '元長鄉', 3, 45065),
(45331, '四湖鄉', 3, 45065),
(45332, '口湖鄉', 3, 45065),
(45333, '水林鄉', 3, 45065),
(45334, '太保市', 3, 45066),
(45335, '朴子市', 3, 45066),
(45336, '大林鎮', 3, 45066),
(45337, '布袋鎮', 3, 45066),
(45338, '民雄鄉', 3, 45066),
(45339, '溪口鄉', 3, 45066),
(45340, '新港鄉', 3, 45066),
(45341, '六腳鄉', 3, 45066),
(45342, '東石鄉', 3, 45066),
(45343, '義竹鄉', 3, 45066),
(45344, '鹿草鄉', 3, 45066),
(45345, '水上鄉', 3, 45066),
(45346, '中埔鄉', 3, 45066),
(45347, '竹崎鄉', 3, 45066),
(45348, '梅山鄉', 3, 45066),
(45349, '番路鄉', 3, 45066),
(45350, '大埔鄉', 3, 45066),
(45351, '阿里山鄉', 3, 45066),
(45352, '屏東市', 3, 45067),
(45353, '潮州鎮', 3, 45067),
(45354, '東港鎮', 3, 45067),
(45355, '恆春鎮', 3, 45067),
(45356, '萬丹鄉', 3, 45067),
(45357, '長治鄉', 3, 45067),
(45358, '麟洛鄉', 3, 45067),
(45359, '九如鄉', 3, 45067),
(45360, '里港鄉', 3, 45067),
(45361, '鹽埔鄉', 3, 45067),
(45362, '高樹鄉', 3, 45067),
(45363, '萬巒鄉', 3, 45067),
(45364, '內埔鄉', 3, 45067),
(45365, '竹田鄉', 3, 45067),
(45366, '新埤鄉', 3, 45067),
(45367, '枋寮鄉', 3, 45067),
(45368, '新園鄉', 3, 45067),
(45369, '崁頂鄉', 3, 45067),
(45370, '林邊鄉', 3, 45067),
(45371, '南州鄉', 3, 45067),
(45372, '佳冬鄉', 3, 45067),
(45373, '琉球鄉', 3, 45067),
(45374, '車城鄉', 3, 45067),
(45375, '滿州鄉', 3, 45067),
(45376, '枋山鄉', 3, 45067),
(45377, '霧臺鄉', 3, 45067),
(45378, '瑪家鄉', 3, 45067),
(45379, '泰武鄉', 3, 45067),
(45380, '來義鄉', 3, 45067),
(45381, '春日鄉', 3, 45067),
(45382, '獅子鄉', 3, 45067),
(45383, '牡丹鄉', 3, 45067),
(45384, '三地門鄉', 3, 45067),
(45385, '宜蘭市', 3, 45068),
(45386, '羅東鎮', 3, 45068),
(45387, '蘇澳鎮', 3, 45068),
(45388, '頭城鎮', 3, 45068),
(45389, '礁溪鄉', 3, 45068),
(45390, '壯圍鄉', 3, 45068),
(45391, '員山鄉', 3, 45068),
(45392, '冬山鄉', 3, 45068),
(45393, '五結鄉', 3, 45068),
(45394, '三星鄉', 3, 45068),
(45395, '大同鄉', 3, 45068),
(45396, '南澳鄉', 3, 45068),
(45397, '花蓮市', 3, 45069),
(45398, '鳳林鎮', 3, 45069),
(45399, '玉里鎮', 3, 45069),
(45400, '新城鄉', 3, 45069),
(45401, '吉安鄉', 3, 45069),
(45402, '壽豐鄉', 3, 45069),
(45403, '光復鄉', 3, 45069),
(45404, '豐濱鄉', 3, 45069),
(45405, '瑞穗鄉', 3, 45069),
(45406, '富里鄉', 3, 45069),
(45407, '秀林鄉', 3, 45069),
(45408, '卓溪鄉', 3, 45069),
(45409, '萬榮鄉', 3, 45069),
(45410, '臺東市', 3, 45070),
(45411, '成功鎮', 3, 45070),
(45412, '關山鎮', 3, 45070),
(45413, '卑南鄉', 3, 45070),
(45414, '大武鄉', 3, 45070),
(45415, '東河鄉', 3, 45070),
(45416, '長濱鄉', 3, 45070),
(45417, '鹿野鄉', 3, 45070),
(45418, '池上鄉', 3, 45070),
(45419, '綠島鄉', 3, 45070),
(45420, '延平鄉', 3, 45070),
(45421, '海端鄉', 3, 45070),
(45422, '達仁鄉', 3, 45070),
(45423, '金峰鄉', 3, 45070),
(45424, '蘭嶼鄉', 3, 45070),
(45425, '太麻里鄉', 3, 45070),
(45426, '馬公市', 3, 45071),
(45427, '湖西鄉', 3, 45071),
(45428, '白沙鄉', 3, 45071),
(45429, '西嶼鄉', 3, 45071),
(45430, '望安鄉', 3, 45071),
(45431, '七美鄉', 3, 45071),
(45432, '金城鎮', 3, 45072),
(45433, '金湖鎮', 3, 45072),
(45434, '金沙鎮', 3, 45072),
(45435, '金寧鄉', 3, 45072),
(45436, '烈嶼鄉', 3, 45072),
(45437, '烏坵鄉', 3, 45072),
(45438, '南竿鄉', 3, 45073),
(45439, '北竿鄉', 3, 45073),
(45440, '莒光鄉', 3, 45073),
(45441, '東引鄉', 3, 45073);

update REGION set CODE=ID where ID>8000;
update REGION set PARENTID=6000 where ID>8000 and PARENTID=32;
-- set foreign_key_checks=1