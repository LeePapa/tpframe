-- ----------------------------
-- Table structure for tpf_ad
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `name` varchar(200) NOT NULL COMMENT '广告名称',
  `content` text COMMENT '广告内容',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tpf_addon
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_addon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) DEFAULT NULL COMMENT '插件模块',
  `title` varchar(100) DEFAULT NULL COMMENT '插件标题',
  `describe` varchar(255) DEFAULT NULL COMMENT '插件描述',
  `config` varchar(255) DEFAULT NULL COMMENT '插件配置',
  `author` varchar(100) DEFAULT NULL COMMENT '作者',
  `version` varchar(20) DEFAULT NULL COMMENT '插件版本',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态 1启用 0禁用',
  `type` varchar(50) DEFAULT NULL COMMENT '插件分类  行为插件 模块插件  行为模块插件',
  `create_time` varchar(30) DEFAULT NULL,
  `update_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tpf_category
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `parentid` int(11) DEFAULT '0' COMMENT '父类ID',
  `isnav` tinyint(4) DEFAULT '0' COMMENT '是否是导航 0否  1是',
  `sort` smallint(11) DEFAULT '0' COMMENT '排序',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `display` tinyint(4) DEFAULT '1' COMMENT '是否显示  0：不显示   1显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tpf_category
-- ----------------------------
INSERT INTO `tpf_category` VALUES 
('1', '博客', '0', '1', '1', '/posts/index/cid/1', '0'),
('2', '原型设计', '1', '0', '1', '', '1'),
('3', '微信设计', '1', '0', '1', '', '1'),
('4', 'APP设计', '1', '0', '1', '', '1'),
('5', 'H5设计', '1', '0', '1', '', '1'),
('6', '用户体验', '1', '0', '1', '', '1'),
('7', '案例', '0', '1', '1', '/index/cases/cid/7', '1');

-- ----------------------------
-- Table structure for tpf_config
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tpf_config
-- ----------------------------

-- ----------------------------
-- Table structure for tpf_hook
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_hook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '钩子名称',
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `module` varchar(100) DEFAULT NULL COMMENT '插件模块',
  `update_time` varchar(30) DEFAULT '0' COMMENT '更新时间',
  `create_time` varchar(30) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tpf_friend_link
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_friend_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '友情链接名称',
  `url` varchar(100) DEFAULT NULL COMMENT '友情链接地址',
  `image` varchar(100) DEFAULT NULL COMMENT '友情链接图标',
  `target` varchar(10) DEFAULT '_blank' COMMENT '友情链接打开方式',
  `description` varchar(255) DEFAULT NULL COMMENT '友情链接描述',
  `status` int(2) DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `rating` int(2) DEFAULT '0' COMMENT '友情链接评级',
  `relation` varchar(255) DEFAULT NULL COMMENT '链接与网站的关系',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tpf_friend_link
-- ----------------------------
INSERT INTO `tpf_friend_link` VALUES ('1', 'tpframe', 'http://www.tpframe.com', '', '_blank', 'tpframe', '0', '0', null, '1');

-- ----------------------------
-- Table structure for tpf_menu
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `module` varchar(30) DEFAULT 'backend' COMMENT '模块名',
  `controller` varchar(30) DEFAULT 'Index' COMMENT '控制器',
  `action` varchar(30) DEFAULT 'index' COMMENT '默认操作',
  `type` tinyint(4) DEFAULT '1' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `urlext` varchar(100) DEFAULT NULL COMMENT '扩展参数',
  `display` tinyint(4) DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序ID',
  `parentid` int(11) DEFAULT '0' COMMENT '父id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tpf_menu
-- ----------------------------
INSERT INTO `tpf_menu` VALUES 
('1', '基本信息', 'backend', 'Index', 'index', '1', null, '1', null, null, '1', '0'),
('2', '用户中心', 'backend', 'Index', 'index', '1', null, '1', null, null, '2', '0'),
('3', '扩展管理', 'backend', 'Index', 'index', '1', null, '1', null, null, '3', '0'),
('4', '插件模块', 'backend', 'Index', 'index', '1', null, '1', null, null, '4', '0'),
('27', '微信管理', 'backend', 'Index', 'index', '1', null, '1', null, null, '5', '0'),

('10', '系统', 'backend', 'Index', 'index', '1', '', '1', '', 'th', '1', '1'),
('11', '清空缓存', 'backend', 'Setting', 'clear', '1', '', '1', '', '', '1', '10'),
('12', '更新系统', 'backend', 'Upgrade', 'index', '1', '', '1', '', '', '2', '10'),
('13', '后台操作日志', 'backend', 'AdminLog', 'index', '1', '', '1', '', '', '3', '10'),

('5', '设置', 'backend', 'Index', 'index', '1', '', '1', '', 'cogs', '2', '1'),
('6', '个人信息', 'backend', 'Index', 'index', '1', '', '1', '', '', '1', '5'),
('7', '修改信息', 'backend', 'Member', 'userinfo', '1', '', '1', '', '', '1', '6'),
('8', '修改密码', 'backend', 'Member', 'uppwd', '1', '', '1', '', '', '2', '6'),
('9', '网站信息', 'backend', 'Setting', 'site', '1', '', '1', '', '', '2', '5'),

('14', '菜单管理', 'backend', 'Index', 'index', '1', '', '1', '', 'list', '3', '1'),
('15', '后台菜单', 'backend', 'Menu', 'index', '1', '', '1', '', '', '1', '14'),
('16', '前台菜单', 'backend', 'Index', 'index', '1', '', '1', '', '', '2', '14'),
('17', '菜单管理', 'backend', 'Nav', 'index', '1', '', '1', '', '', '1', '16'),
('18', '菜单分类', 'backend', 'NavCat', 'index', '1', '', '1', '', '', '2', '16'),


('19', '用户管理', 'backend', 'Index', 'index', '1', '', '1', '', 'group', '1', '2'),
('20', '用户组', 'backend', 'Index', 'index', '1', '', '1', '', '', '1', '19'),
('21', '本站用户', 'backend', 'Member', 'index', '1', '', '1', '', '', '1', '20'),

('22', '管理组', 'backend', 'Index', 'index', '1', '', '1', '', '', '2', '19'),
('23', '管理员', 'backend', 'Member', 'admin', '1', '', '1', '', '', '1', '22'),
('24', '角色管理', 'backend', 'Role', 'index', '1', '', '1', '管理员角色', '', '2', '22'),

('25', '扩展工具', 'backend', 'Index', 'index', '1', '', '1', '', 'cloud', '1', '3'),
('26', '插件管理', 'backend', 'addon', 'addonlist', '1', null, '1', null, null, '1', '25');

-- ----------------------------
-- Table structure for tpf_nav
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL COMMENT '导航父 id',
  `label` varchar(255) NOT NULL COMMENT '导航标题',
  `target` varchar(50) DEFAULT NULL COMMENT '打开方式',
  `nav_type` varchar(20) DEFAULT NULL COMMENT '导航类型',
  `href` varchar(255) NOT NULL COMMENT '导航链接',
  `icon` varchar(255) NOT NULL COMMENT '导航图标',
  `display` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `sort` int(6) DEFAULT '0' COMMENT '排序',
  `path` varchar(255) NOT NULL COMMENT '层级关系',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '导航分类 id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航表';

-- ----------------------------
-- Records of tpf_nav
-- ----------------------------
INSERT INTO `tpf_nav` VALUES 
('1', '0', '案例', '_self', 'href_text', 'Index/cases', '', '0', '0', '0', '1'),
('2', '0', '博客', '_self', 'href_text', 'Index/news', '', '0', '0', '0', '1'),
('3', '0', '关于', '_self', 'href_text', 'Index/about', '', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for tpf_nav_cat
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_nav_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '导航分类名',
  `active` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为主菜单，1是，0不是',
  `remark` varchar(200) COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航分类表';

-- ----------------------------
-- Records of tpf_nav_cat
-- ----------------------------
INSERT INTO `tpf_nav_cat` VALUES ('1', '主导航', '1', '主导航');

-- ----------------------------
-- Table structure for tpf_posts
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `datetime` varchar(30) DEFAULT NULL COMMENT '添加时间，不可更改，一般不显示给用户',
  `updatetime` varchar(30) DEFAULT NULL COMMENT '更新时间，可更改，一般显示给用户',
  `thumb` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `source` varchar(255) DEFAULT NULL COMMENT '文章来源',
  `author` varchar(30) DEFAULT NULL COMMENT '作者',
  `view` int(11) DEFAULT '0' COMMENT '浏览量',
  `likes` int(11) DEFAULT '0' COMMENT '点赞数',
  `type` tinyint(4) DEFAULT NULL COMMENT '文章类型',
  `ischeck` tinyint(4) DEFAULT '1' COMMENT '是否审核 1已审核，0未审核',
  `iscomment` tinyint(4) DEFAULT '1' COMMENT '是否可评论，1允许，0不允许',
  `istop` tinyint(4) DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `isrecommend` tinyint(4) DEFAULT '0' COMMENT '推荐 1推荐 0不推荐',
  `isdelete` tinyint(4) DEFAULT '0' COMMENT '是否删除  0 未删除   1已删除',
  `cateid` int(11) DEFAULT NULL COMMENT '分类id',
  `parentid` int(11) DEFAULT '0' COMMENT '父id',
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tpf_posts
-- ----------------------------
INSERT INTO `tpf_posts` VALUES 
('1', 'TPFrame 正式上线', '<p>\r\n <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1499913494', '1497156908', '', '本站', 'tpframe', '23', '0', '1', '0', '0', '0', '1', '0', '1', '0', '0'),
('2', 'TPFrame 正式上线', '<p>\r\n <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498034319', '1497148729', null, '本站', 'tpframe', '16', '0', '1', '1', '1', '0', '0', '1', '2', '0', '0'),
('3', 'TPFrame 正式上线', '<p>\r\n <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498034319', '1497148729', null, '本站', 'tpframe', '39', '0', '2', '0', '0', '0', '0', '0', '2', '0', '0'),
('4', 'TPFrame 正式上线', '<p>\r\n <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498034319', '1497148729', null, '本站', 'tpframe', '9', '0', '1', '1', '1', '0', '0', '1', '5', '0', '0'),
('5', 'TPFrame 正式上线', '<p>\r\n <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1497152844', '1497148729', null, '本站', 'tpframe', '2', '0', '1', '1', '1', '0', '0', '0', '4', '0', '0'),
('6', 'TPFrame 正式上线', '<p>\r\n <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498034319', '1497148729', null, '本站', 'tpframe', '7', '0', '1', '1', '1', '0', '0', '0', '2', '0', '0'),
('7', 'TPFrame 正式上线', '<p>\r\n <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498034964', '1497148729', null, '本站', 'tpframe', '4', '0', '1', '1', '1', '0', '0', '0', '4', '0', '0'),
('8', 'TPFrame 正式上线', '<p>\r\n <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498103128', '1497148729', null, '本站', 'tpframe', '2', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('9', 'TPFrame 正式上线', '<p>\r\n <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498108591', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('10', 'TPFrame 正式上线', '<p>\r\n  <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498114235', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('11', 'TPFrame 正式上线', '<p>\r\n  <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498114280', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('12', 'TPFrame 正式上线', '<p>\r\n  <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498114280', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('13', 'TPFrame 正式上线', '<p>\r\n  <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498114280', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('14', 'TPFrame 正式上线', '<p>\r\n  <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498114280', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('15', 'TPFrame 正式上线', '<p>\r\n  <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498114280', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('16', 'TPFrame 正式上线', '<p>\r\n  <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498114280', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('17', 'TPFrame 正式上线', '<p>\r\n  <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498114280', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('18', 'TPFrame 正式上线', '<p>\r\n  <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498114280', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('19', 'TPFrame 正式上线', '<p>\r\n  <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498114280', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0'),
('20', 'TPFrame 正式上线', '<p>\r\n  <img src=\"/data/uploads/20170713/128ee9657bf2e2b09c89ddca4d29e4be.jpg\" alt=\"\" /><br />\r\nTPFrame 是一款新起的专门为项目速成的PHP框架，基于thinkphp5.0，程序完全开源，可进行任何的二次开发，废弃thinkphp3.2函数编程模式，数据模式全部采用对象封装', '1498114280', '1497148729', null, '本站', 'tpframe', '0', '0', '1', '1', '1', '0', '0', '0', '7', '0', '0');

-- ----------------------------
-- Table structure for tpf_role
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名',
  `privs` varchar(255) DEFAULT NULL COMMENT '权限列表',
  `role_describe` varchar(255) DEFAULT NULL COMMENT '权限描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='管理员角色表';

-- ----------------------------
-- Table structure for tpf_setting
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sign` varchar(30) DEFAULT NULL COMMENT '配置名',
  `options` text COMMENT '配置选项',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tpf_slide
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_slide` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '幻灯片分类 id',
  `name` varchar(255) NOT NULL COMMENT '幻灯片名称',
  `pic` varchar(255) DEFAULT NULL COMMENT '幻灯片图片',
  `url` varchar(255) DEFAULT NULL COMMENT '幻灯片链接',
  `des` varchar(255) DEFAULT NULL COMMENT '幻灯片描述',
  `content` text COMMENT '幻灯片内容',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

-- ----------------------------
-- Records of tpf_slide
-- ----------------------------
INSERT INTO `tpf_slide` VALUES 
('1', '1', '1', '/data/uploads/20170713/8df6cfdb0a8dbcc2d3ea9e7af9b80759.jpg', '/', '', '', '1', '0'),
('2', '1', '2', '/data/uploads/20170713/3dc497387a1d6046560dfe8b43f0a0bc.jpg', '/', '', '', '1', '0'),
('3', '1', '3', '/data/uploads/20170713/e261eee1c255f8642623f7b70b9b16a3.jpg', '/', '', '', '1', '0');

-- ----------------------------
-- Table structure for tpf_slide_cat
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_slide_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '幻灯片分类名称',
  `sign` varchar(255) NOT NULL COMMENT '幻灯片分类标识',
  `remark` text COMMENT '分类备注',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片分类表';

-- ----------------------------
-- Records of tpf_slide_cat
-- ----------------------------
INSERT INTO `tpf_slide_cat` VALUES ('1', '首页大图广告', 'banner', '首页大图广告', '1');

-- ----------------------------
-- Table structure for tpf_user
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `headimg` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `nickname` varchar(30) DEFAULT NULL COMMENT '昵称',
  `gender` tinyint(4) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `grade` tinyint(4) DEFAULT '0' COMMENT '用户等级  1管理员 0普通用户',
  `birthday` varchar(30) DEFAULT NULL COMMENT '生日',
  `url` varchar(200) DEFAULT NULL COMMENT '用户个人网站',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(20) DEFAULT NULL COMMENT '最后登录ip',
  `last_login_time` varchar(30) DEFAULT '0' COMMENT '最后登录时间',
  `create_time` varchar(30) DEFAULT '0' COMMENT '会员创建时间',
  `isban` tinyint(4) DEFAULT '0' COMMENT '是否被拉黑 0否 1是',
  `privs` varchar(255) DEFAULT NULL COMMENT '用户权限列表',
  `role_id` int(11) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tpf_admin_log
-- ----------------------------
CREATE TABLE IF NOT EXISTS `tpf_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_value` mediumtext COMMENT '原值',
  `new_value` mediumtext COMMENT '新值',
  `module` varchar(15) NOT NULL COMMENT '模块',
  `controller` varchar(20) NOT NULL COMMENT '控制器',
  `action` varchar(20) NOT NULL COMMENT '操作',
  `data` mediumtext NOT NULL COMMENT '数据',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `datetime` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`controller`,`action`),
  KEY `username` (`username`,`action`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
