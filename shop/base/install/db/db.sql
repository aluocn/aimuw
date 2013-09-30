-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 05 月 29 日 09:15
-- 服务器版本: 5.0.90
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `q236`
--

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_duilian`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_duilian` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `src2` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  `url2` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_advs_duilian`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_lb`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_lb` (
  `id` int(20) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '1',
  `title` char(100) NOT NULL default '',
  `src` char(100) NOT NULL default '',
  `src1` char(255) NOT NULL,
  `url` char(100) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `pwn_advs_lb`
--

INSERT INTO `pwn_advs_lb` (`id`, `groupid`, `title`, `src`, `src1`, `url`, `xuhao`) VALUES
(39, 1, '广告标题', 'advs/pics/20100118/1263803946.jpg', '', 'http://', 2),
(48, 1, '广告标题', 'advs/pics/20100118/1263803974.jpg', '', 'http://', 3),
(49, 1, '广告标题', 'advs/pics/20100118/1263803549.jpg', '', 'http://', 1),
(50, 1, '广告标题', 'advs/pics/20100118/1263803642.gif', '', 'http://', 4);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_lbgroup`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_lbgroup` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_advs_lbgroup`
--

INSERT INTO `pwn_advs_lbgroup` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '默认轮播广告组', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_link`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_link` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `url` varchar(200) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `src` varchar(100) NOT NULL default '',
  `cl` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- 转存表中的数据 `pwn_advs_link`
--

