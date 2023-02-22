-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: hellocq
-- ------------------------------------------------------
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pw_acloud_apis`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_acloud_apis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `template` text DEFAULT NULL,
  `argument` varchar(255) NOT NULL DEFAULT '',
  `argument_type` varchar(255) NOT NULL DEFAULT '',
  `fields` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `category` tinyint(3) NOT NULL DEFAULT 0,
  `created_time` int(10) NOT NULL DEFAULT 0,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_acloud_app_configs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_acloud_app_configs` (
  `app_id` char(22) NOT NULL DEFAULT '',
  `app_key` varchar(30) NOT NULL DEFAULT '',
  `app_value` text DEFAULT NULL,
  `app_type` tinyint(3) NOT NULL DEFAULT 1,
  `created_time` int(10) NOT NULL DEFAULT 0,
  `modified_time` int(10) NOT NULL DEFAULT 0,
  UNIQUE KEY `app_id` (`app_id`,`app_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_acloud_apps`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_acloud_apps` (
  `app_id` char(22) NOT NULL DEFAULT '',
  `app_name` varchar(60) NOT NULL DEFAULT '',
  `app_token` char(128) NOT NULL DEFAULT '',
  `created_time` int(10) NOT NULL DEFAULT 0,
  `modified_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`app_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_acloud_extras`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_acloud_extras` (
  `ekey` varchar(100) NOT NULL DEFAULT '',
  `evalue` text DEFAULT NULL,
  `etype` tinyint(3) NOT NULL DEFAULT 1,
  `created_time` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ekey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_acloud_keys`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_acloud_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key1` char(128) NOT NULL DEFAULT '',
  `key2` char(128) NOT NULL DEFAULT '',
  `key3` char(128) NOT NULL DEFAULT '',
  `key4` char(128) NOT NULL DEFAULT '',
  `key5` char(128) NOT NULL DEFAULT '',
  `key6` char(128) NOT NULL DEFAULT '',
  `created_time` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_acloud_sql_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_acloud_sql_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log` text DEFAULT NULL,
  `created_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=104938 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_acloud_table_settings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_acloud_table_settings` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `category` tinyint(3) NOT NULL DEFAULT 0,
  `primary_key` varchar(20) NOT NULL DEFAULT '',
  `created_time` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_actattachs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_actattachs` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `actid` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT 0,
  `attachurl` varchar(255) NOT NULL DEFAULT '',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `uploadtime` int(10) NOT NULL DEFAULT 0,
  `descrip` varchar(100) NOT NULL DEFAULT '',
  `ifthumb` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`aid`),
  KEY `idx_actid` (`actid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_actions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_actions` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `images` char(15) NOT NULL DEFAULT '',
  `name` char(15) NOT NULL DEFAULT '',
  `descrip` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_active`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_active` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `title` varchar(120) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT 0,
  `begintime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `deadline` int(10) unsigned NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL DEFAULT '',
  `objecter` tinyint(3) NOT NULL DEFAULT 0,
  `limitnum` tinyint(3) NOT NULL DEFAULT 0,
  `price` decimal(8,2) NOT NULL,
  `introduction` varchar(255) NOT NULL DEFAULT '',
  `poster` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `members` int(10) unsigned NOT NULL DEFAULT 0,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_cid` (`cid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activity`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activity` (
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `admin` int(10) NOT NULL DEFAULT 0,
  `starttime` int(10) NOT NULL DEFAULT 0,
  `endtime` int(10) NOT NULL DEFAULT 0,
  `location` varchar(20) NOT NULL DEFAULT '',
  `num` smallint(6) NOT NULL DEFAULT 0,
  `sexneed` tinyint(3) NOT NULL DEFAULT 0,
  `costs` int(10) NOT NULL DEFAULT 0,
  `deadline` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`),
  KEY `idx_admin` (`admin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activitycate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activitycate` (
  `actid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `ifable` tinyint(3) NOT NULL DEFAULT 1,
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `ifdel` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`actid`),
  KEY `idx_vieworder` (`vieworder`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activitydefaultvalue`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activitydefaultvalue` (
  `tid` int(10) unsigned NOT NULL,
  `actmid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  `iscertified` tinyint(3) NOT NULL DEFAULT 1,
  `iscancel` tinyint(3) NOT NULL DEFAULT 0,
  `out_biz_no` varchar(255) DEFAULT NULL,
  `batch_no` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `recommend` tinyint(1) NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `location` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(255) NOT NULL DEFAULT '',
  `picture1` varchar(255) NOT NULL DEFAULT '',
  `picture2` varchar(255) NOT NULL DEFAULT '',
  `picture3` varchar(255) NOT NULL DEFAULT '',
  `picture4` varchar(255) NOT NULL DEFAULT '',
  `picture5` varchar(255) NOT NULL DEFAULT '',
  `signupstarttime` int(10) unsigned NOT NULL DEFAULT 0,
  `signupendtime` int(10) unsigned NOT NULL DEFAULT 0,
  `minparticipant` int(10) unsigned NOT NULL DEFAULT 0,
  `maxparticipant` int(10) unsigned NOT NULL DEFAULT 0,
  `userlimit` tinyint(3) NOT NULL DEFAULT 0,
  `specificuserlimit` varchar(255) NOT NULL DEFAULT '',
  `genderlimit` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `fees` varchar(255) NOT NULL DEFAULT '',
  `feesdetail` varchar(255) NOT NULL DEFAULT '',
  `paymethod` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `pushtime` int(10) NOT NULL DEFAULT 0,
  `updatetime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`),
  KEY `idx_actmid_fid` (`actmid`,`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityfield`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityfield` (
  `fieldid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `actmid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT '',
  `rules` mediumtext NOT NULL,
  `ifable` tinyint(3) NOT NULL DEFAULT 1,
  `ifsearch` tinyint(3) NOT NULL DEFAULT 0,
  `ifasearch` tinyint(3) NOT NULL DEFAULT 0,
  `issearchable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `threadshow` tinyint(3) NOT NULL DEFAULT 0,
  `allowthreadshow` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `ifmust` tinyint(3) NOT NULL DEFAULT 1,
  `ifdel` tinyint(3) NOT NULL DEFAULT 1,
  `mustenable` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `textwidth` tinyint(3) NOT NULL DEFAULT 0,
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `sectionname` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fieldid`),
  KEY `idx_actmid` (`actmid`)
) ENGINE=MyISAM AUTO_INCREMENT=537 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activitymembers`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activitymembers` (
  `actuid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fupid` mediumint(8) NOT NULL DEFAULT 0,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `actmid` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `signupdetail` varchar(255) NOT NULL DEFAULT '',
  `signupnum` smallint(6) unsigned NOT NULL DEFAULT 0,
  `nickname` varchar(255) NOT NULL DEFAULT '',
  `totalcash` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `ifanonymous` tinyint(3) NOT NULL DEFAULT 0,
  `ifpay` tinyint(3) NOT NULL DEFAULT 0,
  `signuptime` int(10) unsigned DEFAULT 0,
  `fromuid` int(10) unsigned NOT NULL DEFAULT 0,
  `fromusername` varchar(15) NOT NULL DEFAULT '',
  `issubstitute` tinyint(3) NOT NULL DEFAULT 0,
  `isadditional` tinyint(3) NOT NULL DEFAULT 0,
  `isrefund` tinyint(3) NOT NULL DEFAULT 0,
  `refundcost` varchar(255) NOT NULL DEFAULT '',
  `refundreason` varchar(255) NOT NULL DEFAULT '',
  `additionalreason` varchar(255) NOT NULL DEFAULT '',
  `out_trade_no` varchar(255) NOT NULL DEFAULT '0',
  `batch_detail_no` varchar(255) NOT NULL,
  PRIMARY KEY (`actuid`),
  KEY `idx_tid_uid` (`tid`,`uid`),
  KEY `idx_uid` (`uid`),
  KEY `idx_fupid` (`fupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activitymodel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activitymodel` (
  `actmid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `actid` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ifable` tinyint(3) NOT NULL DEFAULT 1,
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `ifdel` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`actmid`),
  KEY `idx_actid` (`actid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activitypaylog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activitypaylog` (
  `actpid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `actuid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `authorid` int(10) unsigned NOT NULL DEFAULT 0,
  `author` varchar(15) NOT NULL DEFAULT '',
  `fromuid` int(10) unsigned NOT NULL DEFAULT 0,
  `fromusername` varchar(15) NOT NULL DEFAULT '',
  `cost` varchar(255) NOT NULL DEFAULT '',
  `costtype` tinyint(3) NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `createtime` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `wherefrom` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`actpid`),
  KEY `idx_uid` (`uid`),
  KEY `idx_authorid` (`authorid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_actuid_costtype` (`actuid`,`costtype`),
  KEY `idx_fromuid` (`fromuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue1` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue10`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue10` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue11`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue11` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue12`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue12` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue13`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue13` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue14`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue14` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue15`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue15` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue16`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue16` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue17`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue17` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue18`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue18` (
  `tid` mediumint(8) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue2`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue2` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue3`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue3` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue4` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue5`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue5` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue6`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue6` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue7`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue7` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue8`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue8` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_activityvalue9`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_activityvalue9` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_actmember`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_actmember` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `actid` int(10) unsigned NOT NULL DEFAULT 0,
  `winduid` int(10) unsigned NOT NULL DEFAULT 0,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `applydate` int(10) NOT NULL DEFAULT 0,
  `contact` varchar(20) NOT NULL DEFAULT '',
  `message` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_actid` (`actid`),
  KEY `idx_winduid` (`winduid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_actmembers`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_actmembers` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `actid` int(10) unsigned NOT NULL DEFAULT 0,
  `realname` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `anonymous` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_actid` (`actid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_administrators`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_administrators` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `groupid` tinyint(3) NOT NULL DEFAULT 0,
  `groups` varchar(255) NOT NULL DEFAULT '',
  `slog` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_adminlog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_adminlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '',
  `username1` varchar(30) NOT NULL DEFAULT '',
  `username2` varchar(30) NOT NULL DEFAULT '',
  `field1` varchar(30) NOT NULL DEFAULT '',
  `field2` varchar(30) NOT NULL DEFAULT '',
  `field3` varchar(255) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `timestamp` int(10) NOT NULL DEFAULT 0,
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_type_timestamp` (`type`,`timestamp`),
  KEY `idx_username1` (`username1`),
  KEY `idx_username2` (`username2`)
) ENGINE=MyISAM AUTO_INCREMENT=30460 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_adminset`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_adminset` (
  `gid` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `value` text NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_advert`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_advert` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `ckey` varchar(32) NOT NULL DEFAULT '',
  `stime` int(10) unsigned NOT NULL DEFAULT 0,
  `etime` int(10) unsigned NOT NULL DEFAULT 0,
  `ifshow` tinyint(3) NOT NULL DEFAULT 0,
  `orderby` tinyint(3) NOT NULL DEFAULT 0,
  `descrip` varchar(255) NOT NULL,
  `config` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_announce`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_announce` (
  `aid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) NOT NULL DEFAULT -1,
  `ifopen` tinyint(3) NOT NULL DEFAULT 0,
  `ifconvert` tinyint(3) NOT NULL DEFAULT 0,
  `vieworder` smallint(6) NOT NULL DEFAULT 0,
  `author` varchar(15) NOT NULL DEFAULT '',
  `startdate` varchar(15) NOT NULL DEFAULT '',
  `url` varchar(80) NOT NULL DEFAULT '',
  `enddate` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `idx_vieworder_startdate` (`vieworder`,`startdate`),
  KEY `idx_fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_area_level`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_area_level` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `hasedit` tinyint(3) NOT NULL DEFAULT 0,
  `hasattr` tinyint(3) NOT NULL DEFAULT 0,
  `super` tinyint(3) NOT NULL DEFAULT 0,
  `level` text DEFAULT NULL,
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_areas`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_areas` (
  `areaid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `joinname` varchar(150) NOT NULL DEFAULT '',
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `vieworder` smallint(6) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`areaid`),
  KEY `idx_name` (`name`),
  KEY `idx_parentid_vieworder` (`parentid`,`vieworder`)
) ENGINE=MyISAM AUTO_INCREMENT=910009 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_argument`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_argument` (
  `tid` int(10) unsigned NOT NULL,
  `cyid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `lastpost` int(10) unsigned NOT NULL DEFAULT 0,
  `topped` tinyint(3) unsigned NOT NULL,
  `tpcid` int(10) unsigned NOT NULL DEFAULT 0,
  `digest` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `titlefont` varchar(15) NOT NULL DEFAULT '',
  `toolfield` varchar(21) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  KEY `idx_cyid_topped_lastpost` (`cyid`,`topped`,`lastpost`),
  KEY `idx_lastpost` (`lastpost`),
  KEY `idx_postdate` (`postdate`),
  KEY `idx_digest` (`digest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_attachbuy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_attachbuy` (
  `aid` mediumint(8) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `ctype` varchar(20) NOT NULL DEFAULT '',
  `cost` smallint(6) unsigned NOT NULL,
  `createdtime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`aid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_attachdownload`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_attachdownload` (
  `aid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `ctype` varchar(20) NOT NULL DEFAULT '0',
  `cost` smallint(6) unsigned NOT NULL DEFAULT 0,
  `createdtime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`aid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_attachs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_attachs` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `did` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `type` char(30) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT 0,
  `attachurl` char(80) NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `needrvrc` smallint(6) unsigned NOT NULL DEFAULT 0,
  `special` tinyint(3) unsigned NOT NULL,
  `ctype` varchar(20) NOT NULL,
  `uploadtime` int(10) NOT NULL DEFAULT 0,
  `descrip` char(100) NOT NULL DEFAULT '',
  `ifthumb` tinyint(3) NOT NULL DEFAULT 0,
  `mid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`aid`),
  KEY `tid` (`tid`),
  KEY `pid` (`pid`),
  KEY `idx_fid` (`fid`),
  KEY `idx_uid` (`uid`),
  KEY `idx_did` (`did`),
  KEY `idx_type` (`type`),
  KEY `idx_tid_pid` (`tid`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=783653 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_attention`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_attention` (
  `uid` int(10) NOT NULL DEFAULT 0,
  `friendid` int(10) NOT NULL DEFAULT 0,
  `joindate` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`friendid`,`uid`),
  KEY `idx_uid_joindate` (`uid`,`joindate`),
  KEY `idx_friendid_joindate` (`friendid`,`joindate`),
  KEY `idx_joindate` (`joindate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_attention_blacklist`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_attention_blacklist` (
  `uid` int(10) unsigned NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`,`touid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_auth_certificate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_auth_certificate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `number` char(32) NOT NULL DEFAULT '',
  `attach1` varchar(80) NOT NULL DEFAULT '',
  `attach2` varchar(80) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT 0,
  `admintime` int(10) NOT NULL DEFAULT 0,
  `state` tinyint(3) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uid` (`uid`),
  KEY `idx_state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ban`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ban` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `admin` varchar(15) NOT NULL DEFAULT '',
  `reason` varchar(100) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_type_uid` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_banuser`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_banuser` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `startdate` int(10) NOT NULL DEFAULT 0,
  `days` smallint(6) NOT NULL DEFAULT 0,
  `admin` char(15) NOT NULL DEFAULT '',
  `reason` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uid_fid` (`uid`,`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=492 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_bbsinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_bbsinfo` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `newmember` varchar(15) NOT NULL DEFAULT '',
  `totalmember` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `higholnum` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `higholtime` int(10) unsigned NOT NULL DEFAULT 0,
  `tdtcontrol` int(10) unsigned NOT NULL DEFAULT 0,
  `yposts` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hposts` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `hit_tdtime` int(10) unsigned NOT NULL DEFAULT 0,
  `hit_control` tinyint(2) unsigned NOT NULL DEFAULT 0,
  `plantime` int(10) NOT NULL DEFAULT 0,
  `o_post` int(10) unsigned NOT NULL DEFAULT 0,
  `o_tpost` int(10) unsigned NOT NULL DEFAULT 0,
  `last_statistictime` int(11) NOT NULL DEFAULT 0,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_block`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_block` (
  `bid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `sid` smallint(6) unsigned NOT NULL,
  `func` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `rang` varchar(30) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  `iflock` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_buyadvert`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_buyadvert` (
  `id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `ifcheck` tinyint(3) NOT NULL DEFAULT 0,
  `lasttime` int(10) NOT NULL DEFAULT 0,
  `config` text NOT NULL,
  PRIMARY KEY (`id`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cache`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cache` (
  `name` varchar(20) NOT NULL DEFAULT '',
  `cache` mediumtext NOT NULL,
  `time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cache_distribute`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cache_distribute` (
  `ckey` char(32) NOT NULL DEFAULT '',
  `cvalue` text NOT NULL,
  `typeid` tinyint(3) NOT NULL DEFAULT 0,
  `expire` int(10) unsigned NOT NULL DEFAULT 0,
  `extra` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ckey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cache_members`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cache_members` (
  `ckey` char(32) NOT NULL DEFAULT '',
  `cvalue` text NOT NULL,
  `expire` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ckey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cachedata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cachedata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invokepieceid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `loopid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `cachetime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_invokepieceid_fid_loopid` (`invokepieceid`,`fid`,`loopid`)
) ENGINE=MyISAM AUTO_INCREMENT=4873813 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_channel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_channel` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `alias` varchar(20) NOT NULL DEFAULT '',
  `relate_theme` varchar(20) NOT NULL DEFAULT 'default',
  `domain_band` varchar(50) NOT NULL,
  `statictime` int(10) unsigned NOT NULL DEFAULT 0,
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `metadescrip` varchar(255) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `queue` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_alias` (`alias`),
  KEY `idx_relatetheme` (`relate_theme`),
  KEY `idx_queue` (`queue`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_clientorder`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_clientorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(30) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `paycredit` varchar(15) NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payemail` varchar(60) NOT NULL DEFAULT '',
  `number` smallint(6) NOT NULL DEFAULT 0,
  `date` int(10) NOT NULL DEFAULT 0,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `extra_1` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`paycredit`),
  KEY `idx_uid` (`uid`),
  KEY `idx_orderno` (`order_no`)
) ENGINE=MyISAM AUTO_INCREMENT=971 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cmembers`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cmembers` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(20) NOT NULL DEFAULT '',
  `realname` varchar(20) NOT NULL DEFAULT '',
  `ifadmin` tinyint(3) NOT NULL DEFAULT 0,
  `gender` tinyint(3) NOT NULL DEFAULT 0,
  `tel` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `colonyid` smallint(6) NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL DEFAULT '',
  `introduce` varchar(255) NOT NULL,
  `honor` int(10) NOT NULL DEFAULT 0,
  `addtime` int(10) unsigned NOT NULL DEFAULT 0,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastpost` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_colonyid_uid` (`colonyid`,`uid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1253 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cms_article`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cms_article` (
  `article_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(15) NOT NULL DEFAULT '',
  `username` varchar(15) NOT NULL DEFAULT '',
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `jumpurl` varchar(255) NOT NULL DEFAULT '',
  `frominfo` varchar(100) NOT NULL DEFAULT '',
  `fromurl` varchar(255) NOT NULL DEFAULT '',
  `column_id` smallint(6) NOT NULL DEFAULT 0,
  `ifcheck` tinyint(3) NOT NULL DEFAULT 1,
  `postdate` int(10) NOT NULL DEFAULT 0,
  `modifydate` int(10) NOT NULL DEFAULT 0,
  `ifattach` tinyint(3) NOT NULL DEFAULT 0,
  `sourcetype` varchar(30) NOT NULL DEFAULT '',
  `sourceid` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`article_id`),
  KEY `idx_columnid` (`column_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cms_articlecontent`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cms_articlecontent` (
  `article_id` mediumint(8) NOT NULL,
  `content` text NOT NULL,
  `relatearticle` text NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cms_articleextend`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cms_articleextend` (
  `article_id` mediumint(8) NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cms_attach`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cms_attach` (
  `attach_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `article_id` mediumint(8) NOT NULL DEFAULT 0,
  `type` varchar(10) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT 0,
  `uploadtime` int(10) NOT NULL DEFAULT 0,
  `attachurl` varchar(255) NOT NULL DEFAULT '',
  `ifthumb` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`attach_id`),
  KEY `idx_articleid` (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cms_column`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cms_column` (
  `column_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(6) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `order` smallint(6) NOT NULL DEFAULT 0,
  `allowoffer` tinyint(1) NOT NULL DEFAULT 0,
  `seotitle` varchar(255) NOT NULL DEFAULT '',
  `seodesc` varchar(255) NOT NULL DEFAULT '',
  `seokeywords` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`column_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cms_comment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cms_comment` (
  `commentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `article_id` int(10) unsigned NOT NULL DEFAULT 0,
  `content` varchar(255) NOT NULL DEFAULT '',
  `replynum` smallint(6) unsigned NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`commentid`),
  KEY `idx_articleid_postdate` (`article_id`,`postdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cms_commentreply`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cms_commentreply` (
  `replyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `commentid` int(10) unsigned NOT NULL DEFAULT 0,
  `content` varchar(255) NOT NULL DEFAULT '',
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`replyid`),
  KEY `idx_commentid_postdate` (`commentid`,`postdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cms_purview`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cms_purview` (
  `purview_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL DEFAULT '',
  `super` tinyint(3) NOT NULL DEFAULT 0,
  `columns` text NOT NULL,
  PRIMARY KEY (`purview_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cnalbum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cnalbum` (
  `aid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aname` varchar(50) NOT NULL DEFAULT '',
  `aintro` varchar(200) NOT NULL DEFAULT '',
  `atype` smallint(6) NOT NULL DEFAULT 0,
  `private` tinyint(3) unsigned NOT NULL,
  `albumpwd` varchar(40) NOT NULL DEFAULT '',
  `ownerid` int(10) unsigned NOT NULL DEFAULT 0,
  `owner` varchar(15) NOT NULL DEFAULT '',
  `photonum` smallint(6) NOT NULL DEFAULT 0,
  `lastphoto` varchar(100) NOT NULL DEFAULT '',
  `lastpid` varchar(100) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT 0,
  `crtime` int(10) NOT NULL DEFAULT 0,
  `memopen` tinyint(3) NOT NULL DEFAULT 1,
  `isdefault` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`aid`),
  KEY `cyid` (`ownerid`),
  KEY `idx_atype_ownerid` (`atype`,`ownerid`)
) ENGINE=MyISAM AUTO_INCREMENT=4515 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cnclass`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cnclass` (
  `fid` smallint(6) unsigned NOT NULL,
  `cname` varchar(20) NOT NULL DEFAULT '',
  `cnsum` int(10) unsigned NOT NULL DEFAULT 0,
  `ifopen` tinyint(3) unsigned NOT NULL DEFAULT 0,
  KEY `cname` (`cname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cnlevel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cnlevel` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ltype` enum('common','special') NOT NULL DEFAULT 'common',
  `ltitle` varchar(60) NOT NULL DEFAULT '',
  `lpoint` int(10) unsigned NOT NULL DEFAULT 0,
  `albumnum` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `maxphotonum` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `maxmember` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `bbsmode` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `allowmerge` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `allowattorn` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `allowdisband` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `pictopic` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `allowstyle` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `topicadmin` text NOT NULL,
  `modeset` text NOT NULL,
  `layout` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cnphoto`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cnphoto` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL DEFAULT 0,
  `pname` varchar(50) NOT NULL DEFAULT '',
  `pintro` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(200) NOT NULL DEFAULT '',
  `uploader` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) NOT NULL DEFAULT 0,
  `hits` smallint(6) NOT NULL DEFAULT 0,
  `ifthumb` tinyint(1) unsigned NOT NULL,
  `c_num` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pid`),
  KEY `aid` (`aid`),
  KEY `idx_aid_uptime` (`aid`,`uptime`)
) ENGINE=MyISAM AUTO_INCREMENT=28532 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cnskin`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cnskin` (
  `dir` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`dir`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cnstyles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cnstyles` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL DEFAULT '',
  `ifopen` tinyint(3) NOT NULL DEFAULT 1,
  `csum` int(10) NOT NULL DEFAULT 0,
  `upid` smallint(10) NOT NULL DEFAULT 0,
  `vieworder` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_cname` (`cname`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_collection`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_collection` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '',
  `typeid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `content` text NOT NULL,
  `ifhidden` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `c_num` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `ctid` int(10) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  KEY `idx_uid_postdate` (`uid`,`postdate`),
  KEY `idx_ctid` (`ctid`)
) ENGINE=MyISAM AUTO_INCREMENT=460862 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_collectiontype`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_collectiontype` (
  `ctid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ctid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_colonys`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_colonys` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `classid` smallint(6) NOT NULL DEFAULT 0,
  `cname` varchar(20) NOT NULL DEFAULT '',
  `admin` varchar(20) NOT NULL DEFAULT '',
  `members` int(10) NOT NULL DEFAULT 0,
  `ifcheck` tinyint(3) NOT NULL DEFAULT 0,
  `ifopen` tinyint(3) NOT NULL DEFAULT 1,
  `commonlevel` mediumint(8) unsigned NOT NULL,
  `speciallevel` mediumint(8) unsigned NOT NULL,
  `cmoney` int(10) NOT NULL DEFAULT 0,
  `cnimg` varchar(100) NOT NULL DEFAULT '',
  `banner` varchar(100) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT 0,
  `intomoney` smallint(6) NOT NULL DEFAULT 0,
  `annouce` text DEFAULT NULL,
  `albumnum` smallint(6) NOT NULL DEFAULT 0,
  `photonum` int(10) unsigned NOT NULL,
  `writenum` int(10) NOT NULL,
  `activitynum` int(10) NOT NULL,
  `iftopicshowinforum` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `annoucesee` smallint(6) NOT NULL DEFAULT 0,
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(2) NOT NULL DEFAULT 0,
  `tdtcontrol` int(10) unsigned NOT NULL DEFAULT 0,
  `tviews` mediumint(8) NOT NULL DEFAULT 0,
  `allviews` mediumint(8) NOT NULL DEFAULT 0,
  `iftransfer` tinyint(1) NOT NULL DEFAULT 0,
  `visitor` text NOT NULL,
  `tnum` int(11) NOT NULL,
  `pnum` int(10) unsigned NOT NULL,
  `todaypost` int(11) NOT NULL,
  `styleid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `visit` int(11) NOT NULL DEFAULT 0,
  `ifshow` tinyint(3) NOT NULL DEFAULT 0,
  `ifshowpic` tinyint(3) NOT NULL DEFAULT 0,
  `colonystyle` varchar(40) NOT NULL DEFAULT '',
  `ifwriteopen` tinyint(3) NOT NULL DEFAULT 1,
  `ifmemberopen` tinyint(3) NOT NULL DEFAULT 1,
  `ifannouceopen` tinyint(3) NOT NULL DEFAULT 1,
  `vieworder` tinyint(3) NOT NULL,
  `titlefont` varchar(255) NOT NULL DEFAULT '',
  `viewtype` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_cname` (`cname`),
  KEY `idx_classid_vieworder` (`classid`,`vieworder`),
  KEY `idx_admin` (`admin`),
  KEY `idx_classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_comment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_comment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `typeid` mediumint(8) NOT NULL DEFAULT 0,
  `upid` mediumint(8) NOT NULL DEFAULT 0,
  `postdate` int(10) NOT NULL DEFAULT 0,
  `ifwordsfb` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_type_typeid` (`type`,`typeid`),
  KEY `idx_upid` (`upid`),
  KEY `idx_postdate` (`postdate`)
) ENGINE=MyISAM AUTO_INCREMENT=420 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_company`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_company` (
  `companyid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `companyname` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`companyid`),
  UNIQUE KEY `idx_companyname` (`companyname`)
) ENGINE=MyISAM AUTO_INCREMENT=3540 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_config`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_config` (
  `db_name` varchar(30) NOT NULL DEFAULT '',
  `vtype` enum('string','array') NOT NULL DEFAULT 'string',
  `db_value` text NOT NULL,
  `decrip` text NOT NULL,
  PRIMARY KEY (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_creditlog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_creditlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `ctype` varchar(8) NOT NULL DEFAULT '',
  `affect` int(10) NOT NULL DEFAULT 0,
  `adddate` int(10) NOT NULL DEFAULT 0,
  `logtype` varchar(20) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_adddate` (`adddate`)
) ENGINE=MyISAM AUTO_INCREMENT=1332383 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_credits`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_credits` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '',
  `unit` char(30) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `type` enum('main','group') NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_customfield`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_customfield` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `maxlen` smallint(6) NOT NULL DEFAULT 0,
  `vieworder` smallint(6) NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `viewinread` tinyint(1) NOT NULL DEFAULT 0,
  `editable` tinyint(1) NOT NULL DEFAULT 0,
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `viewright` varchar(255) NOT NULL DEFAULT '',
  `options` text NOT NULL,
  `category` enum('basic','contact','education','other') NOT NULL DEFAULT 'basic',
  `complement` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ifsys` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `fieldname` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_cwritedata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_cwritedata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `cyid` int(11) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `postdate` int(10) unsigned NOT NULL,
  `isshare` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `source` varchar(10) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `c_num` mediumint(8) unsigned NOT NULL,
  `mood` varchar(10) NOT NULL DEFAULT '',
  `moodfirst` tinyint(1) NOT NULL DEFAULT 0,
  `replay_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_mood_moodfirst` (`mood`,`moodfirst`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_datanalyse`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_datanalyse` (
  `tag` int(10) NOT NULL,
  `action` varchar(30) NOT NULL,
  `timeunit` int(10) NOT NULL,
  `num` int(10) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_action_timeunit_tag` (`action`,`timeunit`,`tag`),
  KEY `idx_tag_action` (`tag`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_datastate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_datastate` (
  `year` smallint(4) NOT NULL,
  `month` tinyint(2) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `topic` mediumint(8) NOT NULL,
  `reply` mediumint(8) NOT NULL,
  `regmen` mediumint(8) NOT NULL,
  `postmen` mediumint(8) NOT NULL,
  PRIMARY KEY (`year`,`month`,`day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_datastore`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_datastore` (
  `skey` varchar(32) NOT NULL,
  `expire` int(10) unsigned NOT NULL DEFAULT 0,
  `vhash` char(32) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`skey`),
  KEY `idx_expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_debateclass`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_debateclass` (
  `cid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `cname` char(20) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `cname` (`cname`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_debatedata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_debatedata` (
  `pid` int(10) unsigned NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `authorid` int(10) unsigned NOT NULL,
  `standpoint` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `vote` int(10) unsigned NOT NULL DEFAULT 0,
  `voteids` text NOT NULL,
  PRIMARY KEY (`pid`,`tid`,`authorid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_debateinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_debateinfo` (
  `uid` int(10) NOT NULL,
  `author` varchar(20) NOT NULL,
  `posts` int(6) NOT NULL,
  `replys` int(6) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `posts` (`posts`),
  KEY `replys` (`replys`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_debatereplys`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_debatereplys` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL DEFAULT 0,
  `authorid` int(10) unsigned NOT NULL DEFAULT 0,
  `author` char(15) NOT NULL,
  `debatetype` tinyint(1) NOT NULL DEFAULT 0,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `child` int(10) unsigned NOT NULL DEFAULT 0,
  `vote` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `ifconvert` tinyint(1) NOT NULL DEFAULT 0,
  `dateline` int(10) NOT NULL DEFAULT 0,
  `isvisible` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`aid`),
  KEY `did` (`did`,`debatetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_debates`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_debates` (
  `tid` int(10) unsigned NOT NULL,
  `authorid` int(10) unsigned NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `obtitle` varchar(255) NOT NULL DEFAULT '',
  `retitle` varchar(255) NOT NULL DEFAULT '',
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `obvote` int(10) unsigned NOT NULL DEFAULT 0,
  `revote` int(10) unsigned NOT NULL DEFAULT 0,
  `obposts` int(10) unsigned NOT NULL DEFAULT 0,
  `reposts` int(10) unsigned NOT NULL DEFAULT 0,
  `umpire` varchar(16) NOT NULL DEFAULT '',
  `umpirepoint` varchar(255) NOT NULL DEFAULT '',
  `debater` varchar(16) NOT NULL DEFAULT '',
  `judge` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_debatethreads`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_debatethreads` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sortid` tinyint(2) NOT NULL DEFAULT 0,
  `authorid` int(10) unsigned NOT NULL,
  `author` varchar(10) NOT NULL,
  `judgment` varchar(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `obtitle` varchar(255) NOT NULL,
  `retitle` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `ifconvert` tinyint(1) NOT NULL DEFAULT 0,
  `dateline` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `obvote` smallint(5) unsigned NOT NULL DEFAULT 0,
  `revote` smallint(5) unsigned NOT NULL DEFAULT 0,
  `obrvote` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rervote` smallint(5) unsigned NOT NULL DEFAULT 0,
  `voteuid` mediumtext NOT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT 0,
  `isvisible` tinyint(1) NOT NULL DEFAULT 0,
  `judg` tinyint(1) NOT NULL DEFAULT 0,
  `digest` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `judgcontent` varchar(255) NOT NULL,
  `typecache` text NOT NULL,
  PRIMARY KEY (`did`),
  KEY `sortid` (`sortid`,`isvisible`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_delta_diarys`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_delta_diarys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_delta_members`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_delta_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_delta_posts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_delta_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_delta_threads`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_delta_threads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_diary`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_diary` (
  `did` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `dtid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `aid` text NOT NULL,
  `username` varchar(15) NOT NULL DEFAULT '',
  `privacy` tinyint(1) NOT NULL DEFAULT 0,
  `subject` varchar(150) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ifcopy` tinyint(1) NOT NULL DEFAULT 0,
  `copyurl` varchar(100) NOT NULL DEFAULT '',
  `ifconvert` tinyint(1) NOT NULL DEFAULT 0,
  `ifwordsfb` tinyint(1) NOT NULL DEFAULT 0,
  `ifupload` tinyint(1) NOT NULL DEFAULT 0,
  `r_num` int(10) NOT NULL DEFAULT 0,
  `c_num` int(10) NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`did`),
  KEY `idx_uid` (`uid`),
  KEY `idx_postdate` (`postdate`)
) ENGINE=MyISAM AUTO_INCREMENT=538 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_diarytype`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_diarytype` (
  `dtid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(20) NOT NULL DEFAULT '',
  `num` mediumint(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (`dtid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_draft`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_draft` (
  `did` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `content` text NOT NULL,
  PRIMARY KEY (`did`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_efone_statistics`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_efone_statistics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(32) NOT NULL,
  `network` tinyint(3) NOT NULL,
  `phonetype` tinyint(3) NOT NULL,
  `phonesystem` tinyint(3) NOT NULL,
  `mobileoperator` tinyint(3) NOT NULL,
  `date` date NOT NULL,
  `value` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `network` (`network`),
  KEY `mobileoperator` (`mobileoperator`)
) ENGINE=MyISAM AUTO_INCREMENT=81842 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_efone_statistics_month`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_efone_statistics_month` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(32) NOT NULL,
  `network` tinyint(3) NOT NULL,
  `phonetype` tinyint(3) NOT NULL,
  `phonesystem` tinyint(3) NOT NULL,
  `mobileoperator` tinyint(3) NOT NULL,
  `date` date NOT NULL,
  `value` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `network` (`network`),
  KEY `mobileoperator` (`mobileoperator`)
) ENGINE=MyISAM AUTO_INCREMENT=2373 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_elements`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_elements` (
  `eid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `mark` varchar(30) NOT NULL DEFAULT '',
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `value` int(10) NOT NULL DEFAULT 0,
  `addition` varchar(255) NOT NULL DEFAULT '',
  `special` tinyint(1) NOT NULL DEFAULT 0,
  `time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`eid`),
  UNIQUE KEY `idx_type_mark_id` (`type`,`mark`,`id`),
  KEY `idx_type_value` (`type`,`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5819212 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_extragroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_extragroups` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `gid` smallint(6) NOT NULL DEFAULT 0,
  `togid` smallint(6) NOT NULL DEFAULT 0,
  `startdate` int(10) unsigned NOT NULL DEFAULT 0,
  `days` smallint(6) NOT NULL DEFAULT 0,
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_favors`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_favors` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `tids` text NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_feed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `typeid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_filter`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_filter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `filter` mediumtext DEFAULT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `assessor` varchar(15) NOT NULL DEFAULT '',
  `created_at` int(10) unsigned NOT NULL DEFAULT 0,
  `updated_at` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=1605 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_filter_class`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_filter_class` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(16) NOT NULL DEFAULT '',
  `state` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_filter_dictionary`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_filter_dictionary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL DEFAULT '',
  `bin` varchar(255) NOT NULL DEFAULT '',
  `source` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_focus`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_focus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pushto` varchar(30) NOT NULL DEFAULT '',
  `showorder` tinyint(1) NOT NULL,
  `pushtime` int(10) NOT NULL DEFAULT 0,
  `fid` smallint(6) NOT NULL DEFAULT 0,
  `tid` int(10) NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `postdate` int(10) NOT NULL DEFAULT 0,
  `url` varchar(100) NOT NULL DEFAULT '',
  `imgurl` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_pushto` (`pushto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_forumdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_forumdata` (
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `tpost` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `topic` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `article` int(10) unsigned NOT NULL DEFAULT 0,
  `subtopic` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `top1` smallint(6) unsigned NOT NULL DEFAULT 0,
  `top2` smallint(6) unsigned NOT NULL DEFAULT 0,
  `aid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `aidcache` int(10) unsigned NOT NULL DEFAULT 0,
  `aids` char(135) NOT NULL DEFAULT '',
  `lastpost` char(135) NOT NULL DEFAULT '',
  `topthreads` text NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `idx_aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_forumlog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_forumlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '',
  `username1` varchar(30) NOT NULL DEFAULT '',
  `username2` varchar(30) NOT NULL DEFAULT '',
  `field1` varchar(30) NOT NULL DEFAULT '',
  `field2` varchar(30) NOT NULL DEFAULT '',
  `field3` varchar(255) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `timestamp` int(10) NOT NULL DEFAULT 0,
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_username1` (`username1`),
  KEY `idx_username2` (`username2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_forummsg`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_forummsg` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `toname` varchar(200) NOT NULL DEFAULT '',
  `msgtype` tinyint(1) NOT NULL DEFAULT 0,
  `posttime` int(10) NOT NULL DEFAULT 0,
  `savetime` int(10) NOT NULL DEFAULT 0,
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_forums`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_forums` (
  `fid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `fup` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifsub` tinyint(1) NOT NULL DEFAULT 0,
  `childid` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('category','forum','sub','sub2') NOT NULL DEFAULT 'forum',
  `logo` char(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `descrip` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `dirname` varchar(30) NOT NULL,
  `metadescrip` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `vieworder` smallint(6) NOT NULL DEFAULT 0,
  `forumadmin` char(255) NOT NULL DEFAULT '',
  `fupadmin` char(255) NOT NULL DEFAULT '',
  `style` char(12) NOT NULL DEFAULT '',
  `across` tinyint(1) NOT NULL DEFAULT 0,
  `allowhtm` tinyint(1) NOT NULL DEFAULT 0,
  `allowhide` tinyint(1) NOT NULL DEFAULT 1,
  `allowsell` tinyint(1) NOT NULL DEFAULT 1,
  `allowtype` tinyint(3) NOT NULL DEFAULT 0,
  `copyctrl` tinyint(1) NOT NULL DEFAULT 0,
  `allowencode` tinyint(1) NOT NULL DEFAULT 1,
  `password` char(32) NOT NULL DEFAULT '',
  `viewsub` tinyint(1) NOT NULL DEFAULT 0,
  `allowvisit` char(120) NOT NULL DEFAULT '',
  `allowread` char(120) NOT NULL DEFAULT '',
  `allowpost` char(120) NOT NULL DEFAULT '',
  `allowrp` char(120) NOT NULL DEFAULT '',
  `allowdownload` char(120) NOT NULL DEFAULT '',
  `allowupload` char(120) NOT NULL DEFAULT '',
  `f_type` enum('forum','former','hidden','vote') NOT NULL DEFAULT 'forum',
  `f_check` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `t_type_bak` varchar(255) NOT NULL DEFAULT '',
  `forumsell` varchar(15) NOT NULL,
  `cms` tinyint(1) NOT NULL DEFAULT 0,
  `ifhide` tinyint(1) NOT NULL DEFAULT 1,
  `showsub` tinyint(1) NOT NULL DEFAULT 0,
  `modelid` varchar(255) NOT NULL,
  `ifcms` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `pcid` varchar(50) NOT NULL,
  `actmids` varchar(255) NOT NULL DEFAULT '',
  `t_type` tinyint(1) NOT NULL DEFAULT 0,
  `allowrob` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`fid`),
  KEY `idx_fup` (`fup`),
  KEY `idx_ifsub_vieworder_fup` (`ifsub`,`vieworder`,`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_forumsell`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_forumsell` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 1,
  `buydate` int(10) unsigned NOT NULL DEFAULT 0,
  `overdate` int(10) unsigned NOT NULL DEFAULT 0,
  `credit` varchar(8) NOT NULL DEFAULT '',
  `cost` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fid` (`fid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_forumsextra`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_forumsextra` (
  `fid` smallint(6) NOT NULL DEFAULT 0,
  `creditset` text NOT NULL,
  `forumset` text NOT NULL,
  `commend` text NOT NULL,
  `appinfo` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_forumtype`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_forumtype` (
  `ftid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) NOT NULL,
  `mark` varchar(30) NOT NULL,
  `allowtype` tinyint(3) NOT NULL,
  PRIMARY KEY (`ftid`),
  UNIQUE KEY `mode` (`mark`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_friends`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_friends` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `friendid` int(10) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `attention` tinyint(3) NOT NULL DEFAULT 0,
  `joindate` int(10) NOT NULL DEFAULT 0,
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `ftid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `iffeed` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`uid`,`friendid`),
  KEY `idx_uid_joindate` (`uid`,`joindate`),
  KEY `idx_joindate` (`joindate`),
  KEY `idx_ftid` (`ftid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_friendtype`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_friendtype` (
  `ftid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ftid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_group_replay`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_group_replay` (
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `cyid` int(11) NOT NULL,
  `is_read` smallint(2) NOT NULL,
  `add_time` int(10) unsigned NOT NULL,
  `num` int(11) NOT NULL,
  KEY `cname` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_hack`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_hack` (
  `hk_name` varchar(30) NOT NULL DEFAULT '',
  `vtype` enum('string','array') NOT NULL,
  `hk_value` text NOT NULL,
  `decrip` text NOT NULL,
  PRIMARY KEY (`hk_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_help`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_help` (
  `hid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `hup` smallint(6) unsigned NOT NULL DEFAULT 0,
  `lv` tinyint(3) NOT NULL DEFAULT 0,
  `fathers` varchar(100) NOT NULL DEFAULT '',
  `ifchild` tinyint(3) NOT NULL DEFAULT 0,
  `title` varchar(80) NOT NULL DEFAULT '',
  `url` varchar(80) NOT NULL,
  `content` mediumtext NOT NULL,
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `ispw` tinyint(3) DEFAULT 0,
  PRIMARY KEY (`hid`),
  KEY `idx_hup` (`hup`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_hits_threads`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_hits_threads` (
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `hits` int(10) unsigned NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_home`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_home` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(20) NOT NULL DEFAULT '',
  `position` tinyint(3) NOT NULL DEFAULT 0,
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `upstep` smallint(6) NOT NULL DEFAULT 0,
  `lastupdate` int(10) NOT NULL DEFAULT 0,
  `ifopen` tinyint(1) NOT NULL DEFAULT 0,
  `config` text NOT NULL,
  `cache` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_invitecode`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_invitecode` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `invcode` varchar(40) NOT NULL DEFAULT '',
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `receiver` varchar(20) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT 0,
  `usetime` int(10) unsigned NOT NULL DEFAULT 0,
  `ifused` tinyint(3) NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_invcode` (`invcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_inviterecord`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_inviterecord` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `unit` varchar(15) NOT NULL DEFAULT '',
  `reward` int(10) NOT NULL DEFAULT 0,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `typeid` tinyint(3) NOT NULL DEFAULT 0,
  `create_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_uid_ip` (`uid`,`ip`),
  KEY `idx_typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_invoke`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_invoke` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tplid` smallint(6) NOT NULL DEFAULT 0,
  `tagcode` text NOT NULL,
  `parsecode` text NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `ifapi` tinyint(1) NOT NULL DEFAULT 0,
  `scr` varchar(25) NOT NULL DEFAULT '',
  `sign` varchar(25) NOT NULL DEFAULT '',
  `pieces` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `ifverify` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`),
  KEY `idx_scr_sign` (`scr`,`sign`)
) ENGINE=MyISAM AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_invokepiece`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_invokepiece` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `invokename` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `num` smallint(6) NOT NULL DEFAULT 0,
  `param` text NOT NULL,
  `cachetime` int(10) unsigned NOT NULL DEFAULT 0,
  `ifpushonly` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_invokename` (`invokename`,`title`)
) ENGINE=MyISAM AUTO_INCREMENT=292 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ipstates`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ipstates` (
  `day` char(10) NOT NULL DEFAULT '',
  `month` char(7) NOT NULL DEFAULT '',
  `nums` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_job`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_job` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `description` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `period` smallint(6) unsigned NOT NULL DEFAULT 0,
  `reward` text DEFAULT NULL,
  `sequence` smallint(3) NOT NULL DEFAULT 0,
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `prepose` int(10) unsigned NOT NULL DEFAULT 0,
  `number` int(10) NOT NULL DEFAULT 0,
  `member` tinyint(3) NOT NULL DEFAULT 0,
  `auto` tinyint(3) NOT NULL DEFAULT 0,
  `finish` tinyint(3) NOT NULL DEFAULT 0,
  `display` tinyint(3) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `job` varchar(255) NOT NULL DEFAULT '',
  `factor` text DEFAULT NULL,
  `isopen` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isuserguide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_jober`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_jober` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jobid` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `current` tinyint(1) NOT NULL DEFAULT 0,
  `step` smallint(6) NOT NULL DEFAULT 0,
  `last` int(10) unsigned NOT NULL DEFAULT 0,
  `next` int(10) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `creattime` int(10) unsigned NOT NULL DEFAULT 0,
  `total` smallint(6) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_jobid_userid` (`jobid`,`userid`),
  KEY `idx_userid_status` (`userid`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_kmd_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_kmd_info` (
  `kid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`kid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_kmd_paylog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_kmd_paylog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kid` int(10) unsigned NOT NULL DEFAULT 0,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `money` decimal(14,2) unsigned NOT NULL DEFAULT 0.00,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `createtime` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_fid` (`fid`),
  KEY `idx_uid` (`uid`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_kmd_spread`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_kmd_spread` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `displayorder` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `day` smallint(3) unsigned NOT NULL DEFAULT 0,
  `price` decimal(14,2) unsigned NOT NULL DEFAULT 0.00,
  `discount` decimal(2,1) unsigned NOT NULL DEFAULT 0.0,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_kmd_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_kmd_user` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `phone` varchar(15) DEFAULT NULL,
  `realname` varchar(15) NOT NULL DEFAULT '',
  `invoice` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_aggregate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_aggregate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `operate` tinyint(3) NOT NULL DEFAULT 1,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sid_type_operate` (`sid`,`type`,`operate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_attachs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_attachs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `operate` tinyint(3) NOT NULL DEFAULT 1,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sid_operate` (`sid`,`operate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_colonys`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_colonys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `operate` tinyint(3) NOT NULL DEFAULT 1,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sid_operate` (`sid`,`operate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_diary`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_diary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `operate` tinyint(3) NOT NULL DEFAULT 1,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sid_operate` (`sid`,`operate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_forums`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_forums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `operate` tinyint(3) NOT NULL DEFAULT 1,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sid_operate` (`sid`,`operate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_members`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `operate` tinyint(3) NOT NULL DEFAULT 1,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sid_operate` (`sid`,`operate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_postdefend`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_postdefend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_posts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `operate` tinyint(3) NOT NULL DEFAULT 1,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sid_operate` (`sid`,`operate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_postverify`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_postverify` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL DEFAULT 0,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_tid_pid` (`tid`,`pid`),
  KEY `idx_modifiedtime` (`modified_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_setting`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vector` varchar(255) NOT NULL DEFAULT '',
  `cipher` varchar(255) NOT NULL DEFAULT '',
  `field1` varchar(255) NOT NULL DEFAULT '',
  `field2` varchar(255) NOT NULL DEFAULT '',
  `field3` int(10) unsigned NOT NULL DEFAULT 0,
  `field4` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_threads`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_threads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `operate` tinyint(3) NOT NULL DEFAULT 1,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sid_operate` (`sid`,`operate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_userdefend`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_userdefend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_log_weibos`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_log_weibos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `operate` tinyint(3) NOT NULL DEFAULT 1,
  `modified_time` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sid_operate` (`sid`,`operate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_medal_apply`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_medal_apply` (
  `apply_id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT 0,
  `medal_id` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`apply_id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_medal_id` (`medal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=390 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_medal_award`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_medal_award` (
  `award_id` int(10) NOT NULL AUTO_INCREMENT,
  `medal_id` smallint(6) NOT NULL DEFAULT 0,
  `uid` int(10) NOT NULL DEFAULT 0,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `timestamp` int(10) NOT NULL DEFAULT 0,
  `deadline` int(10) NOT NULL,
  PRIMARY KEY (`award_id`),
  UNIQUE KEY `idx_medalid_uid` (`medal_id`,`uid`),
  KEY `idx_deadline` (`deadline`),
  KEY `idx_uid` (`uid`),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=1444 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_medal_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_medal_info` (
  `medal_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `identify` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL DEFAULT '',
  `sortorder` int(10) NOT NULL DEFAULT 0,
  `is_apply` tinyint(3) NOT NULL DEFAULT 1,
  `is_open` tinyint(3) NOT NULL DEFAULT 1,
  `allow_group` text NOT NULL,
  `associate` varchar(30) NOT NULL DEFAULT '',
  `confine` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`medal_id`),
  UNIQUE KEY `idx_identify` (`identify`),
  KEY `idx_type` (`type`),
  KEY `idx_sortorder` (`sortorder`),
  KEY `idx_associate` (`associate`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_medal_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_medal_log` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `award_id` int(10) NOT NULL DEFAULT 0,
  `medal_id` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` int(10) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `descrip` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_medalinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_medalinfo` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `intro` varchar(255) NOT NULL DEFAULT '',
  `picurl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_medalslogs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_medalslogs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `awardee` varchar(40) NOT NULL DEFAULT '',
  `awarder` varchar(40) NOT NULL DEFAULT '',
  `awardtime` int(10) NOT NULL DEFAULT 0,
  `timelimit` tinyint(3) NOT NULL DEFAULT 0,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `level` smallint(6) NOT NULL DEFAULT 0,
  `action` tinyint(3) NOT NULL DEFAULT 0,
  `why` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `awardee` (`awardee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_medaluser`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_medaluser` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `mid` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_member_behavior_statistic`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_member_behavior_statistic` (
  `uid` int(10) NOT NULL,
  `behavior` tinyint(3) NOT NULL DEFAULT 0,
  `lastday` int(10) NOT NULL,
  `num` int(10) NOT NULL,
  UNIQUE KEY `idx_uid_behavior` (`uid`,`behavior`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_membercredit`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_membercredit` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `cid` tinyint(3) NOT NULL DEFAULT 0,
  `value` mediumint(8) NOT NULL DEFAULT 0,
  KEY `idx_uid` (`uid`),
  KEY `idx_cid` (`cid`),
  KEY `idx_cid_value` (`cid`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_memberdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_memberdata` (
  `uid` int(10) unsigned NOT NULL DEFAULT 1,
  `postnum` int(10) unsigned NOT NULL DEFAULT 0,
  `digests` smallint(6) NOT NULL DEFAULT 0,
  `rvrc` int(10) NOT NULL DEFAULT 0,
  `money` int(10) NOT NULL DEFAULT 0,
  `credit` int(10) NOT NULL DEFAULT 0,
  `currency` int(10) NOT NULL DEFAULT 0,
  `lastvisit` int(10) unsigned NOT NULL DEFAULT 0,
  `thisvisit` int(10) unsigned NOT NULL DEFAULT 0,
  `lastpost` int(10) unsigned NOT NULL DEFAULT 0,
  `onlinetime` int(10) unsigned NOT NULL DEFAULT 0,
  `monoltime` int(10) unsigned NOT NULL DEFAULT 0,
  `todaypost` smallint(6) unsigned NOT NULL DEFAULT 0,
  `monthpost` smallint(6) unsigned NOT NULL DEFAULT 0,
  `uploadtime` int(10) unsigned NOT NULL DEFAULT 0,
  `uploadnum` smallint(6) unsigned NOT NULL DEFAULT 0,
  `follows` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `fans` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `newfans` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `newreferto` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `newcomment` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `onlineip` char(30) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `postcheck` varchar(255) NOT NULL DEFAULT '',
  `pwdctime` int(10) unsigned NOT NULL DEFAULT 0,
  `f_num` int(10) unsigned NOT NULL DEFAULT 0,
  `creditpop` varchar(150) NOT NULL,
  `jobnum` smallint(3) unsigned NOT NULL DEFAULT 0,
  `lastmsg` int(10) unsigned NOT NULL DEFAULT 0,
  `lastgrab` int(10) unsigned NOT NULL DEFAULT 0,
  `punch` int(10) unsigned NOT NULL DEFAULT 0,
  `shafa` mediumint(8) NOT NULL DEFAULT 0,
  `newnotice` mediumint(8) NOT NULL DEFAULT 0,
  `newrequest` mediumint(8) NOT NULL DEFAULT 0,
  `bubble` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `idx_postnum` (`postnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_memberinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_memberinfo` (
  `uid` int(10) unsigned NOT NULL DEFAULT 1,
  `adsips` mediumtext NOT NULL,
  `credit` text NOT NULL,
  `deposit` int(10) NOT NULL DEFAULT 0,
  `startdate` int(10) NOT NULL DEFAULT 0,
  `ddeposit` int(10) NOT NULL DEFAULT 0,
  `dstartdate` int(10) NOT NULL DEFAULT 0,
  `regreason` varchar(255) NOT NULL DEFAULT '',
  `readmsg` mediumtext NOT NULL,
  `delmsg` mediumtext NOT NULL,
  `tooltime` varchar(42) NOT NULL DEFAULT '',
  `replyinfo` varchar(81) NOT NULL DEFAULT '',
  `lasttime` int(10) NOT NULL DEFAULT 0,
  `digtid` text NOT NULL,
  `customdata` text NOT NULL,
  `tradeinfo` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_members`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `safecv` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `groupid` tinyint(3) NOT NULL DEFAULT -1,
  `memberid` tinyint(3) NOT NULL DEFAULT 0,
  `groups` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT 0,
  `regdate` int(10) unsigned NOT NULL DEFAULT 0,
  `signature` text NOT NULL,
  `introduce` text NOT NULL,
  `oicq` varchar(12) NOT NULL DEFAULT '',
  `aliww` varchar(30) NOT NULL,
  `icq` varchar(12) NOT NULL DEFAULT '',
  `msn` varchar(35) NOT NULL DEFAULT '',
  `yahoo` varchar(35) NOT NULL DEFAULT '',
  `site` varchar(75) NOT NULL DEFAULT '',
  `location` varchar(36) NOT NULL DEFAULT '',
  `honor` varchar(100) NOT NULL DEFAULT '',
  `bday` date NOT NULL DEFAULT '0000-00-00',
  `lastaddrst` varchar(255) NOT NULL DEFAULT '',
  `yz` int(10) NOT NULL DEFAULT 1,
  `timedf` varchar(5) NOT NULL DEFAULT '',
  `style` varchar(12) NOT NULL DEFAULT '',
  `datefm` varchar(15) NOT NULL DEFAULT '',
  `t_num` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `p_num` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `attach` varchar(50) NOT NULL DEFAULT '',
  `hack` varchar(255) NOT NULL DEFAULT '0',
  `newpm` smallint(6) unsigned DEFAULT NULL,
  `banpm` text NOT NULL,
  `salt` varchar(3) NOT NULL,
  `msggroups` varchar(255) NOT NULL DEFAULT '',
  `medals` varchar(255) NOT NULL DEFAULT '',
  `userstatus` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut` varchar(255) NOT NULL,
  `authmobile` char(16) NOT NULL DEFAULT '',
  `realname` varchar(16) NOT NULL DEFAULT '',
  `apartment` int(10) unsigned NOT NULL DEFAULT 0,
  `home` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_groupid` (`groupid`),
  KEY `idx_email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=454376 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_membertags`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_membertags` (
  `tagid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` varchar(32) NOT NULL DEFAULT '',
  `num` int(10) unsigned NOT NULL DEFAULT 0,
  `ifhot` tinyint(3) NOT NULL DEFAULT 1,
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `idx_tagname` (`tagname`),
  KEY `idx_num` (`num`),
  KEY `idx_ifhot` (`ifhot`)
) ENGINE=MyISAM AUTO_INCREMENT=815 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_membertags_relations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_membertags_relations` (
  `tagid` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `crtime` int(10) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_tagid_userid` (`tagid`,`userid`),
  UNIQUE KEY `idx_crtime` (`crtime`),
  KEY `idx_userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_memo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_memo` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL DEFAULT '',
  `postdate` int(10) NOT NULL DEFAULT 0,
  `content` text NOT NULL,
  `isuser` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mid`),
  KEY `idx_isuser_username` (`isuser`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_merge_posts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_merge_posts` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `aid` text NOT NULL,
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `icon` tinyint(2) NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `userip` varchar(15) NOT NULL DEFAULT '',
  `ifsign` tinyint(3) NOT NULL DEFAULT 0,
  `buy` text NOT NULL,
  `alterinfo` varchar(50) NOT NULL DEFAULT '',
  `remindinfo` varchar(150) NOT NULL,
  `leaveword` varchar(255) NOT NULL DEFAULT '',
  `ipfrom` varchar(255) NOT NULL,
  `ifconvert` tinyint(3) NOT NULL DEFAULT 1,
  `ifwordsfb` tinyint(3) NOT NULL DEFAULT 1,
  `ifcheck` tinyint(3) NOT NULL DEFAULT 0,
  `content` mediumtext NOT NULL,
  `ifmark` varchar(255) NOT NULL DEFAULT '',
  `ifreward` tinyint(3) NOT NULL DEFAULT 0,
  `ifshield` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `anonymous` tinyint(3) NOT NULL DEFAULT 0,
  `ifhide` tinyint(3) NOT NULL DEFAULT 0,
  `frommob` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pid`),
  KEY `idx_fid` (`fid`),
  KEY `idx_postdate` (`postdate`),
  KEY `idx_tid` (`tid`,`postdate`),
  KEY `idx_authorid` (`authorid`),
  KEY `idx_ifcheck` (`ifcheck`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8 INSERT_METHOD=LAST UNION=(`pw_posts`);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_merge_tmsgs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_merge_tmsgs` (
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `aid` text NOT NULL,
  `userip` varchar(15) NOT NULL DEFAULT '',
  `ifsign` tinyint(3) NOT NULL DEFAULT 0,
  `buy` text NOT NULL,
  `ipfrom` varchar(255) NOT NULL,
  `alterinfo` varchar(50) NOT NULL DEFAULT '',
  `remindinfo` varchar(150) NOT NULL,
  `tags` varchar(100) NOT NULL DEFAULT '',
  `ifconvert` tinyint(3) NOT NULL DEFAULT 1,
  `ifwordsfb` tinyint(3) NOT NULL DEFAULT 1,
  `content` mediumtext NOT NULL,
  `form` varchar(30) NOT NULL DEFAULT '',
  `ifmark` varchar(255) NOT NULL DEFAULT '',
  `c_from` varchar(30) NOT NULL DEFAULT '',
  `magic` varchar(50) NOT NULL DEFAULT '',
  `overprint` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8 INSERT_METHOD=LAST UNION=(`pw_tmsgs`);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_modehot`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_modehot` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) unsigned DEFAULT NULL,
  `sort` tinyint(3) NOT NULL DEFAULT 1,
  `tag` varchar(20) DEFAULT '',
  `type_name` varchar(100) NOT NULL,
  `filter_type` text NOT NULL,
  `filter_time` text NOT NULL,
  `display` tinyint(3) NOT NULL DEFAULT 0,
  `active` tinyint(3) NOT NULL DEFAULT 0,
  `remark` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_modules`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `targets` varchar(50) NOT NULL DEFAULT '',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `vieworder` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `ifhire` tinyint(1) NOT NULL DEFAULT 0,
  `config` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `vieworder` (`vieworder`),
  KEY `state` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_mpageconfig`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_mpageconfig` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `mode` varchar(20) NOT NULL,
  `scr` varchar(20) NOT NULL,
  `fid` smallint(6) unsigned NOT NULL,
  `invokes` text NOT NULL,
  `config` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mode` (`mode`,`scr`,`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ms_attachs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ms_attachs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `aid` int(10) unsigned NOT NULL DEFAULT 0,
  `mid` int(10) unsigned NOT NULL DEFAULT 0,
  `rid` int(10) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `created_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ms_configs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ms_configs` (
  `uid` int(10) unsigned NOT NULL,
  `blacklist` text DEFAULT NULL,
  `blackcolony` text DEFAULT NULL,
  `blackgroup` text DEFAULT NULL,
  `categories` text DEFAULT NULL,
  `statistics` text DEFAULT NULL,
  `shieldinfo` text DEFAULT NULL,
  `sms_num` int(10) unsigned NOT NULL DEFAULT 0,
  `notice_num` int(10) unsigned NOT NULL DEFAULT 0,
  `request_num` int(10) unsigned NOT NULL DEFAULT 0,
  `groupsms_num` int(10) unsigned NOT NULL DEFAULT 0,
  `field1` text DEFAULT NULL,
  `field2` text DEFAULT NULL,
  `num1` int(10) unsigned NOT NULL DEFAULT 0,
  `num2` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ms_messages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ms_messages` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `create_username` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `expand` varchar(255) NOT NULL DEFAULT '',
  `attach` tinyint(1) NOT NULL DEFAULT 0,
  `created_time` int(10) NOT NULL DEFAULT 0,
  `modified_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=469413 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ms_relations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ms_relations` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `mid` int(10) unsigned NOT NULL DEFAULT 0,
  `categoryid` smallint(3) unsigned NOT NULL DEFAULT 0,
  `typeid` smallint(3) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `isown` tinyint(1) NOT NULL DEFAULT 0,
  `created_time` int(10) NOT NULL DEFAULT 0,
  `actived_time` int(10) NOT NULL DEFAULT 0,
  `modified_time` int(10) NOT NULL DEFAULT 0,
  `relation` tinyint(3) NOT NULL DEFAULT 1,
  PRIMARY KEY (`rid`),
  KEY `idx_uid_categoryid_typeid_modifiedtime` (`uid`,`categoryid`,`typeid`,`modified_time`),
  KEY `idx_uid_categoryid_modifiedtime` (`uid`,`categoryid`,`modified_time`),
  KEY `idx_uid_status_modifiedtime` (`uid`,`status`,`modified_time`),
  KEY `idx_uid_isown_modifiedtime` (`uid`,`isown`,`modified_time`),
  KEY `idx_mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=830134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ms_replies`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ms_replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `create_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `create_username` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_time` int(10) NOT NULL DEFAULT 0,
  `modified_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_parentid_createdtime` (`parentid`,`created_time`)
) ENGINE=MyISAM AUTO_INCREMENT=359330 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ms_searchs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ms_searchs` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `mid` int(10) unsigned NOT NULL DEFAULT 0,
  `typeid` smallint(3) unsigned NOT NULL DEFAULT 0,
  `create_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`rid`),
  KEY `idx_uid_createuid_createdtime` (`uid`,`create_uid`,`created_time`)
) ENGINE=MyISAM AUTO_INCREMENT=830133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ms_tasks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ms_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` int(10) unsigned NOT NULL DEFAULT 0,
  `mid` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_createdtime` (`created_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_msg`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_msg` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `touid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `togroups` varchar(80) NOT NULL DEFAULT '',
  `fromuid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `type` enum('rebox','sebox','public') NOT NULL DEFAULT 'rebox',
  `ifnew` tinyint(1) NOT NULL DEFAULT 0,
  `mdate` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`mid`),
  KEY `touid` (`touid`),
  KEY `fromuid` (`fromuid`,`mdate`),
  KEY `type` (`type`),
  KEY `touids` (`touid`,`mdate`)
) ENGINE=MyISAM AUTO_INCREMENT=130294 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_msgc`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_msgc` (
  `mid` int(10) unsigned NOT NULL,
  `title` varchar(130) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_msglog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_msglog` (
  `mid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `withuid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `mdate` int(10) unsigned NOT NULL DEFAULT 0,
  `mtype` enum('send','receive') NOT NULL DEFAULT 'send',
  PRIMARY KEY (`mid`,`uid`),
  KEY `uid` (`uid`,`withuid`,`mdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_nav`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_nav` (
  `nid` smallint(6) NOT NULL AUTO_INCREMENT,
  `nkey` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `title` char(50) NOT NULL DEFAULT '',
  `style` char(50) NOT NULL DEFAULT '',
  `link` char(100) NOT NULL DEFAULT '',
  `alt` char(50) NOT NULL DEFAULT '',
  `pos` char(32) NOT NULL,
  `target` tinyint(3) NOT NULL DEFAULT 0,
  `view` smallint(6) NOT NULL DEFAULT 0,
  `upid` smallint(6) NOT NULL DEFAULT 0,
  `isshow` tinyint(3) NOT NULL DEFAULT 0,
  `selflisttype` varchar(10) NOT NULL DEFAULT '',
  `floattype` varchar(10) NOT NULL DEFAULT '',
  `listtype` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_oboard`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_oboard` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `touid` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `postdate` int(10) NOT NULL DEFAULT 0,
  `c_num` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `ifwordsfb` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_touid` (`touid`)
) ENGINE=MyISAM AUTO_INCREMENT=801 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_online`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_online` (
  `olid` int(10) NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `lastvisit` int(10) NOT NULL DEFAULT 0,
  `ip` char(30) NOT NULL DEFAULT '',
  `fid` smallint(6) NOT NULL DEFAULT 0,
  `tid` int(10) NOT NULL DEFAULT 0,
  `groupid` tinyint(3) NOT NULL DEFAULT 0,
  `action` varchar(16) NOT NULL DEFAULT '',
  `ifhide` tinyint(1) NOT NULL DEFAULT 0,
  `uid` int(10) NOT NULL DEFAULT 0,
  `rand` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`olid`),
  KEY `idx_uid` (`uid`),
  KEY `idx_ip` (`ip`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_online_guest`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_online_guest` (
  `ip` int(10) NOT NULL DEFAULT 0,
  `token` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `lastvisit` int(10) NOT NULL DEFAULT 0,
  `fid` smallint(6) NOT NULL DEFAULT 0,
  `tid` int(10) NOT NULL DEFAULT 0,
  `action` tinyint(3) NOT NULL DEFAULT 0,
  `ifhide` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ip`,`token`),
  KEY `idx_ip` (`ip`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_online_statistics`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_online_statistics` (
  `name` char(30) NOT NULL DEFAULT '',
  `value` int(10) unsigned NOT NULL DEFAULT 0,
  `lastupdate` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_online_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_online_user` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` char(15) NOT NULL DEFAULT '',
  `lastvisit` int(10) NOT NULL DEFAULT 0,
  `ip` int(10) NOT NULL DEFAULT 0,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `groupid` tinyint(3) NOT NULL DEFAULT 0,
  `action` tinyint(3) NOT NULL DEFAULT 0,
  `ifhide` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `idx_fid` (`fid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ouserdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ouserdata` (
  `uid` int(10) unsigned NOT NULL,
  `index_privacy` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `profile_privacy` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `info_privacy` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `credit_privacy` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `owrite_privacy` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `msgboard_privacy` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `photos_privacy` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `diary_privacy` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `visits` int(10) unsigned NOT NULL DEFAULT 0,
  `tovisits` int(10) unsigned NOT NULL DEFAULT 0,
  `tovisit` varchar(255) NOT NULL DEFAULT '',
  `whovisit` varchar(255) NOT NULL DEFAULT '',
  `diarynum` int(10) unsigned NOT NULL DEFAULT 0,
  `photonum` int(10) unsigned NOT NULL DEFAULT 0,
  `owritenum` int(10) unsigned NOT NULL DEFAULT 0,
  `groupnum` int(10) unsigned NOT NULL DEFAULT 0,
  `sharenum` int(10) unsigned NOT NULL DEFAULT 0,
  `diary_lastpost` int(10) unsigned NOT NULL DEFAULT 0,
  `photo_lastpost` int(10) unsigned NOT NULL DEFAULT 0,
  `owrite_lastpost` int(10) unsigned NOT NULL DEFAULT 0,
  `group_lastpost` int(10) unsigned NOT NULL DEFAULT 0,
  `share_lastpost` int(10) unsigned NOT NULL DEFAULT 0,
  `article_isfeed` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `diary_isfeed` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `photos_isfeed` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `group_isfeed` tinyint(3) unsigned DEFAULT 1,
  `self_isfollow` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `friend_isfollow` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `cnlesp_isfollow` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `article_isfollow` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `diary_isfollow` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `photos_isfollow` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `group_isfollow` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `sinaweibo_isfollow` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `at_isfeed` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_overprint`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_overprint` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `related` tinyint(3) NOT NULL DEFAULT 0,
  `total` smallint(6) unsigned NOT NULL DEFAULT 0,
  `createtime` int(10) NOT NULL DEFAULT 0,
  `isopen` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_owritedata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_owritedata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `touid` int(10) unsigned NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `isshare` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `source` varchar(10) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `c_num` mediumint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_pagecache`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_pagecache` (
  `sign` char(32) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `cachetime` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`sign`),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_pageinvoke`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_pageinvoke` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scr` varchar(20) NOT NULL DEFAULT '',
  `sign` varchar(20) NOT NULL DEFAULT '',
  `invokename` varchar(50) NOT NULL DEFAULT '',
  `pieces` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ifverify` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_scr_sign_invokename` (`scr`,`sign`,`invokename`),
  KEY `idx_invokename` (`invokename`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_pcfield`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_pcfield` (
  `fieldid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `pcid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT '',
  `rules` mediumtext NOT NULL,
  `ifable` tinyint(3) NOT NULL DEFAULT 1,
  `ifsearch` tinyint(3) NOT NULL DEFAULT 0,
  `ifasearch` tinyint(3) NOT NULL DEFAULT 0,
  `threadshow` tinyint(3) NOT NULL DEFAULT 0,
  `ifmust` tinyint(3) NOT NULL DEFAULT 1,
  `ifdel` tinyint(3) NOT NULL DEFAULT 0,
  `textsize` tinyint(3) NOT NULL DEFAULT 0,
  `descrip` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fieldid`),
  KEY `idx_pcid` (`pcid`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_pcmember`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_pcmember` (
  `pcmid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `pcid` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `nums` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `totalcash` varchar(20) NOT NULL DEFAULT '',
  `phone` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `extra` tinyint(3) NOT NULL DEFAULT 0,
  `jointime` int(10) NOT NULL DEFAULT 0,
  `ifpay` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pcmid`),
  KEY `idx_tid_uid` (`tid`,`uid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_pcvalue1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_pcvalue1` (
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifrecycle` tinyint(3) NOT NULL DEFAULT 0,
  `pctype` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `begintime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `limitnum` int(10) unsigned NOT NULL DEFAULT 0,
  `objecter` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `price` varchar(255) NOT NULL DEFAULT '',
  `deposit` varchar(255) NOT NULL DEFAULT '',
  `payway` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contacter` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `pcattach` varchar(255) NOT NULL DEFAULT '',
  `mprice` varchar(255) NOT NULL DEFAULT '',
  `wangwang` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  KEY `idx_fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_permission`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_permission` (
  `uid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL,
  `gid` smallint(6) unsigned NOT NULL,
  `rkey` varchar(20) NOT NULL DEFAULT '',
  `type` enum('basic','special','system','systemforum') NOT NULL,
  `rvalue` text NOT NULL,
  PRIMARY KEY (`uid`,`fid`,`gid`,`rkey`),
  KEY `idx_rkey` (`rkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_phone_sign`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_phone_sign` (
  `uid` int(11) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `createdate` int(11) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_pidtmp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_pidtmp` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=4170583 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_pinglog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_pinglog` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) NOT NULL DEFAULT 0,
  `tid` int(10) NOT NULL DEFAULT 0,
  `pid` int(10) NOT NULL DEFAULT 0,
  `name` varchar(15) NOT NULL DEFAULT '',
  `point` varchar(10) NOT NULL DEFAULT '',
  `pinger` varchar(15) NOT NULL DEFAULT '',
  `record` mediumtext NOT NULL,
  `pingdate` int(10) NOT NULL DEFAULT 0,
  `ifhide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_tid_pid` (`tid`,`pid`),
  KEY `idx_pid` (`pid`),
  KEY `idx_fid_tid_pid` (`fid`,`tid`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_plan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_plan` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(80) NOT NULL DEFAULT '',
  `month` varchar(2) NOT NULL DEFAULT '',
  `week` varchar(1) NOT NULL DEFAULT '',
  `day` varchar(2) NOT NULL DEFAULT '',
  `hour` varchar(80) NOT NULL DEFAULT '',
  `usetime` int(10) NOT NULL DEFAULT 0,
  `nexttime` int(10) NOT NULL DEFAULT 0,
  `ifsave` tinyint(3) NOT NULL DEFAULT 0,
  `ifopen` tinyint(3) NOT NULL DEFAULT 0,
  `filename` varchar(80) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_polls`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_polls` (
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `voteopts` mediumtext NOT NULL,
  `modifiable` tinyint(3) NOT NULL DEFAULT 0,
  `previewable` tinyint(3) NOT NULL DEFAULT 0,
  `multiple` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `mostvotes` smallint(6) unsigned NOT NULL DEFAULT 0,
  `voters` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `timelimit` int(10) NOT NULL DEFAULT 0,
  `leastvotes` int(10) unsigned NOT NULL DEFAULT 0,
  `regdatelimit` int(10) unsigned NOT NULL DEFAULT 0,
  `creditlimit` varchar(255) NOT NULL DEFAULT '',
  `postnumlimit` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_portalpage`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_portalpage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sign` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sign` (`sign`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_postcate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_postcate` (
  `pcid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `sign` enum('basic','buy') NOT NULL DEFAULT 'basic',
  `name` varchar(30) NOT NULL DEFAULT '',
  `ifable` tinyint(3) NOT NULL DEFAULT 1,
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `viewright` varchar(255) NOT NULL DEFAULT '',
  `adminright` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pcid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_posts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_posts` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `aid` text NOT NULL,
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `icon` tinyint(2) NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `userip` varchar(15) NOT NULL DEFAULT '',
  `ifsign` tinyint(3) NOT NULL DEFAULT 0,
  `buy` text NOT NULL,
  `alterinfo` varchar(50) NOT NULL DEFAULT '',
  `remindinfo` varchar(150) NOT NULL,
  `leaveword` varchar(255) NOT NULL DEFAULT '',
  `ipfrom` varchar(255) NOT NULL,
  `ifconvert` tinyint(3) NOT NULL DEFAULT 1,
  `ifwordsfb` tinyint(3) NOT NULL DEFAULT 1,
  `ifcheck` tinyint(3) NOT NULL DEFAULT 0,
  `content` mediumtext NOT NULL,
  `ifmark` varchar(255) NOT NULL DEFAULT '',
  `ifreward` tinyint(3) NOT NULL DEFAULT 0,
  `ifshield` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `anonymous` tinyint(3) NOT NULL DEFAULT 0,
  `ifhide` tinyint(3) NOT NULL DEFAULT 0,
  `frommob` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`pid`),
  KEY `idx_fid` (`fid`),
  KEY `idx_postdate` (`postdate`),
  KEY `idx_tid` (`tid`,`postdate`),
  KEY `idx_authorid` (`authorid`),
  KEY `idx_ifcheck` (`ifcheck`)
) ENGINE=MyISAM AUTO_INCREMENT=5464745 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_postsfloor`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_postsfloor` (
  `tid` int(10) NOT NULL,
  `floor` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`,`floor`),
  KEY `idx_pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_poststopped`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_poststopped` (
  `fid` smallint(6) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `floor` int(10) unsigned NOT NULL,
  `uptime` int(10) unsigned DEFAULT NULL,
  `overtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`fid`,`tid`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_privacy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_privacy` (
  `uid` mediumint(8) NOT NULL,
  `ptype` varchar(15) NOT NULL,
  `pkey` varchar(15) NOT NULL,
  `value` tinyint(3) NOT NULL,
  PRIMARY KEY (`uid`,`ptype`,`pkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_proclock`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_proclock` (
  `uid` mediumint(8) unsigned NOT NULL,
  `action` varchar(50) NOT NULL,
  `time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_pushdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_pushdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invokepieceid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `editor` varchar(15) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `vieworder` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `titlecss` varchar(255) NOT NULL DEFAULT '',
  `pushtime` int(10) unsigned NOT NULL DEFAULT 0,
  `ifverify` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ifbusiness` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_ifverify_invokepieceid_vieworder_starttime` (`ifverify`,`invokepieceid`,`vieworder`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_pushpic`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_pushpic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL DEFAULT '',
  `invokepieceid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `creator` varchar(20) NOT NULL DEFAULT '',
  `createtime` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_rate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_rate` (
  `objectid` int(10) NOT NULL DEFAULT 0,
  `optionid` smallint(6) NOT NULL DEFAULT 0,
  `typeid` smallint(6) NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` int(10) NOT NULL DEFAULT 0,
  `ip` varchar(15) NOT NULL DEFAULT '',
  KEY `idx_typeid_objectid_uid` (`typeid`,`objectid`,`uid`),
  KEY `idx_typeid_createdat_optionid_objectid` (`typeid`,`created_at`,`optionid`,`objectid`),
  KEY `idx_uid_createdat` (`uid`,`created_at`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_rateconfig`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_rateconfig` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(12) NOT NULL DEFAULT '',
  `icon` varchar(75) NOT NULL DEFAULT '',
  `isopen` tinyint(1) NOT NULL DEFAULT 1,
  `isdefault` tinyint(1) NOT NULL DEFAULT 0,
  `typeid` tinyint(1) NOT NULL DEFAULT 0,
  `creditset` tinyint(1) NOT NULL DEFAULT 0,
  `voternum` tinyint(1) NOT NULL DEFAULT 0,
  `authornum` tinyint(1) NOT NULL DEFAULT 0,
  `creator` varchar(20) DEFAULT '',
  `created_at` int(10) DEFAULT NULL,
  `updater` varchar(20) DEFAULT '',
  `update_at` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_typeid` (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_rateresult`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_rateresult` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `objectid` int(10) unsigned NOT NULL DEFAULT 0,
  `optionid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `typeid` tinyint(3) NOT NULL DEFAULT 0,
  `num` int(10) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_optionid_objectid` (`optionid`,`objectid`),
  KEY `idx_typeid_objectid` (`typeid`,`objectid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_recycle`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_recycle` (
  `pid` int(10) NOT NULL DEFAULT 0,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `deltime` int(10) unsigned NOT NULL DEFAULT 0,
  `admin` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`,`tid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_fid_pid` (`fid`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_replyreward`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_replyreward` (
  `tid` int(10) unsigned NOT NULL,
  `credittype` varchar(30) NOT NULL DEFAULT '',
  `creditnum` int(10) unsigned NOT NULL DEFAULT 0,
  `rewardtimes` smallint(5) unsigned NOT NULL DEFAULT 0,
  `repeattimes` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `chance` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `lefttimes` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_replyrewardrecord`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_replyrewardrecord` (
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `credittype` varchar(30) NOT NULL DEFAULT '',
  `creditnum` int(10) unsigned NOT NULL DEFAULT 0,
  `rewardtime` int(10) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_tid_pid` (`tid`,`pid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_report`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL DEFAULT '',
  `state` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `reason` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_reward`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_reward` (
  `tid` int(10) unsigned NOT NULL,
  `cbtype` varchar(20) NOT NULL DEFAULT '',
  `catype` varchar(20) NOT NULL DEFAULT '',
  `cbval` int(10) NOT NULL DEFAULT 0,
  `caval` int(10) NOT NULL DEFAULT 0,
  `timelimit` int(10) NOT NULL DEFAULT 0,
  `author` varchar(30) NOT NULL DEFAULT '',
  `pid` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`),
  KEY `idx_timelimit` (`timelimit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_robbuild`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_robbuild` (
  `tid` int(10) unsigned NOT NULL,
  `authorid` int(10) unsigned NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `endbuild` smallint(6) unsigned NOT NULL DEFAULT 0,
  `awardbuilds` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_robbuildfloor`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_robbuildfloor` (
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `floor` int(10) unsigned NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`,`floor`),
  UNIQUE KEY `idx_pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_schcache`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_schcache` (
  `sid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `sorderby` varchar(13) NOT NULL DEFAULT '',
  `schline` varchar(32) NOT NULL DEFAULT '',
  `schtime` int(10) unsigned NOT NULL DEFAULT 0,
  `total` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `schedid` text NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `idx_schline` (`schline`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_school`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_school` (
  `schoolid` int(11) NOT NULL AUTO_INCREMENT,
  `schoolname` varchar(32) NOT NULL DEFAULT '',
  `areaid` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`schoolid`),
  KEY `idx_areaid_type` (`areaid`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=34007 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_searchadvert`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_searchadvert` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `ifshow` tinyint(3) NOT NULL DEFAULT 0,
  `orderby` tinyint(3) NOT NULL DEFAULT 0,
  `config` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_searchforum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_searchforum` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `vieworder` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_searchfourm`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_searchfourm` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `vieworder` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_searchhotwords`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_searchhotwords` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `fromtype` enum('custom','auto') NOT NULL DEFAULT 'custom',
  `posttime` int(10) unsigned NOT NULL DEFAULT 0,
  `expire` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_searchstatistic`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_searchstatistic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `num` mediumint(8) NOT NULL DEFAULT 0,
  `created_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1056769 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_setform`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_setform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `ifopen` tinyint(3) NOT NULL DEFAULT 0,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_sharelinks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_sharelinks` (
  `sid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `threadorder` tinyint(3) NOT NULL DEFAULT 0,
  `name` char(100) NOT NULL DEFAULT '',
  `url` char(100) NOT NULL DEFAULT '',
  `descrip` char(200) NOT NULL DEFAULT '0',
  `logo` char(100) NOT NULL DEFAULT '',
  `ifcheck` tinyint(3) NOT NULL DEFAULT 0,
  `username` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_sharelinksrelation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_sharelinksrelation` (
  `sid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `stid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_stid_sid` (`stid`,`sid`),
  KEY `idx_sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_sharelinkstype`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_sharelinkstype` (
  `stid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `vieworder` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifable` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`stid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_singleright`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_singleright` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `visit` varchar(80) NOT NULL DEFAULT '',
  `post` varchar(80) NOT NULL DEFAULT '',
  `reply` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_smiles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_smiles` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `descipt` varchar(100) NOT NULL DEFAULT '',
  `vieworder` tinyint(2) NOT NULL DEFAULT 0,
  `type` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=373 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_space`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_space` (
  `uid` int(10) unsigned NOT NULL,
  `name` varchar(80) NOT NULL DEFAULT '',
  `domain` varchar(20) NOT NULL DEFAULT '',
  `spacetype` tinyint(1) NOT NULL DEFAULT 0,
  `banner` varchar(50) NOT NULL DEFAULT '',
  `skin` varchar(15) NOT NULL DEFAULT '',
  `visits` int(10) unsigned NOT NULL DEFAULT 0,
  `tovisits` int(10) unsigned NOT NULL DEFAULT 0,
  `visitors` varchar(255) NOT NULL DEFAULT '',
  `tovisitors` varchar(255) NOT NULL DEFAULT '',
  `modelset` text NOT NULL,
  `layout` text NOT NULL,
  `descript` varchar(255) NOT NULL DEFAULT '',
  `spacestyle` tinyint(3) unsigned NOT NULL DEFAULT 2,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_sqlcv`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_sqlcv` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `var` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=208473 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_stamp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_stamp` (
  `sid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `stamp` varchar(30) NOT NULL,
  `init` smallint(6) NOT NULL,
  `iflock` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `iffid` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `stamp` (`stamp`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_statistics_daily`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_statistics_daily` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(32) NOT NULL DEFAULT '',
  `typeid` int(6) unsigned NOT NULL DEFAULT 0,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `value` int(11) unsigned NOT NULL DEFAULT 0,
  `updatetime` int(11) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name_date_typeid` (`name`,`date`,`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=3195301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_statistics_uniqueidentifier`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_statistics_uniqueidentifier` (
  `identifier` char(30) NOT NULL,
  `updatetime` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_stopic`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_stopic` (
  `stopic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `category_id` int(10) unsigned NOT NULL DEFAULT 0,
  `bg_id` int(10) NOT NULL DEFAULT 0,
  `copy_from` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` varchar(20) NOT NULL DEFAULT '',
  `create_date` int(10) unsigned NOT NULL DEFAULT 0,
  `start_date` int(10) unsigned NOT NULL DEFAULT 0,
  `end_date` int(10) unsigned NOT NULL DEFAULT 0,
  `used_count` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `view_count` int(10) unsigned NOT NULL DEFAULT 0,
  `banner_url` varchar(100) NOT NULL DEFAULT '',
  `seo_keyword` varchar(255) NOT NULL DEFAULT '',
  `seo_desc` varchar(255) NOT NULL DEFAULT '',
  `block_config` text NOT NULL,
  `layout_config` text NOT NULL,
  `nav_config` text NOT NULL,
  `file_name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`stopic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_stopic_comment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_stopic_comment` (
  `commentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `stopic_id` int(10) unsigned NOT NULL DEFAULT 0,
  `content` varchar(255) NOT NULL DEFAULT '',
  `replynum` smallint(6) unsigned NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`commentid`),
  KEY `idx_stopicid_postdate` (`stopic_id`,`postdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_stopic_commentreply`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_stopic_commentreply` (
  `replyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `commentid` int(10) unsigned NOT NULL DEFAULT 0,
  `content` varchar(255) NOT NULL DEFAULT '',
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`replyid`),
  KEY `idx_commentid_postdate` (`commentid`,`postdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_stopicblock`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_stopicblock` (
  `block_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tagcode` text NOT NULL,
  `begin` text NOT NULL,
  `loops` text NOT NULL,
  `end` text NOT NULL,
  `config` varchar(255) NOT NULL DEFAULT '',
  `replacetag` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`block_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_stopiccategory`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_stopiccategory` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `num` smallint(6) NOT NULL DEFAULT 0,
  `creator` varchar(20) DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_stopicpictures`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_stopicpictures` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `categoryid` smallint(6) NOT NULL DEFAULT 0,
  `title` varchar(45) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `num` smallint(6) NOT NULL DEFAULT 0,
  `creator` varchar(20) DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_stopicunit`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_stopicunit` (
  `unit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stopic_id` int(10) unsigned NOT NULL,
  `html_id` varchar(50) NOT NULL,
  `block_id` smallint(6) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`unit_id`),
  UNIQUE KEY `idx_stopicid_htmlid` (`stopic_id`,`html_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_styles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_styles` (
  `sid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `name` char(50) NOT NULL DEFAULT '',
  `customname` char(50) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT 0,
  `lastmodify` int(10) NOT NULL DEFAULT 0,
  `ifopen` tinyint(1) NOT NULL DEFAULT 0,
  `stylepath` char(50) NOT NULL DEFAULT '',
  `tplpath` char(50) NOT NULL DEFAULT '',
  `yeyestyle` char(3) NOT NULL DEFAULT '',
  `bgcolor` varchar(100) NOT NULL DEFAULT '',
  `linkcolor` varchar(7) NOT NULL DEFAULT '',
  `tablecolor` char(7) NOT NULL DEFAULT '',
  `tdcolor` varchar(7) NOT NULL DEFAULT '',
  `tablewidth` varchar(7) NOT NULL DEFAULT '',
  `mtablewidth` varchar(7) NOT NULL DEFAULT '',
  `headcolor` varchar(100) NOT NULL DEFAULT '',
  `headborder` varchar(7) NOT NULL DEFAULT '',
  `headfontone` varchar(7) NOT NULL DEFAULT '',
  `headfonttwo` varchar(7) NOT NULL DEFAULT '',
  `cbgcolor` varchar(100) NOT NULL DEFAULT '',
  `cbgborder` varchar(7) NOT NULL DEFAULT '',
  `cbgfont` varchar(7) NOT NULL DEFAULT '',
  `forumcolorone` char(7) NOT NULL DEFAULT '',
  `forumcolortwo` char(7) NOT NULL DEFAULT '',
  `extcss` text NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_tagdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_tagdata` (
  `tagid` mediumint(8) NOT NULL DEFAULT 0,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `idx_tagid` (`tagid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_tags`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_tags` (
  `tagid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` varchar(15) NOT NULL DEFAULT '',
  `num` mediumint(8) NOT NULL DEFAULT 0,
  `ifhot` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tagid`),
  KEY `idx_ifhot_num` (`ifhot`,`num`),
  KEY `idx_tagname` (`tagname`)
) ENGINE=MyISAM AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_task`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT '',
  `task` varchar(255) DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT 0,
  `last` int(10) unsigned NOT NULL DEFAULT 0,
  `next` int(10) unsigned NOT NULL DEFAULT 0,
  `ctime` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_next` (`next`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_temp_keywords`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_temp_keywords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `created_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_threads`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_threads` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `icon` tinyint(3) NOT NULL DEFAULT 0,
  `titlefont` char(15) NOT NULL DEFAULT '',
  `author` char(15) NOT NULL DEFAULT '',
  `authorid` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` char(100) NOT NULL DEFAULT '',
  `toolinfo` char(16) NOT NULL DEFAULT '',
  `toolfield` varchar(21) NOT NULL DEFAULT '',
  `ifcheck` tinyint(3) NOT NULL DEFAULT 0,
  `type_bak` smallint(6) NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `lastpost` int(10) unsigned NOT NULL DEFAULT 0,
  `lastposter` char(15) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `replies` int(10) unsigned NOT NULL DEFAULT 0,
  `favors` int(10) NOT NULL DEFAULT 0,
  `topped` smallint(6) NOT NULL DEFAULT 0,
  `locked` tinyint(3) NOT NULL DEFAULT 0,
  `digest` tinyint(3) NOT NULL DEFAULT 0,
  `special` tinyint(3) NOT NULL DEFAULT 0,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `ifupload` tinyint(3) NOT NULL DEFAULT 0,
  `ifmail` tinyint(3) NOT NULL DEFAULT 0,
  `ifmark` smallint(6) NOT NULL DEFAULT 0,
  `ifshield` tinyint(3) NOT NULL DEFAULT 0,
  `anonymous` tinyint(3) NOT NULL DEFAULT 0,
  `dig` int(10) NOT NULL DEFAULT 0,
  `fight` int(10) NOT NULL DEFAULT 0,
  `ptable` tinyint(3) NOT NULL DEFAULT 0,
  `ifmagic` tinyint(3) NOT NULL DEFAULT 0,
  `ifhide` tinyint(3) NOT NULL DEFAULT 0,
  `inspect` varchar(30) NOT NULL,
  `tpcstatus` int(10) unsigned NOT NULL DEFAULT 0,
  `modelid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `shares` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `topreplays` smallint(6) NOT NULL DEFAULT 0,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `specialsort` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `frommob` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`),
  KEY `idx_authorid` (`authorid`),
  KEY `idx_postdate` (`postdate`),
  KEY `idx_digest` (`digest`),
  KEY `idx_fid_type_ifcheck` (`fid`,`type`,`ifcheck`),
  KEY `idx_special` (`special`),
  KEY `idx_fid_ifcheck_specialsort_lastpost` (`fid`,`ifcheck`,`specialsort`,`lastpost`)
) ENGINE=MyISAM AUTO_INCREMENT=373942 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_threads_at`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_threads_at` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_tid_pid_uid` (`tid`,`pid`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1850 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_threads_img`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_threads_img` (
  `tid` int(10) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `tpcnum` smallint(5) unsigned NOT NULL DEFAULT 0,
  `totalnum` smallint(5) unsigned NOT NULL DEFAULT 0,
  `collectnum` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `cover` varchar(80) NOT NULL DEFAULT '',
  `ifcheck` tinyint(3) NOT NULL DEFAULT 1,
  `topped` smallint(6) NOT NULL DEFAULT 0,
  `ifthumb` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`),
  KEY `idx_fid_topped_tid` (`fid`,`topped`,`tid`),
  KEY `idx_fid_topped_totalnum` (`fid`,`topped`,`totalnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_tmsgs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_tmsgs` (
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `aid` text NOT NULL,
  `userip` varchar(15) NOT NULL DEFAULT '',
  `ifsign` tinyint(3) NOT NULL DEFAULT 0,
  `buy` text NOT NULL,
  `ipfrom` varchar(255) NOT NULL,
  `alterinfo` varchar(50) NOT NULL DEFAULT '',
  `remindinfo` varchar(150) NOT NULL,
  `tags` varchar(100) NOT NULL DEFAULT '',
  `ifconvert` tinyint(3) NOT NULL DEFAULT 1,
  `ifwordsfb` tinyint(3) NOT NULL DEFAULT 1,
  `content` mediumtext NOT NULL,
  `form` varchar(30) NOT NULL DEFAULT '',
  `ifmark` varchar(255) NOT NULL DEFAULT '',
  `c_from` varchar(30) NOT NULL DEFAULT '',
  `magic` varchar(50) NOT NULL DEFAULT '',
  `overprint` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_toollog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_toollog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '',
  `nums` smallint(6) NOT NULL DEFAULT 0,
  `money` smallint(6) NOT NULL DEFAULT 0,
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT 0,
  `filename` varchar(20) NOT NULL DEFAULT '',
  `touid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_touid` (`touid`),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_tools`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_tools` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `filename` varchar(20) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `logo` varchar(100) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `price` varchar(255) NOT NULL DEFAULT '',
  `creditype` varchar(10) NOT NULL DEFAULT '',
  `rmb` decimal(8,2) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `stock` smallint(6) NOT NULL DEFAULT 0,
  `conditions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topiccate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topiccate` (
  `cateid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `ifable` tinyint(3) NOT NULL DEFAULT 1,
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `ifdel` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cateid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topicfield`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topicfield` (
  `fieldid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `modelid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT '0',
  `rules` mediumtext NOT NULL,
  `ifable` tinyint(3) NOT NULL DEFAULT 1,
  `ifsearch` tinyint(3) NOT NULL DEFAULT 0,
  `ifasearch` tinyint(3) NOT NULL DEFAULT 0,
  `threadshow` tinyint(3) NOT NULL DEFAULT 0,
  `ifmust` tinyint(3) NOT NULL DEFAULT 1,
  `textsize` tinyint(3) NOT NULL DEFAULT 0,
  `descrip` varchar(255) NOT NULL,
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`),
  KEY `idx_modelid` (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topicmodel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topicmodel` (
  `modelid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `cateid` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ifable` tinyint(3) NOT NULL DEFAULT 1,
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`modelid`),
  KEY `cateid` (`cateid`),
  KEY `idx_cateid` (`cateid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topictype`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topictype` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `vieworder` tinyint(3) NOT NULL DEFAULT 0,
  `upid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `ifsys` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isdefault` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topicvalue1`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topicvalue1` (
  `tid` mediumint(8) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT 0,
  `field1` varchar(255) NOT NULL,
  `field2` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field3` varchar(255) NOT NULL,
  `field4` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field5` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field6` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field7` int(10) unsigned NOT NULL DEFAULT 0,
  `field8` int(10) unsigned NOT NULL DEFAULT 0,
  `field9` int(10) unsigned NOT NULL DEFAULT 0,
  `field10` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field11` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field12` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field13` varchar(255) NOT NULL,
  `field14` varchar(255) NOT NULL,
  `field15` varchar(255) NOT NULL,
  `field16` varchar(255) NOT NULL,
  `field17` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field18` varchar(255) NOT NULL,
  `field19` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field20` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field21` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field22` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field23` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topicvalue2`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topicvalue2` (
  `tid` mediumint(8) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT 0,
  `field24` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field25` varchar(255) NOT NULL,
  `field26` varchar(255) NOT NULL,
  `field27` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field28` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field29` int(10) unsigned NOT NULL DEFAULT 0,
  `field30` int(10) unsigned NOT NULL DEFAULT 0,
  `field31` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field32` int(10) unsigned NOT NULL DEFAULT 0,
  `field33` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field34` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field35` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field36` int(10) unsigned NOT NULL DEFAULT 0,
  `field37` int(10) unsigned NOT NULL DEFAULT 0,
  `field38` varchar(255) NOT NULL,
  `field39` varchar(255) NOT NULL,
  `field40` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field41` varchar(255) NOT NULL,
  `field42` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field43` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field44` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field45` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topicvalue3`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topicvalue3` (
  `tid` mediumint(8) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT 0,
  `field46` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field47` varchar(255) NOT NULL,
  `field48` varchar(255) NOT NULL,
  `field49` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field50` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field51` int(10) unsigned NOT NULL DEFAULT 0,
  `field52` int(10) unsigned NOT NULL DEFAULT 0,
  `field53` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field54` int(10) unsigned NOT NULL DEFAULT 0,
  `field55` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field56` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field57` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field58` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field59` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field60` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field61` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field62` int(10) unsigned NOT NULL DEFAULT 0,
  `field63` int(10) unsigned NOT NULL DEFAULT 0,
  `field64` varchar(255) NOT NULL,
  `field65` varchar(255) NOT NULL,
  `field66` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field67` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topicvalue4`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topicvalue4` (
  `tid` mediumint(8) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT 0,
  `field68` varchar(255) NOT NULL,
  `field69` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field70` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field71` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field72` varchar(255) NOT NULL,
  `field73` varchar(255) NOT NULL,
  `field74` varchar(255) NOT NULL,
  `field75` varchar(255) NOT NULL,
  `field76` varchar(255) NOT NULL,
  `field77` varchar(255) NOT NULL,
  `field78` varchar(255) NOT NULL,
  `field79` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field80` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topicvalue5`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topicvalue5` (
  `tid` mediumint(8) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT 0,
  `field81` varchar(255) NOT NULL,
  `field82` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field83` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field84` varchar(255) NOT NULL,
  `field85` varchar(255) NOT NULL,
  `field86` varchar(255) NOT NULL,
  `field87` varchar(255) NOT NULL,
  `field88` varchar(255) NOT NULL,
  `field89` varchar(255) NOT NULL,
  `field90` varchar(255) NOT NULL,
  `field91` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field92` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topicvalue6`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topicvalue6` (
  `tid` mediumint(8) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT 0,
  `field93` varchar(255) NOT NULL,
  `field94` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field95` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field96` varchar(255) NOT NULL,
  `field97` varchar(255) NOT NULL,
  `field98` varchar(255) NOT NULL,
  `field99` varchar(255) NOT NULL,
  `field100` varchar(255) NOT NULL,
  `field101` varchar(255) NOT NULL,
  `field102` varchar(255) NOT NULL,
  `field103` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field104` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topicvalue7`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topicvalue7` (
  `tid` mediumint(8) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT 0,
  `field105` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field106` varchar(255) NOT NULL,
  `field107` varchar(255) NOT NULL,
  `field108` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field109` int(10) unsigned NOT NULL DEFAULT 0,
  `field110` varchar(255) NOT NULL,
  `field111` varchar(255) NOT NULL,
  `field112` varchar(255) NOT NULL,
  `field113` varchar(255) NOT NULL,
  `field114` varchar(255) NOT NULL,
  `field115` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_topicvalue8`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_topicvalue8` (
  `tid` mediumint(8) unsigned NOT NULL,
  `fid` smallint(6) unsigned NOT NULL,
  `ifrecycle` tinyint(1) NOT NULL DEFAULT 0,
  `field116` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `field117` varchar(255) NOT NULL,
  `field118` varchar(255) NOT NULL,
  `field119` varchar(255) NOT NULL,
  `field120` varchar(255) NOT NULL,
  `field121` varchar(255) NOT NULL,
  `field122` varchar(255) NOT NULL,
  `field123` varchar(255) NOT NULL,
  `field124` varchar(255) NOT NULL,
  `field125` varchar(255) NOT NULL,
  `field126` varchar(255) NOT NULL,
  `field127` varchar(255) NOT NULL,
  `field128` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_tpl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_tpl` (
  `tplid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `tagcode` text NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tplid`),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_tpltype`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_tpltype` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_trade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_trade` (
  `tid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(80) NOT NULL DEFAULT '',
  `icon` varchar(80) NOT NULL DEFAULT '',
  `degree` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `type` smallint(6) unsigned NOT NULL DEFAULT 0,
  `num` smallint(6) unsigned NOT NULL DEFAULT 0,
  `salenum` smallint(6) unsigned NOT NULL DEFAULT 0,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `costprice` decimal(8,2) NOT NULL DEFAULT 0.00,
  `locus` varchar(30) NOT NULL DEFAULT '',
  `paymethod` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `transport` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `mailfee` decimal(6,2) NOT NULL DEFAULT 0.00,
  `expressfee` decimal(6,2) NOT NULL DEFAULT 0.00,
  `emsfee` decimal(6,2) NOT NULL DEFAULT 0.00,
  `deadline` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`tid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_tradeorder`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_tradeorder` (
  `oid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(30) NOT NULL,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(80) NOT NULL DEFAULT '',
  `buyer` int(10) unsigned NOT NULL DEFAULT 0,
  `seller` int(10) unsigned NOT NULL DEFAULT 0,
  `price` decimal(6,2) NOT NULL DEFAULT 0.00,
  `quantity` smallint(6) unsigned NOT NULL DEFAULT 0,
  `transportfee` decimal(4,2) NOT NULL DEFAULT 0.00,
  `transport` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `buydate` int(10) unsigned NOT NULL DEFAULT 0,
  `tradedate` int(10) unsigned NOT NULL DEFAULT 0,
  `ifpay` tinyint(3) NOT NULL DEFAULT 0,
  `address` varchar(80) NOT NULL DEFAULT '',
  `consignee` varchar(15) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `zip` varchar(15) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `payment` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `tradeinfo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `idx_orderno` (`order_no`),
  KEY `idx_tid` (`tid`),
  KEY `idx_buyer` (`buyer`),
  KEY `idx_seller` (`seller`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ucapp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ucapp` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `siteurl` varchar(50) NOT NULL DEFAULT '',
  `secretkey` varchar(40) NOT NULL DEFAULT '',
  `interface` varchar(30) NOT NULL DEFAULT '',
  `uc` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ucnotify`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ucnotify` (
  `nid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `action` varchar(20) NOT NULL DEFAULT '',
  `param` text NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `complete` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `priority` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_ucsyncredit`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_ucsyncredit` (
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_user_career`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_user_career` (
  `careerid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `companyid` int(10) unsigned NOT NULL DEFAULT 0,
  `starttime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`careerid`),
  KEY `idx_uid_companyid` (`uid`,`companyid`)
) ENGINE=MyISAM AUTO_INCREMENT=4271 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_user_education`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_user_education` (
  `educationid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `schoolid` int(10) unsigned NOT NULL DEFAULT 0,
  `educationlevel` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `starttime` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`educationid`),
  KEY `idx_uid_schoolid` (`uid`,`schoolid`)
) ENGINE=MyISAM AUTO_INCREMENT=3882 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_userapp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_userapp` (
  `uid` int(10) unsigned NOT NULL,
  `appid` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `appname` varchar(20) NOT NULL DEFAULT '',
  `appinfo` text NOT NULL,
  `appevent` text NOT NULL,
  PRIMARY KEY (`uid`,`appid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_userbinding`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_userbinding` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `password` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`uid`),
  UNIQUE KEY `idx_uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_usercache`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_usercache` (
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `typeid` int(10) unsigned NOT NULL DEFAULT 0,
  `expire` int(10) unsigned NOT NULL DEFAULT 0,
  `num` smallint(6) unsigned NOT NULL DEFAULT 0,
  `value` text NOT NULL,
  PRIMARY KEY (`uid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_usergroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_usergroups` (
  `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gptype` enum('default','member','system','special') NOT NULL DEFAULT 'member',
  `grouptitle` varchar(60) NOT NULL DEFAULT '',
  `groupimg` varchar(15) NOT NULL DEFAULT '',
  `grouppost` int(10) NOT NULL DEFAULT 0,
  `ifdefault` tinyint(3) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`gid`),
  KEY `idx_gptype` (`gptype`),
  KEY `idx_grouppost` (`grouppost`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_usertool`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_usertool` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `toolid` smallint(6) NOT NULL DEFAULT 0,
  `nums` smallint(6) NOT NULL DEFAULT 0,
  `sellnums` smallint(6) NOT NULL DEFAULT 0,
  `sellprice` varchar(255) NOT NULL DEFAULT '',
  `sellstatus` tinyint(3) unsigned NOT NULL DEFAULT 1,
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_voter`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_voter` (
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  `vote` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `time` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `idx_tid` (`tid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_wappush`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_wappush` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(200) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `typeid` smallint(6) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_wappushtype`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_wappushtype` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `sort` smallint(6) unsigned NOT NULL DEFAULT 0,
  `typename` varchar(50) NOT NULL DEFAULT '',
  `state` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_bind`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_bind` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `weibotype` varchar(20) NOT NULL,
  `info` text NOT NULL,
  UNIQUE KEY `uid_weibotype` (`uid`,`weibotype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_cmrelations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_cmrelations` (
  `cid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_cnrelations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_cnrelations` (
  `cyid` int(10) unsigned NOT NULL DEFAULT 0,
  `mid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cyid`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_comment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_comment` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `mid` int(10) unsigned NOT NULL DEFAULT 0,
  `content` varchar(250) NOT NULL DEFAULT '',
  `extra` text NOT NULL,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`cid`),
  KEY `idx_mid_postdate` (`mid`,`postdate`),
  KEY `idx_postdate` (`postdate`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_content`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_content` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `content` text NOT NULL,
  `extra` text NOT NULL,
  `contenttype` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `objectid` int(10) unsigned NOT NULL DEFAULT 0,
  `replies` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `transmit` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  `username` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`),
  KEY `idx_uid_postdate` (`uid`,`postdate`),
  KEY `idx_type_objectid` (`type`,`objectid`),
  KEY `idx_postdate` (`postdate`)
) ENGINE=MyISAM AUTO_INCREMENT=39630 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_login_session`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_login_session` (
  `sessionid` varchar(32) NOT NULL DEFAULT '',
  `expire` int(10) unsigned NOT NULL DEFAULT 0,
  `sessiondata` text NOT NULL,
  PRIMARY KEY (`sessionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_login_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_login_user` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `hasresetpwd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `createtime` int(10) unsigned NOT NULL DEFAULT 0,
  `extra` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_referto`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_referto` (
  `uid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_relations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_relations` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `mid` int(10) unsigned NOT NULL DEFAULT 0,
  `authorid` int(10) unsigned NOT NULL DEFAULT 0,
  `type` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `postdate` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `idx_mid` (`mid`),
  KEY `idx_uid_postdate` (`uid`,`postdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_topicattention`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_topicattention` (
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `topicid` int(10) unsigned NOT NULL DEFAULT 0,
  `crtime` int(10) unsigned NOT NULL DEFAULT 0,
  `lasttime` int(10) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_userid_topicid` (`userid`,`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_topicrelations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_topicrelations` (
  `topicid` int(10) unsigned NOT NULL DEFAULT 0,
  `mid` int(10) unsigned NOT NULL DEFAULT 0,
  `crtime` int(10) unsigned NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_topicid_mid` (`topicid`,`mid`),
  KEY `idx_mid` (`mid`),
  KEY `idx_crtime` (`crtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_weibo_topics`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_weibo_topics` (
  `topicid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topicname` varchar(255) NOT NULL DEFAULT '',
  `num` int(10) unsigned NOT NULL DEFAULT 0,
  `ifhot` tinyint(3) NOT NULL DEFAULT 1,
  `crtime` int(10) NOT NULL DEFAULT 0,
  `lasttime` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`topicid`),
  UNIQUE KEY `idx_topicname` (`topicname`),
  KEY `idx_ifhot` (`ifhot`),
  KEY `idx_crtime` (`crtime`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_windcode`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_windcode` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '',
  `icon` varchar(30) NOT NULL DEFAULT '',
  `pattern` varchar(30) NOT NULL DEFAULT '',
  `replacement` text NOT NULL,
  `param` tinyint(3) NOT NULL DEFAULT 0,
  `ifopen` tinyint(3) NOT NULL DEFAULT 0,
  `title` varchar(30) NOT NULL DEFAULT '',
  `descrip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_wordfb`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_wordfb` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(100) NOT NULL DEFAULT '',
  `wordreplace` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(3) NOT NULL DEFAULT 0,
  `wordtime` int(10) unsigned NOT NULL DEFAULT 0,
  `custom` tinyint(3) NOT NULL DEFAULT 0,
  `classid` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1096 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_write_smiles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_write_smiles` (
  `smileid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(6) unsigned NOT NULL DEFAULT 0,
  `vieworder` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `path` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `tag` varchar(30) NOT NULL DEFAULT '',
  `desciption` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`smileid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pw_yun_setting`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pw_yun_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'hellocq'
--

--
-- Dumping routines for database 'hellocq'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-22 11:17:38
