/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50619
Source Host           : localhost:3306
Source Database       : select

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2014-12-07 02:35:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for problem
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ptitle` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `source` varchar(10) DEFAULT NULL,
  `gist` varchar(1000) DEFAULT NULL COMMENT ' 依据',
  `goal` varchar(1000) DEFAULT NULL COMMENT '  目标',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES ('1', '基于Windows2000平台安装配置实现DNS服务器', null, 'DNS服务', null, null, '注：本题除了配置实现基本的域名正向和反向解析之外，还要求明确给出DNS服务的服务器端和客户端两端的配置文件的存储位置和内容，以及DNS服务器端的资源记录中的全部记录和参数的含义及作用、配置建议。并给出本地DNS服务器的根名字服务器的初始化缓存文件的位置和内容。');
INSERT INTO `problem` VALUES ('2', '基于Windows2003平台安装配置实现DNS服务器', '0', 'DNS服务', null, null, '注：本题除了配置实现基本的域名正向和反向解析之外，还要求明确给出DNS服务的服务器端和客户端两端的配置文件的存储位置和内容，以及DNS服务器端的资源记录中的全部记录和参数的含义及作用、配置建议。并给出本地DNS服务器的根名字服务器的初始化缓存文件的位置和内容。');
INSERT INTO `problem` VALUES ('3', '基于Windows2008平台安装配置实现DNS服务器', null, 'DNS服务', null, null, '注：本题除了配置实现基本的域名正向和反向解析之外，还要求明确给出DNS服务的服务器端和客户端两端的配置文件的存储位置和内容，以及DNS服务器端的资源记录中的全部记录和参数的含义及作用、配置建议。并给出本地DNS服务器的根名字服务器的初始化缓存文件的位置和内容。');
INSERT INTO `problem` VALUES ('4', '基于Linux平台(RedHat)安装配置实现DNS服务器', null, 'DNS服务', null, null, '注：本题除了配置实现基本的域名正向和反向解析之外，还要求明确给出DNS服务的服务器端和客户端两端的配置文件的存储位置和内容，以及DNS服务器端的资源记录中的全部记录和参数的含义及作用、配置建议。并给出本地DNS服务器的根名字服务器的初始化缓存文件的位置和内容。');
INSERT INTO `problem` VALUES ('5', '基于Linux平台(Fedora)安装配置实现DNS服务器', null, 'DNS服务', null, null, '注：本题除了配置实现基本的域名正向和反向解析之外，还要求明确给出DNS服务的服务器端和客户端两端的配置文件的存储位置和内容，以及DNS服务器端的资源记录中的全部记录和参数的含义及作用、配置建议。并给出本地DNS服务器的根名字服务器的初始化缓存文件的位置和内容。');
INSERT INTO `problem` VALUES ('6', '基于Linux平台(Ubuntu)安装配置实现DNS服务器', null, 'DNS服务', null, null, '注：本题除了配置实现基本的域名正向和反向解析之外，还要求明确给出DNS服务的服务器端和客户端两端的配置文件的存储位置和内容，以及DNS服务器端的资源记录中的全部记录和参数的含义及作用、配置建议。并给出本地DNS服务器的根名字服务器的初始化缓存文件的位置和内容。');
INSERT INTO `problem` VALUES ('7', '基于Windows2000平台安装配置实现IIS Web服务器', null, 'WEB服务', null, null, '注：本题要求配置实现在一台IIS服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出IIS服务器的全部配置选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('8', '基于Windows2000平台安装配置实现Apache Web服务器', null, 'WEB服务', null, null, '注：本题要求配置实现在一台Apache服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出Apache服务器配置文件的全部内容和选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('9', '基于Windows2003平台安装配置实现IIS Web服务器', null, 'WEB服务', null, null, '注：本题要求配置实现在一台IIS服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出IIS服务器的全部配置选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('10', '基于Windows2003平台安装配置实现Apache Web服务器', null, 'WEB服务', null, null, '注：本题要求配置实现在一台Apache服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出Apache服务器配置文件的全部内容和选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('11', '基于Windows2008平台安装配置实现IIS Web服务器', null, 'WEB服务', null, null, '注：本题要求配置实现在一台IIS服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出IIS服务器的全部配置选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('12', '基于Windows2008平台安装配置实现Apache Web服务器', null, 'WEB服务', null, null, '注：本题要求配置实现在一台Apache服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出Apache服务器配置文件的全部内容和选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('13', '基于Linux平台(RedHat)安装配置实现Web服务器', null, 'WEB服务', null, null, '注：本题要求给出Apache服务器配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('14', '基于Linux平台(Fedora)安装配置实现Web服务器', null, 'WEB服务', null, null, '注：本题要求给出Apache服务器配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('15', '基于Linux平台(Ubuntu)安装配置实现Web服务器', null, 'WEB服务', null, null, '注：本题要求给出Apache服务器配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('16', '基于Windows2000平台配置实现利用SSL协议的安全IIS Web服务器*', null, 'WEB服务', null, null, '注：利用SSL协议，本题要求配置实现在一台IIS服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出IIS服务器的全部配置选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('17', '基于Windows2000平台配置实现利用SSL协议的安全Apache Web服务器*', null, 'WEB服务', null, null, '注：利用SSL协议，本题要求配置实现在一台Apache服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出Apache服务器配置文件的全部内容和选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('18', '基于Windows2003平台配置实现利用SSL协议的安全IIS Web服务器*', null, 'WEB服务', null, null, '注：利用SSL协议，本题要求配置实现在一台IIS服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出IIS服务器的全部配置选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('19', '基于Windows2003平台配置实现利用SSL协议的安全Apache Web服务器*', null, 'WEB服务', null, null, '注：利用SSL协议，本题要求配置实现在一台Apache服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出Apache服务器配置文件的全部内容和选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('20', '基于Windows2008平台配置实现利用SSL协议的安全IIS Web服务器*', null, 'WEB服务', null, null, '注：利用SSL协议，本题要求配置实现在一台IIS服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出IIS服务器的全部配置选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('21', '基于Windows2008平台配置实现利用SSL协议的安全Apache Web服务器*', null, 'WEB服务', null, null, '注：本题要求配置实现在一台Apache服务器上同时运行多个Web站点。可通过3种方式（不同站点使用不同IP地址、不同站点用相同IP的不同端口号、不同站点用相同IP和端口号但使用不同的主机名称/站点标识）配置实现，要求至少实现3种方式中的2种。相关的DNS服务器的配置也要实现。要求给出Apache服务器配置文件的全部内容和选项的含义及作用、配置建议。并配置实现自定义的Web错误（404）提示页面。');
INSERT INTO `problem` VALUES ('22', '基于Windows2000平台安装配置实现IIS FTP服务器', null, 'FTP服务', null, null, '注：本题除了要求配置实现命名和匿名FTP服务、主动模式和被动模式FTP连接之外，还要求明确给出FTP服务的服务器端和客户端(要求纯DOS命令行方式，且需使用完整的FTP地址格式ftp://用户名:密码@ftp主机域名:端口号/虚拟目录别名/文件夹/文件)两端的全部配置选项和参数的含义及作用、配置建议。并给出IIS FTP服务器对客户端的全部控制功能的实现和旗标、日志文件的用法。');
INSERT INTO `problem` VALUES ('23', '基于Windows2000平台安装配置实现Serv-U FTP服务器', null, 'FTP服务', null, null, '注：本题除了要求配置实现命名和匿名FTP服务、主动模式和被动模式FTP连接之外，还要求明确给出FTP服务的服务器端和客户端(要求使用GUI方式客户端软件)两端的全部配置选项和参数的含义及作用、配置建议。并给出Serv-U FTP服务器对客户端的全部控制功能的实现和日志文件的用法。');
INSERT INTO `problem` VALUES ('24', '基于Windows2003平台安装配置实现IIS FTP服务器', null, 'FTP服务', null, null, '注：本题除了要求配置实现主动模式和被动模式FTP连接之外，还要求明确给出FTP服务的服务器端和客户端(要求纯DOS命令行方式，且需使用完整的FTP地址格式ftp://用户名:密码@ftp主机域名:端口号/虚拟目录别名/文件夹/文件)两端的全部配置选项和参数的含义及作用、配置建议。并给出IIS FTP服务器对客户端的全部控制功能的实现。');
INSERT INTO `problem` VALUES ('25', '基于Windows2003平台安装配置实现Serv-U FTP服务器', null, 'FTP服务', null, null, '注：本题除了要求配置实现主动模式和被动模式FTP连接之外，还要求明确给出FTP服务的服务器端和客户端(要求使用GUI方式客户端软件)两端的全部配置选项和参数的含义及作用、配置建议。并给出Serv-U FTP服务器对客户端的全部控制功能的实现。');
INSERT INTO `problem` VALUES ('26', '基于Windows2008平台安装配置实现IIS FTP服务器', null, 'FTP服务', null, null, '注：本题要求给出IIS FTP服务器端配置的全部内容、全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('27', '基于Windows2008平台安装配置实现Serv-U FTP服务器', null, 'FTP服务', null, null, '注：本题要求给出Serv-U FTP服务器端配置的全部内容、全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('28', '基于Linux平台(RedHat)安装配置实现FTP服务器', null, 'FTP服务', null, null, '注：本题要求给出FTP服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('29', '基于Linux平台(Fedora)安装配置实现FTP服务器', null, 'FTP服务', null, null, '注：本题要求给出FTP服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('30', '基于Linux平台(Ubuntu)安装配置实现FTP服务器', null, 'FTP服务', null, null, '注：本题要求给出FTP服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('31', '基于Windows2000平台配置实现利用SSL协议的安全Serv-U FTP服务器*', null, 'FTP服务', null, null, '注：利用SSL协议，本题除了要求配置实现命名和匿名FTP服务、主动模式和被动模式FTP连接之外，还要求明确给出FTP服务的服务器端和客户端(要求使用GUI方式客户端软件)两端的全部配置选项和参数的含义及作用、配置建议。并给出Serv-U FTP服务器对客户端的全部控制功能的实现和日志文件的用法。');
INSERT INTO `problem` VALUES ('32', '基于Windows2003平台配置实现利用SSL协议的安全FTP服务器*', null, 'FTP服务', null, null, '注：利用SSL协议，本题除了要求配置实现命名和匿名FTP服务、主动模式和被动模式FTP连接之外，还要求明确给出FTP服务的服务器端和客户端(要求使用GUI方式客户端软件)两端的全部配置选项和参数的含义及作用、配置建议。并给出Serv-U FTP服务器对客户端的全部控制功能的实现和日志文件的用法。');
INSERT INTO `problem` VALUES ('33', '基于Windows2008平台配置实现利用SSL协议的安全FTP服务器*', null, 'FTP服务', null, null, '注：利用SSL协议，本题除了要求配置实现命名和匿名FTP服务、主动模式和被动模式FTP连接之外，还要求明确给出FTP服务的服务器端和客户端(要求使用GUI方式客户端软件)两端的全部配置选项和参数的含义及作用、配置建议。并给出Serv-U FTP服务器对客户端的全部控制功能的实现和日志文件的用法。');
INSERT INTO `problem` VALUES ('34', '基于Windows2000平台安装配置实现IIS SMTP服务器和NNTP网络新闻组服务器', null, 'E-Mail服务', null, null, '注：本题要求给出IIS SMTP服务器端和NNTP服务器端配置的全部内容、全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('35', '基于Windows2000平台安装配置实现POP3/IMAP4和SMTP邮件服务器', null, 'E-Mail服务', null, null, '注：本题要求使用第三方邮件服务器端软件如Exchange Server或Imail、WinMail等实现POP3/IMAP4和SMTP邮件服务器的全部功能。要求给出服务器端和客户端配置的全部内容、选项的含义及作用、配置建议。客户端要求至少演示使用两种邮件客户端软件（如Imail Client、Outlook Express或Foxmail等）进行收发邮件的测试。如使用Imail/WinMail服务器，还要求配置实现Web方式的电子邮件服务。');
INSERT INTO `problem` VALUES ('36', '基于Windows2003平台安装配置实现POP3/IMAP4和SMTP邮件服务器', null, 'E-Mail服务', null, null, '注：本题要求使用第三方邮件服务器端软件如Exchange Server或Imail、WinMail等实现POP3/IMAP4和SMTP邮件服务器的全部功能。要求给出服务器端配置的全部内容、全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('37', '基于Windows2008平台安装配置实现POP3/IMAP4和SMTP邮件服务器', null, 'E-Mail服务', null, null, '注：本题要求使用第三方邮件服务器端软件如Exchange Server或Imail、WinMail等实现POP3/IMAP4和SMTP邮件服务器的全部功能。要求给出服务器端配置的全部内容、全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('38', '基于Linux平台(RedHat)安装配置实现POP3/IMAP4和SMTP邮件服务器', null, 'E-Mail服务', null, null, '注：本题要求给出邮件服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('39', '基于Linux平台(Fedora)安装配置实现POP3/IMAP4和SMTP邮件服务器', null, 'E-Mail服务', null, null, '注：本题要求给出邮件服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('40', '基于Linux平台(Ubuntu)安装配置实现POP3/IMAP4和SMTP邮件服务器', null, 'E-Mail服务', null, null, '注：本题要求给出邮件服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('41', '基于Windows2003平台配置实现利用SSL协议的安全E-MAIL邮件服务器*', null, 'E-Mail服务', null, null, '注：利用SSL协议，本题要求使用第三方邮件服务器端软件如Exchange Server或Imail、WinMail等实现POP3/IMAP4和SMTP邮件服务器的全部功能。要求给出服务器端配置的全部内容、全部选项的含义及作用、配置建议。');
INSERT INTO `problem` VALUES ('42', '基于Windows2000平台安装配置实现DHCP服务器', null, 'DHCP服务', null, null, '注：本题要求演示DHCP服务器的安装、授权和激活全过程，以及配置实现DHCP客户机(全部命令行)和客户端保留、DHCP服务器端的选项（服务器选项和作用域选项）、DHCP中继代理和DHCP服务器维护（DHCP数据库的备份恢复、数据库碎片整理）的全部内容。');
INSERT INTO `problem` VALUES ('43', '基于Windows2003平台安装配置实现DHCP服务器', null, 'DHCP服务', null, null, '注：本题要求演示DHCP服务器的安装、授权和激活全过程，以及配置实现DHCP客户机(全部命令行)和客户端保留、DHCP服务器端的选项（服务器选项和作用域选项）、和DHCP服务器维护（DHCP数据库的备份恢复、数据库碎片整理）的全部内容。');
INSERT INTO `problem` VALUES ('44', '基于Windows2008平台安装配置实现DHCP服务器', null, 'DHCP服务', null, null, '本题要求演示DHCP服务的安装和配置实现，以及DHCP客户机(全部命令行)和客户端保留、DHCP服务器端的选项（服务器选项和作用域选项）的全部内容。');
INSERT INTO `problem` VALUES ('45', '基于Linux平台(RedHat)安装配置实现DHCP服务器', null, 'DHCP服务', null, null, '本题要求给出DHCP服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议，以及DHCP客户机的相关测试命令行的演示。');
INSERT INTO `problem` VALUES ('46', '基于Linux平台(Fedora)安装配置实现DHCP服务器', null, 'DHCP服务', null, null, '本题要求给出DHCP服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议，以及DHCP客户机的相关测试命令行的演示。');
INSERT INTO `problem` VALUES ('47', '基于Linux平台(Ubuntu)安装配置实现DHCP服务器', null, 'DHCP服务', null, null, '本题要求给出DHCP服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议，以及DHCP客户机的相关测试命令行的演示。');
INSERT INTO `problem` VALUES ('48', '基于Linux平台(RedHat)安装配置实现Samba服务器', null, 'FS/NFS服务', null, null, '注：本题要求给出Samba服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议，以及分别在Windows和Linux两种客户端的测试过程。');
INSERT INTO `problem` VALUES ('49', '基于Linux平台(Fedora)安装配置实现Samba服务', null, 'FS/NFS服务', null, null, '注：本题要求给出Samba服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议，以及分别在Windows和Linux两种客户端的测试过程。');
INSERT INTO `problem` VALUES ('50', '基于Linux平台(Ubuntu)安装配置实现Samba服务', null, 'FS/NFS服务', null, null, '注：本题要求给出Samba服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议，以及分别在Windows和Linux两种客户端的测试过程。');
INSERT INTO `problem` VALUES ('51', '基于Linux平台(RedHat)安装配置实现NFS服务', null, 'FS/NFS服务', null, null, '注：本题要求给出NFS服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议（特别是安全方面的推荐配置），以及客户端用3种方法挂载NFS文件系统的演示。');
INSERT INTO `problem` VALUES ('52', '基于Linux平台(Fedora)安装配置实现NFS服务', null, 'FS/NFS服务', null, null, '注：本题要求给出NFS服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议（特别是安全方面的推荐配置），以及客户端用3种方法挂载NFS文件系统的演示。');
INSERT INTO `problem` VALUES ('53', '基于Linux平台(Ubuntu)安装配置实现NFS服务', null, 'FS/NFS服务', null, null, '注：本题要求给出NFS服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议（特别是安全方面的推荐配置），以及客户端用3种方法挂载NFS文件系统的演示。');
INSERT INTO `problem` VALUES ('54', '基于Windows2000平台配置实现LDAP服务（基于AD域林的网络资源目录服务）', null, 'LDAP服务', null, null, '注：本题要求演示从dcpromo.exe开始安装一个名为abc.com的主域控制器的过程及其重启后的全部配置内容，要求配置实现域林、域和子域3个层次及每域中包含多个站点，并集成DNS功能，以及使用AD活动目录管理Windows2000的域用户账号、计算机、组、域和域控制器、使用AD进行网络共享资源管理和权限设置、网络打印设置以及用活动目录对子域或组织单元进行委派控制的方法。');
INSERT INTO `problem` VALUES ('55', '基于Windows2003平台配置实现LDAP服务（基于AD域林的网络资源目录服务）', null, 'LDAP服务', null, null, '注：本题要求演示安装一个名为abc.com的主域控制器的过程及其全部配置内容，要求配置为集成DNS，并演示使用AD活动目录管理Windows的域用户账号、计算机、组、域和域控制器、使用AD进行网络共享资源管理和权限设置、网络打印设置以及用活动目录对子域或组织单元进行委派控制的方法。');
INSERT INTO `problem` VALUES ('56', '基于Windows2008平台配置实现LDAP服务（基于AD域林的网络资源目录服务）', null, 'LDAP服务', null, null, '注：本题要求演示安装及配置实现一个名为abc.com的主域控制器的全部过程，并演示使用AD活动目录管理Windows的域用户账号、计算机、组、域和域控制器、使用AD进行网络共享资源管理和权限设置、网络打印设置的方法。');
INSERT INTO `problem` VALUES ('57', '基于Linux平台(RedHat)安装配置实现LDAP服务*', null, 'LDAP服务', null, null, '注：本题要求演示在服务器端进行LDAP服务安装和配置的全部内容，包括配置文件中选项的含义及作用和可能的配置建议，以及客户端的相关测试操作。');
INSERT INTO `problem` VALUES ('58', '基于Linux平台(Fedora)安装配置实现LDAP服务*', null, 'LDAP服务', null, null, '注：本题要求演示在服务器端进行LDAP服务安装和配置的全部内容，包括配置文件中选项的含义及作用和可能的配置建议，以及客户端的相关测试操作。');
INSERT INTO `problem` VALUES ('59', '基于Linux平台(Ubuntu)安装配置实现LDAP服务*', null, 'LDAP服务', null, null, '注：本题要求演示在服务器端进行LDAP服务安装和配置的全部内容，包括配置文件中选项的含义及作用和可能的配置建议，以及客户端的相关测试操作。');
INSERT INTO `problem` VALUES ('60', '基于Windows平台安装配置实现CCProxy Socks代理服务', null, 'Socks代理服务', null, null, '注：本题要求至少配置实现代理Web/FTP/E-Mail/Telnet这4种客户端应用的流量，并且演示代理服务的安装和配置的全部内容。');
INSERT INTO `problem` VALUES ('61', '基于Windows平台安装配置实现WinGate Socks代理服务', null, 'Socks代理服务', null, null, '注：本题要求至少配置实现代理Web/FTP/E-Mail/Telnet这4种客户端应用的流量，并且演示代理服务的安装和配置的全部内容。');
INSERT INTO `problem` VALUES ('62', '基于Windows平台安装配置实现Sygate Socks代理服务', null, 'Socks代理服务', null, null, '注：本题要求至少配置实现代理Web/FTP/E-Mail/Telnet这4种客户端应用的流量，并且演示代理服务的安装和配置的全部内容。');
INSERT INTO `problem` VALUES ('63', '基于Linux平台(RedHat)安装配置实现Socks代理服务', null, 'Socks代理服务', null, null, '注：本题要求演示Squid代理服务的安装启用过程，以及服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议和客户端的相关测试。');
INSERT INTO `problem` VALUES ('64', '基于Linux平台(Fedora)安装配置实现Socks代理服务', null, 'Socks代理服务', null, null, '注：本题要求演示代理服务的安装启用过程，以及服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议和客户端的相关测试。');
INSERT INTO `problem` VALUES ('65', '基于Linux平台(Ubuntu)安装配置实现Socks代理服务', null, 'Socks代理服务', null, null, '注：本题要求演示代理服务的安装启用过程，以及服务器端配置文件的存储位置和全部内容，包括其中全部选项的含义及作用、配置建议和客户端的相关测试。');
INSERT INTO `problem` VALUES ('66', '基于Windows2003平台安装配置实现NNTP网络新闻组服务', null, 'NNTP网络新闻组服务', null, null, '本题使用的新闻组服务器软件不限，强烈建议使用免费的ArGoSoft News Server。要求演示其安装和配置选项的全部内容。');
INSERT INTO `problem` VALUES ('67', '基于Linux平台(RedHat)安装配置实现NNTP网络新闻组服务*', null, 'NNTP网络新闻组服务', null, null, '本题使用的新闻组服务器软件不限，建议服务器端使用开源项目INN2，客户端使用XNEWS。要求演示其两端组件的安装和配置选项的全部内容。');
INSERT INTO `problem` VALUES ('68', '基于Linux平台(Fedora)安装配置实现NNTP网络新闻组服务*', null, 'NNTP网络新闻组服务', null, null, '本题使用的新闻组服务器软件不限，建议服务器端使用开源项目INN2，客户端使用XNEWS。要求演示其两端组件的安装和配置选项的全部内容。');
INSERT INTO `problem` VALUES ('69', '基于Linux平台(Ubuntu)安装配置实现NNTP网络新闻组服务*', null, 'NNTP网络新闻组服务', null, null, '本题使用的新闻组服务器软件不限，建议服务器端使用开源项目INN2，客户端使用XNEWS。要求演示其两端组件的安装和配置选项的全部内容。');
INSERT INTO `problem` VALUES ('70', '基于Windows2000平台安装配置实现WINS服务', null, 'WINS服务', null, null, '注：本题要求演示WINS服务的安装和配置实现NetBIOS名称解析的四个环节（名称注册、更新、查询、释放）过程，以及配置实现WINS代理和WINS数据库维护（WINS数据库的备份还原、数据库整理和压缩整理、清理和WINS复制、复制伙伴）的全部内容。');
INSERT INTO `problem` VALUES ('71', '基于Windows2003平台安装配置实现WINS服务', null, 'WINS服务', null, null, '注：本题要求演示WINS服务的安装和配置实现NetBIOS名称解析的四个环节（名称注册、更新、查询、释放）过程，以及WINS数据库维护（WINS数据库的备份还原、数据库整理和压缩整理、清理和WINS复制、复制伙伴）的全部内容。');
INSERT INTO `problem` VALUES ('72', '基于Windows2008平台安装配置实现WINS服务', null, 'WINS服务', null, null, '注：本题要求演示WINS服务的安装和配置过程，以及WINS数据库维护（WINS数据库的备份还原、数据库整理和压缩整理、清理）的全部内容。');
INSERT INTO `problem` VALUES ('73', '基于Windows2003平台安装配置实现网络流媒体服务*', null, '网络流媒体/视频点播服务', null, null, '注：本题要求利用Windows Media Service服务组件将Windows 2003 Server系统配置为流媒体点播、单播及广播服务器。要求演示B/S两端的配置和测试的全部内容。');
INSERT INTO `problem` VALUES ('74', '在Windows平台上利用第三方软件配置实现网络视频点播服务器', null, '网络流媒体/视频点播服务', null, null, '注：本题要求利用第三方软件（建议使用国内破解的美萍VOD视频点播系统 v8.4 标准版）在Windows系统中配置实现网络流媒体视频点播服务器。要求演示B/S两端的配置和测试的全部内容。');
INSERT INTO `problem` VALUES ('75', '基于Linux平台(RedHat)安装配置实现网络流媒体服务*', null, '网络流媒体/视频点播服务', null, null, '注：本题要求配置实现流媒体点播服务器。要求演示客户端分别为Windows和Linux系统的配置和测试的全部内容。');
INSERT INTO `problem` VALUES ('76', '基于Linux平台(Fedora)安装配置实现网络流媒体服务*', null, '网络流媒体/视频点播服务', null, null, '注：本题要求配置实现流媒体点播服务器。要求演示客户端为Linux系统的配置和测试的全部内容。');
INSERT INTO `problem` VALUES ('77', '基于Linux平台(Ubuntu)安装配置实现网络流媒体服务*', null, '网络流媒体/视频点播服务', null, null, '注：本题要求配置实现流媒体点播服务器。要求演示客户端为Linux系统的配置和测试的全部内容。');
INSERT INTO `problem` VALUES ('78', '基于Windows平台配置实现PPTP方式的VPN远程访问服务器', null, 'VPN远程访问服务', null, null, '无');
INSERT INTO `problem` VALUES ('79', '基于Windows系统的ISA Server配置实现VPN远程访问服务器', null, 'VPN远程访问服务', null, null, '无');
INSERT INTO `problem` VALUES ('80', '基于Linux系统中的开源项目pptpd配置实现VPN远程访问服务器*', null, 'VPN远程访问服务', null, null, '无');
INSERT INTO `problem` VALUES ('81', '在Windows2003平台上通过RDP远程终端服务实现远程主机管理', null, '远程主机管理', null, null, '无');
INSERT INTO `problem` VALUES ('82', '利用远程控制软件PcAnyWhere配置实现对服务器的远程管理及每日维护更新', null, '远程主机管理', null, null, '无');
INSERT INTO `problem` VALUES ('83', '利用远程控制软件DameWare配置实现对服务器的远程管理和监控', null, '远程主机管理', null, null, '无');
INSERT INTO `problem` VALUES ('84', '基于Windows平台配置实现聊天服务器', null, '其他杂类服务', null, null, '注：本题使用的聊天服务器软件不限。建议服务器端使用FreeICQServer 2003 b0711.exe做聊天服务器软件，客户端使用FreeICQ 2003 b0904.exe(有破解版)做聊天软件构建即时消息聊天系统。');
INSERT INTO `problem` VALUES ('85', '基于Windows平台配置实现网络多媒体教学系统', null, '其他杂类服务', null, null, '注：本题使用的网络多媒体教学系统软件不限。建议选用洪恩多媒体教学系统。');
INSERT INTO `problem` VALUES ('86', '编程实现ping命令', null, '编程类', null, null, '编程实现ping命令');
INSERT INTO `problem` VALUES ('87', '编程实现抓包', null, '编程类', null, null, '实现显示本地IP，对方IP，端口号，mac地址等');
INSERT INTO `problem` VALUES ('88', '编程实现代理服务器', '2012508051', '编程类', null, null, '编程实现代理服务器');
INSERT INTO `problem` VALUES ('89', '编程实现即时通信的聊天工具', null, '编程类', null, null, '编程实现即时通信的聊天工具');
INSERT INTO `problem` VALUES ('90', '自定义编程题', null, '编程类', null, null, '根据自己兴趣爱好，编写与课程有关的程序');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(30) NOT NULL DEFAULT '' COMMENT '账户名',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `classes` varchar(20) DEFAULT NULL COMMENT '班级',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `rank` int(1) DEFAULT '0' COMMENT '等级权限',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