INSERT INTO `pwn_advs_link` (`id`, `groupid`, `name`, `url`, `xuhao`, `type`, `src`, `cl`) VALUES
(21, 1, '支付宝', 'http://www.alipai.com', 1, '', '', 0),
(22, 1, '淘宝网', 'http://www.taobao.com', 2, '', '', 0),
(33, 1, '网上商城', 'http://www.com', 3, '', '', 0),
(34, 1, '家电批发网', 'http://www.com', 8, '', '', 0),
(35, 1, '松下电器网站', 'http://www.com', 7, '', '', 0),
(36, 1, '都市生活网', 'http://www.com', 6, '', '', 0),
(37, 1, '网银支付', 'http://www.com', 5, '', '', 0),
(38, 1, '售后服务网', 'http://www.com', 10, '', '', 0),
(39, 1, '家电维修网', 'http://www.com', 12, '', '', 0),
(40, 1, '上海热线', 'http://www.com', 11, '', '', 0),
(41, 1, '中国万网', 'http://www.com', 13, '', '', 0),
(42, 1, '11', 'http://www.', 0, '', 'advs/pics/20091117/1258424299.jpg', 0),
(43, 1, '12', 'http://www.', 0, '', 'advs/pics/20091117/1258424486.jpg', 0),
(44, 1, '13', 'http://www', 0, '', 'advs/pics/20091117/1258424496.jpg', 0),
(45, 1, '14', 'http://www', 0, '', 'advs/pics/20091117/1258424504.jpg', 0),
(46, 1, '15', 'http://www', 0, '', 'advs/pics/20091117/1258424512.jpg', 0),
(47, 1, '16', 'http://www', 0, '', 'advs/pics/20091117/1258424520.jpg', 0),
(48, 1, '17', 'http://www', 0, '', 'advs/pics/20091117/1258424529.jpg', 0),
(49, 1, '18', 'http://www', 0, '', 'advs/pics/20091117/1258424536.jpg', 0),
(50, 1, '19', 'http://www', 0, '', 'advs/pics/20091117/1258424544.jpg', 0),
(51, 1, '20', 'http://www', 0, '', 'advs/pics/20091117/1258425556.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_linkgroup`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_linkgroup` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_advs_linkgroup`
--

INSERT INTO `pwn_advs_linkgroup` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '默认友情链接组', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_logo`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_logo` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_advs_logo`
--

INSERT INTO `pwn_advs_logo` (`id`, `groupname`, `src`, `url`) VALUES
(1, '网站标志一', 'advs/pics/20100118/1263777302.jpg', '#');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_movi`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_movi` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_advs_movi`
--

INSERT INTO `pwn_advs_movi` (`id`, `groupname`, `src`) VALUES
(1, '视频广告测试一', 'http://vhead.blog.sina.com.cn/player/outer_player.swf?auto=1&vid=16205152&uid=1504617052');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_pic`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_pic` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `pwn_advs_pic`
--

INSERT INTO `pwn_advs_pic` (`id`, `groupname`, `src`, `url`) VALUES
(1, '页内广告1', 'advs/pics/20100118/1263794319.jpg', 'http://www'),
(2, '页内广告2', 'advs/pics/20100118/1263794932.jpg', 'http://'),
(3, '页内广告3', 'advs/pics/20100118/1263795489.jpg', 'http://'),
(4, '页内广告4', 'advs/pics/20100118/1263796937.jpg', 'http://'),
(5, '页内广告5', 'advs/pics/20100118/1263798025.jpg', 'http://'),
(6, '页内广告6', 'advs/pics/20100118/1263799188.jpg', 'http://'),
(7, '横幅广告', 'advs/pics/20100118/1263800241.jpg', 'http://'),
(8, '页内广告8', 'advs/pics/20100118/1263805554.jpg', 'http://');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_pop`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_pop` (
  `id` int(12) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `body` text,
  `ifpop` int(1) NOT NULL default '0',
  `popwidth` int(10) default NULL,
  `popheight` int(10) default NULL,
  `popleft` int(10) default NULL,
  `poptop` int(10) default NULL,
  `poptoolbar` int(1) default NULL,
  `popmenubar` int(1) default NULL,
  `popstatus` int(1) default NULL,
  `poplocation` int(1) default NULL,
  `popscrollbars` varchar(50) default NULL,
  `popresizable` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_advs_pop`
--

INSERT INTO `pwn_advs_pop` (`id`, `title`, `body`, `ifpop`, `popwidth`, `popheight`, `popleft`, `poptop`, `poptoolbar`, `popmenubar`, `popstatus`, `poplocation`, `popscrollbars`, `popresizable`) VALUES
(1, '弹出窗口', '窗口内容 ', 0, 400, 300, 0, 0, 0, 0, 0, 0, 'auto', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_text`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_text` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `text` char(200) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_advs_text`
--

INSERT INTO `pwn_advs_text` (`id`, `groupname`, `text`, `url`) VALUES
(1, '促销广告一', '本季特大优惠活动开始啦qq', 'http://www.com');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_admin`
--

CREATE TABLE IF NOT EXISTS `pwn_base_admin` (
  `id` int(6) NOT NULL auto_increment,
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `job` varchar(50) NOT NULL,
  `jobid` varchar(20) NOT NULL,
  `moveable` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_base_admin`
--

INSERT INTO `pwn_base_admin` (`id`, `user`, `password`, `name`, `job`, `jobid`, `moveable`) VALUES
(3, 'admin', '202cb962ac59075b964b07152d234b70', '管理员', '管理员', 'A001', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_adminauth`
--

CREATE TABLE IF NOT EXISTS `pwn_base_adminauth` (
  `id` int(6) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `auth` int(5) NOT NULL default '0',
  `name` char(50) NOT NULL default '',
  `intro` char(255) NOT NULL default '',
  `xuhao` int(10) NOT NULL default '0',
  `pid` int(10) NOT NULL default '0',
  `pname` char(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=136 ;

--
-- 转存表中的数据 `pwn_base_adminauth`
--

INSERT INTO `pwn_base_adminauth` (`id`, `coltype`, `auth`, `name`, `intro`, `xuhao`, `pid`, `pname`) VALUES
(69, 'advs', 91, '网站标志管理', '', 1, 2, ''),
(17, 'advs', 95, '网站广告管理', '', 5, 2, ''),
(30, 'advs', 96, '友情链接管理', '', 4, 7, ''),
(1, 'base', 1, '网站参数设置', '', 1, 0, ''),
(2, 'base', 2, '修改管理密码', '', 2, 0, ''),
(3, 'base', 3, '管理账户维护', '', 3, 0, ''),
(5, 'base', 5, '网站排版设置', '', 5, 0, ''),
(66, 'base', 6, '模块插件管理', '', 6, 0, ''),
(67, 'base', 7, '软件升级更新', '', 7, 0, ''),
(37, 'comment', 130, '点评模块参数设置', '', 0, 13, ''),
(11, 'comment', 131, '点评分类', '', 1, 13, ''),
(26, 'comment', 132, '点评管理', '', 2, 13, ''),
(120, 'shop', 325, '订单完成确认', '', 13, 31, ''),
(119, 'shop', 324, '订单配送确认', '', 12, 31, ''),
(118, 'shop', 323, '订单付款确认', '', 11, 31, ''),
(117, 'shop', 322, '订单调价权限', '', 9, 31, ''),
(4, 'member', 50, '会员类型设置', '', 1, 5, ''),
(42, 'member', 51, '会员模块参数设置', '', 11, 6, ''),
(19, 'member', 52, '会员查询管理', '', 2, 5, ''),
(20, 'member', 53, '会员资料查询', '', 3, 5, ''),
(21, 'member', 54, '会员资料修改', '', 4, 5, ''),
(22, 'member', 55, '会员邮件发送', '', 5, 5, ''),
(23, 'member', 56, '会员权限管理', '', 6, 5, ''),
(24, 'member', 57, '会员公告管理', '', 7, 5, ''),
(32, 'member', 58, '模拟会员登录', '', 8, 5, ''),
(33, 'member', 59, '会员实名认证', '', 9, 5, ''),
(34, 'member', 60, '会员删除权限', '', 10, 5, ''),
(63, 'member', 61, '会员区域设置', '', 11, 6, ''),
(64, 'member', 62, '会员行业分类', '', 12, 0, ''),
(65, 'member', 63, '积分规则设置', '', 13, 6, ''),
(35, 'member', 64, '会员转移类型', '', 11, 5, ''),
(36, 'member', 65, '重设会员密码', '', 12, 5, ''),
(68, 'member', 66, '积分录入权限', '', 16, 6, ''),
(6, 'menu', 11, '导航菜单设置', '', 1, 1, ''),
(38, 'news', 120, '文章模块参数设置', '', 0, 12, ''),
(39, 'news', 121, '文章分类', '', 1, 12, ''),
(13, 'news', 122, '文章管理', '', 2, 12, ''),
(12, 'news', 123, '文章专题设置', '', 3, 12, ''),
(40, 'news', 125, '文章发布', '', 5, 12, ''),
(41, 'news', 126, '文章修改', '', 6, 12, ''),
(43, 'page', 301, '网页分组和管理', '', 1, 30, ''),
(27, 'tools', 81, '访问统计系统', '', 1, 7, ''),
(29, 'tools', 82, '投票调查系统', '', 3, 7, ''),
(72, 'base', 8, '管理菜单设置', '', 8, 0, ''),
(116, 'shop', 321, '订单查询管理', '', 9, 31, ''),
(115, 'shop', 320, '商品修改', '', 8, 31, ''),
(114, 'shop', 319, '商品发布', '', 7, 31, ''),
(113, 'shop', 317, '商品管理', '', 5, 31, ''),
(112, 'shop', 316, '品牌管理', '', 4, 31, ''),
(109, 'shop', 310, '网店参数设置', '', 0, 31, ''),
(110, 'shop', 311, '配送方法设置', '', 1, 31, ''),
(111, 'shop', 313, '商品分类管理', '', 4, 31, ''),
(125, 'shop', 328, '订单退订确认', '', 15, 31, ''),
(124, 'shop', 331, '商品销售统计', '', 16, 31, ''),
(123, 'shop', 330, '订单查询统计', '', 16, 31, ''),
(122, 'shop', 327, '订单退货确认', '', 15, 31, ''),
(121, 'shop', 326, '订单退款确认', '', 14, 31, ''),
(87, 'base', 9, '模块安装卸载', '', 9, 0, ''),
(88, 'tools', 83, '图片投票系统', '', 3, 7, ''),
(89, 'tools', 84, 'QQ客服系统', '', 4, 7, ''),
(90, 'tools', 85, '51客服系统', '', 5, 7, ''),
(91, 'tools', 86, '51la统计系统', '', 6, 7, ''),
(92, 'tools', 87, '移动短信留言', '', 7, 7, ''),
(93, 'member', 67, '财务收款入账', '', 16, 6, ''),
(94, 'member', 68, '会员帐务查询', '', 16, 6, ''),
(95, 'member', 69, '支付方法设置', '', 16, 6, ''),
(96, 'member', 70, '帐务查询统计', '', 16, 6, ''),
(97, 'job', 221, '招聘职位发布', '', 1, 22, ''),
(98, 'job', 222, '招聘职位管理', '', 2, 22, ''),
(99, 'job', 223, '求职申请处理', '', 3, 22, ''),
(100, 'job', 224, '企业人才库查询', '', 4, 22, ''),
(101, 'job', 225, '应聘表单设置', '', 7, 22, ''),
(126, 'feedback', 211, '反馈表单设置', '', 1, 21, ''),
(127, 'feedback', 212, '反馈留言管理', '', 3, 21, ''),
(134, 'huanzeng', 722, '赠品订单管理权限', '', 2, 72, ''),
(133, 'huanzeng', 721, '赠品管理权限', '', 1, 72, ''),
(132, 'huanzeng', 720, '换赠参数设置', '', 0, 72, ''),
(135, 'huanzeng', 723, '赠品换购统计权限', '', 3, 72, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_adminmenu`
--

CREATE TABLE IF NOT EXISTS `pwn_base_adminmenu` (
  `id` int(6) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `menu` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `pwn_base_adminmenu`
--

INSERT INTO `pwn_base_adminmenu` (`id`, `pid`, `menu`, `url`, `xuhao`) VALUES
(15, 0, '网站标志管理', 'advs/admin/advs_logo_modi.php?id=1', 1),
(16, 0, '轮播广告管理', 'advs/admin/advs_lb.php', 2),
(17, 0, '发布新的商品', 'shop/admin/shop_conadd.php', 7),
(18, 0, '商品查询管理', 'shop/admin/shop_con.php', 8),
(19, 0, '订单查询管理', 'shop/admin/order.php', 13),
(20, 0, '会员帐务管理', 'member/admin/member_common.php?searchmodle=account', 15),
(21, 0, '支付方法设置', 'member/admin/paycenter.php', 4),
(22, 0, '配送方法设置', 'shop/admin/yun_method.php', 6),
(23, 0, '配送区域设置', 'shop/admin/yun_zone.php', 5),
(24, 0, '修改网站介绍', 'page/admin/page.php', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_adminrights`
--

CREATE TABLE IF NOT EXISTS `pwn_base_adminrights` (
  `id` int(50) NOT NULL auto_increment,
  `auth` char(20) default NULL,
  `user` char(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3326 ;

--
-- 转存表中的数据 `pwn_base_adminrights`
--

INSERT INTO `pwn_base_adminrights` (`id`, `auth`, `user`) VALUES
(3321, '212', 'admin'),
(3320, '211', 'admin'),
(3319, '225', 'admin'),
(3318, '224', 'admin'),
(3317, '223', 'admin'),
(3316, '222', 'admin'),
(3315, '221', 'admin'),
(3314, '70', 'admin'),
(3313, '69', 'admin'),
(3312, '68', 'admin'),
(3311, '67', 'admin'),
(3310, '87', 'admin'),
(3309, '86', 'admin'),
(3308, '85', 'admin'),
(3307, '84', 'admin'),
(3306, '83', 'admin'),
(3305, '9', 'admin'),
(3304, '326', 'admin'),
(3303, '327', 'admin'),
(3302, '330', 'admin'),
(3301, '331', 'admin'),
(3300, '328', 'admin'),
(3299, '313', 'admin'),
(3298, '311', 'admin'),
(3297, '310', 'admin'),
(3296, '316', 'admin'),
(3295, '317', 'admin'),
(3294, '319', 'admin'),
(3293, '320', 'admin'),
(3292, '321', 'admin'),
(3291, '8', 'admin'),
(3290, '82', 'admin'),
(3289, '81', 'admin'),
(3288, '301', 'admin'),
(3287, '126', 'admin'),
(3286, '125', 'admin'),
(3285, '123', 'admin'),
(3284, '122', 'admin'),
(3283, '121', 'admin'),
(3282, '120', 'admin'),
(3281, '11', 'admin'),
(3280, '66', 'admin'),
(3279, '65', 'admin'),
(3278, '64', 'admin'),
(3277, '63', 'admin'),
(3276, '62', 'admin'),
(3275, '61', 'admin'),
(3274, '60', 'admin'),
(3273, '59', 'admin'),
(3272, '58', 'admin'),
(3271, '57', 'admin'),
(3270, '56', 'admin'),
(3269, '55', 'admin'),
(3268, '54', 'admin'),
(3267, '53', 'admin'),
(3266, '52', 'admin'),
(3265, '51', 'admin'),
(3264, '50', 'admin'),
(3263, '322', 'admin'),
(3262, '323', 'admin'),
(3261, '324', 'admin'),
(3260, '325', 'admin'),
(3259, '132', 'admin'),
(3258, '131', 'admin'),
(3257, '130', 'admin'),
(3256, '7', 'admin'),
(3255, '6', 'admin'),
(3254, '5', 'admin'),
(3253, '3', 'admin'),
(3252, '2', 'admin'),
(3251, '1', 'admin'),
(3250, '96', 'admin'),
(3249, '95', 'admin'),
(3248, '91', 'admin'),
(3322, '720', 'admin'),
(3323, '721', 'admin'),
(3324, '722', 'admin'),
(3325, '723', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_border`
--

CREATE TABLE IF NOT EXISTS `pwn_base_border` (
  `id` int(12) NOT NULL auto_increment,
  `bordertype` varchar(10) NOT NULL default 'border',
  `tempid` char(8) NOT NULL default '',
  `tempname` varchar(50) NOT NULL default '边框模板',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- 转存表中的数据 `pwn_base_border`
--

INSERT INTO `pwn_base_border` (`id`, `bordertype`, `tempid`, `tempname`) VALUES
(1, 'border', '001', '可选颜色边框模板'),
(2, 'border', '002', '可选颜色边框模板'),
(3, 'border', '003', '可选颜色边框模板'),
(4, 'border', '004', '可选颜色边框模板'),
(5, 'border', '005', '可选颜色边框模板'),
(6, 'border', '006', '可选颜色边框模板'),
(66, 'lable', '212', '竖排菜单式标签切换边框模板,无外框线'),
(8, 'border', '008', '可选颜色边框模板(浅色调)'),
(9, 'border', '009', '可选颜色边框模板'),
(10, 'border', '010', '可选颜色边框模板'),
(11, 'border', '011', '可选颜色边框模板'),
(12, 'border', '012', '可选颜色边框模板(浅色调)'),
(13, 'border', '013', '可选颜色边框模板'),
(14, 'border', '014', '可选颜色边框模板'),
(15, 'border', '015', '可选颜色边框模板'),
(16, 'border', '016', '可选颜色边框模板'),
(17, 'border', '017', '可选颜色边框模板'),
(18, 'border', '018', '可选颜色边框模板'),
(19, 'border', '501', '浅色调创意边框模板'),
(20, 'border', '502', '边框模板'),
(22, 'border', '504', '边框模板'),
(23, 'border', '505', '边框模板'),
(34, 'border', '020', '可选颜色边框模板(浅色调)'),
(25, 'border', '507', '边框模板'),
(35, 'border', '503', '无框线简约边框模版'),
(27, 'border', '509', '边框模板'),
(37, 'border', '506', '浅色调无框线边框模版'),
(31, 'border', '513', '浅灰色圆角边框模板'),
(33, 'border', '019', '可选颜色边框模板(浅色调)'),
(38, 'border', '508', '浅色调边框模版'),
(39, 'border', '510', '左侧标题栏浅色调模版'),
(40, 'border', '511', '无标题栏圆角边框模版'),
(41, 'border', '512', '无标题栏圆角边框模版'),
(42, 'border', '514', '边框模板'),
(43, 'border', '021', '左侧标题栏可变色边框模板'),
(44, 'border', '515', '灰色外背景边框模板'),
(45, 'border', '516', '无标题栏圆角灰色背景边框模版'),
(46, 'border', '517', '无标题栏圆角浅色背景边框模板'),
(47, 'lable', '201', '标签切换边框模板,浅蓝简约型'),
(48, 'lable', '051', '可选颜色,标签切换边框模板,带总标题'),
(49, 'lable', '202', '标签切换边框模板,红黑标签，无框线'),
(50, 'lable', '203', '标签切换边框模板'),
(51, 'lable', '204', '标签切换边框模板,浅灰简约,带总标题栏'),
(52, 'lable', '052', '可选颜色,标签切换边框模板,带总标题'),
(53, 'lable', '205', '标签切换边框模板,圆角,深色'),
(54, 'lable', '053', '可选颜色,标签切换边框模板,圆角'),
(55, 'lable', '206', '标签切换边框模板,圆角,浅黄色调'),
(56, 'lable', '207', '标签切换边框模板,圆角,浅蓝淡雅风格'),
(57, 'lable', '208', '标签切换边框模板,内圆角,浅蓝淡雅风格'),
(58, 'lable', '209', '标签切换边框模板,内圆角,灰白渐变'),
(59, 'lable', '210', '标签切换边框模板,圆角,浅色渐变'),
(60, 'lable', '054', '可选颜色,标签切换边框模板,圆角'),
(61, 'lable', '055', '可选颜色,标签切换边框模板'),
(62, 'lable', '211', '标签切换边框模板,圆角,橙色+灰色'),
(63, 'border', '500', '条幅边框,无标题栏，搜索条登录框等专用'),
(64, 'border', '022', '可选颜色边框模板'),
(67, 'lable', '056', '可选颜色,竖排菜单式标签切换边框,无框线'),
(75, 'border', '519', '无标题栏边框模版(圆角，粗边线)'),
(77, 'border', '023', '可选颜色边框模板'),
(78, 'border', '024', '可选颜色边框模板'),
(87, 'border', '596', '浅色圆角边框'),
(81, 'border', '606', '浅色圆角边框'),
(83, 'border', '520', '红色标题栏浅灰背景边框'),
(84, 'border', '604', '搜索条专用边框'),
(85, 'border', '605', '黑色标题栏圆角边框'),
(86, 'border', '595', '浅色圆角边框'),
(88, 'border', '639', '黑色斜纹边框'),
(89, 'border', '640', '灰色边框黑色斜纹'),
(90, 'border', '641', '精品钻饰专用边框'),
(91, 'border', '642', '饰品推荐专用边框'),
(92, 'border', '643', '友情链接专用边框'),
(93, 'border', '644', '搜索条专用边框(黑色)'),
(94, 'border', '645', '红色上下式边框'),
(95, 'border', '646', '红色整体式边框'),
(96, 'border', '648', '大圆角边框'),
(97, 'lable', '649', '标签切换边框模板,简约,无框线'),
(98, 'border', '650', '粉色边框'),
(99, 'border', '651', '大圆角带头部边框'),
(100, 'border', '652', '大圆角带头部黄色边框'),
(101, 'border', '653', '简约带头部圆角边框'),
(102, 'border', '654', '简约带头部圆角边框2'),
(103, 'border', '657', '简约边框模板'),
(104, 'border', '658', '文章专用边框模板'),
(105, 'border', '659', '自定义边框模板');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_coltype`
--

CREATE TABLE IF NOT EXISTS `pwn_base_coltype` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL default '',
  `colname` varchar(50) NOT NULL default '',
  `sname` varchar(30) NOT NULL,
  `ifadmin` int(1) NOT NULL default '1',
  `ifchannel` int(1) NOT NULL default '0',
  `ifpubplus` int(1) NOT NULL default '1',
  `moveable` int(1) NOT NULL default '0',
  `installed` int(1) NOT NULL default '1',
  `classtbl` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;

--
-- 转存表中的数据 `pwn_base_coltype`
--

INSERT INTO `pwn_base_coltype` (`id`, `coltype`, `colname`, `sname`, `ifadmin`, `ifchannel`, `ifpubplus`, `moveable`, `installed`, `classtbl`) VALUES
(1, 'base', '基础模块', '基础', 0, 0, 0, 0, 1, ''),
(2, 'diy', '自定内容', '自定义', 0, 0, 1, 0, 1, ''),
(3, 'menu', '导航菜单', '菜单', 1, 0, 1, 0, 1, ''),
(5, 'index', '首页模块', '首页', 0, 1, 0, 0, 1, ''),
(20, 'page', '网页模块', '网页', 1, 0, 1, 0, 1, ''),
(21, 'news', '文章模块', '文章', 1, 1, 1, 0, 1, '_news_cat'),
(31, 'shop', '网上购物', '购物', 1, 1, 1, 0, 1, '_shop_cat'),
(28, 'comment', '互动点评', '点评', 1, 1, 1, 0, 1, '_comment_cat'),
(30, 'member', '会员模块', '会员', 1, 1, 1, 0, 1, ''),
(97, 'search', '全站搜索', '搜索', 0, 0, 1, 0, 1, ''),
(100, 'effect', '素材特效', '特效', 0, 0, 1, 0, 1, ''),
(105, 'job', '企业招聘', '招聘', 1, 1, 1, 1, 1, ''),
(114, 'feedback', '留言反馈', '反馈', 1, 1, 1, 1, 1, ''),
(110, 'advs', '网站广告', '广告', 1, 0, 1, 0, 1, ''),
(112, 'tools', '辅助工具', '工具', 1, 0, 1, 0, 1, ''),
(32, 'huanzeng', '积分换赠', '换赠', 1, 1, 1, 1, 1, '_hz_cat');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_config`
--

CREATE TABLE IF NOT EXISTS `pwn_base_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_base_config`
--

INSERT INTO `pwn_base_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '网站名称', 'input', '30', 'SiteName', '宠物用品商城', '用于在网页标题、导航栏处显示'),
(2, '网站网址', 'input', '30', 'SiteHttp', 'http://127.0.0.1/', '网站的实际访问网址,末尾加“/”'),
(4, '服务邮箱', 'input', '30', 'SiteEmail', 'service@mydomain.com', '在发送系统邮件时作为发件人邮件'),
(5, '邮件转发方式', 'ownersys', '1', 'ownersys', '0', 'LINUX/UNIX服务器一般可使用内置邮件系统转发邮件；WINDOWS服务器建议使用外部SMTP邮箱转发，并设置以下SMTP邮箱参数'),
(6, 'SMTP服务器', 'input', '30', 'owner_m_smtp', 'mail.mydomain.com', ''),
(7, 'SMTP邮箱用户', 'input', '30', 'owner_m_user', 'alex@mydomain.com', ''),
(8, 'SMTP邮箱密码', 'input', '30', 'owner_m_pass', '123456', ''),
(5, 'SMTP转发邮箱', 'input', '30', 'owner_m_mail', 'alex@mydomain.com', ''),
(9, 'SMTP身份验证', 'YN', '10', 'owner_m_check', '1', ''),
(10, '是否生成并使用静态HTML网页', 'YN', '10', 'CatchOpen', '0', ''),
(11, 'HTML静态网页更新时间(秒)', 'input', '8', 'CatchTime', '3600', '超过此时间访问静态页面时，重新生成静态页并刷新页面'),
(3, '软件授权用户账号', 'input', '30', 'phpwebUser', 'qq390339146', '在本软件安装、升级或使用其他服务时所采用的软件授权用户登录帐号'),
(99, '安全校验码', 'code', '30', 'safecode', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_pageset`
--

CREATE TABLE IF NOT EXISTS `pwn_base_pageset` (
  `id` int(12) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `coltype` varchar(50) NOT NULL default '',
  `pagename` varchar(50) NOT NULL default '',
  `th` int(5) NOT NULL default '200',
  `ch` int(5) NOT NULL default '500',
  `bh` int(5) NOT NULL default '200',
  `pagetitle` varchar(255) NOT NULL default '',
  `metakey` varchar(255) NOT NULL default '',
  `metacon` text NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL default 'repeat',
  `bgatt` varchar(10) NOT NULL default 'scroll',
  `containwidth` int(5) NOT NULL default '900',
  `containbg` varchar(100) NOT NULL default '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL default '0',
  `containpadding` int(2) NOT NULL default '10',
  `containcenter` char(10) NOT NULL default 'auto',
  `topbg` varchar(100) NOT NULL default 'transparent',
  `topwidth` char(10) NOT NULL default '900',
  `contentbg` varchar(100) NOT NULL default 'transparent',
  `contentwidth` char(10) NOT NULL default '900',
  `contentmargin` int(2) NOT NULL default '10',
  `bottombg` varchar(100) NOT NULL default 'transparent',
  `bottomwidth` char(10) NOT NULL default '900',
  `buildhtml` varchar(12) NOT NULL default '0',
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=333 ;

--
-- 转存表中的数据 `pwn_base_pageset`
--

INSERT INTO `pwn_base_pageset` (`id`, `name`, `coltype`, `pagename`, `th`, `ch`, `bh`, `pagetitle`, `metakey`, `metacon`, `bgcolor`, `bgimage`, `bgposition`, `bgrepeat`, `bgatt`, `containwidth`, `containbg`, `containimg`, `containmargin`, `containpadding`, `containcenter`, `topbg`, `topwidth`, `contentbg`, `contentwidth`, `contentmargin`, `bottombg`, `bottomwidth`, `buildhtml`, `xuhao`) VALUES
(126, '友情链接', 'advs', 'link', 159, 357, 184, '', '友情链接', '友情链接', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 0),
(92, '点评检索', 'comment', 'query', 159, 645, 184, '', '0', '0', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'catid', 12),
(88, '点评详情', 'comment', 'detail', 159, 701, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'id', 17),
(123, '点评频道首页', 'comment', 'main', 159, 382, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'index', 11),
(1, '首页', 'index', 'index', 159, 1296, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'index', 1),
(241, '会员主页', 'member', 'homepage', 159, 382, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 15),
(5, '会员登录', 'member', 'login', 157, 354, 182, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 1),
(6, '重设密码', 'member', 'lostpass', 157, 275, 182, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 2),
(12, '会员注册', 'member', 'reg', 157, 413, 182, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 0),
(202, '会员中心首页', 'member', 'main', 159, 424, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 1),
(203, '登录帐号设置', 'member', 'account', 159, 364, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 2),
(204, '头像签名设置', 'member', 'person', 159, 364, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 3),
(205, '详细资料修改', 'member', 'detail', 159, 430, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 5),
(206, '联系信息设置', 'member', 'contact', 159, 364, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 6),
(207, '会员公告详情', 'member', 'notice', 159, 364, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 7),
(208, '文章发布', 'member', 'newsfabu', 164, 520, 152, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 8),
(209, '文章管理', 'member', 'newsgl', 162, 325, 150, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 9),
(210, '文章修改', 'member', 'newsmodify', 164, 808, 152, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 10),
(318, '投诉建议', 'page', 'html_tousu', 200, 500, 200, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 0),
(231, '我的收藏夹', 'member', 'fav', 120, 253, 165, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 12),
(232, '我的好友', 'member', 'friends', 120, 253, 165, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 12),
(233, '我的点评', 'member', 'comment', 159, 255, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 13),
(228, '文章分类', 'member', 'newscat', 147, 267, 150, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 9),
(234, '我的站内短信', 'member', 'msn', 159, 340, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 15),
(2, '文章检索', 'news', 'query', 159, 357, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'catid', 2),
(3, '文章正文', 'news', 'detail', 159, 750, 184, '', '0', '0', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'id', 3),
(33, '频道首页', 'news', 'main', 157, 0, 182, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'index', 0),
(129, '内容页', 'page', 'html', 159, 357, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'id', 1),
(16, '全站搜索', 'search', 'search', 159, 207, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 2),
(246, '我的积分', 'member', 'membercent', 159, 494, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 19),
(247, '会员文章', 'news', 'membernews', 164, 185, 152, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 12),
(310, '订单查询', 'member', 'shoporder', 159, 255, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 8),
(309, '订单付款', 'shop', 'shoporderpay', 159, 711, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 9),
(308, '商品订购', 'shop', 'startorder', 159, 1189, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 6),
(300, '频道首页', 'shop', 'main', 157, 0, 182, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'index', 1),
(301, '商品查询', 'shop', 'query', 157, 709, 182, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'catid', 2),
(302, '商品详情', 'shop', 'detail', 159, 827, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'id', 3),
(303, '品牌查询', 'shop', 'brandquery', 186, 1372, 278, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 4),
(304, '品牌详情', 'shop', 'branddetail', 133, 1068, 0, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 5),
(305, '购物车', 'shop', 'cart', 159, 711, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 6),
(306, '订单详情', 'shop', 'shoporderdetail', 159, 770, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 9),
(307, '品牌首页', 'shop', 'brand', 159, 1295, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 4),
(289, '分组首页', 'page', 'html_main', 200, 500, 200, '', '', '', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 0),
(290, '会员付款记录', 'member', 'paylist', 159, 255, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 19),
(291, '会员消费记录', 'member', 'buylist', 159, 255, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 19),
(292, '招聘职位查询', 'job', 'main', 159, 415, 184, '诚聘英才', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'index', 2),
(293, '招聘职位详情', 'job', 'detail', 159, 1415, 184, '', '0', '0', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'id', 3),
(311, '关于我们', 'page', 'html_aboutus', 159, 357, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 0),
(312, '购物指南', 'page', 'html_guide', 157, 355, 182, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 0),
(313, '支付方式', 'page', 'html_payment', 157, 355, 182, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 0),
(314, '配送说明', 'page', 'html_dev', 159, 357, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 0),
(315, '联系方式', 'page', 'html_contact', 159, 357, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 0),
(316, '售后服务', 'page', 'html_service', 159, 357, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 0),
(317, '留言反馈', 'feedback', 'main', 159, 476, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 1),
(299, '帐户在线充值', 'member', 'onlinepay', 159, 255, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 19),
(332, '订单查询', 'member', 'hzorder', 159, 255, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 8),
(331, '订单详情', 'huanzeng', 'orderdetail', 159, 565, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 9),
(330, '赠品兑换', 'huanzeng', 'startorder', 159, 624, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 6),
(329, '购物车', 'huanzeng', 'cart', 159, 302, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', '0', 6),
(328, '赠品详情', 'huanzeng', 'detail', 159, 432, 184, '', '0', '0', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'id', 3),
(327, '赠品检索', 'huanzeng', 'query', 159, 587, 184, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'catid', 2),
(326, '换赠首页', 'huanzeng', 'main', 157, 0, 182, '', '', '', 'transparent', 'none', '0% 0%', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900', 'index', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_pagetemp`
--

CREATE TABLE IF NOT EXISTS `pwn_base_pagetemp` (
  `id` int(12) NOT NULL auto_increment,
  `tempname` varchar(50) NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL default 'repeat',
  `bgatt` varchar(10) NOT NULL default 'scroll',
  `containwidth` int(5) NOT NULL default '900',
  `containbg` varchar(100) NOT NULL default '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL default '0',
  `containpadding` int(2) NOT NULL default '10',
  `containcenter` char(10) NOT NULL default 'auto',
  `topbg` varchar(100) NOT NULL default 'transparent',
  `topwidth` char(10) NOT NULL default '900',
  `contentbg` varchar(100) NOT NULL default 'transparent',
  `contentwidth` char(10) NOT NULL default '900',
  `contentmargin` int(2) NOT NULL default '10',
  `bottombg` varchar(100) NOT NULL default 'transparent',
  `bottomwidth` char(10) NOT NULL default '900',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `pwn_base_pagetemp`
--

INSERT INTO `pwn_base_pagetemp` (`id`, `tempname`, `bgcolor`, `bgimage`, `bgposition`, `bgrepeat`, `bgatt`, `containwidth`, `containbg`, `containimg`, `containmargin`, `containpadding`, `containcenter`, `topbg`, `topwidth`, `contentbg`, `contentwidth`, `contentmargin`, `bottombg`, `bottomwidth`) VALUES
(36, '默认背景方案', 'transparent', 'none', 'center top', 'repeat', 'scroll', 950, 'rgb(255,255,255)', '', 0, 0, 'auto', 'none transparent scroll repeat 0% 0%', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'url(effect/source/bg/x09.jpg) repeat-x center top', '900');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plus`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plus` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL default '0',
  `bordercolor` varchar(7) NOT NULL default '#dddddd',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#cccccc',
  `barcolor` varchar(10) NOT NULL default '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL default '#ffffff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '0',
  `ord` varchar(100) NOT NULL default 'id',
  `sc` varchar(10) NOT NULL default 'desc',
  `showtj` int(5) NOT NULL default '0',
  `cutword` int(20) default '0',
  `target` varchar(30) default '0',
  `catid` int(100) NOT NULL default '0',
  `cutbody` int(5) NOT NULL default '0',
  `picw` int(3) NOT NULL default '100',
  `pich` int(3) NOT NULL default '100',
  `fittype` char(10) NOT NULL default 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL default '',
  `word4` char(255) NOT NULL default '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL default '',
  `link2` char(255) NOT NULL default '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL default '',
  `projid` varchar(20) NOT NULL default '',
  `modno` int(3) NOT NULL default '0',
  `setglobal` int(5) NOT NULL default '0',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6499 ;

--
-- 转存表中的数据 `pwn_base_plus`
--

INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4945, 'huanzeng', 'modHzSearchForm', '赠品搜索表单', 'huanzeng', 'query', 'tpl_hz_searchform.htm', '-1', 'A500', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 35, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '赠品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3678, 'shop', 'modShopComment', '商品点评', 'shop', 'detail', 'tpl_shop_comment.htm', '-1', 'K595', '#dddddd', 1, 'solid', '', 'click', 'none', '', '', '#fff', 'http://', 720, 349, 476, 0, 4, 1, 5, 'id', 'desc', 0, 20, '_self', 0, 120, -1, -1, 'fill', '商品评论', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3677, 'member', 'modMemberOnlinePay', '帐户在线充值', 'member', 'onlinepay', 'tpl_member_onlinepay.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 204, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '帐户在线充值', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3674, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'onlinepay', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3976, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'brandquery', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 190, 34, 87, 785, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3977, 'diy', 'modPic', '图片/FLASH', 'shop', 'brandquery', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 63, 121, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091113/1258089501.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3978, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'brandquery', 'tpl_shop_smallcart_top2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 290, 27, 142, 700, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3979, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'brandquery', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 37, 1, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 玩具商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3970, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'brand', 'tpl_shoptwoclass_diy.htm', '-1', 'A657', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 220, 709, 0, 0, 1, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3638, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'brand', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 30, 0, 230, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3639, 'shop', 'modShopBrandAll', '分类品牌列表', 'shop', 'brand', 'tpl_shop_brandall.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 720, 1263, 30, 230, 3, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 120, 55, 'fill', '品牌查询', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3640, 'shop', 'modShopTwoClassBrand', '分类品牌组合查询', 'shop', 'branddetail', 'tpl_shoptwoclass_brand.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 180, 1017, 0, 720, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 140, 50, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3642, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'branddetail', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 30, 0, 240, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3957, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'detail', 'tpl_shoptwoclass_diy.htm', '-1', 'A657', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 220, 709, 0, 730, 1, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3994, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'cart', 'tpl_shoptwoclass_diy.htm', '-1', 'A657', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 220, 709, 0, 0, 1, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3646, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'cart', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 30, 0, 230, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(5507, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '{#RP#}shop/class/', 231, 118, 297, 682, 5, 0, 5, 'id', 'desc', 0, 12, '_self', 0, 30, 120, 112, 'fill', '最新商品', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 10, 0, 'hidden', 'content', 'block'),
(4043, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'shoporderdetail', 'tpl_shoptwoclass_diy.htm', '-1', 'A657', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 220, 709, 0, 0, 1, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3784, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'branddetail', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(5967, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'detail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3635, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'shoporderdetail', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 30, 0, 230, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3628, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'shoporder', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3633, 'shop', 'modShopMemberOrder', '会员订单查询', 'member', 'shoporder', 'tpl_shop_order.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 740, 191, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '订单查询', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3630, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'shoporder', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3619, 'shop', 'modShopOrderDetail', '订单详情', 'shop', 'shoporderdetail', 'tpl_shop_orderdetail.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 720, 738, 30, 230, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(5966, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3975, 'diy', 'modHeadPic', '头部自定义效果图', 'shop', 'brandquery', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 166, 87, 0, 824, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20091112/1258017579.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3776, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'membernews', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3768, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newscat', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3764, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsmodify', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3763, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsgl', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3762, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsfabu', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6496, 'menu', 'modTopMenu', '顶部菜单(一级)', 'shop', 'brand', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6495, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'brand', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4944, 'huanzeng', 'modHzQuery', '赠品检索搜索', 'huanzeng', 'query', 'tpl_hz_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 720, 545, 40, 0, 1, 5, 20, 'id', 'desc', 0, 30, '_self', 0, 30, 120, 120, 'fill', '赠品检索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4957, 'huanzeng', 'modHzDetail', '赠品详情', 'huanzeng', 'detail', 'tpl_hz_detail.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 395, 35, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '赠品详情', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3616, 'shop', 'modShopCart', '购物车', 'shop', 'cart', 'tpl_shop_cart.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 720, 231, 30, 230, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3617, 'shop', 'modShopStartOrder', '商品订购', 'shop', 'startorder', 'tpl_shop_startorder.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 720, 1157, 30, 230, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品订购', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(5957, 'menu', 'modTopMenu', '顶部菜单(一级)', 'shop', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 10, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(5956, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5989, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'startorder', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5988, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'startorder', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6000, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'shoporderpay', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3711, 'shop', 'modShopSmallCart', '购物车提示信息', 'news', 'membernews', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3823, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'membernews', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 37, 1, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 玩具商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6275, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'search', 'search', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6274, 'diy', 'modButtomInfo', '底部信息编辑区', 'search', 'search', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(5945, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'query', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5944, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6187, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'huanzeng', 'query', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6184, 'shop', 'modShopSearchForm', '商品搜索表单', 'huanzeng', 'query', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6185, 'menu', 'modBottomMenu', '底部菜单（一级）', 'huanzeng', 'query', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6186, 'diy', 'modButtomInfo', '底部信息编辑区', 'huanzeng', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3815, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newscat', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 37, 1, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 玩具商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6198, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'huanzeng', 'detail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6197, 'diy', 'modButtomInfo', '底部信息编辑区', 'huanzeng', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6183, 'advs', 'modLogo', '网站标志', 'huanzeng', 'query', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6182, 'shop', 'modShopSmallCart', '购物车提示信息', 'huanzeng', 'query', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6181, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(5934, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'index', 'index', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5935, 'menu', 'modTopMenu', '顶部菜单(一级)', 'index', 'index', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 19, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(5936, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(3974, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'brandquery', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 289, 39, 49, 522, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3719, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'branddetail', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3703, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'newscat', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6484, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'msn', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6253, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'news', 'query', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3809, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsfabu', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 37, 1, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 玩具商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6209, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'huanzeng', 'cart', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3663, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'buylist', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3668, 'member', 'modMemberBuyList', '会员消费记录', 'member', 'buylist', 'tpl_member_buylist.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 145, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '消费记录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3665, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'buylist', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4104, 'member', 'modMemberNoticeContent', '会员公告详情', 'member', 'notice', 'tpl_member_notice_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 208, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4958, 'huanzeng', 'modHzPaiHang', '赠品兑换排行', 'huanzeng', 'detail', 'tpl_hz_paihang.htm', '-1', 'H010', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', 'http://', 220, 430, 0, 760, 2, 10, 10, 'id', 'desc', 0, 12, '_self', 0, -1, 100, 100, 'fill', '赠品兑换排行', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6208, 'diy', 'modButtomInfo', '底部信息编辑区', 'huanzeng', 'cart', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3672, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'onlinepay', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4977, 'huanzeng', 'modHzNavPath', '当前位置提示条', 'huanzeng', 'cart', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 720, 30, 0, 0, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6297, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'reg', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6296, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'reg', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(319, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'reg', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(323, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'main', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(324, 'member', 'modMemberNotice', '会员公告(列表)', 'member', 'main', 'tpl_member_notice.htm', '', 'H596', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 740, 173, 249, 210, 4, 12, 5, 'id', 'desc', 0, 25, '_self', 0, -1, 100, 100, 'fill', '会员公告', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(394, 'member', 'modMemberInfo', '会员登录信息', 'member', 'main', 'tpl_memberinfo.htm', '', 'E596', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 540, 210, 35, 210, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员登录信息', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(326, 'member', 'modMemberCentInfo', '会员积分信息', 'member', 'main', 'tpl_centinfo.htm', '', 'H596', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 190, 210, 35, 760, 6, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员积分', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4121, 'member', 'modMemberAccount', '登录账号设置表单', 'member', 'account', 'tpl_member_account.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 143, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4956, 'huanzeng', 'modHzNavPath', '当前位置提示条', 'huanzeng', 'detail', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 720, 30, 0, 0, 4, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4138, 'member', 'modMemberPerson', '头像签名设置表单', 'member', 'person', 'tpl_member_person.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 313, 37, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4128, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'person', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(336, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'main', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1346, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'main', 'tpl_comment_searchform.htm', '-1', 'E018', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 179, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '点评搜索', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(344, 'comment', 'modCommentQuery', '点评检索', 'comment', 'query', 'tpl_comment_query.htm', '', '1000', '#e6e6fa', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 608, 35, 0, 2, 0, 20, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '留言点评', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(347, 'comment', 'modCommentContent', '点评详情', 'comment', 'detail', 'tpl_comment_content.htm', '', '1000', '#eeeeee', 0, 'solid', '', 'click', 'none', '#f0f0f0', '#505050', '#fff', '-1', 950, 664, 35, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '点评详情', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(348, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'detail', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 950, 30, 0, 0, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1046, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'query', 'tpl_navpath.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 35, 0, 210, 1, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4487, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 463, 238, 670, 483, 11, 0, 3, 'id', 'desc', 0, 10, '_self', 0, 30, 114, 114, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 6, 0, 'hidden', 'content', 'block'),
(1068, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'detail', 'tpl_navpath.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 35, 0, 0, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1073, 'news', 'modNewsComment', '文章点评', 'news', 'detail', 'tpl_news_comment.htm', '-1', 'K595', '#dddddd', 1, 'solid', '', 'click', 'none', '', '', '#fff', 'http://', 720, 349, 399, 0, 4, 1, 5, 'id', 'desc', 0, 20, '_self', 0, 120, 100, 100, 'fill', '相关评论', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6319, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6318, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(385, 'page', 'modPageContent', '网页内容详情', 'page', 'html', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 164, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3223, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(391, 'member', 'modMemberLogin', '会员登录表单(大)', 'member', 'login', 'tpl_member_login.htm', '', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 687, 302, 52, 142, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员登录', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(392, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'login', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(395, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'homepage', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 0, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(397, 'member', 'modMemberHomeInfo', '会员信息', 'member', 'homepage', 'tpl_member_homeinfo.htm', '', 'E018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 512, 211, 35, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员信息', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(398, 'comment', 'modMemberCommentList', '会员最新点评', 'member', 'homepage', 'tpl_membercommentlist.htm', '', 'E018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '{#RP#}comment/class/index.php?mid={#mid#}', 430, 172, 208, 520, 3, 12, 5, 'id', 'desc', 0, 20, '_self', 0, -1, 100, 100, 'fill', '我的点评', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6264, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'news', 'detail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(1014, 'news', 'modMemberNewsList', '会员最新文章', 'member', 'homepage', 'tpl_newslist_time.htm', '-1', 'E018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/membernews.php?mid={#mid#}', 430, 165, 35, 520, 4, 10, 5, 'id', 'desc', 0, 20, '_self', 0, -1, 100, 100, 'fill', '我的文章', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4111, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'account', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(411, 'news', 'modMemberNewsSearchForm', '会员文章搜索', 'news', 'membernews', 'tpl_membernews_searchform.htm', '', 'D018', '#4682b4', 1, 'solid', '', 'click', 'block', '#4682b4', '#fff', '#fff', '-1', 205, 183, 0, 0, 3, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章搜索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1061, 'news', 'modMemberNewsQuery', '会员文章检索', 'news', 'membernews', 'tpl_newsquery_cap.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 145, 35, 220, 8, 0, 20, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '会员文章', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(413, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'membernews', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 677, 28, 0, 221, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', ''),
(4155, 'member', 'modMemberDetail', '个人资料修改表单', 'member', 'detail', 'tpl_member_detail.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 393, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(420, 'member', 'modMemberFav', '我的收藏夹', 'member', 'fav', 'tpl_member_fav.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 780, 109, 35, 210, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的收藏夹', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(421, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'fav', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3024, 'member', 'modMemberFriends', '我的好友', 'member', 'friends', 'tpl_member_friends.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 109, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '我的好友', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(424, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'friends', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(426, 'member', 'modMemberMsn', '我的站内短信', 'member', 'msn', 'tpl_member_msn.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 303, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的站内短信', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(427, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'msn', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(429, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'comment', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(430, 'member', 'modMemberComment', '我的点评', 'member', 'comment', 'tpl_member_comment.htm', '', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 110, 35, 210, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的点评', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(432, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'membercent', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(433, 'member', 'modMemberCentLog', '会员积分查询', 'member', 'membercent', 'tpl_member_centlog.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 457, 35, 210, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '我的积分', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(435, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsfabu', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(436, 'news', 'modNewsFabu', '文章发布表单', 'member', 'newsfabu', 'tpl_news_fabu.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 478, 40, 200, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章发布', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(438, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsgl', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(440, 'news', 'modNewsGl', '文章管理', 'member', 'newsgl', 'tpl_news_gl.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 148, 30, 200, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章管理', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(441, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newscat', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(443, 'news', 'modNewsMyCat', '文章分类管理', 'member', 'newscat', 'tpl_news_mycat.htm', '', '1000', '#4682b4', 0, 'solid', '', '', 'none', '#4682b4', '#fff', '#fff', '-1', 700, 175, 32, 200, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章分类管理', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(4145, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'detail', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(453, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsmodify', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(454, 'news', 'modNewsModify', '文章修改表单', 'member', 'newsmodify', 'tpl_news_modify.htm', '', '1000', '#eeeeee', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 696, 770, 36, 204, 6, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '文章修改', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3723, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_main', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6242, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'news', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6066, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4094, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'notice', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3742, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'detail', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 30, 0, 0, 3, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(492, 'advs', 'modLinkText', '文字友情链接', 'advs', 'link', 'tpl_link.htm', '', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '{#RP#}advs/link/', 740, 71, 35, 210, 1, 0, 99, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '友情链接', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(493, 'advs', 'modLinkPic', '图片友情链接', 'advs', 'link', 'tpl_linkpic.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '{#RP#}advs/link/', 740, 183, 116, 210, 3, 10, 20, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '友情链接', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(1343, 'search', 'modSearchForm', '全站搜索表单(横式)', 'search', 'search', 'tpl_searchform.htm', '-1', 'A500', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 2, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '全站搜索', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(497, 'search', 'modSearch', '全站搜索结果', 'search', 'search', 'tpl_search.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 950, 170, 35, 0, 1, 0, 10, 'id', 'desc', 0, 30, '_self', 0, -1, 100, 100, 'fill', '全站搜索', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3730, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'brandquery', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 750, 30, 0, 240, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3731, 'shop', 'modShopBrandQuery', '品牌检索', 'shop', 'brandquery', 'tpl_shop_brandquery.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 755, 1340, 30, 240, 2, 5, 10, 'id', 'desc', 0, -1, '_self', 0, -1, 140, 50, 'fill', '品牌检索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3973, 'advs', 'modLogo', '网站标志', 'shop', 'brandquery', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 198, 85, 0, 15, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3548, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'branddetail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5955, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(1069, 'news', 'modNewsContent', '文章正文', 'news', 'detail', 'tpl_newscontent.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 347, 40, 0, 3, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3732, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'query', 'tpl_newsquery.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 294, 40, 210, 3, 0, 20, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '文章检索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2088, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'lostpass', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4437, 'shop', 'modShopTwoClass', '商品二级分类', 'news', 'detail', 'tpl_shoptwoclass_diy.htm', '-1', 'A657', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 220, 709, 0, 730, 1, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(5912, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 260, 65, 170, 690, 21, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 4, 0, 'hidden', 'content', 'block'),
(2089, 'member', 'modResetPass', '重设密码向导', 'member', 'lostpass', 'tpl_resetpass.htm', '-1', 'D606', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 699, 237, 38, 117, 2, 30, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '重设密码', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(1454, 'member', 'modMemberReg', '会员注册', 'member', 'reg', 'tpl_reg.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 750, 371, 42, 116, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员注册', '-1 ', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2663, 'comment', 'modCommentList', '最新点评（列表）', 'comment', 'main', 'tpl_commentlist.htm', '-1', '1000', '#eeeeee', 4, 'solid', '', 'click', 'block', '#f0f0f0', '#505050', '#fff', '{#RP#}comment/class/index.php', 740, 339, 35, 210, 3, 12, 5, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '最新留言', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(2664, 'comment', 'modCommentClass', '点评分类', 'comment', 'main', 'tpl_comment_class.htm', '-1', 'E018', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 195, 185, 0, 4, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '分类导航', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3679, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'query', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 950, 30, 0, 0, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6176, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'huanzeng', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6175, 'diy', 'modButtomInfo', '底部信息编辑区', 'huanzeng', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6044, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'comment', 'detail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6045, 'menu', 'modTopMenu', '顶部菜单(一级)', 'comment', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 12, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(5937, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 20, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(1439, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newscat', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 3, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1438, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsmodify', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 3, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(2014, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsgl', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 3, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1436, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsfabu', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 3, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1435, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'membercent', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 3, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1434, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'msn', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1432, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'friends', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1431, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'fav', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 3, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4172, 'member', 'modMemberContact', '联系信息设置表单', 'member', 'contact', 'tpl_member_contact.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 301, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(1426, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'main', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 362, 0, 0, 3, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6341, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'homepage', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3982, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'brandquery', 'tpl_shoptwoclass_diy.htm', '-1', 'A657', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 220, 709, 0, 0, 1, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6396, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'shoporder', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3540, 'shop', 'modShopSearchForm', '商品搜索表单', 'news', 'membernews', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6241, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6065, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6252, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6263, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6483, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'msn', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3532, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'newscat', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3123, 'advs', 'modAdvsLb', '图片轮播广告', 'index', 'index', 'tpl_advslb.htm', '-1', '1000', '#e6e6fa', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 450, 235, 0, 230, 8, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '轮播广告', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4162, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'contact', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3526, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'newsfabu', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3527, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'newsgl', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3528, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'newsmodify', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6440, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'onlinepay', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6363, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'person', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6174, 'menu', 'modBottomMenu', '底部菜单（一级）', 'huanzeng', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 4, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3503, 'menu', 'modChannelMenu', '二级导航菜单', 'page', 'html_main', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6207, 'menu', 'modBottomMenu', '底部菜单（一级）', 'huanzeng', 'cart', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3499, 'menu', 'modChannelMenu', '二级导航菜单', 'shop', 'branddetail', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3972, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'brandquery', 'tpl_mainmenu_diy.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 87, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5954, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 4, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(2020, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'comment', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 3, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6173, 'shop', 'modShopSearchForm', '商品搜索表单', 'huanzeng', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 8, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6439, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'onlinepay', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3491, 'menu', 'modChannelMenu', '二级导航菜单', 'news', 'membernews', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6395, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'shoporder', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(5999, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'shoporderpay', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6473, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'membercent', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6352, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'account', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6362, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'person', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6374, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'detail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6385, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'contact', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6330, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'notice', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3477, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsfabu', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3478, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsgl', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3479, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsmodify', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3483, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newscat', 'tpl_channelmenu_1030.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 71, 60, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(2639, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(2208, 'advs', 'modLinkNavPath', '当前位置提示条', 'advs', 'link', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 35, 0, 210, 4, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6462, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'comment', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5866, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'friends', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 130, 35, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 办公文具商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3654, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'paylist', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3659, 'member', 'modMemberPayList', '会员付款记录', 'member', 'paylist', 'tpl_member_paylist.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 144, 35, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '付款记录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3656, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'paylist', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3615, 'shop', 'modShopContent', '商品详情', 'shop', 'detail', 'tpl_shop_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 434, 30, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3641, 'shop', 'modShopBrandGoodsQuery', '品牌相关商品检索', 'shop', 'branddetail', 'tpl_shop_query_1.htm', '-1', 'A595', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 712, 1025, 41, 0, 7, 6, 9, 'id', 'desc', 0, 12, '_self', 0, 28, 120, 120, 'fill', '品牌商品', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'visible', 'content', 'block'),
(3613, 'shop', 'modShopQuery', '商品检索搜索', 'shop', 'query', 'tpl_shop_query.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 720, 362, 99, 230, 1, 0, 9, 'id', 'desc', 0, 9, '_self', 0, 28, 150, 120, 'auto', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3920, 'shop', 'modShopTwoClass', '商品二级分类', 'index', 'index', 'tpl_shoptwoclass_diy.htm', '-1', 'A657', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 220, 709, 0, 0, 1, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6418, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'buylist', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6180, 'menu', 'modMainMenu', '一级导航菜单', 'huanzeng', 'query', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5047, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy3.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 175, 184, 420, 248, 12, 0, 7, 'id', 'desc', 0, 10, '_self', 0, 16, 106, 106, 'fill', '最新商品', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 9, 0, 'hidden', 'content', 'block'),
(6340, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'homepage', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3851, 'feedback', 'modFeedBackForm', '留言反馈表单', 'feedback', 'main', 'tpl_feedback_form.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 434, 40, 210, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '留言反馈', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(6172, 'advs', 'modLogo', '网站标志', 'huanzeng', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6171, 'shop', 'modShopSmallCart', '购物车提示信息', 'huanzeng', 'main', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 6, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6170, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(3699, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'newsmodify', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3698, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'newsgl', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3697, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'newsfabu', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 452, 27, 10, 448, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6329, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'notice', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4157, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'contact', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 362, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6373, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4123, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'person', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 362, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3909, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'news', 'query', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 2, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3925, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'query', 'tpl_shoptwoclass_diy.htm', '-1', 'A657', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 220, 709, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3739, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'query', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 30, 0, 230, 3, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3740, 'shop', 'modShopClassFc', '商品逐级分类', 'shop', 'query', 'tpl_shopclass.htm', '-1', '1000', '#e6e6fa', 1, 'solid', '', 'click', 'none', '', '', '#f8f8ff', '-1', 720, 63, 30, 230, 4, 12, 99, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4089, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'notice', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 362, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4018, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'shoporderpay', 'tpl_shoptwoclass_diy.htm', '-1', 'A657', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 220, 709, 0, 0, 1, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4006, 'shop', 'modShopTwoClass', '商品二级分类', 'shop', 'startorder', 'tpl_shoptwoclass_diy.htm', '-1', 'A657', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 220, 709, 0, 0, 1, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3648, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'startorder', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 30, 0, 230, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4140, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'detail', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 362, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6384, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'contact', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3574, 'advs', 'modLogo', '网站标志', 'member', 'newsfabu', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 198, 85, 0, 15, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3575, 'advs', 'modLogo', '网站标志', 'member', 'newsgl', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 198, 85, 0, 15, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3576, 'advs', 'modLogo', '网站标志', 'member', 'newsmodify', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 198, 85, 0, 15, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5865, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'friends', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6461, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'comment', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3580, 'advs', 'modLogo', '网站标志', 'member', 'newscat', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 198, 85, 0, 15, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6472, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'membercent', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3588, 'advs', 'modLogo', '网站标志', 'news', 'membernews', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 198, 85, 0, 15, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5943, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'query', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 8, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(5942, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'query', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 12, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5941, 'advs', 'modLogo', '网站标志', 'shop', 'query', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5940, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'query', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 10, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5939, 'diy', 'modPic', '图片/FLASH', 'shop', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(3971, 'shop', 'modShopSaleList', '热卖商品排行榜', 'shop', 'brandquery', 'tpl_shop_hotlist2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 600, 24, 143, 97, 14, 0, 6, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 1, 0, 'hidden', 'top', 'block'),
(3596, 'advs', 'modLogo', '网站标志', 'shop', 'branddetail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 198, 85, 0, 15, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5978, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'cart', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3600, 'advs', 'modLogo', '网站标志', 'page', 'html_main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 198, 85, 0, 15, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4106, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'account', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 362, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6417, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'buylist', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6033, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'comment', 'query', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5933, 'diy', 'modButtomInfo', '底部信息编辑区', 'index', 'index', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(5932, 'menu', 'modBottomMenu', '底部菜单（一级）', 'index', 'index', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 10, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(6286, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'login', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6351, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'account', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6043, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3844, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'feedback', 'main', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3650, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'shoporderpay', 'tpl_navpath.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 30, 0, 230, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6169, 'menu', 'modMainMenu', '一级导航菜单', 'huanzeng', 'main', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6032, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3850, 'feedback', 'modFeedBackNavPath', '当前位置提示条', 'feedback', 'main', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 35, 0, 210, 3, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6143, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'feedback', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6142, 'diy', 'modButtomInfo', '底部信息编辑区', 'feedback', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3552, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 743, 26, 95, 92, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3788, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_main', 'tpl_bottommenu_1.htm', 'F', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 38, 0, 0, 17, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3355, 'job', 'modJobQuery', '职位翻页检索', 'job', 'main', 'tpl_jobquery.htm', '-1', 'A595', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 373, 40, 210, 2, 0, 10, 'id', 'desc', 0, 30, '_self', 0, 100, -1, -1, 'fill', '诚聘英才', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3352, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'job', 'main', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3354, 'job', 'modJobNavPath', '当前位置提示条', 'job', 'main', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 35, 0, 210, 3, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6022, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'comment', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6021, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3367, 'job', 'modJobForm', '应聘申请表单', 'job', 'detail', 'tpl_job_form.htm', '-1', 'E596', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 881, 532, 210, 3, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '应聘申请', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3811, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsmodify', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 37, 1, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 玩具商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3366, 'job', 'modJobContent', '职位信息详情', 'job', 'detail', 'tpl_jobcontent.htm', '-1', 'A596', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 740, 482, 40, 210, 4, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '职位信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3363, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'job', 'detail', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3365, 'job', 'modJobNavPath', '当前位置提示条', 'job', 'detail', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3810, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsgl', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 37, 1, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 玩具商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6451, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'fav', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6450, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'fav', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6308, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'lostpass', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6307, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'lostpass', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6285, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'login', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6055, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'advs', 'link', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6054, 'diy', 'modButtomInfo', '底部信息编辑区', 'advs', 'link', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3831, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'branddetail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 37, 1, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 玩具商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(5977, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'cart', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6011, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'shop', 'shoporderdetail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6010, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'shoporderdetail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6494, 'diy', 'modButtomInfo', '底部信息编辑区', 'shop', 'brand', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6493, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'brand', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3835, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 175, 37, 1, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 玩具商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6407, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'paylist', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6406, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'paylist', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6416, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'buylist', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6415, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'buylist', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6414, 'advs', 'modLogo', '网站标志', 'member', 'buylist', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6413, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'buylist', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6412, 'diy', 'modPic', '图片/FLASH', 'member', 'buylist', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6411, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'buylist', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6154, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'job', 'main', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6153, 'diy', 'modButtomInfo', '底部信息编辑区', 'job', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6165, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'job', 'detail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6164, 'diy', 'modButtomInfo', '底部信息编辑区', 'job', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6438, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'onlinepay', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6437, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'onlinepay', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6436, 'advs', 'modLogo', '网站标志', 'member', 'onlinepay', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6435, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'onlinepay', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6434, 'diy', 'modPic', '图片/FLASH', 'member', 'onlinepay', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6433, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'onlinepay', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3861, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_aboutus', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6077, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_aboutus', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6076, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_aboutus', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3859, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_aboutus', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3862, 'page', 'modPageContent', '网页内容详情', 'page', 'html_aboutus', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 164, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3864, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_guide', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3866, 'page', 'modPageContent', '网页内容详情', 'page', 'html_guide', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 22, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6196, 'menu', 'modBottomMenu', '底部菜单（一级）', 'huanzeng', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6195, 'shop', 'modShopSearchForm', '商品搜索表单', 'huanzeng', 'detail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3870, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_guide', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6088, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_guide', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6087, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_guide', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3873, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_payment', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3875, 'page', 'modPageContent', '网页内容详情', 'page', 'html_payment', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 22, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(6194, 'advs', 'modLogo', '网站标志', 'huanzeng', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6193, 'shop', 'modShopSmallCart', '购物车提示信息', 'huanzeng', 'detail', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(3879, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_payment', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6099, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_payment', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6098, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_payment', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3882, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_dev', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3884, 'page', 'modPageContent', '网页内容详情', 'page', 'html_dev', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 22, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6192, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(3888, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_dev', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6110, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_dev', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6109, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_dev', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3891, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_service', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3893, 'page', 'modPageContent', '网页内容详情', 'page', 'html_service', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 22, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4946, 'huanzeng', 'modHzPaiHang', '赠品兑换排行', 'huanzeng', 'query', 'tpl_hz_paihang.htm', '-1', 'H010', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', 'http://', 220, 430, 0, 730, 4, 10, 10, 'id', 'desc', 0, 12, '_self', 0, -1, 100, 100, 'fill', '赠品兑换排行', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3897, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_service', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6121, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_service', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6120, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_service', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3900, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html_contact', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 1, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(3902, 'page', 'modPageContent', '网页内容详情', 'page', 'html_contact', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 22, 40, 210, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '内容标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6191, 'menu', 'modMainMenu', '一级导航菜单', 'huanzeng', 'detail', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3906, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html_contact', 'tpl_navpath.htm', '-1', 'A604', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 740, 35, 0, 210, 2, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6132, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'page', 'html_contact', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6131, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html_contact', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3908, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'advs', 'link', 'tpl_page_titlemenu_b2.htm', '-1', '1000', '#e0e0e0', 1, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 355, 0, 0, 2, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '客户中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(5931, 'shop', 'modShopSearchForm', '商品搜索表单', 'index', 'index', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 16, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(4978, 'huanzeng', 'modHzCart', '购物车', 'huanzeng', 'cart', 'tpl_hz_cart.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 720, 217, 35, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(5923, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 690, 80, 1198, 242, 30, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '7', '', 10, 0, 'hidden', 'content', 'block'),
(3919, 'news', 'modNewsListDiy', '自定文章列表', 'index', 'index', 'tpl_newslist_diy.htm', '-1', 'A658', '', 0, 'solid', '', 'click', 'none', '', '', '', '{#RP#}news/class/?2.html', 260, 165, 0, 690, 6, 8, 5, 'id', 'desc', 0, 17, '_self', 1, 50, -1, -1, 'fill', '商城公告', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(5914, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 410, 110, 299, 251, 24, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 5, 0, 'hidden', 'content', 'block'),
(6206, 'shop', 'modShopSearchForm', '商品搜索表单', 'huanzeng', 'cart', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6205, 'advs', 'modLogo', '网站标志', 'huanzeng', 'cart', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6204, 'shop', 'modShopSmallCart', '购物车提示信息', 'huanzeng', 'cart', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6203, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'cart', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6202, 'menu', 'modMainMenu', '一级导航菜单', 'huanzeng', 'cart', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5921, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 160, 58, 1122, 778, 26, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '6', '', 9, 0, 'hidden', 'content', 'block'),
(5922, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '{#RP#}shop/class/', 504, 253, 930, 248, 29, 0, 4, 'id', 'desc', 0, 12, '_self', 0, 30, 114, 114, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 12, 0, 'hidden', 'content', 'block'),
(5938, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'query', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5965, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 8, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(5964, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'detail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 12, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5963, 'advs', 'modLogo', '网站标志', 'shop', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5962, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'detail', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 10, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5961, 'diy', 'modPic', '图片/FLASH', 'shop', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(5960, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'detail', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6489, 'diy', 'modPic', '图片/FLASH', 'shop', 'brand', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6490, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'brand', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6491, 'advs', 'modLogo', '网站标志', 'shop', 'brand', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6492, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'brand', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6488, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'brand', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3980, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'brandquery', 'tpl_bottommenu_white.htm', 'E', 'A644', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 34, 57, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3981, 'advs', 'modLinkPic', '图片友情链接', 'shop', 'brandquery', 'tpl_linkpic.htm', '-1', 'A643', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 990, 45, 0, 0, 13, 0, 12, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'bottom', 'block'),
(5976, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'cart', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(5975, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'cart', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5974, 'advs', 'modLogo', '网站标志', 'shop', 'cart', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5973, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'cart', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5972, 'diy', 'modPic', '图片/FLASH', 'shop', 'cart', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(5971, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'cart', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5987, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'startorder', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(5986, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'startorder', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5985, 'advs', 'modLogo', '网站标志', 'shop', 'startorder', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5984, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'startorder', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5983, 'diy', 'modPic', '图片/FLASH', 'shop', 'startorder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(5982, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'startorder', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5998, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'shoporderpay', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(5997, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'shoporderpay', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5996, 'advs', 'modLogo', '网站标志', 'shop', 'shoporderpay', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5995, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'shoporderpay', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5994, 'diy', 'modPic', '图片/FLASH', 'shop', 'shoporderpay', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(5993, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'shoporderpay', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4031, 'shop', 'modShopOrderPay', '订单付款', 'shop', 'shoporderpay', 'tpl_shop_orderpay.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 720, 260, 30, 230, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6009, 'menu', 'modBottomMenu', '底部菜单（一级）', 'shop', 'shoporderdetail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6008, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'shoporderdetail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6007, 'advs', 'modLogo', '网站标志', 'shop', 'shoporderdetail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6006, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'shoporderdetail', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6005, 'diy', 'modPic', '图片/FLASH', 'shop', 'shoporderdetail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6004, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'shoporderdetail', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6284, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'login', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 6, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6283, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'login', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 10, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6282, 'advs', 'modLogo', '网站标志', 'member', 'login', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6281, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'login', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6280, 'diy', 'modPic', '图片/FLASH', 'member', 'login', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6279, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'login', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6306, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'lostpass', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 6, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6305, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'lostpass', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 10, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6304, 'advs', 'modLogo', '网站标志', 'member', 'lostpass', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6303, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'lostpass', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6302, 'diy', 'modPic', '图片/FLASH', 'member', 'lostpass', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6301, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'lostpass', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6295, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'reg', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 6, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6294, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'reg', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 10, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6293, 'advs', 'modLogo', '网站标志', 'member', 'reg', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6292, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'reg', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6291, 'diy', 'modPic', '图片/FLASH', 'member', 'reg', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6290, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'reg', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6317, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 9, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6316, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 13, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6315, 'advs', 'modLogo', '网站标志', 'member', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6314, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'main', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 11, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6313, 'diy', 'modPic', '图片/FLASH', 'member', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6312, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'main', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6328, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'notice', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6327, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'notice', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6326, 'advs', 'modLogo', '网站标志', 'member', 'notice', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6325, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'notice', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6324, 'diy', 'modPic', '图片/FLASH', 'member', 'notice', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6323, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'notice', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(6350, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'account', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6349, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'account', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6348, 'advs', 'modLogo', '网站标志', 'member', 'account', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6347, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'account', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6346, 'diy', 'modPic', '图片/FLASH', 'member', 'account', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6345, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'account', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6361, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'person', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6360, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'person', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6359, 'advs', 'modLogo', '网站标志', 'member', 'person', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6358, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'person', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6357, 'diy', 'modPic', '图片/FLASH', 'member', 'person', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6356, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'person', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6372, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6371, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'detail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6370, 'advs', 'modLogo', '网站标志', 'member', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6369, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'detail', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6368, 'diy', 'modPic', '图片/FLASH', 'member', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6367, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'detail', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6383, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'contact', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6382, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'contact', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6381, 'advs', 'modLogo', '网站标志', 'member', 'contact', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6380, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'contact', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6379, 'diy', 'modPic', '图片/FLASH', 'member', 'contact', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6378, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'contact', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6394, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'shoporder', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6393, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'shoporder', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6392, 'advs', 'modLogo', '网站标志', 'member', 'shoporder', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6391, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'shoporder', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6390, 'diy', 'modPic', '图片/FLASH', 'member', 'shoporder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6389, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'shoporder', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6405, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'paylist', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6404, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'paylist', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6403, 'advs', 'modLogo', '网站标志', 'member', 'paylist', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6402, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'paylist', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6401, 'diy', 'modPic', '图片/FLASH', 'member', 'paylist', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6400, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'paylist', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6449, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'fav', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 10, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6448, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'fav', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 16, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6447, 'advs', 'modLogo', '网站标志', 'member', 'fav', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6446, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'fav', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 14, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6445, 'diy', 'modPic', '图片/FLASH', 'member', 'fav', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6444, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'fav', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6460, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'comment', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6459, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'comment', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6458, 'advs', 'modLogo', '网站标志', 'member', 'comment', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6457, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'comment', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6456, 'diy', 'modPic', '图片/FLASH', 'member', 'comment', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6455, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'comment', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6471, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'membercent', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6470, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'membercent', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6469, 'advs', 'modLogo', '网站标志', 'member', 'membercent', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6468, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'membercent', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6467, 'diy', 'modPic', '图片/FLASH', 'member', 'membercent', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6466, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'membercent', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5864, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'friends', 'tpl_shop_searchform_jy.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 180, 25, 89, 806, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5863, 'advs', 'modLogo', '网站标志', 'member', 'friends', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 77, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5862, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'friends', 'tpl_shop_smallcart_top.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 462, 30, 28, 528, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5861, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'friends', 'tpl_mainmenu_2031.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 990, 45, 75, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5860, 'diy', 'modPic', '图片/FLASH', 'member', 'friends', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 294, 9, 0, 658, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100113/1263371819.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(5859, 'diy', 'modPic', '图片/FLASH', 'member', 'friends', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 990, 30, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100114/1263433765.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 5, 0, 'hidden', 'bottom', 'block'),
(6482, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'msn', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6481, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'msn', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6480, 'advs', 'modLogo', '网站标志', 'member', 'msn', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6479, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'msn', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6478, 'diy', 'modPic', '图片/FLASH', 'member', 'msn', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6477, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'msn', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6075, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_aboutus', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6074, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_aboutus', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6073, 'advs', 'modLogo', '网站标志', 'page', 'html_aboutus', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6072, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_aboutus', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6071, 'diy', 'modPic', '图片/FLASH', 'page', 'html_aboutus', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6070, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_aboutus', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6086, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_guide', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6085, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_guide', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6084, 'advs', 'modLogo', '网站标志', 'page', 'html_guide', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6083, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_guide', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6082, 'diy', 'modPic', '图片/FLASH', 'page', 'html_guide', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6081, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_guide', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6097, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_payment', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6096, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_payment', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6095, 'advs', 'modLogo', '网站标志', 'page', 'html_payment', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6094, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_payment', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6093, 'diy', 'modPic', '图片/FLASH', 'page', 'html_payment', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6092, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_payment', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6108, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_dev', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6107, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_dev', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6106, 'advs', 'modLogo', '网站标志', 'page', 'html_dev', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6105, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_dev', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6104, 'diy', 'modPic', '图片/FLASH', 'page', 'html_dev', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6103, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_dev', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6119, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_service', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6118, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_service', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6117, 'advs', 'modLogo', '网站标志', 'page', 'html_service', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6116, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_service', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6115, 'diy', 'modPic', '图片/FLASH', 'page', 'html_service', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6114, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_service', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6130, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html_contact', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6129, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html_contact', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6128, 'advs', 'modLogo', '网站标志', 'page', 'html_contact', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6127, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html_contact', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6126, 'diy', 'modPic', '图片/FLASH', 'page', 'html_contact', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6125, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html_contact', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6141, 'menu', 'modBottomMenu', '底部菜单（一级）', 'feedback', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6140, 'shop', 'modShopSearchForm', '商品搜索表单', 'feedback', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6139, 'advs', 'modLogo', '网站标志', 'feedback', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6138, 'shop', 'modShopSmallCart', '购物车提示信息', 'feedback', 'main', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6137, 'diy', 'modPic', '图片/FLASH', 'feedback', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6136, 'menu', 'modMainMenu', '一级导航菜单', 'feedback', 'main', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6152, 'menu', 'modBottomMenu', '底部菜单（一级）', 'job', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6151, 'shop', 'modShopSearchForm', '商品搜索表单', 'job', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6150, 'advs', 'modLogo', '网站标志', 'job', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6149, 'shop', 'modShopSmallCart', '购物车提示信息', 'job', 'main', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6148, 'diy', 'modPic', '图片/FLASH', 'job', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6147, 'menu', 'modMainMenu', '一级导航菜单', 'job', 'main', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(6163, 'menu', 'modBottomMenu', '底部菜单（一级）', 'job', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 8, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6162, 'shop', 'modShopSearchForm', '商品搜索表单', 'job', 'detail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 12, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6161, 'advs', 'modLogo', '网站标志', 'job', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6160, 'shop', 'modShopSmallCart', '购物车提示信息', 'job', 'detail', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 10, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6159, 'diy', 'modPic', '图片/FLASH', 'job', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6158, 'menu', 'modMainMenu', '一级导航菜单', 'job', 'detail', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6020, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 8, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6019, 'shop', 'modShopSearchForm', '商品搜索表单', 'comment', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 12, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6018, 'advs', 'modLogo', '网站标志', 'comment', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6017, 'shop', 'modShopSmallCart', '购物车提示信息', 'comment', 'main', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 10, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6016, 'diy', 'modPic', '图片/FLASH', 'comment', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6015, 'menu', 'modMainMenu', '一级导航菜单', 'comment', 'main', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6031, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'query', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 6, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6030, 'shop', 'modShopSearchForm', '商品搜索表单', 'comment', 'query', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 10, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6029, 'advs', 'modLogo', '网站标志', 'comment', 'query', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6028, 'shop', 'modShopSmallCart', '购物车提示信息', 'comment', 'query', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6027, 'diy', 'modPic', '图片/FLASH', 'comment', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6026, 'menu', 'modMainMenu', '一级导航菜单', 'comment', 'query', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6042, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 6, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6041, 'shop', 'modShopSearchForm', '商品搜索表单', 'comment', 'detail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 10, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6040, 'advs', 'modLogo', '网站标志', 'comment', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6039, 'shop', 'modShopSmallCart', '购物车提示信息', 'comment', 'detail', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6038, 'diy', 'modPic', '图片/FLASH', 'comment', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6037, 'menu', 'modMainMenu', '一级导航菜单', 'comment', 'detail', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6339, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'homepage', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 8, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6338, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'homepage', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 12, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6337, 'advs', 'modLogo', '网站标志', 'member', 'homepage', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6336, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'homepage', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 10, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6335, 'diy', 'modPic', '图片/FLASH', 'member', 'homepage', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6334, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'homepage', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6053, 'menu', 'modBottomMenu', '底部菜单（一级）', 'advs', 'link', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 8, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6052, 'shop', 'modShopSearchForm', '商品搜索表单', 'advs', 'link', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 12, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6051, 'advs', 'modLogo', '网站标志', 'advs', 'link', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6050, 'shop', 'modShopSmallCart', '购物车提示信息', 'advs', 'link', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 10, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6049, 'diy', 'modPic', '图片/FLASH', 'advs', 'link', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6048, 'menu', 'modMainMenu', '一级导航菜单', 'advs', 'link', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6240, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'main', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 4, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6239, 'shop', 'modShopSearchForm', '商品搜索表单', 'news', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 8, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6238, 'advs', 'modLogo', '网站标志', 'news', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6237, 'shop', 'modShopSmallCart', '购物车提示信息', 'news', 'main', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 6, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6236, 'diy', 'modPic', '图片/FLASH', 'news', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6235, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'main', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6251, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'query', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6250, 'shop', 'modShopSearchForm', '商品搜索表单', 'news', 'query', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6249, 'advs', 'modLogo', '网站标志', 'news', 'query', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6248, 'shop', 'modShopSmallCart', '购物车提示信息', 'news', 'query', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6247, 'diy', 'modPic', '图片/FLASH', 'news', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6246, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'query', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6262, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'detail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 8, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6261, 'shop', 'modShopSearchForm', '商品搜索表单', 'news', 'detail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 12, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6260, 'advs', 'modLogo', '网站标志', 'news', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6259, 'shop', 'modShopSmallCart', '购物车提示信息', 'news', 'detail', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 10, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6258, 'diy', 'modPic', '图片/FLASH', 'news', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6257, 'menu', 'modMainMenu', '一级导航菜单', 'news', 'detail', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6064, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6063, 'shop', 'modShopSearchForm', '商品搜索表单', 'page', 'html', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6062, 'advs', 'modLogo', '网站标志', 'page', 'html', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6061, 'shop', 'modShopSmallCart', '购物车提示信息', 'page', 'html', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6060, 'diy', 'modPic', '图片/FLASH', 'page', 'html', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6059, 'menu', 'modMainMenu', '一级导航菜单', 'page', 'html', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6273, 'menu', 'modBottomMenu', '底部菜单（一级）', 'search', 'search', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 6, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6272, 'shop', 'modShopSearchForm', '商品搜索表单', 'search', 'search', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 10, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6271, 'advs', 'modLogo', '网站标志', 'search', 'search', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6270, 'shop', 'modShopSmallCart', '购物车提示信息', 'search', 'search', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6269, 'diy', 'modPic', '图片/FLASH', 'search', 'search', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6268, 'menu', 'modMainMenu', '一级导航菜单', 'search', 'search', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5950, 'diy', 'modPic', '图片/FLASH', 'shop', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(5951, 'shop', 'modShopSmallCart', '购物车提示信息', 'shop', 'main', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 6, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5952, 'advs', 'modLogo', '网站标志', 'shop', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5953, 'shop', 'modShopSearchForm', '商品搜索表单', 'shop', 'main', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 8, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5949, 'menu', 'modMainMenu', '一级导航菜单', 'shop', 'main', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4979, 'huanzeng', 'modHzPaiHang', '赠品兑换排行', 'huanzeng', 'cart', 'tpl_hz_paihang.htm', '-1', 'H010', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 300, 0, 720, 4, 10, 10, 'id', 'desc', 0, 12, '_self', 0, -1, 100, 100, 'fill', '赠品兑换排行', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6220, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'huanzeng', 'startorder', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6219, 'diy', 'modButtomInfo', '底部信息编辑区', 'huanzeng', 'startorder', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6218, 'menu', 'modBottomMenu', '底部菜单（一级）', 'huanzeng', 'startorder', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6217, 'shop', 'modShopSearchForm', '商品搜索表单', 'huanzeng', 'startorder', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6216, 'advs', 'modLogo', '网站标志', 'huanzeng', 'startorder', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6215, 'shop', 'modShopSmallCart', '购物车提示信息', 'huanzeng', 'startorder', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6214, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'startorder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6213, 'menu', 'modMainMenu', '一级导航菜单', 'huanzeng', 'startorder', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4989, 'huanzeng', 'modHzNavPath', '当前位置提示条', 'huanzeng', 'startorder', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 720, 30, 0, 0, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4990, 'huanzeng', 'modHzStartOrder', '赠品兑换', 'huanzeng', 'startorder', 'tpl_hz_startorder.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 720, 587, 35, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '赠品兑换', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4991, 'huanzeng', 'modHzPaiHang', '赠品兑换排行', 'huanzeng', 'startorder', 'tpl_hz_paihang.htm', '-1', 'H010', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 399, 0, 720, 4, 10, 10, 'id', 'desc', 0, 12, '_self', 0, -1, 100, 100, 'fill', '赠品兑换排行', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6231, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'huanzeng', 'orderdetail', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6230, 'diy', 'modButtomInfo', '底部信息编辑区', 'huanzeng', 'orderdetail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6229, 'menu', 'modBottomMenu', '底部菜单（一级）', 'huanzeng', 'orderdetail', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6228, 'shop', 'modShopSearchForm', '商品搜索表单', 'huanzeng', 'orderdetail', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6227, 'advs', 'modLogo', '网站标志', 'huanzeng', 'orderdetail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6226, 'shop', 'modShopSmallCart', '购物车提示信息', 'huanzeng', 'orderdetail', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6225, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'orderdetail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(6224, 'menu', 'modMainMenu', '一级导航菜单', 'huanzeng', 'orderdetail', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5001, 'huanzeng', 'modHzNavPath', '当前位置提示条', 'huanzeng', 'orderdetail', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 720, 30, 0, 0, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(5002, 'huanzeng', 'modHzOrderDetail', '订单详情', 'huanzeng', 'orderdetail', 'tpl_hz_orderdetail.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 720, 528, 35, 0, 2, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(5003, 'huanzeng', 'modHzPaiHang', '赠品兑换排行', 'huanzeng', 'orderdetail', 'tpl_hz_paihang.htm', '-1', 'H010', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 427, 0, 720, 4, 10, 10, 'id', 'desc', 0, 12, '_self', 0, -1, 100, 100, 'fill', '赠品兑换排行', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(6429, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'member', 'hzorder', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 12, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6428, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'hzorder', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(6427, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'hzorder', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 7, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(6426, 'shop', 'modShopSearchForm', '商品搜索表单', 'member', 'hzorder', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 11, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(6425, 'advs', 'modLogo', '网站标志', 'member', 'hzorder', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(6424, 'shop', 'modShopSmallCart', '购物车提示信息', 'member', 'hzorder', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5024, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'hzorder', 'tpl_qqmenu_2.htm', 'F', 'H013', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 253, 0, 0, 2, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6423, 'diy', 'modPic', '图片/FLASH', 'member', 'hzorder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(5033, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'hzorder', 'tpl_navpath.htm', '', '1000', '#4682b4', 0, 'solid', '', 'click', 'none', '#4682b4', '#fff', '#fff', '-1', 740, 30, 0, 210, 1, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '当前位置', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(5036, 'huanzeng', 'modHzMemberOrder', '会员订单查询', 'member', 'hzorder', 'tpl_hz_order.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 740, 190, 35, 210, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '订单查询', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(6422, 'menu', 'modMainMenu', '一级导航菜单', 'member', 'hzorder', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5924, 'shop', 'modShopBrandList', '品牌列表', 'index', 'index', 'tpl_shopbrand_list.htm', '-1', 'A657', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 220, 279, 1015, 0, 31, 0, 3, 'id', 'desc', 0, -1, '_self', 0, -1, 120, 55, 'fill', '热卖品牌', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(5915, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 232, 184, 420, 682, 22, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '8', '', 6, 0, 'hidden', 'content', 'block'),
(5916, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 232, 184, 420, 429, 23, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 7, 0, 'hidden', 'content', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(5918, 'diy', 'modPlusBorder', '空白边框', 'index', 'index', 'tpl_plusborder.htm', '-1', 'A659', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', 'http://', 720, 670, 624, 230, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '新品推荐', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 2, 0, 'hidden', 'content', 'block'),
(5514, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 234, 238, 670, 238, 17, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '5', '', 3, 0, 'hidden', 'content', 'block'),
(5920, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'block', '', '#c25301', '', '{#RP#}shop/class/', 181, 189, 920, 764, 27, 10, 6, 'id', 'desc', 0, 12, '_self', 0, 30, 80, 80, 'fill', '最新商品', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 11, 0, 'hidden', 'content', 'block'),
(5917, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 220, 291, 717, 0, 25, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '4', '', 8, 0, 'hidden', 'content', 'block'),
(5919, 'diy', 'modPlusBorder', '空白边框', 'index', 'index', 'tpl_plusborder.htm', '-1', 'A512', '#dddddd', 1, 'solid', '', 'click', 'block', '', '#000', '#fff', 'http://', 520, 270, 920, 238, 28, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 3, 0, 'hidden', 'content', 'block'),
(5930, 'advs', 'modLogo', '网站标志', 'index', 'index', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5929, 'shop', 'modShopSmallCart', '购物车提示信息', 'index', 'index', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 14, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(5928, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(5927, 'menu', 'modMainMenu', '一级导航菜单', 'index', 'index', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5913, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 372, 242, 230, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263794826.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 10, 0, 'hidden', 'content', 'block'),
(5946, 'menu', 'modTopMenu', '顶部菜单(一级)', 'shop', 'query', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(5947, 'diy', 'modPic', '图片/FLASH', 'shop', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(5948, 'diy', 'modPic', '图片/FLASH', 'shop', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(5958, 'diy', 'modPic', '图片/FLASH', 'shop', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(5959, 'diy', 'modPic', '图片/FLASH', 'shop', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(5968, 'menu', 'modTopMenu', '顶部菜单(一级)', 'shop', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(5969, 'diy', 'modPic', '图片/FLASH', 'shop', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(5970, 'diy', 'modPic', '图片/FLASH', 'shop', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(5979, 'menu', 'modTopMenu', '顶部菜单(一级)', 'shop', 'cart', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(5980, 'diy', 'modPic', '图片/FLASH', 'shop', 'cart', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(5981, 'diy', 'modPic', '图片/FLASH', 'shop', 'cart', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(5990, 'menu', 'modTopMenu', '顶部菜单(一级)', 'shop', 'startorder', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(5991, 'diy', 'modPic', '图片/FLASH', 'shop', 'startorder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(5992, 'diy', 'modPic', '图片/FLASH', 'shop', 'startorder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6001, 'menu', 'modTopMenu', '顶部菜单(一级)', 'shop', 'shoporderpay', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6002, 'diy', 'modPic', '图片/FLASH', 'shop', 'shoporderpay', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6003, 'diy', 'modPic', '图片/FLASH', 'shop', 'shoporderpay', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6012, 'menu', 'modTopMenu', '顶部菜单(一级)', 'shop', 'shoporderdetail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6013, 'diy', 'modPic', '图片/FLASH', 'shop', 'shoporderdetail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6014, 'diy', 'modPic', '图片/FLASH', 'shop', 'shoporderdetail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6023, 'menu', 'modTopMenu', '顶部菜单(一级)', 'comment', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6024, 'diy', 'modPic', '图片/FLASH', 'comment', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6025, 'diy', 'modPic', '图片/FLASH', 'comment', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6034, 'menu', 'modTopMenu', '顶部菜单(一级)', 'comment', 'query', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 12, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6035, 'diy', 'modPic', '图片/FLASH', 'comment', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6036, 'diy', 'modPic', '图片/FLASH', 'comment', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6046, 'diy', 'modPic', '图片/FLASH', 'comment', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6047, 'diy', 'modPic', '图片/FLASH', 'comment', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6056, 'menu', 'modTopMenu', '顶部菜单(一级)', 'advs', 'link', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6057, 'diy', 'modPic', '图片/FLASH', 'advs', 'link', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6058, 'diy', 'modPic', '图片/FLASH', 'advs', 'link', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6067, 'menu', 'modTopMenu', '顶部菜单(一级)', 'page', 'html', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6068, 'diy', 'modPic', '图片/FLASH', 'page', 'html', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6069, 'diy', 'modPic', '图片/FLASH', 'page', 'html', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6078, 'menu', 'modTopMenu', '顶部菜单(一级)', 'page', 'html_aboutus', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6079, 'diy', 'modPic', '图片/FLASH', 'page', 'html_aboutus', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6080, 'diy', 'modPic', '图片/FLASH', 'page', 'html_aboutus', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6089, 'menu', 'modTopMenu', '顶部菜单(一级)', 'page', 'html_guide', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6090, 'diy', 'modPic', '图片/FLASH', 'page', 'html_guide', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6091, 'diy', 'modPic', '图片/FLASH', 'page', 'html_guide', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6100, 'menu', 'modTopMenu', '顶部菜单(一级)', 'page', 'html_payment', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6101, 'diy', 'modPic', '图片/FLASH', 'page', 'html_payment', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6102, 'diy', 'modPic', '图片/FLASH', 'page', 'html_payment', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6111, 'menu', 'modTopMenu', '顶部菜单(一级)', 'page', 'html_dev', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6112, 'diy', 'modPic', '图片/FLASH', 'page', 'html_dev', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6113, 'diy', 'modPic', '图片/FLASH', 'page', 'html_dev', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6122, 'menu', 'modTopMenu', '顶部菜单(一级)', 'page', 'html_service', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6123, 'diy', 'modPic', '图片/FLASH', 'page', 'html_service', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6124, 'diy', 'modPic', '图片/FLASH', 'page', 'html_service', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6133, 'menu', 'modTopMenu', '顶部菜单(一级)', 'page', 'html_contact', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6134, 'diy', 'modPic', '图片/FLASH', 'page', 'html_contact', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6135, 'diy', 'modPic', '图片/FLASH', 'page', 'html_contact', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6144, 'menu', 'modTopMenu', '顶部菜单(一级)', 'feedback', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6145, 'diy', 'modPic', '图片/FLASH', 'feedback', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6146, 'diy', 'modPic', '图片/FLASH', 'feedback', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6155, 'menu', 'modTopMenu', '顶部菜单(一级)', 'job', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6156, 'diy', 'modPic', '图片/FLASH', 'job', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6157, 'diy', 'modPic', '图片/FLASH', 'job', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6166, 'menu', 'modTopMenu', '顶部菜单(一级)', 'job', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6167, 'diy', 'modPic', '图片/FLASH', 'job', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6168, 'diy', 'modPic', '图片/FLASH', 'job', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6177, 'menu', 'modTopMenu', '顶部菜单(一级)', 'huanzeng', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 10, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6178, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6179, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6188, 'menu', 'modTopMenu', '顶部菜单(一级)', 'huanzeng', 'query', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6189, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6190, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6199, 'menu', 'modTopMenu', '顶部菜单(一级)', 'huanzeng', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6200, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6201, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6210, 'menu', 'modTopMenu', '顶部菜单(一级)', 'huanzeng', 'cart', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6211, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'cart', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6212, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'cart', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6221, 'menu', 'modTopMenu', '顶部菜单(一级)', 'huanzeng', 'startorder', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6222, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'startorder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6223, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'startorder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6232, 'menu', 'modTopMenu', '顶部菜单(一级)', 'huanzeng', 'orderdetail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6233, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'orderdetail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6234, 'diy', 'modPic', '图片/FLASH', 'huanzeng', 'orderdetail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6243, 'menu', 'modTopMenu', '顶部菜单(一级)', 'news', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 10, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6244, 'diy', 'modPic', '图片/FLASH', 'news', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6245, 'diy', 'modPic', '图片/FLASH', 'news', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6254, 'menu', 'modTopMenu', '顶部菜单(一级)', 'news', 'query', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6255, 'diy', 'modPic', '图片/FLASH', 'news', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6256, 'diy', 'modPic', '图片/FLASH', 'news', 'query', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6265, 'menu', 'modTopMenu', '顶部菜单(一级)', 'news', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6266, 'diy', 'modPic', '图片/FLASH', 'news', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6267, 'diy', 'modPic', '图片/FLASH', 'news', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6276, 'menu', 'modTopMenu', '顶部菜单(一级)', 'search', 'search', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 12, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6277, 'diy', 'modPic', '图片/FLASH', 'search', 'search', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6278, 'diy', 'modPic', '图片/FLASH', 'search', 'search', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6287, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'login', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 12, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6288, 'diy', 'modPic', '图片/FLASH', 'member', 'login', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6289, 'diy', 'modPic', '图片/FLASH', 'member', 'login', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6298, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'reg', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 12, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6299, 'diy', 'modPic', '图片/FLASH', 'member', 'reg', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6300, 'diy', 'modPic', '图片/FLASH', 'member', 'reg', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6309, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'lostpass', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 12, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6310, 'diy', 'modPic', '图片/FLASH', 'member', 'lostpass', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6311, 'diy', 'modPic', '图片/FLASH', 'member', 'lostpass', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6320, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'main', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 15, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6321, 'diy', 'modPic', '图片/FLASH', 'member', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6322, 'diy', 'modPic', '图片/FLASH', 'member', 'main', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 16, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6331, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'notice', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6332, 'diy', 'modPic', '图片/FLASH', 'member', 'notice', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(6333, 'diy', 'modPic', '图片/FLASH', 'member', 'notice', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6342, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'homepage', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 14, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6343, 'diy', 'modPic', '图片/FLASH', 'member', 'homepage', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6344, 'diy', 'modPic', '图片/FLASH', 'member', 'homepage', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6353, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'account', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6354, 'diy', 'modPic', '图片/FLASH', 'member', 'account', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6355, 'diy', 'modPic', '图片/FLASH', 'member', 'account', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6364, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'person', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6365, 'diy', 'modPic', '图片/FLASH', 'member', 'person', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6366, 'diy', 'modPic', '图片/FLASH', 'member', 'person', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6375, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'detail', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6376, 'diy', 'modPic', '图片/FLASH', 'member', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6377, 'diy', 'modPic', '图片/FLASH', 'member', 'detail', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6386, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'contact', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6387, 'diy', 'modPic', '图片/FLASH', 'member', 'contact', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6388, 'diy', 'modPic', '图片/FLASH', 'member', 'contact', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6397, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'shoporder', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6398, 'diy', 'modPic', '图片/FLASH', 'member', 'shoporder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6399, 'diy', 'modPic', '图片/FLASH', 'member', 'shoporder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6408, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'paylist', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6409, 'diy', 'modPic', '图片/FLASH', 'member', 'paylist', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6410, 'diy', 'modPic', '图片/FLASH', 'member', 'paylist', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6419, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'buylist', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6420, 'diy', 'modPic', '图片/FLASH', 'member', 'buylist', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6421, 'diy', 'modPic', '图片/FLASH', 'member', 'buylist', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6430, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'hzorder', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6431, 'diy', 'modPic', '图片/FLASH', 'member', 'hzorder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6432, 'diy', 'modPic', '图片/FLASH', 'member', 'hzorder', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6441, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'onlinepay', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6442, 'diy', 'modPic', '图片/FLASH', 'member', 'onlinepay', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6443, 'diy', 'modPic', '图片/FLASH', 'member', 'onlinepay', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6452, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'fav', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 19, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6453, 'diy', 'modPic', '图片/FLASH', 'member', 'fav', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6454, 'diy', 'modPic', '图片/FLASH', 'member', 'fav', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 20, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6463, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'comment', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6464, 'diy', 'modPic', '图片/FLASH', 'member', 'comment', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6465, 'diy', 'modPic', '图片/FLASH', 'member', 'comment', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6474, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'membercent', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6475, 'diy', 'modPic', '图片/FLASH', 'member', 'membercent', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6476, 'diy', 'modPic', '图片/FLASH', 'member', 'membercent', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6485, 'menu', 'modTopMenu', '顶部菜单(一级)', 'member', 'msn', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 13, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(6486, 'diy', 'modPic', '图片/FLASH', 'member', 'msn', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6487, 'diy', 'modPic', '图片/FLASH', 'member', 'msn', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(6497, 'diy', 'modPic', '图片/FLASH', 'shop', 'brand', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(6498, 'diy', 'modPic', '图片/FLASH', 'shop', 'brand', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 14, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plusdefault`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plusdefault` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` char(100) NOT NULL default '',
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL default '-1',
  `showborder` char(20) NOT NULL default '1000',
  `bordercolor` varchar(7) NOT NULL default '#4682b4',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#4682b4',
  `barcolor` varchar(10) NOT NULL default '#fff',
  `backgroundcolor` varchar(7) NOT NULL default '#fff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '-1',
  `ord` varchar(100) NOT NULL default '-1',
  `sc` varchar(10) NOT NULL default '-1',
  `showtj` int(5) NOT NULL default '-1',
  `cutword` int(20) NOT NULL default '-1',
  `target` varchar(30) NOT NULL default '-1',
  `catid` int(10) NOT NULL default '-1',
  `cutbody` int(5) NOT NULL default '-1',
  `picw` int(3) NOT NULL default '-1',
  `pich` int(3) NOT NULL default '-1',
  `fittype` varchar(10) NOT NULL default '-1',
  `title` varchar(100) NOT NULL default '',
  `body` text,
  `pic` varchar(255) NOT NULL default '-1',
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL default '-1',
  `movi` varchar(255) NOT NULL default '-1',
  `sourceurl` varchar(20) NOT NULL default '-1',
  `word` varchar(255) NOT NULL default '-1',
  `word1` varchar(255) NOT NULL default '-1',
  `word2` varchar(255) NOT NULL default '-1',
  `word3` char(255) NOT NULL default '-1',
  `word4` char(255) NOT NULL default '-1',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL default '-1',
  `link1` char(255) NOT NULL default '-1',
  `link2` char(255) NOT NULL default '-1',
  `link3` char(255) NOT NULL default '-1',
  `link4` char(255) NOT NULL default '-1',
  `tags` varchar(30) NOT NULL default '-1',
  `groupid` varchar(20) NOT NULL default '-1',
  `projid` varchar(20) NOT NULL default '-1',
  `moveable` int(1) NOT NULL default '1',
  `classtbl` varchar(30) NOT NULL default '',
  `grouptbl` varchar(50) NOT NULL,
  `projtbl` varchar(50) NOT NULL,
  `setglobal` int(5) NOT NULL default '-1',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` varchar(10) NOT NULL default 'block',
  `ifmul` int(1) NOT NULL default '1',
  `ifrefresh` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=350 ;

--
-- 转存表中的数据 `pwn_base_plusdefault`
--

INSERT INTO `pwn_base_plusdefault` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `moveable`, `classtbl`, `grouptbl`, `projtbl`, `setglobal`, `overflow`, `bodyzone`, `display`, `ifmul`, `ifrefresh`) VALUES
(17, 'advs', 'modLogo', '网站标志', 'all', 'all', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 150, 60, 20, 20, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '网站标志', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_logo', '', 1, 'hidden', 'top', 'block', 0, 0),
(25, 'advs', 'modLinkPic', '图片友情链接', 'all', 'all', 'tpl_linkpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 650, 100, 0, 0, 90, 10, 6, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(26, 'advs', 'modLinkText', '文字友情链接', 'all', 'all', 'tpl_link.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 650, 100, 0, 0, 90, 10, 12, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(31, 'advs', 'modAdvsLb', '图片轮播广告', 'all', 'all', 'tpl_advslb.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 320, 280, 200, 200, 90, 0, 5, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '轮播广告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_lbgroup', '', -1, 'hidden', 'content', 'block', 0, 1),
(32, 'advs', 'modAdvsPic', '页内图片广告', 'all', 'all', 'tpl_advspic.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 565, 95, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'content', 'block', 1, 0),
(199, 'effect', 'modHeadBgSource', '头部效果图素材', 'all', 'all', 'tpl_headbg.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头部效果图', '-1', '-1', '-1', '-1', '-1', 'head/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(34, 'advs', 'modAdvsText', '文字广告（静态）', 'all', 'all', 'tpl_advstext.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 30, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_text', '', -1, 'hidden', 'content', 'block', 1, 0),
(35, 'advs', 'modAdvsMovi', 'FLASH视频广告', 'all', 'all', 'tpl_movi.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 300, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '视频播放', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_movi', '', -1, 'hidden', 'content', 'block', 1, 0),
(48, 'advs', 'modAdvsFloat', '图片广告（飘动）', 'all', 'all', 'tpl_advs_float.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 100, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(49, 'advs', 'modAdvsDuilian', '对联广告', 'all', 'all', 'tpl_advs_duilian.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 220, 130, 6, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_duilian', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(50, 'advs', 'modAdvsZimu', '文字广告（字幕）', 'all', 'all', 'tpl_advszimu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 30, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_text', '', -1, 'hidden', 'content', 'block', 1, 0),
(51, 'advs', 'modAdvsFixed', '图片广告（悬浮）', 'all', 'all', 'tpl_advs_fixed.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 100, 100, 350, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'bodyex', 'block', 0, 0),
(61, 'advs', 'modLinkNavPath', '当前位置提示条', 'advs', 'link', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(89, 'advs', 'modAdvsCode', '广告代码', 'all', 'all', 'tpl_advscode.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 250, 250, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '请在此插入广告代码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 1),
(18, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'all', 'tpl_comment_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '点评搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(21, 'comment', 'modCommentList', '最新点评（列表）', 'all', 'all', 'tpl_commentlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php', 300, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '最新点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(22, 'comment', 'modCommentQuery', '点评检索', 'comment', 'query', 'tpl_comment_query.htm', '-1', '1000', '#def', 1, 'solid', '', '', 'none', '#def', '#fff', '#fff', '-1', 750, 300, 35, 0, 90, 0, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '点评检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(23, 'comment', 'modCommentClass', '点评分类', 'all', 'all', 'tpl_comment_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '点评分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(24, 'comment', 'modCommentContent', '点评详情', 'comment', 'detail', 'tpl_comment_content.htm', '-1', '1000', '#def', 0, 'solid', '', '', 'none', '#def', '#fff', '#fff', '-1', 750, 500, 35, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '点评详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(56, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(151, 'comment', 'modMemberCommentList', '会员最新点评', 'member', 'homepage', 'tpl_membercommentlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?mid={#mid#}', 380, 170, 0, 0, 90, 12, 5, '-1', '-1', 0, 20, '_self', -1, -1, -1, -1, '-1', '我的点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(164, 'comment', 'modCommentHot30', '本月点评点击榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=cl', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月点击榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(165, 'comment', 'modCommentHot7', '本周点评点击榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=cl', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本周点击榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(166, 'comment', 'modCommentRq30', '本月点评人气榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=backcount', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(167, 'comment', 'modCommentRq7', '本周点评人气榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=backcount', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本周人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(9, 'diy', 'modEdit', 'HTML编辑区', 'all', 'all', 'tpl_edit.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定内容', '请输入内容', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(27, 'diy', 'modButtomInfo', '底部信息编辑区', 'all', 'all', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 900, 120, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '脚注信息', '请输入内容', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(47, 'diy', 'modText', '多行文字', 'all', 'all', 'tpl_text.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '多行文字', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '请输入自定义文字', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(53, 'diy', 'modPic', '图片/FLASH', 'all', 'all', 'tpl_pic.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 200, 0, 0, 90, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片', '-1', '', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(74, 'diy', 'modWords', '单行文字', 'all', 'all', 'tpl_words.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '单行文字', '-1', '-1', '-1', '-1', '-1', '-1', '请输入文字', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(75, 'diy', 'modPicWordText', '图片+标题+介绍', 'all', 'all', 'tpl_picwordtext.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 250, 90, 30, 300, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, 100, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题文字', '-1', '-1', '-1', '-1', '请输入介绍文字', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(76, 'diy', 'modPicWord', '图片+标题', 'all', 'all', 'tpl_picword.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 200, 250, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(184, 'news', 'modNewsPicMemo', '文章图片+标题+摘要', 'all', 'all', 'tpl_newspicmemo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 300, 320, 0, 0, 99, 5, 3, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 12, '_self', 0, 35, 80, 80, 'fill', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(86, 'diy', 'modPlusBorder', '空白边框', 'all', 'all', 'tpl_plusborder.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 300, 0, 0, 1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '空白边框', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(87, 'diy', 'modColorZone', '空白色块', 'all', 'all', 'tpl_colorzone.htm', '-1', '1000', '#e10000', 1, 'solid', '', '', 'none', '', '', '#e10000', '-1', 200, 200, 30, 30, 1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(63, 'effect', 'modJIanFan', '动态简繁转换', 'all', 'all', 'tpl_jianfan.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '', '-1', 150, 50, 30, 700, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '简繁转换', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(64, 'effect', 'modNowDate', '当前日期时间', 'all', 'all', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 30, 10, 600, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前日期时间', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(65, 'effect', 'modMouseClock', '鼠标时钟特效', 'all', 'all', 'tpl_mouseclock.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 150, 150, 300, 10, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(90, 'effect', 'modTraFlash', '透明flash特效', 'all', 'all', 'tpl_flash1.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 500, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(6, 'index', 'modIndexNavPath', '当前位置提示条', 'index', 'index', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(30, 'member', 'modLoginForm', '会员登录表单', 'all', 'all', 'tpl_loginform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(37, 'member', 'modMemberReg', '会员注册', 'member', 'reg', 'tpl_reg.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 750, 390, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员注册', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(43, 'member', 'modMemberLogin', '会员登录表单(大)', 'member', 'login', 'tpl_member_login.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 650, 300, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(45, 'member', 'modResetPass', '重设密码向导', 'member', 'lostpass', 'tpl_resetpass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 250, 0, 0, 90, 30, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '重设密码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(57, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(103, 'member', 'modMemberInfo', '会员登录信息', 'member', 'main', 'tpl_memberinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 300, 250, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(104, 'member', 'modMemberNotice', '会员公告(列表)', 'member', 'main', 'tpl_member_notice.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 200, 0, 0, 99, 12, 5, '-1', '-1', -1, 25, '_self', -1, -1, -1, -1, '-1', '会员公告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(106, 'member', 'modMemberAccount', '登录账号设置表单', 'member', 'account', 'tpl_member_account.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 200, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '登录帐号设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(107, 'member', 'modMemberPerson', '头像签名设置表单', 'member', 'person', 'tpl_member_person.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 390, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头像签名设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(108, 'member', 'modMemberDetail', '个人资料修改表单', 'member', 'detail', 'tpl_member_detail.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 500, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '个人资料修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(109, 'member', 'modMemberContact', '联系信息设置表单', 'member', 'contact', 'tpl_member_contact.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 390, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '联系信息设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(110, 'member', 'modMemberNoticeContent', '会员公告详情', 'member', 'notice', 'tpl_member_notice_content.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员公告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(139, 'member', 'modMemberFav', '我的收藏夹', 'member', 'fav', 'tpl_member_fav.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的收藏夹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(140, 'member', 'modMemberFriends', '我的好友', 'member', 'friends', 'tpl_member_friends.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的好友', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(141, 'member', 'modMemberComment', '我的点评', 'member', 'comment', 'tpl_member_comment.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(142, 'member', 'modMemberMsn', '我的站内短信', 'member', 'msn', 'tpl_member_msn.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的站内短信', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(147, 'member', 'modMemberCentInfo', '会员积分信息', 'member', 'main', 'tpl_centinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 300, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员积分', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(148, 'member', 'modMemberCentLog', '会员积分查询', 'member', 'membercent', 'tpl_member_centlog.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的积分', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(153, 'member', 'modMemberIntro', '会员简介', 'member', 'homepage', 'tpl_member_intro.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员简介', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(154, 'member', 'modMemberHomeInfo', '会员信息', 'member', 'homepage', 'tpl_member_homeinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 210, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(14, 'menu', 'modChannelMenu', '二级导航菜单', 'all', 'all', 'tpl_channelmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 65, 120, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(16, 'menu', 'modBottomMenu', '底部菜单（一级）', 'all', 'all', 'tpl_bottommenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 28, 0, 0, 90, 0, 10, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '脚注栏目', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(67, 'menu', 'modDropDownMenu', '二级下拉菜单', 'all', 'all', 'tpl_dropdownmenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 28, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(66, 'menu', 'modTopMenu', '顶部菜单(一级)', 'all', 'all', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 350, 30, 5, 500, 90, 0, 10, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '顶部菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(68, 'menu', 'modMainMenu', '一级导航菜单', 'all', 'all', 'tpl_mainmenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 30, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(115, 'menu', 'modTreeMenu', '树形导航菜单', 'all', 'all', 'tpl_treemenu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'visible', 'content', 'block', 0, 1),
(116, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'all', 'tpl_qqmenu.htm', 'A', '1000', '#def', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员中心', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(1, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'all', 'tpl_newsquery.htm', '-1', 'A010', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 600, 500, 30, 200, 90, 10, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '文章检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(2, 'news', 'modNewsClass', '文章一级分类', 'all', 'all', 'tpl_newsclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(3, 'news', 'modNewsTreeClass', '文章分类（树形）', 'all', 'all', 'tpl_classtree.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 1),
(4, 'news', 'modNewsProjList', '相关文章(同专题)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(5, 'news', 'modNewsAuthorList', '相关文章(同发布人)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(7, 'news', 'modNewsClassFc', '文章逐级分类', 'news', 'query', 'tpl_newsclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(8, 'news', 'modNewsList', '文章列表', 'all', 'all', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/', 200, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 12, '_self', 0, 50, -1, -1, '-1', '最新文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(12, 'news', 'modNewsContent', '文章正文', 'news', 'detail', 'tpl_newscontent.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 630, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章正文', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(13, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'all', 'tpl_news_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(20, 'news', 'modNewsComment', '文章点评', 'news', 'detail', 'tpl_news_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 630, 300, 300, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '文章评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(55, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(72, 'news', 'modNewsProject', '文章专题名称列表', 'all', 'all', 'tpl_newsproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(82, 'news', 'modNewsPic', '文章图片+标题', 'all', 'all', 'tpl_newspic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 99, 5, 4, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 6, '_self', 0, -1, 160, 120, 'fill', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(88, 'news', 'modNewsHot', '文章人气榜', 'all', 'all', 'tpl_newshot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '文章人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(112, 'news', 'modNewsFabu', '文章发布表单', 'member', 'newsfabu', 'tpl_news_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(113, 'news', 'modNewsGl', '文章管理', 'member', 'newsgl', 'tpl_news_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(114, 'news', 'modNewsModify', '文章修改表单', 'member', 'newsmodify', 'tpl_news_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(136, 'news', 'modNewsMyCat', '文章分类管理', 'member', 'newscat', 'tpl_news_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(149, 'news', 'modMemberNewsList', '会员最新文章', 'member', 'homepage', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/membernews.php?mid={#mid#}', 380, 170, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 20, '_self', -1, -1, -1, -1, '-1', '我的文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(155, 'news', 'modMemberNewsClass', '会员文章分类', 'news', 'membernews', 'tpl_membernews_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(156, 'news', 'modMemberNewsQuery', '会员文章检索', 'news', 'membernews', 'tpl_newsquery.htm', '-1', 'A010', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 300, 30, 220, 90, 10, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '会员文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(157, 'news', 'modMemberNewsSearchForm', '会员文章搜索', 'news', 'membernews', 'tpl_membernews_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(58, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(62, 'page', 'modPageContent', '网页内容详情', 'page', 'all', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 350, 30, 220, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '内容标题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(70, 'page', 'modPageTitleList', '网页标题(列表)', 'all', 'all', 'tpl_pagelist.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 10, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '内容标题列表', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(71, 'page', 'modPageContentFy', '网页内容翻页', 'page', 'all', 'tpl_page_fy.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 50, 30, 220, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '翻页', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(73, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'all', 'all', 'tpl_page_titlemenu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 0, 10, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '内容标题菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(29, 'search', 'modSearch', '全站搜索结果', 'search', 'search', 'tpl_search.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 600, 30, 0, 90, 0, -1, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '全站搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(46, 'search', 'modSearchForm', '全站搜索表单', 'all', 'all', 'tpl_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '全站搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(59, 'search', 'modSearchNavPath', '当前位置提示条', 'search', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(28, 'tools', 'modShowCount', '访问统计', 'all', 'all', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 150, 30, 100, 300, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '访问统计', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(54, 'tools', 'modVote', '投票调查', 'all', 'all', 'tpl_vote.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 250, 200, 200, 90, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '投票调查', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_tools_pollindex', '', -1, 'hidden', 'content', 'block', 0, 0),
(320, 'shop', 'modShopBrandQuery', '品牌检索', 'shop', 'brandquery', 'tpl_shop_brandquery.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 10, '-1', '-1', -1, -1, '_self', -1, -1, 100, 40, 'fill', '品牌检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(169, 'news', 'modNewsHot30', '本月文章人气榜', 'all', 'all', 'tpl_newshot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(172, 'news', 'modNewsSameTagList', '相关文章(同标签)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(319, 'shop', 'modShopSmallCart', '购物车提示信息', 'all', 'all', 'tpl_shop_smallcart.htm', '-1', 'A001', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 180, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '购物车', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(176, 'diy', 'modDiyMovi', 'FLASH视频', 'all', 'all', 'tpl_diymovi.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 300, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '视频', '-1', '-1', '-1', '-1', '请输入FLASH视频来源网址', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(175, 'advs', 'modLinkOpt', '下拉式友情链接', 'all', 'all', 'tpl_linkopt.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 200, 50, 0, 0, 90, 10, 12, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0);
INSERT INTO `pwn_base_plusdefault` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `moveable`, `classtbl`, `grouptbl`, `projtbl`, `setglobal`, `overflow`, `bodyzone`, `display`, `ifmul`, `ifrefresh`) VALUES
(204, 'member', 'modMemberRank3', '会员悬赏榜(积分三)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员悬赏榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(205, 'member', 'modMemberRank4', '会员金币榜(积分四)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员金币榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(206, 'member', 'modMemberRank5', '消费积分榜(积分五)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '消费积分榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(207, 'member', 'modMemberTags', '会员推荐(标签)', 'all', 'all', 'tpl_membertags.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 2, '-1', '-1', -1, -1, '_self', -1, -1, 70, 70, '-1', '会员推荐', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(203, 'member', 'modMemberRank2', '会员人气榜(积分二)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(202, 'member', 'modMemberRank1', '会员经验榜(积分一)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员经验榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(182, 'diy', 'modWordTT', '标题+链接组', 'all', 'all', 'tpl_wordtt.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 70, 0, 0, 99, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '今日头条', '-1', '-1', '-1', '-1', '-1', '-1', '请输入头条标题文字', '自定义链接文字一', '自定义链接文字二', '自定义链接文字三', '自定义链接文字四', '-1', '-1', '-1', 'http://', 'http://', 'http://', 'http://', 'http://', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(183, 'diy', 'modWordText', '标题+介绍', 'all', 'all', 'tpl_wordtext.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 100, 0, 0, 99, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '插件标题', '-1', '-1', '-1', '-1', '-1', '-1', '请输入标题文字', '-1', '-1', '-1', '-1', '请输入介绍文字', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(187, 'news', 'modNewsPicRollx3', '三图轮播特效', 'all', 'all', 'tpl_newspicrollx3.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 700, 270, 0, 200, 99, 0, -1, '-1', '-1', 0, 12, '_self', 0, 25, -1, -1, '-1', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 0, 1),
(189, 'diy', 'modPicWords', '图片+标题组', 'all', 'all', 'tpl_picwordx5.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 120, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, 100, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题', '请输入标题', '请输入标题', '请输入标题', '请输入标题', '-1', '-1', '-1', 'http://', 'http://', 'http://', 'http://', 'http://', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(190, 'effect', 'modButtonSource', '按钮素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 80, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '按钮素材', '-1', '-1', '-1', '-1', '-1', 'button/01.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(191, 'effect', 'modIconSource', '图标素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 50, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图标素材', '-1', '-1', '-1', '-1', '-1', 'icon/01.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(193, 'effect', 'modSmallIcon', '小图标素材', 'all', 'all', 'tpl_smallicon.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 50, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图标素材', '-1', '-1', '-1', '-1', '-1', 'smallicon/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(198, 'effect', 'modBgSource', '背景图片素材', 'all', 'all', 'tpl_bgsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 100, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '背景素材', '-1', '-1', '-1', '-1', '-1', 'bg/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(195, 'effect', 'modSourceCoolLine', '分割线装饰素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 100, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '分割线素材', '-1', '-1', '-1', '-1', '-1', 'coolline/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(196, 'effect', 'modCartonSource', '其他图片素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '卡通图片', '-1', '-1', '-1', '-1', '-1', 'carton/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(200, 'diy', 'modGroupLable', '标签切换边框', 'all', 'all', 'tpl_plusborder.htm', '-1', 'A201', '', 0, 'solid', '', '', 'none', '', '#fff', '#fff', 'http://', 300, 300, 0, 0, 0, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自动标签', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(208, 'effect', 'modHeaderBg', '头部背景图素材', 'all', 'all', 'tpl_bgsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头部背景素材', '-1', '-1', '-1', '-1', '-1', 'bg/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(209, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'all', 'all', 'tpl_flash1.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(210, 'diy', 'modBgSound', '网页背景音乐(mid)', 'all', 'all', 'tpl_bgsound.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 50, 350, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '背景音乐', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(211, 'news', 'modNewsSameClass', '文章同级分类', 'news', 'query', 'tpl_newsclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(318, 'shop', 'modShopOrderSearch', '非会员订单查询', 'all', 'all', 'tpl_shop_ordersearch.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 150, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '订单查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(214, 'diy', 'modHeadPic', '头部自定义效果图', 'all', 'all', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片', '-1', '', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(219, 'diy', 'modDiyTemp', '自定义模版', 'all', 'all', 'tpl_diy.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 300, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定模版', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(220, 'news', 'modNewsTwoClass', '文章二级分类', 'all', 'all', 'tpl_newstwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(317, 'shop', 'modShopOrderDetail', '订单详情', 'shop', 'shoporderdetail', 'tpl_shop_orderdetail.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(316, 'shop', 'modShopMemberOrder', '会员订单查询', 'member', 'shoporder', 'tpl_shop_order.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '订单查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(315, 'shop', 'modShopOrderPay', '订单付款', 'shop', 'shoporderpay', 'tpl_shop_orderpay.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(314, 'shop', 'modShopStartOrder', '商品订购', 'shop', 'startorder', 'tpl_shop_startorder.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '商品订购', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(313, 'shop', 'modShopBrandGoodsQuery', '品牌相关商品检索', 'shop', 'branddetail', 'tpl_shop_query_1.htm', '-1', 'A001', '', 1, 'solid', '', '', 'block', '', '', '#fff', '-1', 650, 350, 0, 0, 90, 15, 10, 'id|xuhao|dtime|uptime|bn|prop1|prop2|price0|price|cl', 'desc', 0, 12, '_self', -1, 30, 100, 100, 'fill', '品牌商品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(312, 'shop', 'modShopBrandDetail', '品牌介绍', 'shop', 'branddetail', 'tpl_shop_branddetail.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '品牌介绍', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(311, 'shop', 'modShopBrandClass', '品牌商品一级分类', 'all', 'branddetail', 'tpl_shopclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '品牌商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(310, 'shop', 'modShopBrandTwoClass', '品牌商品二级分类', 'all', 'branddetail', 'tpl_shoptwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '品牌商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(309, 'shop', 'modShopSaleList', '热卖商品排行榜', 'all', 'all', 'tpl_shop_hotlist.htm', '-1', 'A001', '', 1, 'solid', '', '', 'none', '', '', '#fff', '{#RP#}shop/class/', 300, 350, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '热卖商品排行榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(308, 'shop', 'modShopHotList', '热门商品排行榜', 'all', 'all', 'tpl_shop_hotlist.htm', '-1', 'A001', '', 1, 'solid', '', '', 'none', '', '', '#fff', '{#RP#}shop/class/', 300, 350, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '热门商品排行榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(307, 'shop', 'modShopSameTagList', '同标签相关商品', 'shop', 'detail', 'tpl_shoplist.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', -1, -1, 100, 100, 'fill', '相关商品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(306, 'shop', 'modShopComment', '商品点评', 'shop', 'detail', 'tpl_shop_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 650, 350, 350, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '商品评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(305, 'shop', 'modShopSameClass', '商品同级分类', 'shop', 'query', 'tpl_shopclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(303, 'shop', 'modShopSearchForm', '商品搜索表单', 'all', 'all', 'tpl_shop_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '商品搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(304, 'shop', 'modShopClassFc', '商品逐级分类', 'shop', 'query', 'tpl_shopclass.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 5, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(301, 'shop', 'modShopCart', '购物车', 'shop', 'cart', 'tpl_shop_cart.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '购物车', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(302, 'shop', 'modShopList', '自选商品列表', 'all', 'all', 'tpl_shoplist.htm', '-1', 'A001', '', 1, 'solid', '', '', 'none', '', '', '#fff', '{#RP#}shop/class/', 300, 350, 0, 0, 90, 10, 6, 'id|xuhao|dtime|uptime|prop1|prop2|price0|price|cl', 'desc', 0, 12, '_self', 0, 30, 80, 80, 'fill', '最新商品', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(300, 'shop', 'modShopTwoClass', '商品二级分类', 'all', 'all', 'tpl_shoptwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(299, 'shop', 'modShopClass', '商品一级分类', 'all', 'all', 'tpl_shopclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '商品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(298, 'shop', 'modShopContent', '商品详情', 'shop', 'detail', 'tpl_shop_content.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 350, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '商品详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(297, 'shop', 'modShopBrandAll', '分类品牌列表', 'shop', 'brand', 'tpl_shop_brandall.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, -1, '-1', '-1', 0, -1, '_self', -1, -1, 100, 40, 'fill', '品牌查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(296, 'shop', 'modShopGlobalQuery', '全站翻页商品列表', 'all', 'all', 'tpl_shop_query_1.htm', '-1', 'A001', '', 1, 'solid', '', '', 'block', '', '', '#fff', '-1', 650, 350, 0, 0, 90, 15, 10, 'id|xuhao|dtime|uptime|bn|prop1|prop2|price0|price|cl', 'desc', 0, 12, '_self', 0, -1, 100, 100, 'fill', '商品列表', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_shop_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(295, 'shop', 'modShopQuery', '商品检索搜索', 'shop', 'query', 'tpl_shop_query.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 220, 90, 5, 10, '-1', '-1', -1, 30, '_self', -1, 30, 100, 100, 'fill', '商品检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'visible', 'content', 'block', 0, 1),
(294, 'shop', 'modShopNavPath', '当前位置提示条', 'shop', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(246, 'menu', 'modVMenu', '竖式导航菜单', 'all', 'all', 'tpl_vmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 300, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'content', 'block', 0, 0),
(247, 'menu', 'modMVMenu', '手风琴式二级菜单', 'all', 'all', 'tpl_mvmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 180, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', -1, 'visible', 'content', 'block', 0, 1),
(255, 'news', 'modNewsPicLb', '文章图片轮播', 'all', 'all', 'tpl_newspic_lb.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 280, 0, 0, 99, 1, 5, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 15, '-1', 0, -1, -1, -1, '-1', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 1),
(256, 'diy', 'modDiyHeadTraFlash', '头部自定义透明FLASH', 'all', 'all', 'tpl_diyheadtraflash.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(257, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'all', 'all', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 200, 0, 0, 90, 0, 5, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_lbgroup', '', 1, 'hidden', 'top', 'block', 0, 1),
(258, 'page', 'modPagePicList', '标题+摘要+主题图', 'all', 'all', 'tpl_page_piclist.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 0, 0, 90, 0, 10, '-1', '-1', -1, 15, '_self', -1, 50, 120, 90, 'fill', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(259, 'tools', 'modToolsPhotoPollQuery', '图片投票翻页检索', 'all', 'all', 'tpl_tools_photopoll_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 20, 'id|uptime|votes', '-1', -1, 30, '-1', 0, -1, 80, 80, 'fill', '图片投票检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_tools_photopollindex', '', '', -1, 'visible', 'content', 'block', 0, 1),
(260, 'tools', 'modToolsQqCs', 'QQ客服', 'all', 'all', 'tpl_tools_qqcs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 120, 300, 100, 20, 90, 0, -1, '-1', '-1', 0, -1, '-1', -1, -1, -1, -1, '-1', 'QQ客服', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(261, 'tools', 'modToolsWyCs', '51客服', 'all', 'all', 'tpl_tools_wycs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 120, 100, 0, 90, 0, -1, '-1', '-1', 0, -1, '-1', -1, -1, -1, -1, '-1', '51客服', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(262, 'tools', 'modToolsStatistics', '统计代码插件', 'all', 'all', 'tpl_tools_statistics.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 30, 30, 50, 400, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '统计代码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bottom', 'block', 0, 0),
(263, 'tools', 'modToolsYdCs', '移动短信留言', 'all', 'all', 'tpl_tools_ydcs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 400, 350, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '移动短信留言板', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(264, 'member', 'modMemberPayList', '会员付款记录', 'member', 'paylist', 'tpl_member_paylist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '付款记录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(265, 'member', 'modMemberBuyList', '会员消费记录', 'member', 'buylist', 'tpl_member_buylist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '消费记录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(266, 'job', 'modJobQuery', '职位翻页检索', 'all', 'all', 'tpl_jobquery.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#ffffff', '-1', 650, 350, 0, 0, 90, 15, 10, '-1', '-1', -1, 30, '_self', -1, 100, -1, -1, '-1', '职位查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(267, 'job', 'modJobList', '最新职位列表', 'all', 'all', 'tpl_joblist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}job/', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新职位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(268, 'job', 'modJobContent', '职位信息详情', 'job', 'detail', 'tpl_jobcontent.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 630, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '职位信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(269, 'job', 'modJobSearchForm', '职位搜索表单', 'job', 'all', 'tpl_job_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '职位搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(270, 'job', 'modJobNavPath', '当前位置提示条', 'job', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(271, 'job', 'modJobForm', '应聘申请表单', 'job', 'detail', 'tpl_job_form.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#f5f5f5', '#505050', '#fff', '-1', 650, 500, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '应聘申请', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(321, 'shop', 'modShopTwoClassBrand', '分类品牌组合查询', 'all', 'all', 'tpl_shoptwoclass_brand.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 180, 300, 0, 0, 90, 0, -1, '-1', '-1', 0, -1, '_self', -1, -1, 140, 50, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_shop_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(322, 'feedback', 'modFeedBackNavPath', '当前位置提示条', 'feedback', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(323, 'feedback', 'modFeedBackForm', '留言反馈表单', 'feedback', 'all', 'tpl_feedback_form.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 50, 220, 90, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '留言反馈', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_feedback_group', '', -1, 'visible', 'content', 'block', 0, 0),
(324, 'feedback', 'modFeedBackSmallForm', '全站留言表单', 'all', 'all', 'tpl_feedback_smallform.htm', '-1', 'A001', '', 1, 'solid', '', '', 'none', '', '', '', '-1', 650, 500, 0, 0, 90, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '给我留言', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_feedback_group', '', 1, 'hidden', 'content', 'block', 0, 0),
(293, 'member', 'modMemberOnlinePay', '帐户在线充值', 'member', 'onlinepay', 'tpl_member_onlinepay.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '帐户在线充值', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(325, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'all', 'all', 'tpl_memberlogininfo.htm', '-1', '1000', '#4682b4', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 34, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'top', 'block', 0, 0),
(326, 'news', 'modNewsListDiy', '自定文章列表', 'all', 'all', 'tpl_newslist_diy.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/', 200, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, 50, -1, -1, '-1', '最新文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(327, 'shop', 'modShopBrandList', '品牌列表', 'all', 'all', 'tpl_shopbrand_list.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', 'shop/brand.php', 180, 300, 0, 0, 90, 0, 10, '-1', '-1', 0, -1, '_self', -1, -1, 140, 50, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(349, 'huanzeng', 'modHzTwoClass', '赠品二级分类', 'all', 'all', 'tpl_hztwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '赠品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_hz_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(348, 'huanzeng', 'modHzClass', '赠品一级分类', 'all', 'all', 'tpl_hzclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '赠品分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_hz_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(347, 'huanzeng', 'modHzMemberOrder', '会员订单查询', 'member', 'hzorder', 'tpl_hz_order.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '订单查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(346, 'huanzeng', 'modHzOrderDetail', '订单详情', 'huanzeng', 'orderdetail', 'tpl_hz_orderdetail.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(345, 'huanzeng', 'modHzStartOrder', '赠品兑换', 'huanzeng', 'startorder', 'tpl_hz_startorder.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '赠品兑换', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(344, 'huanzeng', 'modHzCart', '购物车', 'huanzeng', 'cart', 'tpl_hz_cart.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 680, 500, 30, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '购物车', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(343, 'huanzeng', 'modHzPaiHang', '赠品兑换排行', 'huanzeng', 'all', 'tpl_hz_paihang.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '赠品兑换排行', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_hz_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(342, 'huanzeng', 'modHzDetail', '赠品详情', 'huanzeng', 'detail', 'tpl_hz_detail.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 350, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '赠品详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_hz_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(341, 'huanzeng', 'modHzQuery', '赠品检索搜索', 'huanzeng', 'query', 'tpl_hz_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 20, '-1', '-1', -1, 30, '_self', -1, 30, 120, 120, 'fill', '赠品检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_hz_cat', '', '', -1, 'visible', 'content', 'block', 0, 1),
(340, 'huanzeng', 'modHzSearchForm', '赠品搜索表单', 'huanzeng', 'all', 'tpl_hz_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '赠品搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_hz_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(339, 'huanzeng', 'modHzNavPath', '当前位置提示条', 'huanzeng', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_hz_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plusplan`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plusplan` (
  `id` int(12) NOT NULL auto_increment,
  `planid` int(6) NOT NULL default '0',
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL default '0',
  `bordercolor` varchar(7) NOT NULL default '#dddddd',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#cccccc',
  `barcolor` varchar(10) NOT NULL default '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL default '#ffffff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '0',
  `ord` varchar(100) NOT NULL default 'id',
  `sc` varchar(10) NOT NULL default 'desc',
  `showtj` int(5) NOT NULL default '0',
  `cutword` int(20) default '0',
  `target` varchar(30) default '0',
  `catid` int(100) NOT NULL default '0',
  `cutbody` int(5) NOT NULL default '0',
  `picw` int(3) NOT NULL default '100',
  `pich` int(3) NOT NULL default '100',
  `fittype` char(10) NOT NULL default 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL default '',
  `word4` char(255) NOT NULL default '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL default '',
  `link2` char(255) NOT NULL default '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL default '',
  `projid` varchar(20) NOT NULL default '',
  `modno` int(3) NOT NULL default '0',
  `setglobal` int(5) NOT NULL default '0',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=748 ;

--
-- 转存表中的数据 `pwn_base_plusplan`
--

INSERT INTO `pwn_base_plusplan` (`id`, `planid`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(741, 49, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 220, 291, 717, 0, 25, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '4', '', 8, 0, 'hidden', 'content', 'block'),
(739, 49, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 234, 238, 670, 238, 17, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '5', '', 3, 0, 'hidden', 'content', 'block'),
(740, 49, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'block', '', '#c25301', '', '{#RP#}shop/class/', 181, 189, 920, 764, 27, 10, 6, 'id', 'desc', 0, 12, '_self', 0, 30, 80, 80, 'fill', '最新商品', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 11, 0, 'hidden', 'content', 'block'),
(738, 49, 'diy', 'modPlusBorder', '空白边框', 'index', 'index', 'tpl_plusborder.htm', '-1', 'A659', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', 'http://', 720, 670, 624, 230, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '新品推荐', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 2, 0, 'hidden', 'content', 'block'),
(737, 49, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 232, 184, 420, 429, 23, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 7, 0, 'hidden', 'content', 'block'),
(736, 49, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 232, 184, 420, 682, 22, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 6, 0, 'hidden', 'content', 'block'),
(735, 49, 'shop', 'modShopBrandList', '品牌列表', 'index', 'index', 'tpl_shopbrand_list.htm', '-1', 'A657', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 220, 279, 1015, 0, 31, 0, 3, 'id', 'desc', 0, -1, '_self', 0, -1, 120, 55, 'fill', '热卖品牌', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(734, 49, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '{#RP#}shop/class/', 504, 253, 930, 248, 29, 0, 4, 'id', 'desc', 0, 12, '_self', 0, 30, 114, 114, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 12, 0, 'hidden', 'content', 'block'),
(733, 49, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 160, 58, 1122, 778, 26, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '6', '', 9, 0, 'hidden', 'content', 'block'),
(732, 49, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 410, 110, 299, 251, 24, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 5, 0, 'hidden', 'content', 'block'),
(731, 49, 'news', 'modNewsListDiy', '自定文章列表', 'index', 'index', 'tpl_newslist_diy.htm', '-1', 'A658', '', 0, 'solid', '', 'click', 'none', '', '', '', '{#RP#}news/class/?2.html', 260, 165, 0, 690, 6, 8, 5, 'id', 'desc', 0, 17, '_self', 1, 50, -1, -1, 'fill', '商城公告', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(730, 49, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 690, 80, 1198, 242, 30, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '7', '', 10, 0, 'hidden', 'content', 'block'),
(729, 49, 'menu', 'modMainMenu', '一级导航菜单', 'index', 'index', 'tpl_mainmenu_2036.htm', 'A', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 950, 44, 78, 0, 15, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(728, 49, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 36, 0, 219, 13, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263779665.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 6, 0, 'hidden', 'top', 'block'),
(727, 49, 'shop', 'modShopSmallCart', '购物车提示信息', 'index', 'index', 'tpl_shop_smallcart_top2.htm', '-1', 'A604', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 194, 32, 46, 730, 14, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '购物车', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(726, 49, 'advs', 'modLogo', '网站标志', 'index', 'index', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 210, 78, 0, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(725, 49, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy3.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 175, 184, 420, 248, 12, 0, 7, 'id', 'desc', 0, 10, '_self', 0, 16, 106, 106, 'fill', '最新商品', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 9, 0, 'hidden', 'content', 'block'),
(724, 49, 'shop', 'modShopTwoClass', '商品二级分类', 'index', 'index', 'tpl_shoptwoclass_diy.htm', '-1', 'A657', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 220, 709, 0, 0, 1, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品分类', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(723, 49, 'advs', 'modAdvsLb', '图片轮播广告', 'index', 'index', 'tpl_advslb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 450, 235, 0, 230, 8, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '轮播广告', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(722, 49, 'shop', 'modShopSearchForm', '商品搜索表单', 'index', 'index', 'tpl_shop_searchform.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 617, 30, 125, 25, 16, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '商品搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(721, 49, 'advs', 'modAdvsPic', '页内图片广告', 'index', 'index', 'tpl_advspic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 260, 65, 170, 690, 21, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 4, 0, 'hidden', 'content', 'block'),
(720, 49, 'menu', 'modBottomMenu', '底部菜单（一级）', 'index', 'index', 'tpl_bottommenu_1.htm', 'F', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 30, 0, 0, 10, 3, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(719, 49, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy4.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '', 463, 238, 670, 483, 11, 0, 3, 'id', 'desc', 0, 10, '_self', 0, 30, 114, 114, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 6, 0, 'hidden', 'content', 'block'),
(718, 49, 'diy', 'modButtomInfo', '底部信息编辑区', 'index', 'index', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 150, 32, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 宠物用品商城网站管理系统 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198928725.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198943820.gif" />&nbsp;<img border=0 alt="" src="[ROOTPATH]index/pics/20091022/200910221256198954080.gif" /></div><!# footer end #>', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(717, 49, 'shop', 'modShopList', '自选商品列表', 'index', 'index', 'tpl_shoplist_diy2.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '{#RP#}shop/class/', 231, 118, 297, 682, 5, 0, 5, 'id', 'desc', 0, 12, '_self', 0, 30, 120, 112, 'fill', '最新商品', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '', 10, 0, 'hidden', 'content', 'block'),
(742, 49, 'diy', 'modPlusBorder', '空白边框', 'index', 'index', 'tpl_plusborder.htm', '-1', 'A512', '#dddddd', 1, 'solid', '', 'click', 'block', '', '#000', '#fff', 'http://', 520, 270, 920, 238, 28, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 3, 0, 'hidden', 'content', 'block'),
(743, 49, 'member', 'modMemberLoginInfo', '会员登录信息(全站)', 'index', 'index', 'tpl_memberlogininfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 310, 28, 50, 372, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(744, 49, 'menu', 'modTopMenu', '顶部菜单(一级)', 'index', 'index', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 444, 29, 0, 506, 19, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '顶部菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '', 1, 0, 'hidden', 'top', 'block'),
(745, 49, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 950, 35, 122, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782011.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 8, 0, 'hidden', 'top', 'block'),
(746, 49, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 101, 35, 122, 835, 20, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263782244.gif', '{#RP#}shop/order.php', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 9, 0, 'hidden', 'top', 'block'),
(747, 49, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 720, 372, 242, 230, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20100118/1263794826.jpg', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 10, 0, 'hidden', 'content', 'block');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plusplanid`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plusplanid` (
  `id` int(6) NOT NULL auto_increment,
  `planname` varchar(50) NOT NULL default '',
  `plustype` varchar(50) NOT NULL default '',
  `pluslocat` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- 转存表中的数据 `pwn_base_plusplanid`
--

INSERT INTO `pwn_base_plusplanid` (`id`, `planname`, `plustype`, `pluslocat`) VALUES
(49, '首页排版方案', 'index', 'index');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plustemp`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plustemp` (
  `id` int(12) NOT NULL auto_increment,
  `pluslable` char(30) NOT NULL default '',
  `cname` char(30) NOT NULL,
  `tempname` char(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=341 ;

--
-- 转存表中的数据 `pwn_base_plustemp`
--

INSERT INTO `pwn_base_plustemp` (`id`, `pluslable`, `cname`, `tempname`) VALUES
(297, 'modShopList', '商品名/图片/品牌/价格', 'tpl_shoplist_2.htm'),
(201, 'modLoginForm', '横式会员登录表单，请选用专用边框(如500号边框)', 'tpl_loginform_h.htm'),
(67, 'modMemberNewsList', '标题+时间', 'tpl_newslist_time.htm'),
(68, 'modMemberNewsList', '标题+摘要', 'tpl_newslist_memo.htm'),
(87, 'modMemberNewsQuery', '文章翻页检索,标题+摘要', 'tpl_newsquery_memo.htm'),
(88, 'modMemberNewsQuery', '文章翻页检索,标题+时间,带表头', 'tpl_newsquery_cap.htm'),
(89, 'modNewsAuthorList', '标题+时间', 'tpl_newslist_time.htm'),
(90, 'modNewsAuthorList', '类别+标题', 'tpl_newslist_cat.htm'),
(91, 'modNewsAuthorList', '标题+摘要', 'tpl_newslist_memo.htm'),
(92, 'modNewsAuthorList', '标题+作者', 'tpl_newslist_author.htm'),
(103, 'modNewsContent', '仿新闻门户正文风格', 'tpl_newscontent_portal.htm'),
(16, 'modNewsHot', '标题+图标风格2', 'tpl_newshot2.htm'),
(58, 'modNewsHot', '标题+时间', 'tpl_newshot_time.htm'),
(59, 'modNewsHot', '标题+作者', 'tpl_newshot_author.htm'),
(60, 'modNewsHot', '标题+图标风格3', 'tpl_newshot3.htm'),
(61, 'modNewsHot', '标题+图标风格4', 'tpl_newshot4.htm'),
(102, 'modNewsHot', '标题+点击数', 'tpl_newshot_cl.htm'),
(62, 'modNewsHot30', '标题+图标风格2', 'tpl_newshot2.htm'),
(63, 'modNewsHot30', '标题+时间', 'tpl_newshot_time.htm'),
(64, 'modNewsHot30', '标题+作者', 'tpl_newshot_author.htm'),
(65, 'modNewsHot30', '标题+图标风格3', 'tpl_newshot3.htm'),
(66, 'modNewsHot30', '标题+图标风格4', 'tpl_newshot4.htm'),
(101, 'modNewsHot30', '标题+点击数', 'tpl_newshot_cl.htm'),
(2, 'modNewsList', '标题+时间', 'tpl_newslist_time.htm'),
(3, 'modNewsList', '类别+标题', 'tpl_newslist_cat.htm'),
(57, 'modNewsList', '标题+参数列1,2,3', 'tpl_newslist_prop3.htm'),
(56, 'modNewsList', '标题+参数列1,2', 'tpl_newslist_prop2.htm'),
(55, 'modNewsList', '标题+参数列1', 'tpl_newslist_prop1.htm'),
(42, 'modNewsList', '标题+摘要', 'tpl_newslist_memo.htm'),
(41, 'modNewsList', '标题+作者', 'tpl_newslist_author.htm'),
(198, 'modNewsPicMemo', '图片+标题+两个参数列', 'tpl_newspicprop_2.htm'),
(84, 'modNewsPicMemo', '图片+标题+三个参数列', 'tpl_newspicprop.htm'),
(93, 'modNewsProjList', '标题+时间', 'tpl_newslist_time.htm'),
(94, 'modNewsProjList', '类别+标题', 'tpl_newslist_cat.htm'),
(95, 'modNewsProjList', '标题+摘要', 'tpl_newslist_memo.htm'),
(96, 'modNewsProjList', '标题+作者', 'tpl_newslist_author.htm'),
(10, 'modNewsQuery', '文章翻页检索,标题+摘要', 'tpl_newsquery_memo.htm'),
(86, 'modNewsQuery', '文章翻页检索,标题+时间,带表头', 'tpl_newsquery_cap.htm'),
(97, 'modNewsSameTagList', '标题+时间', 'tpl_newslist_time.htm'),
(98, 'modNewsSameTagList', '类别+标题', 'tpl_newslist_cat.htm'),
(99, 'modNewsSameTagList', '标题+摘要', 'tpl_newslist_memo.htm'),
(100, 'modNewsSameTagList', '标题+作者', 'tpl_newslist_author.htm'),
(313, 'modShopTwoClass', '商品二级分类收放式菜单', 'tpl_shoptwoclass_1030.htm'),
(303, 'modShopList', '商品名/价格纯文字列表', 'tpl_shoplist_8.htm'),
(302, 'modShopList', '商品名/图片/简介/价格(上下布局)', 'tpl_shoplist_7.htm'),
(301, 'modShopList', '商品名/图片/品牌/参数列/价格(上下布局)', 'tpl_shoplist_6.htm'),
(300, 'modShopList', '商品名/图片/价格(上下布局)', 'tpl_shoplist_5.htm'),
(48, 'modPicWords', '图片+四行标题', 'tpl_picwordx4.htm'),
(46, 'modPicWords', '图片+两行标题', 'tpl_picwordx2.htm'),
(49, 'modPicWords', '图片+三行标题', 'tpl_picwordx3.htm'),
(18, 'modText', '从右到左竖写', 'tpl_text_1.htm'),
(20, 'modTraFlash', '移动竖条', 'tpl_flash2.htm'),
(21, 'modTraFlash', '光球光芒时隐时现', 'tpl_flash3.htm'),
(22, 'modTraFlash', '米字星光', 'tpl_flash4.htm'),
(45, 'modWordTT', '标题+4组链接', 'tpl_wordttx4.htm'),
(44, 'modWordTT', '标题+3组链接', 'tpl_wordttx3.htm'),
(43, 'modWordTT', '标题+2组链接', 'tpl_wordttx2.htm'),
(202, 'modNewsSearchForm', '竖式搜索表单', 'tpl_news_searchform_h.htm'),
(299, 'modShopList', '商品名/图片/简介/价格', 'tpl_shoplist_4.htm'),
(296, 'modShopList', '商品名/图片/简介单列', 'tpl_shoplist_1.htm'),
(205, 'modCommentSearchForm', '竖式搜索表单', 'tpl_comment_searchform_h.htm'),
(206, 'modSearchForm', '竖式搜索表单', 'tpl_searchform_h.htm'),
(207, 'modButtomInfo', '灰色渐变背景', 'tpl_bottominfo_1.htm'),
(208, 'modMemberTags', '头像+三组积分+推荐标签3', 'tpl_membertags_1.htm'),
(209, 'modMemberTags', '头像+推荐标签3', 'tpl_membertags_2.htm'),
(210, 'modMemberRank1', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(211, 'modMemberRank2', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(212, 'modMemberRank3', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(213, 'modMemberRank4', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(214, 'modMemberRank5', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(215, 'modHeadTraFlash', '移动竖条', 'tpl_flash2.htm'),
(216, 'modHeadTraFlash', '光球光芒时隐时现', 'tpl_flash3.htm'),
(217, 'modHeadTraFlash', '米字星光', 'tpl_flash4.htm'),
(218, 'modHeadBgSource', '头部效果图片+圆角遮罩(5px)', 'tpl_headbg_circle.htm'),
(219, 'modHeadBgSource', '头部效果图片+圆角遮罩(9px)', 'tpl_headbg_circle9.htm'),
(220, 'modTopMenu', '白色文字', 'tpl_topmenu_white.htm'),
(221, 'modBgSound', '显示播放器', 'tpl_bgsound_show.htm'),
(222, 'modFormGroup', '列表式', 'tpl_formgroup_list.htm'),
(223, 'modNewsList', '标题+时间(微软雅黑,14px)', 'tpl_newslist_time_big.htm'),
(325, 'modFeedBackSmallForm', '小型留言表单(适合放在左右侧)', 'tpl_feedback_smallform1.htm'),
(280, 'modShopTwoClass', '商品二级分类树型风格', 'tpl_shoptwoclass_1.htm'),
(261, 'modDropDownMenu', '圆角标签二级下拉菜单模板', 'tpl_dropdownmenu_6.htm'),
(321, 'modShopList', '150*150橱窗式商品展示', 'tpl_shoplist_10.htm'),
(315, 'modShopSmallCart', '顶部购物车提示式样', 'tpl_shop_smallcart_top.htm'),
(314, 'modMemberMenu', '二级树形菜单', 'tpl_qqmenu_2.htm'),
(266, 'modBottomMenu', '底部菜单之纯文字菜单模板', 'tpl_bottommenu_1.htm'),
(267, 'modNewsList', '双列文章标题模板', 'tpl_newslist_mul.htm'),
(268, 'modPageTitleMenu', '圆角按钮型网页标题菜单', 'tpl_page_titlemenu_b1.htm'),
(270, 'modCommentQuery', '留言问答风格', 'tpl_comment_query_pw.htm'),
(271, 'modCommentContent', '留言问答风格', 'tpl_comment_content_pw.htm'),
(272, 'modMemberMenu', '圆角按钮仿QQ菜单模板', 'tpl_qqmenu_1.htm'),
(273, 'modNewsList', '标题 时间（反白）', 'tpl_newslist_time_white.htm'),
(274, 'modPageTitleMenu', '纯色背景网页标题菜单', 'tpl_page_titlemenu_b2.htm'),
(320, 'modShopList', '230*230橱窗式商品展示', 'tpl_shoplist_9.htm'),
(276, 'modPageTitleMenu', '深灰色按钮菜单', 'tpl_page_titlemenu_b7.htm'),
(312, 'modChannelMenu', '标签式菜单(单色)', 'tpl_channelmenu_1030.htm'),
(278, 'modPagePicList', '图片 标题 摘要,每行两个', 'tpl_page_piclist_2.htm'),
(298, 'modShopList', '商品名/图片/参数列/价格', 'tpl_shoplist_3.htm'),
(326, 'modMainMenu', '自定义模板', 'tpl_mainmenu_diy.htm'),
(327, 'modShopSmallCart', '顶部购物车提示式样2', 'tpl_shop_smallcart_top2.htm'),
(330, 'modShopList', '自定义模板', 'tpl_shoplist_diy.htm'),
(329, 'modShopTwoClass', '自定义模板', 'tpl_shoptwoclass_diy.htm'),
(331, 'modShopList', '自定义模板2', 'tpl_shoplist_diy2.htm'),
(332, 'modShopList', '自定义模板3', 'tpl_shoplist_diy3.htm'),
(333, 'modShopList', '自定义模板4', 'tpl_shoplist_diy4.htm'),
(334, 'modBottomMenu', '白色文字模板', 'tpl_bottommenu_white.htm'),
(335, 'modShopSaleList', '纯文字模板', 'tpl_shop_hotlist2.htm'),
(338, 'modMainMenu', '自定义模板', 'tpl_mainmenu_2036.htm'),
(339, 'modChannelMenu', '标签式菜单(紫色)', 'tpl_channelmenu_2033.htm'),
(340, 'modShopSearchForm', '简约式搜索模板', 'tpl_shop_searchform_jy.htm');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_version`
--

CREATE TABLE IF NOT EXISTS `pwn_base_version` (
  `version` varchar(30) NOT NULL default '',
  `release` int(8) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_base_version`
--

INSERT INTO `pwn_base_version` (`version`, `release`) VALUES
('1.0.0', 20090215),
('1.1.0', 20090320),
('1.1.1', 20090326),
('1.1.2', 20090327),
('1.1.3', 20090328),
('1.1.4', 20090401),
('1.1.5', 20090402),
('1.1.6', 20090412),
('1.1.7', 20090418),
('1.1.8', 20090419),
('1.1.9', 20090420),
('1.1.10', 20090421),
('1.2.0', 20090428),
('1.2.1', 20090504),
('1.2.2', 20090508),
('1.2.3', 20090514),
('1.2.4', 20090612),
('1.2.5', 20090615),
('1.2.6', 20090624),
('1.2.7', 20090728),
('1.2.8', 20090801),
('1.2.9', 20090802),
('1.2.10', 20090803),
('1.2.11', 20090804),
('1.2.12', 20090820),
('1.3.0', 20090828),
('1.3.1', 20090829),
('1.3.2', 20090830),
('1.3.3', 20090831),
('1.3.4', 20090901),
('1.3.5', 20090902),
('1.3.6', 20090903),
('1.3.7', 20090904),
('1.3.15', 20090912),
('1.3.8', 20090905),
('1.3.9', 20090906),
('1.3.11', 20090908),
('1.3.12', 20090909),
('1.3.16', 20091009),
('1.3.17', 20091010),
('1.3.18', 20091112),
('1.3.19', 20100623),
('1.4.0', 20100830),
('1.4.1', 20100920),
('1.4.2', 20100921),
('1.4.3', 20100925),
('1.5.0', 20111209),
('', 20120407),
('', 20120407),
('', 20120408),
('', 20120408),
('', 20120410),
('', 20120410);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_comment`
--

CREATE TABLE IF NOT EXISTS `pwn_comment` (
  `id` int(20) NOT NULL auto_increment,
  `pid` int(20) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `rid` int(20) NOT NULL default '0',
  `contype` varchar(30) NOT NULL default 'comment',
  `pname` varchar(100) NOT NULL default '',
  `title` varchar(200) NOT NULL default '',
  `body` text,
  `pj1` int(1) NOT NULL default '3',
  `pj2` int(1) NOT NULL default '3',
  `pj3` int(1) NOT NULL default '3',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `ip` varchar(16) NOT NULL default '',
  `iffb` int(1) NOT NULL default '0',
  `tuijian` int(1) NOT NULL default '0',
  `cl` int(10) NOT NULL default '0',
  `lastname` varchar(50) NOT NULL default '',
  `lastmemberid` int(12) NOT NULL default '0',
  `backcount` int(12) NOT NULL default '0',
  `picsrc` varchar(255) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `memberid` int(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_comment`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_comment_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_comment_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `cat` varchar(50) NOT NULL default '',
  `catpath` varchar(255) NOT NULL,
  `coltype` varchar(30) NOT NULL default '',
  `xuhao` int(4) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `ifbbs` int(1) NOT NULL default '1',
  `ifshow` int(1) NOT NULL default '1',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- 转存表中的数据 `pwn_comment_cat`
--

INSERT INTO `pwn_comment_cat` (`catid`, `pid`, `cat`, `catpath`, `coltype`, `xuhao`, `moveable`, `ifbbs`, `ifshow`) VALUES
(1, 0, '文章点评', '0001:', 'news', 2, 0, 0, 1),
(11, 0, '商品点评', '0011:', 'shop', 1, 0, 0, 1),
(112, 0, '网友留言', '0112:', 'comment', 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_comment_config`
--

CREATE TABLE IF NOT EXISTS `pwn_comment_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_comment_config`
--

INSERT INTO `pwn_comment_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(5, '匿名点评是否审核', 'YN', '30', 'noMembercheck', '0', '匿名发表、回复点评时是否审核'),
(7, '点评图片上传尺寸限制(Byte)', 'input', '30', 'EditPicLimit', '204800', '发表点评时，编辑器内上传图片大小的限制'),
(6, '未登录时是否允许上传图片', 'YN', '30', 'NoMemberUpPic', '0', '未登录会员时,是否允许在编辑器内上传图片(备注:会员登录后发表点评是否可以上传图片，在会员权限中设置)'),
(1, '模块频道名称', 'input', '30', 'ChannelName', '网友点评', '本模块对应的频道名称，如“网友点评”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(8, '点评关键词过滤', 'textarea', '30', 'KeywordDeny', '', '点评禁止的词语，多个以逗号分割');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_feedback`
--

CREATE TABLE IF NOT EXISTS `pwn_feedback` (
  `id` int(3) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `field_caption` varchar(200) NOT NULL default '',
  `field_type` int(1) NOT NULL default '0',
  `field_size` int(5) NOT NULL default '0',
  `field_name` varchar(200) NOT NULL default '',
  `field_value` varchar(255) NOT NULL default '',
  `field_null` int(1) NOT NULL default '0',
  `value_repeat` int(1) NOT NULL default '0',
  `field_intro` varchar(255) NOT NULL default '',
  `use_field` int(1) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `xuhao` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1151 ;

--
-- 转存表中的数据 `pwn_feedback`
--

INSERT INTO `pwn_feedback` (`id`, `groupid`, `field_caption`, `field_type`, `field_size`, `field_name`, `field_value`, `field_null`, `value_repeat`, `field_intro`, `use_field`, `moveable`, `xuhao`) VALUES
(1, 0, '留言标题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(2, 0, '留言内容', 2, 399, 'content', '', 0, 1, '', 1, 0, 2),
(3, 0, '您的姓名', 1, 399, 'name', '', 0, 1, '', 0, 0, 3),
(5, 0, '联系电话', 1, 399, 'tel', '', 0, 1, '', 0, 0, 5),
(6, 0, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6),
(7, 0, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7),
(8, 0, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(9, 0, 'QQ号码', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9),
(10, 0, '公司名称', 1, 399, 'company', '', 0, 1, '', 0, 0, 10),
(11, 0, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(4, 0, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 4),
(12, 0, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(13, 0, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(14, 0, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(15, 0, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(16, 0, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(19, 0, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(18, 0, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(17, 0, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(20, 0, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(21, 0, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(22, 0, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(23, 0, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1145, 1, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(1146, 1, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(1147, 1, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(1148, 1, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(1149, 1, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(1150, 1, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1143, 1, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(1144, 1, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(1142, 1, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(1141, 1, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(1140, 1, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(1139, 1, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(1138, 1, '性别称谓', 5, 399, 'sex', '先生;女士', 0, 1, '', 0, 0, 9),
(1136, 1, '客户名称', 1, 399, 'company', '', 1, 1, '', 1, 0, 3),
(1137, 1, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(1135, 1, 'QQ/MSN', 1, 399, 'qq', '', 0, 1, '', 1, 0, 9),
(1134, 1, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(1133, 1, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7),
(1132, 1, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6),
(1131, 1, '联系电话', 1, 399, 'tel', '', 1, 1, '', 1, 0, 5),
(1130, 1, '联 系 人', 1, 399, 'name', '', 0, 1, '', 1, 0, 4),
(1129, 1, '详细描述', 2, 399, 'content', '', 1, 1, '', 1, 0, 2),
(1128, 1, '留言主题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_feedback_group`
--

CREATE TABLE IF NOT EXISTS `pwn_feedback_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  `ifano` int(11) NOT NULL default '0',
  `allowmembertype` varchar(255) NOT NULL,
  `allowfeedback` char(255) NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_feedback_group`
--

INSERT INTO `pwn_feedback_group` (`id`, `groupname`, `xuhao`, `moveable`, `ifano`, `allowmembertype`, `allowfeedback`, `intro`) VALUES
(1, '投诉建议', 1, 0, 1, '|26|', '|3|', '欢迎咨询');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_feedback_info`
--

CREATE TABLE IF NOT EXISTS `pwn_feedback_info` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `name` varchar(200) NOT NULL default '',
  `sex` varchar(10) NOT NULL default '',
  `tel` varchar(100) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `company` varchar(255) NOT NULL default '',
  `company_address` varchar(255) NOT NULL default '',
  `zip` varchar(6) NOT NULL default '',
  `fax` varchar(20) NOT NULL default '',
  `products_id` varchar(100) NOT NULL default '',
  `products_name` varchar(200) NOT NULL default '',
  `products_num` varchar(9) NOT NULL default '',
  `custom1` text NOT NULL,
  `custom2` text NOT NULL,
  `custom3` text NOT NULL,
  `custom4` text NOT NULL,
  `custom5` text NOT NULL,
  `custom6` text NOT NULL,
  `custom7` text NOT NULL,
  `ip` varchar(20) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  `stat` int(2) NOT NULL default '0',
  `adminid` int(5) NOT NULL default '0',
  `coadminid` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_feedback_info`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_hz_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_hz_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(100) default NULL,
  `xuhao` int(12) default NULL,
  `catpath` char(255) default NULL,
  `nums` int(20) default NULL,
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pwn_hz_cat`
--

INSERT INTO `pwn_hz_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(1, 0, '玩具', 1, '0001:', 0, 0, 0),
(2, 1, '电动玩具', 1, '0001:0002:', 0, 0, 0),
(3, 1, '毛绒玩具', 2, '0001:0003:', 0, 0, 0),
(4, 0, '数码通讯', 2, '0004:', 0, 0, 0),
(5, 2, '触电玩具', 1, '0001:0002:0005:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_hz_con`
--

CREATE TABLE IF NOT EXISTS `pwn_hz_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'huanzeng',
  `title` varchar(255) NOT NULL default '',
  `cent` int(10) default '0',
  `kucun` int(20) NOT NULL default '0',
  `salenums` int(20) NOT NULL default '0',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pwn_hz_con`
--

INSERT INTO `pwn_hz_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `cent`, `kucun`, `salenums`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `tags`, `zhichi`, `fandui`, `tplog`) VALUES
(1, 2, '0001:0002:', 0, 'huanzeng', '翻滚遥控车', 300, 20, 0, '<p>会跳舞的火球特技<b>遥控车翻滚</b>*有音乐</p>', 1254194415, 0, 17, 0, 1, 0, '0', 'gif', 'huanzeng/pics/20090929/1254194415.jpg', 1257841862, '系统管理员', '', '0', '', 0, '会跳舞的火球特技遥控车翻滚*有音乐', '5号', '塑料', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(2, 3, '0001:0003:', 0, 'huanzeng', '布绒狗狗', 200, 20, 0, '布绒狗狗的介绍 ', 1254204709, 0, 89, 0, 1, 0, '0', 'gif', 'huanzeng/pics/20091023/1256260916.jpg', 1257841784, '系统管理员', '', '0', '', 0, '布绒狗狗的简述', '100*45*30(mm)', '650g', '黄色', '绒布', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(3, 2, '0001:0002:', 0, 'huanzeng', '电动玩具警车', 300, 20, 0, '<p>电动玩具警车的介绍</p>', 1254205119, 0, 79, 0, 1, 0, '0', 'gif', 'huanzeng/pics/20090929/1254206267.jpg', 1254206267, '系统管理员', '', '0', '', 0, '电动玩具警车的简述', '5号', '塑料', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(4, 1, '0001:', 0, 'huanzeng', '变形金刚－大黄蜂', 500, 30, 0, '大黄蜂的赠品介绍', 1257842529, 0, 2, 0, 1, 0, '0', 'gif', 'huanzeng/pics/20091110/1257842529.jpg', 1257842529, '系统管理员', '', '0', '', 0, '大黄蜂的简述', '150×30×25', 'JG－526', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_hz_config`
--

CREATE TABLE IF NOT EXISTS `pwn_hz_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_hz_config`
--

INSERT INTO `pwn_hz_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '积分换赠', '本模块对应的频道名称，如“积分换赠”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(3, '积分换赠时采用的积分类型', 'select', '30', 'CentType', '5', '请选择积分换赠积分的类型');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_hz_mzone`
--

CREATE TABLE IF NOT EXISTS `pwn_hz_mzone` (
  `id` int(6) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  `zone` varchar(100) default NULL,
  `postcode` varchar(20) NOT NULL,
  `tel` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_hz_mzone`
--

INSERT INTO `pwn_hz_mzone` (`id`, `memberid`, `name`, `zone`, `postcode`, `tel`) VALUES
(3, 155, 'sdfsd', 'fsdf', 'sdfsdf', 'sdfsdf');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_hz_order`
--

CREATE TABLE IF NOT EXISTS `pwn_hz_order` (
  `orderid` int(8) NOT NULL auto_increment,
  `OrderNo` varchar(30) NOT NULL default '',
  `memberid` int(6) NOT NULL default '0',
  `user` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `tel` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `postcode` varchar(20) NOT NULL,
  `totalcent` int(10) NOT NULL default '0',
  `iflook` int(1) NOT NULL default '0',
  `ifyun` int(1) NOT NULL default '0',
  `ifpay` int(1) NOT NULL default '0',
  `ifok` int(1) NOT NULL default '0',
  `iftui` int(1) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  `dtime` int(11) NOT NULL default '0',
  `paytime` int(11) NOT NULL default '0',
  `yuntime` int(11) NOT NULL default '0',
  `bz` text,
  `items` text,
  PRIMARY KEY  (`orderid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_hz_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_hz_orderitems`
--

CREATE TABLE IF NOT EXISTS `pwn_hz_orderitems` (
  `id` int(8) NOT NULL auto_increment,
  `memberid` int(6) NOT NULL default '0',
  `orderid` int(6) NOT NULL default '0',
  `gid` int(6) NOT NULL default '0',
  `bn` varchar(100) NOT NULL default '',
  `goods` varchar(100) NOT NULL default '0',
  `nums` int(6) NOT NULL default '0',
  `cent` int(10) NOT NULL default '0',
  `ifyun` int(1) NOT NULL default '0',
  `iftui` int(1) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `yuntime` int(11) NOT NULL default '0',
  `msg` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_hz_orderitems`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_hz_pages`
--

CREATE TABLE IF NOT EXISTS `pwn_hz_pages` (
  `id` int(12) NOT NULL auto_increment,
  `productid` int(12) NOT NULL default '0',
  `src` varchar(150) NOT NULL default '',
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_hz_pages`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_hz_prop`
--

CREATE TABLE IF NOT EXISTS `pwn_hz_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `pwn_hz_prop`
--

INSERT INTO `pwn_hz_prop` (`id`, `catid`, `propname`, `xuhao`) VALUES
(3, 2, '使用电池型号', 1),
(4, 2, '材质', 2),
(5, 3, '大小', 1),
(6, 3, '重量', 2),
(7, 3, '颜色', 3),
(8, 3, '布质', 4),
(9, 1, '规格', 1),
(10, 1, '型号', 2);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_job`
--

CREATE TABLE IF NOT EXISTS `pwn_job` (
  `id` int(12) NOT NULL auto_increment,
  `jobname` varchar(255) NOT NULL default '',
  `jobtype` varchar(20) NOT NULL default '',
  `experience` varchar(100) NOT NULL default '',
  `education` varchar(50) NOT NULL default '',
  `langneed` varchar(50) NOT NULL default '',
  `langlevel` varchar(50) NOT NULL default '',
  `pnums` int(5) NOT NULL default '0',
  `jobaddr` varchar(200) NOT NULL default '',
  `jobintro` text,
  `jobrequest` text NOT NULL,
  `jobstat` int(1) NOT NULL default '0',
  `contact` varchar(50) NOT NULL default '',
  `tel` varchar(50) NOT NULL default '',
  `email` varchar(200) NOT NULL default '',
  `dtime` int(11) default '0',
  `uptime` int(11) default '0',
  `endtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `iffb` int(1) default '0',
  `contype` varchar(20) NOT NULL default 'job',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `pwn_job`
--

INSERT INTO `pwn_job` (`id`, `jobname`, `jobtype`, `experience`, `education`, `langneed`, `langlevel`, `pnums`, `jobaddr`, `jobintro`, `jobrequest`, `jobstat`, `contact`, `tel`, `email`, `dtime`, `uptime`, `endtime`, `xuhao`, `cl`, `tj`, `iffb`, `contype`) VALUES
(7, '采购部经理助理', '全职', '3年以上', '大专', '', '', 1, '上海', '采购部经理助理', '采购部经理助理', 1, '', '', '', 1256218313, 1256218313, 0, 0, 36, 0, 1, 'job'),
(6, '网站编辑', '全职', '1年以上', '本科', '', '', 1, '上海', '网站编辑1名', '网站编辑1名', 1, '', '', '', 1256218268, 1256218268, 0, 0, 0, 0, 1, 'job'),
(4, '客户服务人员', '全职', '3年以上', '本科', '', '', 2, '上海', '客户服务人员2名\r\n', '客户服务人员2名\r\n', 1, '', '', '', 1252052940, 1256218232, 0, 0, 24, 0, 1, 'job');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_job_form`
--

CREATE TABLE IF NOT EXISTS `pwn_job_form` (
  `id` int(3) NOT NULL auto_increment,
  `field_caption` varchar(200) NOT NULL default '',
  `field_type` int(1) NOT NULL default '0',
  `field_size` int(5) NOT NULL default '0',
  `field_name` varchar(200) NOT NULL default '',
  `field_value` varchar(255) NOT NULL default '',
  `field_null` int(1) NOT NULL default '0',
  `value_repeat` int(1) NOT NULL default '0',
  `field_intro` varchar(255) NOT NULL default '',
  `use_field` int(1) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `xuhao` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `pwn_job_form`
--

INSERT INTO `pwn_job_form` (`id`, `field_caption`, `field_type`, `field_size`, `field_name`, `field_value`, `field_null`, `value_repeat`, `field_intro`, `use_field`, `moveable`, `xuhao`) VALUES
(1, '姓　　名', 1, 200, 'title', '', 1, 1, '', 1, 1, 1),
(2, '教育经历', 2, 399, 'content', '', 1, 1, '', 1, 0, 14),
(3, '出生日期', 1, 200, 'name', '', 1, 1, '', 1, 0, 3),
(4, '性　　别', 5, 50, 'sex', '男;女', 1, 1, '', 1, 0, 2),
(5, '联系电话', 1, 200, 'tel', '', 1, 1, '', 1, 0, 9),
(6, '通信地址', 1, 300, 'address', '', 1, 1, '', 1, 0, 11),
(7, '电子邮箱', 1, 300, 'email', '', 1, 1, '', 1, 0, 12),
(8, '博客/主页', 1, 399, 'url', '', 0, 1, '', 0, 0, 18),
(9, 'QQ/MSN', 1, 399, 'qq', '', 0, 1, '', 0, 0, 19),
(10, '毕业院校', 1, 300, 'company', '', 1, 1, '', 1, 0, 5),
(11, '最高学历', 1, 200, 'company_address', '', 1, 1, '', 1, 0, 6),
(12, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 19),
(13, '手机号码', 1, 200, 'fax', '', 0, 1, '', 1, 0, 10),
(14, '毕业专业', 1, 200, 'products_id', '', 1, 1, '', 1, 0, 7),
(15, '毕业时间', 1, 200, 'products_name', '', 1, 1, '', 1, 0, 8),
(16, '专业特长', 1, 399, 'products_num', '', 1, 1, '', 1, 0, 13),
(19, '婚姻状况', 5, 200, 'custom1', '未婚;已婚', 1, 1, '', 1, 0, 4),
(18, '工作经历', 2, 399, 'custom2', '', 1, 1, '', 1, 0, 15),
(17, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(20, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(21, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(22, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(23, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_job_telent`
--

CREATE TABLE IF NOT EXISTS `pwn_job_telent` (
  `id` int(12) NOT NULL auto_increment,
  `jobid` int(6) NOT NULL default '0',
  `jobname` char(200) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `name` varchar(200) NOT NULL default '',
  `sex` varchar(10) NOT NULL default '',
  `tel` varchar(100) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `company` varchar(255) NOT NULL default '',
  `company_address` varchar(255) NOT NULL default '',
  `zip` varchar(6) NOT NULL default '',
  `fax` varchar(20) NOT NULL default '',
  `products_id` varchar(100) NOT NULL default '',
  `products_name` varchar(200) NOT NULL default '',
  `products_num` varchar(9) NOT NULL default '',
  `custom1` text NOT NULL,
  `custom2` text NOT NULL,
  `custom3` text NOT NULL,
  `custom4` text NOT NULL,
  `custom5` text NOT NULL,
  `custom6` text NOT NULL,
  `custom7` text NOT NULL,
  `fileurl` varchar(200) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `stat` int(2) NOT NULL default '0',
  `fav` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_job_telent`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member`
--

CREATE TABLE IF NOT EXISTS `pwn_member` (
  `memberid` int(12) NOT NULL auto_increment,
  `membertypeid` int(3) NOT NULL default '0',
  `membergroupid` int(3) NOT NULL default '0',
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `company` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL default '',
  `birthday` int(8) NOT NULL default '0',
  `zoneid` int(10) NOT NULL default '0',
  `catid` int(10) NOT NULL default '0',
  `addr` varchar(255) NOT NULL default '',
  `tel` varchar(255) NOT NULL default '',
  `mov` varchar(255) NOT NULL default '',
  `postcode` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default 'http://',
  `passtype` varchar(255) NOT NULL default '',
  `passcode` varchar(255) NOT NULL default '',
  `qq` varchar(100) NOT NULL default '',
  `msn` varchar(100) NOT NULL default '',
  `maillist` int(1) NOT NULL default '0',
  `bz` text,
  `pname` varchar(30) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `memberface` varchar(100) NOT NULL,
  `nowface` varchar(50) NOT NULL,
  `checked` int(1) NOT NULL default '0',
  `rz` int(1) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `regtime` int(11) NOT NULL default '0',
  `exptime` int(11) NOT NULL default '0',
  `account` decimal(12,2) NOT NULL default '0.00',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `buytotal` decimal(12,2) NOT NULL default '0.00',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  `ip` varchar(26) NOT NULL default '',
  `logincount` int(20) NOT NULL default '0',
  `logintime` int(11) NOT NULL default '0',
  `loginip` varchar(50) NOT NULL default '',
  `salesname` varchar(30) NOT NULL,
  PRIMARY KEY  (`memberid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=156 ;

--
-- 转存表中的数据 `pwn_member`
--

INSERT INTO `pwn_member` (`memberid`, `membertypeid`, `membergroupid`, `user`, `password`, `name`, `company`, `sex`, `birthday`, `zoneid`, `catid`, `addr`, `tel`, `mov`, `postcode`, `email`, `url`, `passtype`, `passcode`, `qq`, `msn`, `maillist`, `bz`, `pname`, `signature`, `memberface`, `nowface`, `checked`, `rz`, `tags`, `regtime`, `exptime`, `account`, `paytotal`, `buytotal`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`, `ip`, `logincount`, `logintime`, `loginip`, `salesname`) VALUES
(155, 26, 1, 'aaaaa', '594f803b380a41396ed63dca39503542', '张三', '', '1', 19800918, 1, 0, '上海徐汇区华亭家园2-1209', '021-12345678', '13967527790', '210002', 'aaa@www.cn', 'http://', '身份证', '330809198009181520', '99887766', 'alex@hotmail.com', 0, '', 'aaaaa', '', '', '4', 1, 0, '', 1256349783, 0, 0.00, 0.00, 0.00, 40, 0, 0, 0, 0, '192.168.0.101', 21, 1263864437, '192.168.1.6', '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_buylist`
--

CREATE TABLE IF NOT EXISTS `pwn_member_buylist` (
  `id` int(12) NOT NULL auto_increment,
  `buyfrom` varchar(50) NOT NULL default '',
  `memberid` int(12) NOT NULL default '0',
  `orderid` int(12) NOT NULL default '0',
  `payid` int(12) NOT NULL default '0',
  `paytype` varchar(50) NOT NULL default '0',
  `payhb` varchar(30) NOT NULL default '',
  `payhl` decimal(12,4) NOT NULL default '0.0000',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `daytime` int(11) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  `OrderNo` varchar(30) NOT NULL default '',
  `logname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_buylist`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_member_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(4) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_cat`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_centlog`
--

CREATE TABLE IF NOT EXISTS `pwn_member_centlog` (
  `id` int(8) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `event` int(5) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  `memo` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pwn_member_centlog`
--

INSERT INTO `pwn_member_centlog` (`id`, `memberid`, `event`, `dtime`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`, `memo`) VALUES
(1, 155, 111, 1256349783, 10, 0, 0, 0, 0, ''),
(2, 155, 114, 1263280505, 1, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_centrule`
--

CREATE TABLE IF NOT EXISTS `pwn_member_centrule` (
  `id` int(8) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `name` char(100) NOT NULL default '',
  `event` int(5) NOT NULL default '0',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- 转存表中的数据 `pwn_member_centrule`
--

INSERT INTO `pwn_member_centrule` (`id`, `coltype`, `name`, `event`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`) VALUES
(1, 'member', '新会员注册', 111, 10, 0, 0, 0, 0),
(6, 'member', '加好友', 112, 1, 0, 0, 0, 0),
(7, 'member', '发站内短信', 113, 1, 0, 0, 0, 0),
(21, 'member', '会员登录', 114, 1, 0, 0, 0, 0),
(2, 'news', '发布文章', 121, 10, 0, 0, 0, 0),
(9, 'news', '文章被支持', 122, 0, 1, 0, 0, 0),
(10, 'news', '文章被反对', 123, 0, -1, 0, 0, 0),
(22, 'news', '文章被版主推荐', 124, 20, 0, 0, 0, 0),
(23, 'news', '文章被版主删除并扣分', 125, -20, 0, 0, 0, 0),
(5, 'comment', '发表点评', 131, 5, 0, 0, 0, 0),
(8, 'comment', '回复点评', 132, 1, 0, 0, 0, 0),
(28, 'comment', '点评被版主推荐', 134, 20, 0, 0, 0, 0),
(29, 'comment', '点评被版主删除并扣分', 135, -20, 0, 0, 0, 0),
(41, 'shop', '订单付款', 313, 10, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_centset`
--

CREATE TABLE IF NOT EXISTS `pwn_member_centset` (
  `id` int(8) NOT NULL auto_increment,
  `centname1` char(50) NOT NULL,
  `centname2` char(50) NOT NULL,
  `centname3` char(50) NOT NULL,
  `centname4` char(50) NOT NULL,
  `centname5` char(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_member_centset`
--

INSERT INTO `pwn_member_centset` (`id`, `centname1`, `centname2`, `centname3`, `centname4`, `centname5`) VALUES
(1, '经验', '人气', '悬赏', '金币', '消费');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_config`
--

CREATE TABLE IF NOT EXISTS `pwn_member_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_member_config`
--

INSERT INTO `pwn_member_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '会员中心', '本模块对应的频道名称；用于显示在当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(3, '会员网名昵称是否允许重复', 'YN', '1', 'DblPname', '1', '会员注册和修改资料时校验网名昵称是否允许重复'),
(4, 'UCenter 会员接口是否启用', 'YN', '1', 'UC_OPEN', '0', 'UCenter会员接口包括会员注册、会员登录接口；启用本接口前请先上传UCenter会员接口程序'),
(5, 'UCenter 应用 ID', 'input', '30', 'UC_APPID', '2', '该值为PHPWEB在 UCenter 的应用 ID，请填写你在UCenter将PHPWEB添加应用后实际获得的应用ID'),
(6, 'UCenter 通信密钥', 'input', '30', 'UC_KEY', 'PWUC2009', '通信密钥用于在 UCenter 和 PHPWEB 之间传输信息的加密，可包含任何字母及数字，请在 UCenter 与 PHPWEB 设置完全相同的通讯密钥，以确保两套系统能够正常通信'),
(7, 'UCenter 访问地址', 'input', '30', 'UC_API', 'http://discuz.phpweb.net/uc_server', '您的 UCenter 访问地址，不正确的设置可能导致网站功能异常，请小心修改。格式: http://www.sitename.com/uc_server (最后不要加''/'')'),
(7, 'UCenter IP 地址', 'input', '30', 'UC_IP', '', '如果您的服务器无法通过域名访问 UCenter，可以输入 UCenter 服务器的 IP 地址'),
(8, 'UCenter 数据库服务器', 'input', '30', 'UC_DBHOST', 'localhost', '可以是本地也可以是远程数据库服务器，如果 MySQL 端口不是默认的 3306，请填写如下形式：127.0.0.1:6033'),
(9, 'UCenter 数据库用户名', 'input', '30', 'UC_DBUSER', 'root', ''),
(10, 'UCenter 数据库密码', 'input', '30', 'UC_DBPW', '123456', ''),
(12, 'UCenter 数据库名', 'input', '30', 'UC_DBNAME', 'dbdiscuz', ''),
(13, 'UCenter 数据表前缀', 'input', '30', 'UC_DBTABLEPRE', 'cdb_uc_', '请填入您的UCenter数据表前缀，注意格式正确；如果是直接安装UCENTER，表前缀是一个“_”，如果是和discuz!一起安装的，则是带两个“_”的完整前缀'),
(14, 'UCenter 数据库编码', 'input', '30', 'UC_DBCHARSET', 'utf8', 'UCenter的数据库编码'),
(15, 'UCenter 的字符集', 'input', '30', 'UC_CHARSET', 'utf-8', ''),
(17, 'UCenter 用户自动激活时对应的会员类型', 'MTYPE', '30', 'UC_MEMBERTYPEID', '26', '用户登录时，在UCenter通过验证的用户（来自其他应用的用户），如果本系统没有该会员，自动增加会员时对应的会员类型');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_defaultrights`
--

CREATE TABLE IF NOT EXISTS `pwn_member_defaultrights` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(12) NOT NULL default '0',
  `secureid` int(12) NOT NULL default '0',
  `securetype` char(100) NOT NULL default '',
  `secureset` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=506 ;

--
-- 转存表中的数据 `pwn_member_defaultrights`
--

INSERT INTO `pwn_member_defaultrights` (`id`, `membertypeid`, `secureid`, `securetype`, `secureset`) VALUES
(505, 26, 133, 'func', '0'),
(504, 26, 132, 'func', '0'),
(502, 26, 127, 'func', '0'),
(503, 26, 131, 'func', '0'),
(501, 26, 126, 'class', ':1:2:'),
(500, 26, 123, 'func', '0'),
(499, 26, 122, 'func', '0'),
(498, 26, 121, 'func', '0'),
(497, 26, 114, 'func', '0'),
(493, 26, 101, 'con', '1'),
(494, 26, 111, 'func', '0'),
(495, 26, 112, 'func', '0'),
(496, 26, 113, 'func', '0');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_fav`
--

CREATE TABLE IF NOT EXISTS `pwn_member_fav` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `title` varchar(200) NOT NULL default '',
  `url` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_fav`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_friends`
--

CREATE TABLE IF NOT EXISTS `pwn_member_friends` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `fid` int(12) NOT NULL default '0',
  `fgroup` char(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_friends`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_group`
--

CREATE TABLE IF NOT EXISTS `pwn_member_group` (
  `id` int(6) NOT NULL auto_increment,
  `membergroup` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pwn_member_group`
--

INSERT INTO `pwn_member_group` (`id`, `membergroup`) VALUES
(1, '个人'),
(2, '企业');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_msn`
--

CREATE TABLE IF NOT EXISTS `pwn_member_msn` (
  `id` int(12) NOT NULL auto_increment,
  `tomemberid` int(12) NOT NULL default '0',
  `frommemberid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `dtime` int(11) NOT NULL default '0',
  `iflook` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_member_msn`
--

INSERT INTO `pwn_member_msn` (`id`, `tomemberid`, `frommemberid`, `body`, `dtime`, `iflook`) VALUES
(1, 155, 0, 'aaaaa,您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: aaaaa\r\n密码: aaaaa\r\n\r\n网址:http://', 1256349783, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_notice`
--

CREATE TABLE IF NOT EXISTS `pwn_member_notice` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(20) default NULL,
  `title` varchar(255) default NULL,
  `body` text,
  `dtime` int(11) default NULL,
  `xuhao` int(5) default NULL,
  `cl` int(20) default NULL,
  `ifnew` int(1) default NULL,
  `ifred` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_member_notice`
--

INSERT INTO `pwn_member_notice` (`id`, `membertypeid`, `title`, `body`, `dtime`, `xuhao`, `cl`, `ifnew`, `ifred`) VALUES
(1, 0, '这是测试的一条会员公告', '这是测试的一条会员公告', 1220596305, 0, 2, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_nums`
--

CREATE TABLE IF NOT EXISTS `pwn_member_nums` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(50) default NULL,
  `secureid` int(50) default NULL,
  `nums` int(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_nums`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_onlinepay`
--

CREATE TABLE IF NOT EXISTS `pwn_member_onlinepay` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(20) NOT NULL default '0',
  `payid` int(11) NOT NULL default '0',
  `paytype` char(30) NOT NULL default '',
  `paytotal` decimal(10,2) NOT NULL default '0.00',
  `ifpay` int(1) NOT NULL default '0',
  `addtime` int(11) NOT NULL default '0',
  `backtime` int(11) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pwn_member_onlinepay`
--

INSERT INTO `pwn_member_onlinepay` (`id`, `memberid`, `payid`, `paytype`, `paytotal`, `ifpay`, `addtime`, `backtime`, `ip`) VALUES
(1, 150, 2, '支付宝', 0.01, 0, 1255919231, 0, '127.0.0.1'),
(2, 155, 2, '支付宝', 10.00, 0, 1258951502, 0, '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_pay`
--

CREATE TABLE IF NOT EXISTS `pwn_member_pay` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(20) NOT NULL default '0',
  `payid` int(11) NOT NULL default '0',
  `payhb` varchar(30) NOT NULL default '',
  `payhl` decimal(12,4) NOT NULL default '0.0000',
  `oof` decimal(12,2) NOT NULL default '0.00',
  `method` varchar(200) NOT NULL default '',
  `type` varchar(50) NOT NULL default '',
  `addtime` int(11) NOT NULL default '0',
  `fpnum` varchar(100) NOT NULL default '',
  `memo` varchar(255) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `logname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_pay`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_paycenter`
--

CREATE TABLE IF NOT EXISTS `pwn_member_paycenter` (
  `id` int(11) NOT NULL auto_increment,
  `pcenter` varchar(100) NOT NULL default '',
  `pcentertype` int(2) NOT NULL default '0',
  `pcenteruser` varchar(100) NOT NULL default '',
  `pcenterkey` text,
  `key1` text,
  `key2` text,
  `hbtype` varchar(255) NOT NULL default '',
  `postfile` varchar(100) NOT NULL default '',
  `recfile` varchar(100) NOT NULL default '',
  `ifuse` int(1) NOT NULL default '0',
  `ifback` int(1) NOT NULL default '0',
  `intro` text,
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_member_paycenter`
--

INSERT INTO `pwn_member_paycenter` (`id`, `pcenter`, `pcentertype`, `pcenteruser`, `pcenterkey`, `key1`, `key2`, `hbtype`, `postfile`, `recfile`, `ifuse`, `ifback`, `intro`, `xuhao`) VALUES
(1, '送货上门收款', 0, '', '', '', '', '', '', '', 1, 1, '限本地送货上门收款', 1),
(2, '支付宝', 1, '2088002053153634', '9fkjby5pbzscg61vil4pf6xwlp8b9w6d', 'wangjinmin1982@126.com', '', 'alipay_db', 'alipay_db_post.php', 'alipay_db_rec.php', 1, 1, '支付宝担保交易', 2),
(3, '建设银行账户', 0, '', '', '', '', '', '', '', 1, 1, '户名:王小丫\r\n账号:0000000000000000', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_regstep`
--

CREATE TABLE IF NOT EXISTS `pwn_member_regstep` (
  `id` int(8) NOT NULL auto_increment,
  `membertypeid` int(5) NOT NULL default '0',
  `regstep` varchar(30) NOT NULL,
  `stepname` varchar(50) NOT NULL,
  `xuhao` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- 转存表中的数据 `pwn_member_regstep`
--

INSERT INTO `pwn_member_regstep` (`id`, `membertypeid`, `regstep`, `stepname`, `xuhao`) VALUES
(1, 0, 'person', '头像签名设置', 1),
(2, 0, 'detail', '会员资料设置', 2),
(3, 0, 'contact', '填写联系信息', 3),
(69, 26, 'contact', '填写联系信息', 3),
(68, 26, 'detail', '会员资料设置', 2),
(67, 26, 'person', '头像签名设置', 1),
(70, 35, 'person', '头像签名设置', 1),
(71, 35, 'detail', '会员资料设置', 2),
(72, 35, 'contact', '填写联系信息', 3),
(73, 36, 'person', '头像签名设置', 1),
(74, 36, 'detail', '会员资料设置', 2),
(75, 36, 'contact', '填写联系信息', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_rights`
--

CREATE TABLE IF NOT EXISTS `pwn_member_rights` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `secureid` int(12) NOT NULL default '0',
  `securetype` char(100) NOT NULL,
  `secureset` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4666 ;

--
-- 转存表中的数据 `pwn_member_rights`
--

INSERT INTO `pwn_member_rights` (`id`, `memberid`, `secureid`, `securetype`, `secureset`) VALUES
(4665, 155, 113, 'func', '0'),
(4664, 155, 112, 'func', '0'),
(4663, 155, 111, 'func', '0'),
(4662, 155, 101, 'con', '1'),
(4661, 155, 114, 'func', '0'),
(4660, 155, 121, 'func', '0'),
(4659, 155, 122, 'func', '0'),
(4658, 155, 123, 'func', '0'),
(4657, 155, 126, 'class', ':1:2:'),
(4656, 155, 131, 'func', '0'),
(4655, 155, 127, 'func', '0'),
(4654, 155, 132, 'func', '0'),
(4653, 155, 133, 'func', '0');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_secure`
--

CREATE TABLE IF NOT EXISTS `pwn_member_secure` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `securename` char(100) NOT NULL default '',
  `securetype` char(30) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=140 ;

--
-- 转存表中的数据 `pwn_member_secure`
--

INSERT INTO `pwn_member_secure` (`id`, `coltype`, `securename`, `securetype`, `xuhao`) VALUES
(101, 'base', '内容阅读权限级别', 'con', 1),
(111, 'member', '会员登录帐号设置', 'func', 2),
(112, 'member', '会员头像签名设置', 'func', 3),
(113, 'member', '会员个人资料修改', 'func', 4),
(114, 'member', '会员联系信息修改', 'func', 5),
(121, 'news', '文章发布权限', 'func', 6),
(122, 'news', '文章修改权限', 'func', 7),
(123, 'news', '文章发布/修改免审核权限', 'func', 8),
(124, 'news', '文章图片上传权限', 'func', 5),
(125, 'news', '文章附件上传权限', 'func', 8),
(126, 'news', '文章公共分类投稿授权', 'class', 12),
(127, 'news', '文章自定义分类权限', 'func', 9),
(129, 'news', '文章版主权限(推荐/删除)', 'banzhu', 9),
(131, 'comment', '点评发表权限', 'func', 10),
(132, 'comment', '点评回复权限', 'func', 11),
(133, 'comment', '点评免审核权限', 'func', 12),
(134, 'comment', '点评图片上传权限', 'func', 4),
(139, 'comment', '点评版主权限(推荐/删除)', 'banzhu', 9);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_type`
--

CREATE TABLE IF NOT EXISTS `pwn_member_type` (
  `membertypeid` int(6) NOT NULL auto_increment,
  `membertype` varchar(100) default NULL,
  `membergroupid` int(3) NOT NULL default '0',
  `ifcanreg` int(1) default NULL,
  `ifchecked` int(1) default NULL,
  `regxy` text,
  `regmail` text,
  `expday` int(8) default NULL,
  `startcent` int(20) default NULL,
  `endcent` int(20) default NULL,
  `menugroupid` int(5) NOT NULL default '4',
  PRIMARY KEY  (`membertypeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `pwn_member_type`
--

INSERT INTO `pwn_member_type` (`membertypeid`, `membertype`, `membergroupid`, `ifcanreg`, `ifchecked`, `regxy`, `regmail`, `expday`, `startcent`, `endcent`, `menugroupid`) VALUES
(26, '普通会员', 1, 1, 1, '会员注册协议\r\n\r\n1.\r\n2.\r\n3.\r\n4.\r\n5.\r\n', '{#user#},您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: {#user#}\r\n密码: {#password#}\r\n\r\n网址:http://', 0, 0, 0, 4),
(35, 'VIP会员', 1, 0, 1, '', '{#user#},您好!\r\n\r\n感谢您在本站注册!\r\n\r\n登录账号: {#user#}\r\n密码: {#password#}\r\n\r\n网址:http://', 0, 0, 0, 4),
(36, '合作伙伴', 1, 0, 1, '', '', 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_zone`
--

CREATE TABLE IF NOT EXISTS `pwn_member_zone` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(50) default NULL,
  `xuhao` int(4) default NULL,
  `catpath` char(255) default NULL,
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `pwn_member_zone`
--

INSERT INTO `pwn_member_zone` (`catid`, `pid`, `cat`, `xuhao`, `catpath`) VALUES
(1, 0, '北京', 1, '0001:'),
(2, 0, '上海', 2, '0002:'),
(3, 0, '天津', 3, '0003:'),
(4, 0, '重庆', 4, '0004:'),
(5, 0, '浙江', 5, '0005:'),
(6, 0, '江苏', 6, '0006:'),
(7, 0, '广东', 7, '0007:'),
(8, 5, '杭州', 1, '0005:0008:'),
(9, 5, '嘉兴', 2, '0005:0009:'),
(10, 6, '南京', 1, '0006:0010:'),
(11, 6, '苏州', 2, '0006:0011:'),
(12, 7, '广州', 1, '0007:0012:'),
(13, 7, '深圳', 2, '0007:0013:'),
(21, 5, '宁波', 3, '0005:0021:'),
(26, 5, '舟山', 8, '0005:0026:'),
(25, 5, '金华', 7, '0005:0025:'),
(23, 5, '温州', 5, '0005:0023:'),
(22, 5, '湖州', 4, '0005:0022:'),
(24, 5, '台州', 6, '0005:0024:');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_menu`
--

CREATE TABLE IF NOT EXISTS `pwn_menu` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(6) NOT NULL default '1',
  `pid` int(6) NOT NULL default '0',
  `menu` varchar(50) NOT NULL default '',
  `linktype` int(1) NOT NULL default '1',
  `coltype` varchar(30) NOT NULL default '',
  `folder` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL default '',
  `ifshow` int(1) NOT NULL default '0',
  `xuhao` int(4) NOT NULL default '0',
  `target` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=327 ;

--
-- 转存表中的数据 `pwn_menu`
--

INSERT INTO `pwn_menu` (`id`, `groupid`, `pid`, `menu`, `linktype`, `coltype`, `folder`, `url`, `ifshow`, `xuhao`, `target`) VALUES
(3, 1, 0, '保健医疗', 1, '', 'shop/class/?2.html ', 'http://ssss.com', 1, 3, '_self'),
(80, 1, 0, '宠物食品', 1, '', 'shop/class/?1.html', 'http://', 1, 2, '_self'),
(83, 1, 0, '首页', 0, 'index', '', 'http://', 1, 1, '_self'),
(215, 4, 0, '会员资料设置', 1, '', 'member/member_account.php', 'http://', 1, 1, '_self'),
(216, 4, 215, '登录账号设置', 1, '', 'member/member_account.php', 'http://', 1, 1, '_self'),
(152, 3, 0, '关于我们', 1, '', 'page/html/aboutus.php', 'http://', 1, 1, '_self'),
(153, 3, 0, '联系方式', 1, '', 'page/html/contact.php', 'http://', 1, 6, '_self'),
(155, 3, 0, '友情链接', 1, '', 'advs/link/', 'http://', 1, 10, '_self'),
(166, 2, 0, '会员中心', 0, 'member', '', 'http://', 1, 6, '_self'),
(296, 4, 280, '赠品订单查询', 1, '', 'huanzeng/order.php', 'http://', 1, 4, '_self'),
(273, 2, 0, '我的积分', 1, '', 'member/member_cent.php', 'http://', 1, 4, '_self'),
(218, 4, 215, '个人资料修改', 1, '', 'member/member_detail.php', 'http://', 1, 3, '_self'),
(217, 4, 215, '头像签名设置', 1, '', 'member/member_person.php', 'http://', 1, 2, '_self'),
(188, 2, 0, '我的收藏', 1, '', 'member/member_fav.php', 'http://', 1, 1, '_self'),
(272, 2, 0, '我的点评', 1, '', 'member/member_comment.php', 'http://', 1, 3, '_self'),
(206, 1, 0, '玩具训练', 1, '', 'shop/class/?4.html', 'http://', 1, 5, '_self'),
(207, 1, 0, '宠物服装', 1, '', 'shop/class/?5.html', 'http://', 1, 7, '_self'),
(219, 4, 215, '联系信息修改', 1, '', 'member/member_contact.php', 'http://', 1, 4, '_self'),
(286, 4, 235, '我的好友', 1, '', 'member/member_friends.php', 'http://', 1, 7, '_self'),
(287, 4, 235, '站内短信', 1, '', 'member/member_msn.php', 'http://', 1, 8, '_self'),
(291, 3, 0, '售后服务', 1, '', 'page/html/service.php', 'http://', 1, 5, '_self'),
(292, 3, 0, '投诉建议', 0, 'feedback', '', 'http://', 1, 8, '_self'),
(284, 4, 280, '帐户在线充值', 1, '', 'member/member_onlinepay.php', 'http://', 1, 5, '_self'),
(235, 4, 0, '会员个人专区', 1, '', 'member/member_fav.php', 'http://', 1, 3, '_self'),
(236, 4, 235, '我的收藏夹', 1, '', 'member/member_fav.php', 'http://', 1, 1, '_self'),
(238, 4, 235, '我的点评', 1, '', 'member/member_comment.php', 'http://', 1, 3, '_self'),
(240, 4, 235, '我的积分', 1, '', 'member/member_cent.php', 'http://', 1, 6, '_self'),
(243, 4, 215, '安全退出登录', 1, '', 'logout.php', 'http://', 1, 5, '_self'),
(251, 2, 0, '站内短信', 1, '', 'member/member_msn.php', 'http://', 1, 2, '_self'),
(288, 3, 0, '支付方式', 1, '', 'page/html/payment.php', 'http://', 1, 3, '_self'),
(289, 3, 0, '配送说明', 1, '', 'page/html/dev.php', 'http://', 1, 4, '_self'),
(290, 3, 0, '购物指南', 1, '', 'page/html/guide.php', 'http://', 1, 2, '_self'),
(256, 1, 0, '美容护理', 1, '', 'shop/class/?3.html', 'http://', 1, 4, '_self'),
(274, 1, 0, '宠物周边', 1, '', 'shop/class/?58.html', 'http://', 1, 10, '_self'),
(280, 4, 0, '订单账户管理', 0, 'index', '', 'http://', 1, 2, '_self'),
(281, 4, 280, '商品订单查询', 1, '', 'shop/order.php', 'http://', 1, 1, '_self'),
(282, 4, 280, '付款记录查询', 1, '', 'member/member_paylist.php', 'http://', 1, 2, '_self'),
(283, 4, 280, '消费记录查询', 1, '', 'member/member_buylist.php', 'http://', 1, 3, '_self'),
(279, 3, 0, '诚聘英才', 0, 'job', '', 'http://', 1, 9, '_self'),
(285, 1, 0, '品牌查询', 1, '', 'shop/brand.php', 'http://', 1, 11, '_self'),
(324, 2, 0, '积分换赠', 1, '', 'huanzeng/class', 'http://', 1, 5, '_self'),
(295, 1, 0, '积分换赠', 1, '', 'huanzeng/class/', 'http://', 1, 12, '_self'),
(325, 1, 0, '日常用品', 1, '', 'shop/class/?7.html', 'http://', 1, 8, '_self'),
(326, 1, 0, '比赛用品', 1, '', 'shop/class/?8.html', 'http://', 1, 9, '_self');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_menu_group`
--

CREATE TABLE IF NOT EXISTS `pwn_menu_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pwn_menu_group`
--

INSERT INTO `pwn_menu_group` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '频道导航菜单', 1, 0),
(2, '顶部导航菜单', 2, 0),
(3, '底部导航菜单', 3, 0),
(4, '会员功能菜单', 4, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_news_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pwn_news_cat`
--

INSERT INTO `pwn_news_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(1, 0, '网站公告', 1, '0001:', 36, 0, 0),
(2, 0, '最新活动', 2, '0002:', 5, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_con`
--

CREATE TABLE IF NOT EXISTS `pwn_news_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'news',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `fileurl` varchar(100) NOT NULL,
  `tourl` varchar(255) NOT NULL,
  `downcount` int(10) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  `downcentid` int(1) NOT NULL default '1',
  `downcent` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=300 ;

--
-- 转存表中的数据 `pwn_news_con`
--

INSERT INTO `pwn_news_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `fileurl`, `tourl`, `downcount`, `tags`, `zhichi`, `fandui`, `tplog`, `downcentid`, `downcent`) VALUES
(294, 1, '0001:', 0, 'news', '派克钢笔全场2折起 ', '<p>派克钢笔全场2折起 </p>\r\n<p>&nbsp;</p>', 1255919953, 0, 6, 0, 1, 0, '0', 'gif', '', 1263448929, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(295, 1, '0001:', 0, 'news', '2009年年末大盘点销售TOP30 ', '<font color=#000000 size=3>2009年年末大盘点销售TOP30 </font>\r\n<p>&nbsp;</p>', 1255919992, 0, 0, 0, 1, 0, '0', 'gif', '', 1263198008, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(296, 1, '0001:', 0, 'news', '文具市场面临大革新', '<div>文具市场面临大革新</div>', 1255920036, 0, 0, 0, 1, 0, '0', 'gif', '', 1263448881, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(297, 1, '0001:', 0, 'news', '商城周年庆典 送30元现金', '商城周年庆典 送30元现金', 1255920068, 0, 2, 0, 1, 0, '0', 'gif', '', 1263198079, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(298, 1, '0001:', 0, 'news', '新年狂欢夜 单品限量抢购', '新年狂欢夜 单品限量抢购', 1255920126, 0, 9, 0, 1, 0, '0', 'gif', '', 1263198112, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 1, 0, '|150|', 1, 0),
(299, 1, '0001:', 0, 'news', '最新批发方式通知', '最新批发方式通知', 1256047214, 0, 34, 0, 1, 0, '0', 'gif', '', 1263448847, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_config`
--

CREATE TABLE IF NOT EXISTS `pwn_news_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_news_config`
--

INSERT INTO `pwn_news_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(5, '文章主题图片上传尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '256000', '会员发布文章上传主题图片时,单个图片尺寸的限制'),
(6, '文章编辑器图片上传限制(Byte)', 'input', '30', 'EditPicLimit', '512000', '会员发布文章时,在编辑器内上传图片,单个图片的尺寸限制'),
(1, '模块频道名称', 'input', '30', 'ChannelName', '资讯', '本模块对应的频道名称，如“新闻中心”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '0', '是否在当前位置提示条显示模块频道名称'),
(7, '附件上传大小限制', 'input', '30', 'FileSizeLimit', '1024000', '会员发布文章上传附件时,允许上传附件的文件大小;但最高设置不能超过2M '),
(8, '会员发布文章关键词过滤', 'textarea', '30', 'KeywordDeny', '', '会员发布文章时禁止的词语，多个以逗号分割');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_downlog`
--

CREATE TABLE IF NOT EXISTS `pwn_news_downlog` (
  `id` int(12) NOT NULL auto_increment,
  `newsid` int(12) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_news_downlog`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_pages`
--

CREATE TABLE IF NOT EXISTS `pwn_news_pages` (
  `id` int(12) NOT NULL auto_increment,
  `newsid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- 转存表中的数据 `pwn_news_pages`
--

INSERT INTO `pwn_news_pages` (`id`, `newsid`, `body`, `xuhao`) VALUES
(112, 299, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_pcat`
--

CREATE TABLE IF NOT EXISTS `pwn_news_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_news_pcat`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_proj`
--

CREATE TABLE IF NOT EXISTS `pwn_news_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_news_proj`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_prop`
--

CREATE TABLE IF NOT EXISTS `pwn_news_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_news_prop`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_page`
--

CREATE TABLE IF NOT EXISTS `pwn_page` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(6) NOT NULL default '1',
  `title` varchar(200) NOT NULL default '',
  `body` text NOT NULL,
  `xuhao` int(4) NOT NULL default '0',
  `src` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `memo` text NOT NULL,
  `pagefolder` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pwn_page`
--

INSERT INTO `pwn_page` (`id`, `groupid`, `title`, `body`, `xuhao`, `src`, `url`, `memo`, `pagefolder`) VALUES
(1, 1, '关于我们', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; XXX宠物网络技术服务有限公司于2000年10月创建，积累了强大的技术实力和制作经验。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们依托宠物用品商城的覆盖全国的强大宣传平台以及平均每日500万的浏览量，取得了令广大客户满意的宣传效果。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 多年来，我们为宠物行业中的众多生产厂商、犬舍、犬展提供了优质服务。</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们视推动中国宠物业发展为已任，将利用自身丰富的资源和业内认知度，打造更多的宠物行业的成功者。</p>\r\n<p></p>', 1, '', '', '', 'aboutus'),
(9, 1, '投诉建议', '', 8, '', 'feedback/index.php', '', 'tousu'),
(2, 1, '联系方式', '联系方式 ', 7, '', '', '', 'contact'),
(4, 1, '购物指南', '购物指南', 2, '', '', '', 'guide'),
(5, 1, '支付方式', '支付方式', 3, '', '', '', 'payment'),
(6, 1, '配送说明', '配送说明', 4, '', '', '', 'dev'),
(7, 1, '售后服务', '售后服务', 6, '', '', '', 'service');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_page_group`
--

CREATE TABLE IF NOT EXISTS `pwn_page_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  `folder` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_page_group`
--

INSERT INTO `pwn_page_group` (`id`, `groupname`, `xuhao`, `moveable`, `folder`) VALUES
(1, '网站介绍', 1, 0, 'html');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_brand`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_brand` (
  `id` int(12) NOT NULL auto_increment,
  `brand` char(100) NOT NULL default '',
  `logo` char(100) NOT NULL default '',
  `url` char(100) NOT NULL default '',
  `intro` text,
  `xuhao` int(5) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `pwn_shop_brand`
--

INSERT INTO `pwn_shop_brand` (`id`, `brand`, `logo`, `url`, `intro`, `xuhao`, `tj`) VALUES
(3, '其他品牌', 'shop/pics/20100118/1263791768.jpg', 'http://', '', 20, 0),
(4, '皇家', 'shop/pics/20100118/1263791078.gif', 'http://', '', 0, 0),
(5, '冠能', 'shop/pics/20100118/1263791095.gif', 'http://', '', 0, 0),
(6, '康多乐', 'shop/pics/20100118/1263791122.gif', 'http://', '', 0, 0),
(7, '卡比', 'shop/pics/20100118/1263791153.gif', 'http://', '', 0, 0),
(8, '安贝', 'shop/pics/20100118/1263791181.jpg', 'http://', '', 0, 0),
(9, '顶尖', 'shop/pics/20100118/1263791214.jpg', 'http://', '', 0, 0),
(10, '巴西淘淘', 'shop/pics/20100118/1263791243.jpg', 'http://', '', 0, 0),
(11, '福莱希', 'shop/pics/20100118/1263791263.jpg', 'http://', '', 0, 0),
(12, '宠博士', 'shop/pics/20100118/1263791288.jpg', 'http://', '', 0, 0),
(13, '佑达', 'shop/pics/20100118/1263791310.jpg', 'http://', '', 0, 0),
(14, '顽皮', 'shop/pics/20100118/1263791332.jpg', 'http://', '', 0, 0),
(15, '拍拖宝贝', 'shop/pics/20100118/1263791353.jpg', 'http://', '', 0, 0),
(16, '风来客', 'shop/pics/20100118/1263791384.jpg', 'http://', '', 0, 0),
(17, '比瑞吉', 'shop/pics/20100118/1263791403.jpg', 'http://', '', 0, 0),
(18, '宝路', 'shop/pics/20100118/1263791446.jpg', 'http://', '', 0, 0),
(19, '爱丽思', 'shop/pics/20100118/1263791466.jpg', 'http://', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_brandcat`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_brandcat` (
  `id` int(12) NOT NULL auto_increment,
  `brandid` int(10) NOT NULL default '0',
  `catid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1535 ;

--
-- 转存表中的数据 `pwn_shop_brandcat`
--

INSERT INTO `pwn_shop_brandcat` (`id`, `brandid`, `catid`) VALUES
(1416, 4, 1),
(1417, 4, 9),
(1418, 4, 10),
(1419, 4, 155),
(1420, 4, 156),
(1421, 4, 157),
(1422, 5, 1),
(1423, 5, 9),
(1424, 5, 10),
(1425, 5, 155),
(1528, 3, 58),
(1527, 3, 54),
(1526, 3, 53),
(1525, 3, 8),
(1524, 3, 159),
(1523, 3, 158),
(1522, 3, 51),
(1426, 5, 156),
(1427, 5, 157),
(1428, 14, 1),
(1429, 14, 9),
(1430, 14, 10),
(1431, 14, 155),
(1432, 14, 156),
(1433, 14, 157),
(1434, 9, 2),
(1435, 9, 20),
(1436, 9, 21),
(1437, 9, 22),
(1438, 9, 23),
(1521, 3, 50),
(1520, 3, 49),
(1519, 3, 48),
(1518, 3, 7),
(1517, 3, 87),
(1516, 3, 86),
(1515, 3, 40),
(1514, 3, 39),
(1446, 18, 1),
(1439, 9, 160),
(1440, 9, 3),
(1441, 9, 26),
(1442, 9, 27),
(1443, 9, 28),
(1444, 9, 29),
(1445, 9, 30),
(1447, 18, 9),
(1448, 18, 10),
(1449, 18, 155),
(1513, 3, 38),
(1512, 3, 37),
(1511, 3, 36),
(1510, 3, 5),
(1509, 3, 76),
(1508, 3, 35),
(1507, 3, 34),
(1506, 3, 33),
(1450, 18, 156),
(1451, 18, 157),
(1452, 13, 1),
(1453, 13, 9),
(1454, 13, 10),
(1505, 3, 32),
(1504, 3, 4),
(1503, 3, 30),
(1502, 3, 29),
(1501, 3, 28),
(1500, 3, 27),
(1458, 13, 2),
(1457, 13, 157),
(1456, 13, 156),
(1455, 13, 155),
(1499, 3, 26),
(1498, 3, 3),
(1497, 3, 160),
(1496, 3, 23),
(1495, 3, 22),
(1494, 3, 21),
(1459, 13, 20),
(1460, 13, 21),
(1461, 13, 22),
(1462, 13, 23),
(1463, 13, 160),
(1464, 13, 3),
(1465, 13, 26),
(1493, 3, 20),
(1492, 3, 2),
(1491, 3, 157),
(1490, 3, 156),
(1489, 3, 155),
(1466, 13, 27),
(1467, 13, 28),
(1468, 13, 29),
(1469, 13, 30),
(1470, 11, 4),
(1471, 11, 32),
(1472, 11, 33),
(1473, 11, 34),
(1474, 11, 35),
(1475, 11, 76),
(1476, 11, 8),
(1477, 11, 53),
(1488, 3, 10),
(1487, 3, 9),
(1486, 3, 1),
(1478, 11, 54),
(1484, 19, 158),
(1483, 19, 51),
(1482, 19, 50),
(1481, 19, 49),
(1480, 19, 48),
(1479, 19, 7),
(1485, 19, 159),
(1529, 3, 99),
(1530, 3, 100),
(1531, 3, 101),
(1532, 3, 102),
(1533, 3, 132),
(1534, 3, 133);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=161 ;

--
-- 转存表中的数据 `pwn_shop_cat`
--

INSERT INTO `pwn_shop_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(1, 0, '宠物食品', 1, '0001:', 0, 0, 0),
(2, 0, '保健医疗', 2, '0002:', 0, 0, 0),
(3, 0, '美容护理', 3, '0003:', 0, 0, 0),
(4, 0, '玩具训练', 4, '0004:', 0, 0, 0),
(5, 0, '宠物服装', 5, '0005:', 0, 0, 0),
(7, 0, '日常用品', 6, '0007:', 0, 0, 0),
(8, 0, '比赛用品', 7, '0008:', 0, 0, 0),
(9, 1, '主食', 1, '0001:0009:', 0, 0, 0),
(10, 1, '零食', 2, '0001:0010:', 0, 0, 0),
(20, 2, '杀虱除螨', 1, '0002:0020:', 0, 0, 0),
(21, 2, '营养补钙', 2, '0002:0021:', 0, 0, 0),
(22, 2, '驱虫用品', 3, '0002:0022:', 0, 0, 0),
(23, 2, '皮肤健康', 4, '0002:0023:', 0, 0, 0),
(26, 3, '洗浴用具', 1, '0003:0026:', 0, 0, 0),
(27, 3, '香水', 2, '0003:0027:', 0, 0, 0),
(28, 3, '美容梳', 3, '0003:0028:', 0, 0, 0),
(29, 3, '指甲修剪', 4, '0003:0029:', 0, 0, 0),
(30, 3, '耳部清洁', 5, '0003:0030:', 0, 0, 0),
(32, 4, '玩具', 1, '0004:0032:', 0, 0, 0),
(33, 4, '牵引带', 2, '0004:0033:', 0, 0, 0),
(34, 4, '颈圈', 3, '0004:0034:', 0, 0, 0),
(35, 4, '拉胸牵引带', 4, '0004:0035:', 0, 0, 0),
(36, 5, '棉衣', 1, '0005:0036:', 0, 0, 0),
(37, 5, '绒衣', 2, '0005:0037:', 0, 0, 0),
(38, 5, '节日装', 3, '0005:0038:', 0, 0, 0),
(39, 5, '毛衣', 4, '0005:0039:', 0, 0, 0),
(40, 5, '单衣', 5, '0005:0040:', 0, 0, 0),
(100, 58, '宠物T恤', 2, '0058:0100:', 0, 0, 0),
(101, 58, '书籍', 3, '0058:0101:', 0, 0, 0),
(102, 58, '光碟', 4, '0058:0102:', 0, 0, 0),
(48, 7, '笼', 1, '0007:0048:', 0, 0, 0),
(49, 7, '窝', 2, '0007:0049:', 0, 0, 0),
(50, 7, '食具', 3, '0007:0050:', 0, 0, 0),
(51, 7, '卫生', 4, '0007:0051:', 0, 0, 0),
(53, 8, '牵引绳', 1, '0008:0053:', 0, 0, 0),
(54, 8, '护理', 2, '0008:0054:', 0, 0, 0),
(99, 58, '车贴', 1, '0058:0099:', 0, 0, 0),
(58, 0, '宠物周边', 8, '0058:', 0, 0, 0),
(76, 4, '拉颈牵引带', 5, '0004:0076:', 0, 0, 0),
(86, 5, '风雨衣', 6, '0005:0086:', 0, 0, 0),
(87, 5, '春装', 7, '0005:0087:', 0, 0, 0),
(132, 58, '服饰', 5, '0058:0132:', 0, 0, 0),
(133, 58, '家居饰品', 6, '0058:0133:', 0, 0, 0),
(160, 2, '常用药品', 5, '0002:0160:', 0, 0, 0),
(159, 7, '饮水器', 6, '0007:0159:', 0, 0, 0),
(158, 7, '驯导品', 5, '0007:0158:', 0, 0, 0),
(157, 1, '营养品', 5, '0001:0157:', 0, 0, 0),
(156, 1, '处方食品', 4, '0001:0156:', 0, 0, 0),
(155, 1, '罐头', 3, '0001:0155:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_con`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `brandid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'shop',
  `bn` varchar(30) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `canshu` text NOT NULL,
  `price0` decimal(10,2) default '0.00',
  `price` decimal(10,2) default '0.00',
  `danwei` varchar(20) NOT NULL default '',
  `kucun` int(6) NOT NULL default '0',
  `cent` int(10) NOT NULL default '0',
  `weight` int(10) NOT NULL default '0',
  `salenums` int(6) NOT NULL default '0',
  `xuhao` int(5) NOT NULL default '0',
  `cl` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `iffb` int(1) NOT NULL default '0',
  `ifbold` int(1) NOT NULL default '0',
  `ifred` varchar(20) NOT NULL default '',
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) NOT NULL default '',
  `source` varchar(100) NOT NULL default '',
  `memberid` varchar(100) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `tags` varchar(255) NOT NULL default '',
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- 转存表中的数据 `pwn_shop_con`
--

INSERT INTO `pwn_shop_con` (`id`, `catid`, `catpath`, `pcatid`, `brandid`, `contype`, `bn`, `title`, `body`, `canshu`, `price0`, `price`, `danwei`, `kucun`, `cent`, `weight`, `salenums`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `dtime`, `uptime`, `author`, `source`, `memberid`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `tags`, `zhichi`, `fandui`, `tplog`) VALUES
(86, 36, '0005:0036:', 0, 3, 'shop', '957-364', '宠物服饰套装', '', '', 147.60, 123.00, '套', 87765, 123, 555, 0, 0, 0, 0, 1, 0, '0', 'gif', 'shop/pics/20100118/1263795531.jpg', 1263795531, 1263795531, '管理员', '', '0', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(77, 10, '0001:0010:', 0, 4, 'shop', '333-444', '狗咬胶', '', '', 12.00, 10.00, '个', 13212, 10, 15, 0, 0, 6, 0, 1, 0, '0', 'gif', 'shop/pics/20100118/1263794480.jpg', 1263794480, 1263794480, '管理员', '', '0', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(78, 34, '0004:0034:', 0, 3, 'shop', '444-333', '狗狗项圈吊坠', '', '', 36.00, 30.00, '个', 12312, 30, 15, 0, 0, 0, 0, 1, 0, '0', 'gif', 'shop/pics/20100118/1263794562.jpg', 1263794562, 1263794604, '管理员', '', '0', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(79, 37, '0005:0037:', 0, 3, 'shop', '234-453', '宠物服饰', '', '', 72.00, 60.00, '件', 34554, 30, 300, 0, 0, 0, 0, 1, 0, '0', 'gif', 'shop/pics/20100118/1263794812.jpg', 1263794812, 1263794831, '管理员', '', '0', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(80, 32, '0004:0032:', 0, 3, 'shop', '098-454', '橡胶四角', '', '', 18.00, 15.00, '个', 32234, 15, 35, 0, 0, 0, 0, 1, 0, '0', 'gif', 'shop/pics/20100118/1263794904.jpg', 1263794904, 1263794904, '管理员', '', '0', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(81, 32, '0004:0032:', 0, 3, 'shop', '324-476', '橡胶刺猬', '', '', 6.00, 5.00, '个', 2334, 5, 15, 0, 0, 0, 0, 1, 0, '0', 'gif', 'shop/pics/20100118/1263794948.jpg', 1263794948, 1263794948, '管理员', '', '0', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(82, 32, '0004:0032:', 0, 3, 'shop', '342-587', '橡胶骨头', '', '', 9.60, 8.00, '个', 2346, 8, 25, 0, 0, 0, 0, 1, 0, '0', 'gif', 'shop/pics/20100118/1263794986.jpg', 1263794986, 1263794986, '管理员', '', '0', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(83, 34, '0004:0034:', 0, 3, 'shop', '578-289', '鳄鱼皮项圈', '', '', 54.00, 45.00, '个', 88766, 45, 234, 0, 0, 0, 0, 1, 0, '0', 'gif', 'shop/pics/20100118/1263795041.jpg', 1263795041, 1263795041, '管理员', '', '0', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(84, 159, '0007:0159:', 0, 3, 'shop', '635-887', '便携饮水器', '', '', 43.20, 36.00, '个', 4756, 36, 43, 0, 0, 0, 0, 1, 0, '0', 'gif', 'shop/pics/20100118/1263795112.jpg', 1263795112, 1263795112, '管理员', '', '0', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(85, 76, '0004:0076:', 0, 3, 'shop', '234-867', '拉颈牵引带', '', '', 96.00, 80.00, '条', 8765, 80, 345, 0, 0, 0, 0, 1, 0, '0', 'gif', 'shop/pics/20100118/1263795472.jpg', 1263795472, 1263795472, '管理员', '', '0', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_config`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_shop_config`
--

INSERT INTO `pwn_shop_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '网上购物', '本模块对应的频道名称，如“网上购物”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(3, '商品默认计量单位', 'input', '30', 'DefaultDanwei', '个', '发布商品时显示的默认计量单位'),
(5, '是否允许非会员订购', 'YN', '30', 'NoMemberOrder', '1', '开启非会员订购时,不需要会员登录即可直接提交订单，非会员订单不产生会员付款和消费记录，直接处理订单'),
(6, '会员定价规则', 'pricerule', '30', 'PriceRule', '2', '选择按折扣率自动计算会员价格，发布商品时不填写会员价，在订购商品时系统根据折扣率自动计算会员价格；选择发布商品时按折扣率预填会员价格，在发布商品时系统按以下折扣率预填会员价，订购时按实际填写的会员价计算；折扣率设定方式：1.00为无折扣，0.85为85折，依此类推'),
(7, '市场参考价默认比例', 'input', '30', 'MarketPrice', '1.2', '发布商品时，根据商品销售价格自动填写市场参考价的计算比例。如：1.2就是市场参考价为销售价格的1.2倍'),
(21, '是否启用商品订购积分', 'YN', '30', 'CentOpen', '1', '会员在商品订购付款时，是否计算积分'),
(22, '商品订购积分的类型', 'centlist', '30', 'CentId', '5', '商品订购积分所采用的积分类型'),
(23, '商品订购积分的计算方法', 'centmodle', '30', 'CentModle', '1', '请选择按商品固定的积分值计算积分，或按商品实际购买价格计算积分'),
(24, '商品购买价格和积分的计算比例', 'input', '30', 'CentRate', '1.0', '在按商品实际购买价格计算积分时，商品实际购买价格和积分的兑换比例。如：2.0表示购买1元商品获得2个积分，依此类推');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_memberprice`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_memberprice` (
  `id` int(12) NOT NULL auto_increment,
  `gid` int(10) NOT NULL default '0',
  `membertypeid` int(6) NOT NULL default '0',
  `price` decimal(8,2) NOT NULL default '0.00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=154 ;

--
-- 转存表中的数据 `pwn_shop_memberprice`
--

INSERT INTO `pwn_shop_memberprice` (`id`, `gid`, `membertypeid`, `price`) VALUES
(153, 86, 36, 92.25),
(152, 86, 35, 110.70),
(151, 86, 26, 123.00),
(147, 84, 36, 27.00),
(146, 84, 35, 32.40),
(145, 84, 26, 36.00),
(150, 85, 36, 60.00),
(149, 85, 35, 72.00),
(148, 85, 26, 80.00),
(129, 78, 36, 22.50),
(128, 78, 35, 27.00),
(127, 78, 26, 30.00),
(138, 81, 36, 3.75),
(137, 81, 35, 4.50),
(136, 81, 26, 5.00),
(126, 77, 36, 7.50),
(125, 77, 35, 9.00),
(124, 77, 26, 10.00),
(144, 83, 36, 33.75),
(143, 83, 35, 40.50),
(142, 83, 26, 45.00),
(132, 79, 36, 45.00),
(131, 79, 35, 54.00),
(130, 79, 26, 60.00),
(135, 80, 36, 11.25),
(134, 80, 35, 13.50),
(133, 80, 26, 15.00),
(141, 82, 36, 6.00),
(140, 82, 35, 7.20),
(139, 82, 26, 8.00);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_order`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_order` (
  `orderid` int(8) NOT NULL auto_increment,
  `OrderNo` varchar(30) NOT NULL default '',
  `memberid` int(6) NOT NULL default '0',
  `user` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `tel` varchar(50) NOT NULL,
  `mobi` varchar(50) NOT NULL,
  `qq` varchar(30) NOT NULL,
  `email` varchar(150) NOT NULL,
  `s_name` varchar(50) NOT NULL default '',
  `s_tel` varchar(100) NOT NULL default '',
  `s_addr` varchar(100) NOT NULL default '',
  `s_postcode` varchar(20) NOT NULL,
  `s_mobi` varchar(30) NOT NULL default '',
  `s_qq` varchar(50) NOT NULL,
  `s_time` varchar(50) NOT NULL default '',
  `goodstotal` decimal(12,2) NOT NULL default '0.00',
  `yunzoneid` int(10) NOT NULL default '0',
  `yunid` int(8) NOT NULL default '0',
  `yuntype` varchar(100) NOT NULL default '',
  `yunifbao` int(1) NOT NULL default '0',
  `yunbaofei` decimal(12,2) NOT NULL default '0.00',
  `yunfei` decimal(12,2) NOT NULL default '0.00',
  `totaloof` decimal(12,2) NOT NULL default '0.00',
  `totalcent` int(10) NOT NULL default '0',
  `totalweight` int(10) NOT NULL default '0',
  `payid` int(12) NOT NULL default '0',
  `paytype` varchar(50) NOT NULL default '0',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `iflook` int(1) NOT NULL default '0',
  `ifyun` int(1) NOT NULL default '0',
  `ifpay` int(1) NOT NULL default '0',
  `ifok` int(1) NOT NULL default '0',
  `iftui` int(1) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  `dtime` int(11) NOT NULL default '0',
  `paytime` int(11) NOT NULL default '0',
  `yuntime` int(11) NOT NULL default '0',
  `bz` text,
  `items` text,
  PRIMARY KEY  (`orderid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_shop_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_orderitems`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_orderitems` (
  `id` int(8) NOT NULL auto_increment,
  `memberid` int(6) NOT NULL default '0',
  `orderid` int(6) NOT NULL default '0',
  `gid` int(6) NOT NULL default '0',
  `bn` varchar(100) NOT NULL default '',
  `goods` varchar(100) NOT NULL default '0',
  `price` decimal(12,2) NOT NULL default '0.00',
  `weight` int(10) NOT NULL default '0',
  `nums` int(6) NOT NULL default '0',
  `danwei` varchar(30) NOT NULL default '',
  `jine` decimal(9,2) NOT NULL default '0.00',
  `cent` int(10) NOT NULL default '0',
  `ifyun` int(1) NOT NULL default '0',
  `iftui` int(1) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `yuntime` int(11) NOT NULL default '0',
  `msg` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_shop_orderitems`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_pages`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_pages` (
  `id` int(12) NOT NULL auto_increment,
  `gid` int(12) NOT NULL default '0',
  `src` varchar(150) NOT NULL default '',
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_shop_pages`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_pricerule`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_pricerule` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(6) NOT NULL default '0',
  `pr` decimal(5,2) NOT NULL default '1.00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_shop_pricerule`
--

INSERT INTO `pwn_shop_pricerule` (`id`, `membertypeid`, `pr`) VALUES
(1, 26, 1.00),
(2, 35, 0.90),
(3, 36, 0.75);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_prop`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=477 ;

--
-- 转存表中的数据 `pwn_shop_prop`
--

INSERT INTO `pwn_shop_prop` (`id`, `catid`, `propname`, `xuhao`) VALUES
(109, 45, '材质', 1),
(110, 45, '颜色', 2),
(111, 45, '大小', 3),
(112, 46, '材质', 1),
(113, 46, '颜色', 2),
(114, 46, '大小', 3),
(115, 47, '材质', 1),
(116, 47, '颜色', 2),
(117, 47, '大小', 3),
(442, 52, '容量', 3),
(441, 52, '规格', 2),
(440, 52, '功效', 1),
(151, 57, '材质', 1),
(152, 57, '颜色', 2),
(153, 57, '大小', 3),
(211, 63, '功效', 1),
(212, 63, '规格', 2),
(213, 63, '容量', 3),
(214, 63, '适用', 4),
(215, 64, '功效', 1),
(216, 64, '规格', 2),
(217, 64, '容量', 3),
(218, 64, '适用', 4),
(219, 65, '功效', 1),
(220, 65, '规格', 2),
(221, 65, '容量', 3),
(222, 65, '适用', 4),
(223, 66, '功效', 1),
(224, 66, '规格', 2),
(225, 66, '容量', 3),
(226, 66, '适用', 4),
(227, 67, '功效', 1),
(228, 67, '规格', 2),
(229, 67, '容量', 3),
(230, 67, '适用', 4),
(231, 68, '功效', 1),
(232, 68, '规格', 2),
(233, 68, '容量', 3),
(234, 68, '适用', 4),
(235, 69, '功效', 1),
(236, 69, '规格', 2),
(237, 69, '容量', 3),
(238, 69, '适用', 4),
(313, 82, '功效', 1),
(314, 82, '规格', 2),
(315, 82, '容量', 3),
(316, 82, '适用', 4),
(317, 83, '功效', 1),
(318, 83, '规格', 2),
(319, 83, '容量', 3),
(320, 83, '适用', 4),
(443, 52, '适用', 4),
(459, 59, '功效', 1),
(460, 59, '规格', 2),
(461, 59, '容量', 3),
(462, 59, '适用', 4),
(463, 103, '功效', 1),
(464, 103, '规格', 2),
(465, 103, '容量', 3),
(466, 103, '适用', 4),
(467, 104, '功效', 1),
(468, 104, '规格', 2),
(469, 104, '容量', 3),
(470, 104, '适用', 4),
(471, 105, '功效', 1),
(472, 105, '规格', 2),
(473, 105, '容量', 3),
(474, 105, '适用', 4);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_vcat`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_vcat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_shop_vcat`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_yun`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_yun` (
  `id` int(12) NOT NULL auto_increment,
  `yunname` varchar(50) NOT NULL default '',
  `spec` varchar(50) NOT NULL default '',
  `dinge` int(1) NOT NULL default '0',
  `yunfei` decimal(12,2) NOT NULL default '0.00',
  `gs` varchar(255) NOT NULL default '',
  `dgs` varchar(255) NOT NULL default '',
  `sgs` varchar(255) NOT NULL default '',
  `baojia` int(1) NOT NULL default '0',
  `baofei` decimal(5,2) NOT NULL default '0.00',
  `baodi` decimal(12,2) NOT NULL default '0.00',
  `zonestr` text,
  `memo` text,
  `xuhao` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_shop_yun`
--

INSERT INTO `pwn_shop_yun` (`id`, `yunname`, `spec`, `dinge`, `yunfei`, `gs`, `dgs`, `sgs`, `baojia`, `baofei`, `baodi`, `zonestr`, `memo`, `xuhao`) VALUES
(1, '上海本地送货上门', '', 1, 30.00, '||||||1||||1||||', '||||||||', '', 0, 0.00, 1.00, '|4|10|11|12|13|', '上海本地送货上门,固定运费30元', 1),
(2, '中国邮政EMS', '国内', 0, 0.00, '0|500|20||||1|500|500|6|1||||', '||||||||', '', 0, 0.00, 1.00, '|1|2|3|4|10|11|12|13|5|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|', '中国邮政EMS国内除港澳台以外地区', 2),
(3, '中国邮政EMS', '港澳台', 0, 0.00, '|500|20||||1|500|500|150|1||||', '||||||||', '', 1, 1.00, 1.00, '', '', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_shop_yunzone`
--

CREATE TABLE IF NOT EXISTS `pwn_shop_yunzone` (
  `id` int(12) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `zone` char(50) NOT NULL default '',
  `xuhao` int(6) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `pwn_shop_yunzone`
--

INSERT INTO `pwn_shop_yunzone` (`id`, `pid`, `zone`, `xuhao`) VALUES
(1, 0, '北京市', 1),
(2, 1, '海淀区', 1),
(3, 1, '丰台区', 2),
(4, 0, '上海市', 2),
(5, 0, '浙江省', 3),
(14, 5, '杭州市', 1),
(15, 5, '宁波市', 2),
(16, 5, '温州市', 3),
(10, 4, '徐汇区', 1),
(11, 4, '静安区', 2),
(12, 4, '闵行区', 3),
(13, 4, '宝山区', 4),
(17, 5, '嘉兴市', 4),
(18, 5, '舟山市', 5),
(19, 5, '绍兴市', 6),
(20, 0, '江苏省', 7),
(21, 20, '南京市', 1),
(22, 20, '无锡市', 2),
(23, 20, '苏州市', 3),
(24, 20, '常州市', 4),
(25, 0, '广东省', 8),
(26, 25, '广州市', 1),
(27, 25, '深圳市', 2),
(28, 25, '中山市', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_code`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_code` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `cat` varchar(100) NOT NULL,
  `groupid` int(11) NOT NULL default '0',
  `groupname` varchar(100) NOT NULL,
  `qq` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `memo` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `xuhao` int(11) NOT NULL default '0',
  `iffb` int(1) NOT NULL default '1',
  `tj` int(1) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_tools_code`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_photopolldata`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_photopolldata` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `body` text,
  `iffb` int(1) NOT NULL default '0',
  `tj` int(1) default NULL,
  `secure` int(11) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) default NULL,
  `type` varchar(30) NOT NULL,
  `src` varchar(150) NOT NULL,
  `color` varchar(20) NOT NULL default '',
  `votes` int(14) NOT NULL default '0',
  `votesinfo1` text NOT NULL,
  `votesinfo2` text NOT NULL,
  `votesinfo3` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_tools_photopolldata`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_photopollindex`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_photopollindex` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(12) NOT NULL,
  `catpath` char(255) default NULL,
  `cat` varchar(100) NOT NULL,
  `groupname` varchar(100) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  `exp_time` int(11) NOT NULL default '0',
  `expire` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_tools_photopollindex`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_pollconfig`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_pollconfig` (
  `config_id` smallint(5) unsigned NOT NULL auto_increment,
  `img_height` int(5) NOT NULL default '0',
  `img_length` int(5) NOT NULL default '0',
  `vodinfo` varchar(225) NOT NULL default '0',
  `def_options` smallint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_tools_pollconfig`
--

INSERT INTO `pwn_tools_pollconfig` (`config_id`, `img_height`, `img_length`, `vodinfo`, `def_options`) VALUES
(1, 20, 10, '对不起,您已经投过票了', 10);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_polldata`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_polldata` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) NOT NULL default '0',
  `option_id` int(11) NOT NULL default '0',
  `option_text` varchar(200) NOT NULL default '',
  `color` varchar(20) NOT NULL default '',
  `votes` int(14) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `pwn_tools_polldata`
--

INSERT INTO `pwn_tools_polldata` (`id`, `poll_id`, `option_id`, `option_text`, `color`, `votes`) VALUES
(29, 11, 3, '护理电器', 'brown', 0),
(28, 11, 2, '生活电器', 'aqua', 0),
(27, 11, 1, '厨房电器', 'gold', 1),
(30, 11, 4, '健康电器', 'grey', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_pollindex`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_pollindex` (
  `id` int(11) NOT NULL auto_increment,
  `groupname` varchar(100) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  `exp_time` int(11) NOT NULL default '0',
  `expire` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `pwn_tools_pollindex`
--

INSERT INTO `pwn_tools_pollindex` (`id`, `groupname`, `timestamp`, `status`, `exp_time`, `expire`) VALUES
(11, '您最希望购买什么产品', 1256046826, 1, 1271598826, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statbase`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statbase` (
  `id` int(8) NOT NULL auto_increment,
  `ShowCountType` int(1) default NULL,
  `ShowCountSize` int(1) default NULL,
  `ShowCount` int(1) default NULL,
  `ShowCountStat` int(1) default NULL,
  `starttime` int(11) default NULL,
  `CountIpExp` int(3) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_tools_statbase`
--

INSERT INTO `pwn_tools_statbase` (`id`, `ShowCountType`, `ShowCountSize`, `ShowCount`, `ShowCountStat`, `starttime`, `CountIpExp`) VALUES
(1, 17, 8, 2, 0, 1234728185, 5);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statcome`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statcome` (
  `id` int(12) NOT NULL auto_increment,
  `url` varchar(255) NOT NULL default '',
  `count` int(5) NOT NULL default '0',
  `begingtime` int(11) NOT NULL default '0',
  `lasttime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_tools_statcome`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statcount`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statcount` (
  `id` int(21) NOT NULL auto_increment,
  `ip` varchar(17) NOT NULL default '',
  `os` varchar(40) NOT NULL default '',
  `browse` varchar(30) NOT NULL default '',
  `urlform` varchar(255) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `nowpage` varchar(255) default NULL,
  `member` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_tools_statcount`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statdate`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statdate` (
  `id` int(2) NOT NULL auto_increment,
  `1th_day` int(5) NOT NULL default '0',
  `2th_day` int(5) NOT NULL default '0',
  `3th_day` int(5) NOT NULL default '0',
  `4th_day` int(5) NOT NULL default '0',
  `5th_day` int(5) NOT NULL default '0',
  `6th_day` int(5) NOT NULL default '0',
  `7th_day` int(5) NOT NULL default '0',
  `8th_day` int(5) NOT NULL default '0',
  `9th_day` int(5) NOT NULL default '0',
  `10th_day` int(5) NOT NULL default '0',
  `11th_day` int(5) NOT NULL default '0',
  `12th_day` int(5) NOT NULL default '0',
  `13th_day` int(5) NOT NULL default '0',
  `14th_day` int(5) NOT NULL default '0',
  `15th_day` int(5) NOT NULL default '0',
  `16th_day` int(5) NOT NULL default '0',
  `17th_day` int(5) NOT NULL default '0',
  `18th_day` int(5) NOT NULL default '0',
  `19th_day` int(5) NOT NULL default '0',
  `20th_day` int(5) NOT NULL default '0',
  `21th_day` int(5) NOT NULL default '0',
  `22th_day` int(5) NOT NULL default '0',
  `23th_day` int(5) NOT NULL default '0',
  `24th_day` int(5) NOT NULL default '0',
  `25th_day` int(5) NOT NULL default '0',
  `26th_day` int(5) NOT NULL default '0',
  `27th_day` int(5) NOT NULL default '0',
  `28th_day` int(5) NOT NULL default '0',
  `29th_day` int(5) NOT NULL default '0',
  `30th_day` int(5) NOT NULL default '0',
  `31th_day` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `pwn_tools_statdate`
--

INSERT INTO `pwn_tools_statdate` (`id`, `1th_day`, `2th_day`, `3th_day`, `4th_day`, `5th_day`, `6th_day`, `7th_day`, `8th_day`, `9th_day`, `10th_day`, `11th_day`, `12th_day`, `13th_day`, `14th_day`, `15th_day`, `16th_day`, `17th_day`, `18th_day`, `19th_day`, `20th_day`, `21th_day`, `22th_day`, `23th_day`, `24th_day`, `25th_day`, `26th_day`, `27th_day`, `28th_day`, `29th_day`, `30th_day`, `31th_day`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
