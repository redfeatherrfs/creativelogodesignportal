-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: zaiscript
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `our_goal` longtext COLLATE utf8mb4_unicode_ci,
  `our_vision` longtext COLLATE utf8mb4_unicode_ci,
  `our_mission` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_member` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_us`
--

LOCK TABLES `about_us` WRITE;
/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
INSERT INTO `about_us` VALUES (1,'sdsad',NULL,'det','{\"title\":\"Our Goal\",\"details\":\"<p>We thrive on innovation, continuously pushing the boundaries of what\'s possible. Our team embraces emerging technologies, trends, and design philosophies to keep your digital presence ahead of the curve. Your success is our success. We believe in forming true partnerships with our clients, working collaboratively to understand your goals, challenges, and vision. Together, we navigate the digital landscape with purpose and precision. Our focus is not just on delivering projects but on achieving measurable results. Whether it\'s increased user engagement, higher conversion rates, or enhanced brand visibility, our solutions are crafted with your business objectives in mind.<\\/p>\"}','{\"title\":\"Our Vision\",\"details\":\"<p>We thrive on innovation, continuously pushing the boundaries of what\'s possible. Our team embraces emerging technologies, trends, and design philosophies to keep your digital presence ahead of the curve. Your success is our success. We believe in forming true partnerships with our clients, working collaboratively to understand your goals, challenges, and vision. Together, we navigate the digital landscape with purpose and precision. Our focus is not just on delivering projects but on achieving measurable results. Whether it\'s increased user engagement, higher conversion rates, or enhanced brand visibility, our solutions are crafted with your business objectives in mind.<\\/p>\"}','{\"title\":\"Innovation at the core.\",\"details\":\"<p>We thrive on innovation, continuously pushing the boundaries of what\'s possible. Our team embraces emerging technologies, trends, and design philosophies to keep your digital presence ahead of the curve. Your success is our success. We believe in forming true partnerships with our clients, working collaboratively to understand your goals, challenges, and vision. Together, we navigate the digital landscape with purpose and precision. Our focus is not just on delivering projects but on achieving measurable results. Whether it\'s increased user engagement, higher conversion rates, or enhanced brand visibility, our solutions are crafted with your business objectives in mind.<\\/p>\"}','345','[{\"title\":\"Ronald Richards\",\"designation\":\"App Developer\",\"facebook\":\"#\",\"linkedin\":\"#\",\"twitter\":\"#\",\"image\":\"346\"}]','2024-12-17 10:16:12','2025-02-25 12:55:48',NULL);
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_log`
--

DROP TABLE IF EXISTS `authentication_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `authenticatable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticatable_id` bigint unsigned NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `login_at` timestamp NULL DEFAULT NULL,
  `login_successful` tinyint(1) NOT NULL DEFAULT '0',
  `logout_at` timestamp NULL DEFAULT NULL,
  `cleared_by_user` tinyint(1) NOT NULL DEFAULT '0',
  `location` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authentication_log_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_log`
--

LOCK TABLES `authentication_log` WRITE;
/*!40000 ALTER TABLE `authentication_log` DISABLE KEYS */;
INSERT INTO `authentication_log` VALUES (1,'App\\Models\\User',2,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36','2025-07-03 06:08:15',1,'2025-07-03 06:08:30',0,'{\"ip\": \"127.0.0.0\", \"lat\": 41.31, \"lon\": -72.92, \"city\": \"New Haven\", \"state\": \"CT\", \"cached\": false, \"country\": \"United States\", \"default\": true, \"currency\": \"USD\", \"iso_code\": \"US\", \"timezone\": \"America/New_York\", \"continent\": \"NA\", \"state_name\": \"Connecticut\", \"postal_code\": \"06510\"}'),(2,'App\\Models\\User',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36','2025-07-03 06:14:22',1,NULL,0,'{\"ip\": \"127.0.0.0\", \"lat\": 41.31, \"lon\": -72.92, \"city\": \"New Haven\", \"state\": \"CT\", \"cached\": false, \"country\": \"United States\", \"default\": true, \"currency\": \"USD\", \"iso_code\": \"US\", \"timezone\": \"America/New_York\", \"continent\": \"NA\", \"state_name\": \"Connecticut\", \"postal_code\": \"06510\"}');
/*!40000 ALTER TABLE `authentication_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` longtext COLLATE utf8mb4_unicode_ci,
  `publish_date` datetime DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` bigint unsigned DEFAULT NULL,
  `blog_category_id` bigint unsigned DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choose_us`
--

DROP TABLE IF EXISTS `choose_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choose_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choose_us`
--

LOCK TABLES `choose_us` WRITE;
/*!40000 ALTER TABLE `choose_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `choose_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_invoices`
--

DROP TABLE IF EXISTS `client_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_order_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned DEFAULT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `is_mailed` tinyint NOT NULL DEFAULT '0',
  `payment_status` tinyint NOT NULL DEFAULT '0',
  `create_type` tinyint NOT NULL DEFAULT '1',
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_id` bigint DEFAULT NULL,
  `conversion_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `system_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_id` tinyint DEFAULT NULL,
  `bank_deposit_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_deposit_slip_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_invoices`
--

LOCK TABLES `client_invoices` WRITE;
/*!40000 ALTER TABLE `client_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_order_item_assignees`
--

DROP TABLE IF EXISTS `client_order_item_assignees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_order_item_assignees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_order_id` bigint unsigned NOT NULL,
  `client_order_item_id` bigint unsigned NOT NULL,
  `assigned_to` bigint unsigned NOT NULL,
  `assigned_by` bigint unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_order_item_assignees`
--

LOCK TABLES `client_order_item_assignees` WRITE;
/*!40000 ALTER TABLE `client_order_item_assignees` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_order_item_assignees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_order_item_notes`
--

DROP TABLE IF EXISTS `client_order_item_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_order_item_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_order_id` bigint unsigned NOT NULL,
  `client_order_item_id` bigint unsigned NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_order_item_notes`
--

LOCK TABLES `client_order_item_notes` WRITE;
/*!40000 ALTER TABLE `client_order_item_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_order_item_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_order_items`
--

DROP TABLE IF EXISTS `client_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_order_id` bigint unsigned NOT NULL DEFAULT '0',
  `service_id` bigint unsigned DEFAULT '0',
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_order_items`
--

LOCK TABLES `client_order_items` WRITE;
/*!40000 ALTER TABLE `client_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_orders`
--

DROP TABLE IF EXISTS `client_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `package_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned DEFAULT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `payment_status` tinyint NOT NULL DEFAULT '0',
  `working_status` tinyint NOT NULL DEFAULT '0',
  `package_type` tinyint NOT NULL DEFAULT '1',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `order_create_type` bigint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_orders`
--

LOCK TABLES `client_orders` WRITE;
/*!40000 ALTER TABLE `client_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `short_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `continent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_placement` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `current_currency` smallint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD','$','before',1,NULL,'2024-12-29 02:10:03','2024-12-29 02:10:03'),(2,'BDT','৳','before',0,NULL,'2024-12-29 02:10:03','2024-12-29 02:10:03'),(3,'INR','₹','before',0,NULL,'2024-12-29 02:10:03','2024-12-29 02:10:03'),(4,'GBP','£','after',0,NULL,'2024-12-29 02:10:03','2024-12-29 02:10:03'),(5,'MXN','$','before',0,NULL,'2024-12-29 02:10:03','2024-12-29 02:10:03'),(6,'SAR','SR','before',0,NULL,'2024-12-29 02:10:03','2024-12-29 02:10:03');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designations`
--

LOCK TABLES `designations` WRITE;
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `default` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'reset-password','Password Reset','password-reset','Reset your password','<p><b>Hello</b> {{username}},</p>\n <p>we\'re sending you this email because you requested a password reset. Click on this link to create a new password.</p>\n<p>Set a new password . Here is a link -</p>\n <p>Link : <b>{{reset_password_url}}</p>\n\n <p>If you didn\'t request a password reset, you can ignore this email. Your password will not be a changed.</p>',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49'),(2,'email-verify','Email Verification','email-verification','Verify Your Account','<p><b>Hello</b> {{username}},</p>\n <p>Thank you for creating an account with us. Please verify your email address to activate your account by clicking the link below:</p>\n <p>Verification Link : <b>{{email_verify_url}}</p>',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49'),(3,'ticket','Ticket Create Notify For Client','ticket-create-notify-for-client','New Ticket Created - {{tracking_no}}','<p><b>Dear</b> {{username}},</p>\n <p>We are happy to inform you that a new ticket has been successfully created in our system with the following details:</p>\n <p>Tracking No: <b>{{tracking_no}}</p>\n <p>Date Created: {{ticket_created_time}}</p>\n <p> Title: {{ticket_title}}</p>\n <p>\n You can track the progress of your ticket and provide any additional information or updates by logging into your account on our support portal.\n If you have any questions or need further assistance, please don\'t hesitate to reply to this email or contact our support team at {{contact_email}}  or {{contact_phone}}.\n Thank you for using our services!\n </p>\n <p><b>Best regards</b>, {{app_name}}</p>',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49'),(4,'ticket','Ticket Create Notify For Admin','ticket-create-notify-for-admin','New Ticket Created - {{tracking_no}}','<p><b>Dear</b> {{username}}, </p>\n <p>We are happy to inform you that a new ticket has been successfully created in our system with the following details:</p>\n <p>Tracking No: <b>{{tracking_no}}</p>\n <p>Date Created: {{ticket_created_time}}</p>\n <p> Title: {{ticket_title}}</p>\n <p>\n You can track the progress of your ticket and provide any additional information or updates by logging into your account on our support portal.\n  If you have any questions or need further assistance, please don\'t hesitate to reply to this email or contact our support team at {{contact_email}}  or {{contact_phone}}.\n Thank you for using our services!\n </p>\n <p><b>Best regards</b>, {{app_name}}</p>',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49'),(5,'ticket','Ticket Create Notify For Team Member','ticket-create-notify-for-team-member','New Ticket Created - {{tracking_no}}','<p><b>Dear</b> {{username}},</p>\n <p>We are happy to inform you that a new ticket has been successfully created in our system with the following details:</p>\n <p>Tracking No: <b>{{tracking_no}}</p>\n <p>Date Created: {{ticket_created_time}}</p>\n <p>Title: {{ticket_title}}</p>\n <p>\n You can track the progress of your ticket and provide any additional information or updates by logging into your account on our support portal.\n If you have any questions or need further assistance, please don\'t hesitate to reply to this email or contact our support team at {{contact_email}}  or {{contact_phone}}.\n  Thank you for using our services!\n </p>\n <p> <b>Best regards</b>, {{app_name}} </p>',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49'),(6,'ticket','Ticket Conversation For Admin','ticket-conversation-for-admin','New Reply For Your Ticket -{{tracking_no}}','<div><span style=\"font-weight: bolder;\">Dear</span>&nbsp;{{username}},</div><div><br></div><div>A new ticket has been created in our system. Ticket Tracking No: {{tracking_no}} with the following details:</div><div>Date Created: {{ticket_created_time}}&nbsp;</div><div><br></div><div>Title: {{ticket_title}}&nbsp;</div><div><br></div><div>Thank you for your attention.</div><div><span style=\"font-weight: bolder;\">Best regards,</span>&nbsp;{{app_name}}</div>',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49'),(7,'ticket','Ticket Conversation For Team Member','ticket-conversation-for-team-member','New Reply For Your Ticket - {{tracking_no}}','<div><span style=\"font-weight: bolder;\">Dear</span>&nbsp;{{username}},</div><div><br></div><div>We are happy to inform you that your Tracking No: {{tracking_no}} has reply in our system with the following details:&nbsp;</div><div>Date Created: {{ticket_created_time}}&nbsp;</div><div><br></div><div>Title: {{ticket_title}}&nbsp;</div><div><br></div><div>Thank you for your attention.</div><div><span style=\"font-weight: bolder;\">Best regards</span>, {{app_name}}</div>',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49'),(8,'ticket','Ticket Conversation For Client','ticket-conversation-for-client','New Reply For Your Ticket - {{tracking_no}}','<div><span style=\"font-weight: bolder;\">Dear</span>&nbsp;{{username}},</div><div><br></div><div>We are happy to inform you that your Tracking No: {{tracking_no}} has reply in our system with the following details:&nbsp;</div><div>Date Created: {{ticket_created_time}}&nbsp;</div><div><br></div><div>Title: {{ticket_title}}&nbsp;</div><div><br></div><div>You can track the progress of your ticket and provide any additional information or updates by logging into your account on our support portal. If you have any questions or need further assistance, please don\'t hesitate to reply to this email or contact our support team at {{contact_email}} or {{contact_phone}}. Thank you for using our services!</div><div><br></div><div><span style=\"font-weight: bolder;\">Best regards</span>, {{app_name}}</div>',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49'),(9,'ticket','Ticket Status Change For Client','ticket-status-change-for-client','Ticket Status Changed - {{tracking_no}}','<div><span style=\"font-weight: bolder;\">Dear</span>&nbsp;{{username}},</div><div><br></div><div>We are happy to inform you that your Tracking No: {{tracking_no}} has ticket status change in our system with the following details:&nbsp;</div><div>Date Created: {{ticket_created_time}}&nbsp;</div><div><br></div><div>Title: {{ticket_title}}&nbsp;</div><div><br></div><div>You can track the progress of your ticket and provide any additional information or updates by logging into your account on our support portal. If you have any questions or need further assistance, please don\'t hesitate to reply to this email or contact our support team at {{contact_email}} or {{contact_phone}}. Thank you for using our services!</div><div><br></div><div><span style=\"font-weight: bolder;\">Best regards</span>, {{app_name}}</div>',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49'),(10,'ticket','Ticket assign For Team Member','ticket-assign-for-team-member','ticket assign','ticket asaingn',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49'),(11,'invoice','Invoice Unpaid Notify For Client','invoice-unpaid-notify-for-client','Invoice Unpaid Notify For Client','Invoice Unpaid Notify For Client',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49'),(12,'invoice','Invoice Paid Notify For Client','invoice-paid-notify-for-client','Invoice Paid Notify For Client','Invoice Paid Notify For Client',1,1,NULL,'2025-05-27 04:27:49','2025-05-27 04:27:49');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_managers`
--

DROP TABLE IF EXISTS `file_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_managers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `file_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_managers_file_name_unique` (`file_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_managers`
--

LOCK TABLES `file_managers` WRITE;
/*!40000 ALTER TABLE `file_managers` DISABLE KEYS */;
INSERT INTO `file_managers` VALUES (1,'image/png','public','4961735220094.png','5221751546433.png',1,'uploads/Setting/5221751546433.png','png','2848',NULL,NULL,'2025-07-03 07:40:33','2025-07-03 07:40:33');
/*!40000 ALTER TABLE `file_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateway_currencies`
--

DROP TABLE IF EXISTS `gateway_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gateway_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` bigint unsigned NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `conversion_rate` decimal(8,2) NOT NULL DEFAULT '1.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateway_currencies`
--

LOCK TABLES `gateway_currencies` WRITE;
/*!40000 ALTER TABLE `gateway_currencies` DISABLE KEYS */;
INSERT INTO `gateway_currencies` VALUES (1,1,'USD',1.00,NULL,NULL,NULL),(2,2,'USD',1.00,NULL,NULL,NULL),(3,3,'INR',80.00,NULL,NULL,NULL),(4,4,'INR',80.00,NULL,NULL,NULL),(5,5,'USD',1.00,NULL,NULL,NULL),(6,6,'NGN',464.00,NULL,NULL,NULL),(7,7,'BDT',100.00,NULL,NULL,NULL),(8,8,'NGN',464.00,NULL,NULL,NULL),(9,9,'BRL',5.00,NULL,NULL,NULL),(10,10,'USD',1.00,NULL,NULL,NULL),(11,11,'USD',1.00,NULL,NULL,NULL),(12,12,'USD',1.00,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(13,13,'USD',1.00,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(14,14,'USD',1.00,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(15,15,'USD',1.00,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(16,16,'USD',1.00,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(17,17,'USD',1.00,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(18,18,'USD',1.00,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(19,19,'USD',1.00,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(20,20,'USD',1.00,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(21,21,'USD',1.00,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(22,22,'USD',1.00,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(23,23,'USD',1.00,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(24,24,'USD',1.00,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(25,25,'USD',1.00,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(26,26,'USD',1.00,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(27,27,'USD',1.00,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL);
/*!40000 ALTER TABLE `gateway_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateways`
--

DROP TABLE IF EXISTS `gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gateways` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1=Active,0=Disable',
  `mode` tinyint NOT NULL DEFAULT '2' COMMENT '1=live,2=sandbox',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'client id, public key, key, store id, api key',
  `secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'client secret, secret, store password, auth token',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateways`
--

LOCK TABLES `gateways` WRITE;
/*!40000 ALTER TABLE `gateways` DISABLE KEYS */;
INSERT INTO `gateways` VALUES (1,'Paypal','paypal','assets/images/gateway-icon/paypal.png',1,2,'','','',NULL,NULL,NULL),(2,'Stripe','stripe','assets/images/gateway-icon/stripe.png',1,2,'','','',NULL,NULL,NULL),(3,'Razorpay','razorpay','assets/images/gateway-icon/razorpay.png',1,2,'','','',NULL,NULL,NULL),(4,'Instamojo','instamojo','assets/images/gateway-icon/instamojo.png',1,2,'','','',NULL,NULL,NULL),(5,'Mollie','mollie','assets/images/gateway-icon/mollie.png',1,2,'','','',NULL,NULL,NULL),(6,'Paystack','paystack','assets/images/gateway-icon/paystack.png',1,2,'','','',NULL,NULL,NULL),(7,'Sslcommerz','sslcommerz','assets/images/gateway-icon/sslcommerz.png',1,2,'','','',NULL,NULL,NULL),(8,'Flutterwave','flutterwave','assets/images/gateway-icon/flutterwave.png',1,2,'','','',NULL,NULL,NULL),(9,'Mercadopago','mercadopago','assets/images/gateway-icon/mercadopago.png',1,2,'','','',NULL,NULL,NULL),(10,'Bank','bank','assets/images/gateway-icon/bank.png',1,2,'','','',NULL,NULL,NULL),(11,'Cash','cash','assets/images/gateway-icon/cash.png',1,2,'','','',NULL,NULL,NULL),(12,'Coinbase','coinbase','assets/images/gateway-icon/coinbase.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(13,'Iyzico','iyzico','assets/images/gateway-icon/iyzico.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(14,'Bitpay','bitpay','assets/images/gateway-icon/bitpay.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(15,'Zitopay','zitopay','assets/images/gateway-icon/zitopay.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(16,'Binance','binance','assets/images/gateway-icon/binance.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(17,'Paytm','paytm','assets/images/gateway-icon/paytm.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:08','2024-12-29 02:10:08',NULL),(18,'Payhere','payhere','assets/images/gateway-icon/payhere.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(19,'Maxicash','maxicash','assets/images/gateway-icon/maxicash.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(20,'Cinetpay','cinetpay','assets/images/gateway-icon/cinetpay.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(21,'Voguepay','voguepay','assets/images/gateway-icon/voguepay.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(22,'Toyyibpay','toyyibpay','assets/images/gateway-icon/toyyibpay.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(23,'Paymob','paymob','assets/images/gateway-icon/paymob.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(24,'Authorize','authorize','assets/images/gateway-icon/authorize.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(25,'Alipay','alipay','assets/images/gateway-icon/alipay.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(26,'Xendit','xendit','assets/images/gateway-icon/xendit.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL),(27,'Paddle','paddle','assets/images/gateway-icon/paddle.png',1,2,NULL,NULL,NULL,'2024-12-29 02:10:09','2024-12-29 02:10:09',NULL);
/*!40000 ALTER TABLE `gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label_order_task`
--

DROP TABLE IF EXISTS `label_order_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `label_order_task` (
  `label_id` bigint unsigned NOT NULL,
  `order_task_id` bigint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label_order_task`
--

LOCK TABLES `label_order_task` WRITE;
/*!40000 ALTER TABLE `label_order_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `label_order_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_page_settings`
--

DROP TABLE IF EXISTS `landing_page_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_page_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_page_settings`
--

LOCK TABLES `landing_page_settings` WRITE;
/*!40000 ALTER TABLE `landing_page_settings` DISABLE KEYS */;
INSERT INTO `landing_page_settings` VALUES (1,'hero_banner_sub_title','[\"Design\",\"Deliver\"]',NULL,'2024-12-29 02:23:12','2025-07-03 07:40:33'),(2,'hero_banner_title','Best Design Workforce with Powerful Tools.',NULL,'2024-12-29 02:23:12','2024-12-29 02:23:12'),(3,'hero_banner_details','At ZaiScrip, we understand the unique challenges design agencies face in balancing creativity with project management. Our platform is designed to streamline your entire workflow, from brainstorming & client feedback to final delivery. Collaborate effortlessly with your team.',NULL,'2024-12-29 02:23:12','2024-12-29 02:23:12'),(4,'about_us_sub_title','[\"About\",\"us\"]',NULL,'2024-12-29 02:24:08','2024-12-29 02:24:08'),(5,'about_us_title','ZaiScrip, we are a passionate team of creative professionals dedicated to transforming ideas into visual experiences',NULL,'2024-12-29 02:24:08','2024-12-29 02:24:08'),(6,'about_us_details','At ZaiScrip, we understand the unique challenges design agencies face in balancing creativity with project management. Our platform is designed to streamline your entire workflow.',NULL,'2024-12-29 02:24:08','2024-12-29 02:24:08'),(7,'about_us_extra_feature_title_1',NULL,NULL,'2024-12-29 02:24:08','2024-12-29 02:24:08'),(8,'about_us_extra_feature_title_2',NULL,NULL,'2024-12-29 02:24:08','2024-12-29 02:24:08'),(9,'about_us_extra_feature_title_3',NULL,NULL,'2024-12-29 02:24:08','2024-12-29 02:24:08'),(10,'our_service_sub_title','[\"Our\",\"Service\"]',NULL,'2024-12-29 02:24:41','2024-12-29 02:24:41'),(11,'our_service_title','Our Creative Solutions for Design Agencies.',NULL,'2024-12-29 02:24:41','2024-12-29 02:24:41'),(12,'our_project_sub_title','[\"Our\",\"Portfolio\"]',NULL,'2024-12-29 02:32:03','2024-12-29 02:32:03'),(13,'our_project_title','Visual Experiences That Inspires.',NULL,'2024-12-29 02:32:03','2024-12-29 02:32:03'),(14,'choose_us_sub_title','[\"Choose\",\"us\"]',NULL,'2024-12-29 02:39:23','2024-12-29 02:39:23'),(15,'choose_us_title','You Should Choose Us for Your Needs.',NULL,'2024-12-29 02:39:23','2024-12-29 02:39:23'),(16,'choose_us_details','At ZaiScrip, we pride ourselves on being more than just a design agency; we are your strategic partner in creativity. We have a team of experienced designers.',NULL,'2024-12-29 02:39:23','2024-12-29 02:39:23'),(17,'our_process_sub_title','[\"working\",\"process\"]',NULL,'2024-12-29 02:39:52','2024-12-29 02:39:52'),(18,'our_process_title','How We Transform Ideas into Impactful Designs.',NULL,'2024-12-29 02:39:52','2024-12-29 02:39:52'),(19,'pricing_plan_sub_title','[\"Pricing\",\"plan\"]',NULL,'2024-12-29 02:40:16','2024-12-29 02:40:16'),(20,'pricing_plan_title','Find the Right Plan for Your Agency.',NULL,'2024-12-29 02:40:16','2024-12-29 02:40:16'),(21,'membership_benefits_sub_title','[\"membership\",\"benefits\"]',NULL,'2024-12-29 02:40:41','2024-12-29 02:40:41'),(22,'membership_benefits_title','Unlock Premium Benefits with Our Membership.',NULL,'2024-12-29 02:40:41','2024-12-29 02:40:41'),(23,'testimonial_sub_title','[\"clients\",\"say\"]',NULL,'2024-12-29 02:41:44','2024-12-29 02:41:44'),(24,'testimonial_title','Trusted by the Creative Minds Worldwide.',NULL,'2024-12-29 02:41:44','2024-12-29 02:41:44'),(25,'blog_sub_title','[\"news\",\"articles\"]',NULL,'2024-12-29 02:42:06','2024-12-29 02:42:06'),(26,'blog_title','Creative Insights and Expert Articles.',NULL,'2024-12-29 02:42:06','2024-12-29 02:42:06'),(27,'faq_sub_title','[\"FAQ\",\"ANSWERS\"]',NULL,'2024-12-29 02:42:34','2024-12-29 02:42:34'),(28,'faq_title','FAQ  ANSWERS Frequently asked questions!',NULL,'2024-12-29 02:42:34','2024-12-29 02:42:34'),(29,'company_batch_icon_1','1',NULL,'2025-07-03 07:40:33','2025-07-03 07:40:33');
/*!40000 ALTER TABLE `landing_page_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag_id` bigint unsigned DEFAULT NULL,
  `font` bigint unsigned DEFAULT NULL,
  `rtl` tinyint DEFAULT '4',
  `status` tinyint NOT NULL DEFAULT '1',
  `default` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en',NULL,NULL,0,1,1,'2024-12-29 02:10:03','2024-12-29 02:10:03',NULL);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_benefits`
--

DROP TABLE IF EXISTS `membership_benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership_benefits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_benefits`
--

LOCK TABLES `membership_benefits` WRITE;
/*!40000 ALTER TABLE `membership_benefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2014_10_12_100000_create_password_resets_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_06_23_121213_create_settings_table',1),(7,'2022_06_25_104329_create_countries_table',1),(8,'2022_06_25_110824_create_currencies_table',1),(9,'2022_06_25_111037_create_languages_table',1),(10,'2022_11_30_040739_create_gateways_table',1),(11,'2023_01_03_075827_create_gateway_currencies_table',1),(12,'2023_01_05_092212_create_file_managers_table',1),(13,'2023_01_07_120244_create_banks_table',1),(14,'2023_07_09_100721_create_notifications_table',1),(15,'2023_07_20_052653_create_email_templates_table',1),(16,'2023_08_07_062359_create_authentication_log_table',1),(17,'2023_09_05_090819_create_notification_seens_table',1),(18,'2023_11_18_072908_create_permission_tables',1),(19,'2023_11_19_154855_create_service_assignees_table',1),(20,'2023_11_20_140237_create_user_activity_logs_table',1),(21,'2023_11_21_101825_create_packages_table',1),(22,'2023_11_21_111128_create_designations_table',1),(23,'2023_11_26_100720_create_client_orders_table',1),(24,'2023_11_26_103400_create_client_invoices_table',1),(25,'2023_11_26_110918_create_tickets_table',1),(26,'2023_11_26_110939_create_ticket_assignees_table',1),(27,'2023_11_27_131421_create_client_order_items_table',1),(28,'2023_11_30_055645_create_ticket_conversations_table',1),(29,'2023_12_03_104331_create_ticket_seen_unseens_table',1),(30,'2023_12_09_095702_create_client_order_notes_table',1),(31,'2023_12_09_095817_create_client_order_assignees_table',1),(32,'2023_12_18_124742_create_faqs_table',1),(33,'2023_12_18_124743_create_testimonials_table',1),(34,'2024_07_15_193919_create_order_tasks_table',1),(35,'2024_07_15_194008_create_order_task_conversations_table',1),(36,'2024_07_15_194016_create_order_task_conversation_seens_table',1),(37,'2024_07_15_194027_create_order_task_assignees_table',1),(38,'2024_07_15_194141_create_order_task_attachments_table',1),(39,'2024_07_15_195319_create_label_order_task_table',1),(40,'2024_07_15_200225_create_labels_table',1),(41,'2024_12_01_025451_create_choose_us_table',1),(42,'2024_12_01_060857_create_working_processes_table',1),(43,'2024_12_01_075037_create_membership_benefits_table',1),(44,'2024_12_02_021025_create_testimonial_categories_table',1),(45,'2024_12_02_071712_create_package_gateway_prices_table',1),(46,'2024_12_03_053847_create_contact_us_table',1),(47,'2024_12_04_011845_create_blog_categories_table',1),(48,'2024_12_04_011909_create_blogs_table',1),(49,'2024_12_04_065239_create_landing_page_settings_table',1),(50,'2024_12_07_011732_create_services_table',1),(51,'2024_12_08_012849_create_about_us_table',1),(52,'2024_12_08_051908_create_portfolio_categories_table',1),(53,'2024_12_08_051922_create_portfolios_table',1),(54,'2024_12_09_061949_create_package_services_table',1),(55,'2024_12_15_075320_create_order_task_requirements_table',1),(56,'2024_12_23_181538_create_pages_table',1),(57,'2025_03_16_145332_add_column_services_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_seens`
--

DROP TABLE IF EXISTS `notification_seens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_seens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `notification_id` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_seens`
--

LOCK TABLES `notification_seens` WRITE;
/*!40000 ALTER TABLE `notification_seens` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_seens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci,
  `view_status` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1,'New client registered','A new client, adnan, has registered.','http://127.0.0.1:8001/admin/client',0,1,NULL,'2025-07-03 06:08:15','2025-07-03 06:08:15');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_task_assignees`
--

DROP TABLE IF EXISTS `order_task_assignees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_task_assignees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_task_id` bigint unsigned NOT NULL,
  `assign_to` bigint unsigned NOT NULL,
  `assign_by` bigint unsigned NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_task_assignees`
--

LOCK TABLES `order_task_assignees` WRITE;
/*!40000 ALTER TABLE `order_task_assignees` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_task_assignees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_task_attachments`
--

DROP TABLE IF EXISTS `order_task_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_task_attachments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_task_id` bigint unsigned NOT NULL,
  `file` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_task_attachments`
--

LOCK TABLES `order_task_attachments` WRITE;
/*!40000 ALTER TABLE `order_task_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_task_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_task_conversation_seens`
--

DROP TABLE IF EXISTS `order_task_conversation_seens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_task_conversation_seens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_task_id` bigint unsigned NOT NULL DEFAULT '0',
  `order_task_conversation_id` bigint unsigned NOT NULL DEFAULT '0',
  `is_seen` tinyint NOT NULL DEFAULT '1',
  `created_by` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_task_conversation_seens`
--

LOCK TABLES `order_task_conversation_seens` WRITE;
/*!40000 ALTER TABLE `order_task_conversation_seens` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_task_conversation_seens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_task_conversations`
--

DROP TABLE IF EXISTS `order_task_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_task_conversations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_task_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `conversation_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_task_conversations`
--

LOCK TABLES `order_task_conversations` WRITE;
/*!40000 ALTER TABLE `order_task_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_task_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_task_requirements`
--

DROP TABLE IF EXISTS `order_task_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_task_requirements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_order_id` bigint unsigned NOT NULL,
  `client_order_item_id` bigint unsigned NOT NULL,
  `order_task_id` bigint unsigned NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_task_requirements`
--

LOCK TABLES `order_task_requirements` WRITE;
/*!40000 ALTER TABLE `order_task_requirements` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_task_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tasks`
--

DROP TABLE IF EXISTS `order_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_order_id` bigint unsigned NOT NULL,
  `client_order_item_id` bigint unsigned NOT NULL,
  `taskId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `progress` int NOT NULL DEFAULT '0',
  `priority` tinyint NOT NULL DEFAULT '5',
  `client_access` tinyint NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `last_reply_id` bigint unsigned NOT NULL,
  `last_reply_by` bigint unsigned NOT NULL,
  `last_reply_time` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tasks`
--

LOCK TABLES `order_tasks` WRITE;
/*!40000 ALTER TABLE `order_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_gateway_prices`
--

DROP TABLE IF EXISTS `package_gateway_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_gateway_prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` bigint unsigned NOT NULL,
  `gateway_currency_id` bigint unsigned NOT NULL,
  `package_id` bigint unsigned NOT NULL,
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthly_price_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yearly_price_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_gateway_prices`
--

LOCK TABLES `package_gateway_prices` WRITE;
/*!40000 ALTER TABLE `package_gateway_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_gateway_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_services`
--

DROP TABLE IF EXISTS `package_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `package_id` bigint unsigned NOT NULL,
  `service_id` bigint unsigned NOT NULL,
  `quantity` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_services`
--

LOCK TABLES `package_services` WRITE;
/*!40000 ALTER TABLE `package_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci,
  `monthly_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `yearly_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT 'active for 1 , deactivate for 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_expiry` datetime DEFAULT NULL,
  `otp` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'Manage Client','web','2024-12-29 02:10:03','2024-12-29 02:10:03'),(2,'Manage Tickets','web','2024-12-29 02:10:03','2024-12-29 02:10:03'),(3,'Manage Invoice','web','2024-12-29 02:10:03','2024-12-29 02:10:03'),(4,'Manage Orders','web','2024-12-29 02:10:03','2024-12-29 02:10:03'),(5,'Manage Team Member','web','2024-12-29 02:10:03','2024-12-29 02:10:03'),(6,'Manage Packages','web','2024-12-29 02:10:03','2024-12-29 02:10:03'),(7,'Manage Services','web','2024-12-29 02:10:03','2024-12-29 02:10:03'),(8,'Manage Setting','web','2024-12-29 02:10:03','2024-12-29 02:10:03'),(9,'Manage Cms Settings','web','2024-12-29 02:10:03','2024-12-29 02:10:03');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_categories`
--

DROP TABLE IF EXISTS `portfolio_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolio_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '4',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_categories`
--

LOCK TABLES `portfolio_categories` WRITE;
/*!40000 ALTER TABLE `portfolio_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `tag` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` tinyint NOT NULL DEFAULT '4',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_assignees`
--

DROP TABLE IF EXISTS `service_assignees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_assignees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int NOT NULL,
  `assign_to` int NOT NULL,
  `assign_by` int NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_assignees`
--

LOCK TABLES `service_assignees` WRITE;
/*!40000 ALTER TABLE `service_assignees` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_assignees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `our_touch_point` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `our_touch_point_section_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_touch_point_section_sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_approach` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `our_approach_section_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_approach_section_sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'build_version','3',NULL,'2024-12-29 02:10:03','2024-12-29 02:10:03'),(2,'current_version','1.2',NULL,'2024-12-29 02:10:03','2024-12-29 02:10:03'),(3,'hero_banner_status','1',NULL,'2024-12-29 02:21:44','2024-12-29 02:21:44'),(4,'about_us_status','1',NULL,'2024-12-29 02:21:44','2024-12-29 02:21:44'),(5,'our_service_status','1',NULL,'2024-12-29 02:21:45','2024-12-29 02:21:45'),(6,'our_project_status','1',NULL,'2024-12-29 02:21:45','2024-12-29 02:21:45'),(7,'choose_us_status','1',NULL,'2024-12-29 02:21:46','2024-12-29 02:21:46'),(8,'our_process_status','1',NULL,'2024-12-29 02:21:46','2024-12-29 02:21:46'),(9,'pricing_plan_status','1',NULL,'2024-12-29 02:21:48','2024-12-29 02:21:48'),(10,'membership_benefits_status','1',NULL,'2024-12-29 02:21:48','2024-12-29 02:21:48'),(11,'testimonial_status','1',NULL,'2024-12-29 02:21:49','2024-12-29 02:21:49'),(12,'blog_status','1',NULL,'2024-12-29 02:21:50','2024-12-29 02:21:50'),(13,'faq_status','1',NULL,'2024-12-29 02:21:52','2024-12-29 02:21:52'),(14,'service_details_touch_point_status','1',NULL,'2024-12-29 02:21:52','2024-12-29 02:21:52'),(15,'service_details_our_approach_status','1',NULL,'2024-12-29 02:21:55','2024-12-29 02:21:55'),(16,'about_us_our_journey_status','1',NULL,'2024-12-29 02:21:56','2024-12-29 02:21:56'),(17,'about_us_our_team_member_status','1',NULL,'2024-12-29 02:21:57','2024-12-29 02:21:57'),(18,'app_theme_style','3',NULL,'2024-12-29 02:29:58','2025-07-03 08:15:42'),(19,'cta_footer_sub_title','[\"lets\",\"talk\"]',NULL,'2024-12-29 02:43:08','2024-12-29 02:43:12'),(20,'cta_footer_title','Discuss Your Project Contact Our Team.',NULL,'2024-12-29 02:43:08','2024-12-29 02:43:08'),(21,'cta_footer_description','We’re here to help you every step of the way. Whether you have questions about our service, need support to start a project.',NULL,'2024-12-29 02:43:08','2024-12-29 02:43:08'),(22,'STORAGE_DRIVER','public',NULL,'2025-07-03 07:36:24','2025-07-03 07:36:24'),(23,'app_color_design_type','2',NULL,'2025-07-03 07:37:46','2025-07-03 07:37:46'),(24,'main_color','#2cc95b',NULL,'2025-07-03 07:37:46','2025-07-03 07:38:02'),(25,'sidebar_color','#000000',NULL,'2025-07-03 07:37:46','2025-07-03 07:39:45'),(26,'sidebar_active_color','#050505',NULL,'2025-07-03 07:37:47','2025-07-03 07:39:45');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonial_categories`
--

DROP TABLE IF EXISTS `testimonial_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonial_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonial_categories`
--

LOCK TABLES `testimonial_categories` WRITE;
/*!40000 ALTER TABLE `testimonial_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonial_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` decimal(8,2) DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` tinytext COLLATE utf8mb4_unicode_ci,
  `category_id` tinyint DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_assignees`
--

DROP TABLE IF EXISTS `ticket_assignees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_assignees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_to` bigint unsigned NOT NULL,
  `assigned_by` bigint unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_assignees`
--

LOCK TABLES `ticket_assignees` WRITE;
/*!40000 ALTER TABLE `ticket_assignees` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_assignees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_conversations`
--

DROP TABLE IF EXISTS `ticket_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_conversations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `conversation_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_conversations`
--

LOCK TABLES `ticket_conversations` WRITE;
/*!40000 ALTER TABLE `ticket_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_seen_unseens`
--

DROP TABLE IF EXISTS `ticket_seen_unseens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_seen_unseens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int NOT NULL DEFAULT '0',
  `conversion_id` int NOT NULL DEFAULT '0',
  `is_seen` tinyint NOT NULL DEFAULT '1',
  `created_by` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_seen_unseens_ticket_id_created_by_unique` (`ticket_id`,`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_seen_unseens`
--

LOCK TABLES `ticket_seen_unseens` WRITE;
/*!40000 ALTER TABLE `ticket_seen_unseens` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_seen_unseens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_reply_id` bigint unsigned DEFAULT NULL,
  `last_reply_by` bigint unsigned DEFAULT NULL,
  `last_reply_time` timestamp NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL DEFAULT '1',
  `file_id` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activity_logs`
--

DROP TABLE IF EXISTS `user_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity_logs`
--

LOCK TABLES `user_activity_logs` WRITE;
/*!40000 ALTER TABLE `user_activity_logs` DISABLE KEYS */;
INSERT INTO `user_activity_logs` VALUES (1,1,'Sign In','127.0.0.1','Web','United States',NULL,'2025-07-03 06:14:22','2025-07-03 06:14:22');
/*!40000 ALTER TABLE `user_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nick_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` int DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` bigint unsigned DEFAULT NULL,
  `role` tinyint NOT NULL DEFAULT '3',
  `email_verification_status` tinyint NOT NULL DEFAULT '0',
  `phone_verification_status` tinyint NOT NULL DEFAULT '0',
  `google_auth_status` tinyint NOT NULL DEFAULT '0',
  `google2fa_secret` text COLLATE utf8mb4_unicode_ci,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` int DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL,
  `last_seen` datetime NOT NULL DEFAULT '2025-07-03 11:00:39',
  `show_email_in_public` tinyint NOT NULL DEFAULT '1',
  `show_phone_in_public` tinyint NOT NULL DEFAULT '1',
  `created_by` bigint unsigned DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'123456','Administrator Doe',NULL,'admin@gmail.com','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$PWMhSzbL5DiHinQsxteyOO/T2epCoiMC9QeRAj9H/yfgus6DSo8RS',NULL,1,1,1,0,'72WX66WP5THVD4DG',NULL,NULL,NULL,NULL,NULL,'2025-07-03 16:13:54',1,1,NULL,1,NULL,NULL,NULL,'2025-07-03 11:08:54'),(2,'2bd196c8-f2bd-4ada-96df-7cd500eeba5a','adnan',NULL,'adnankhan125@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'$2y$10$BiZsGsq1NUTKC76xLUsGPOSx8YDVa8SghKk8dW/c/Cxt9rlEY17hG',NULL,3,0,0,0,'TNDHKAMXFQD5HEV3',NULL,NULL,'f0d5edf32a074091a4e37026622b5b9f',NULL,NULL,'2025-07-03 11:13:16',1,1,NULL,1,NULL,NULL,'2025-07-03 06:08:15','2025-07-03 06:08:16');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_processes`
--

DROP TABLE IF EXISTS `working_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `working_processes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_processes`
--

LOCK TABLES `working_processes` WRITE;
/*!40000 ALTER TABLE `working_processes` DISABLE KEYS */;
INSERT INTO `working_processes` VALUES (1,NULL,'Comprehensive Initial Consultation','We begin with a thorough consultation to understand your business goals.',1,'2024-12-29 02:10:03','2024-12-29 02:10:03',NULL),(2,NULL,'Tailored Strategy Development','We begin with a thorough consultation to understand your business goals.',1,'2024-12-29 02:10:03','2024-12-29 02:10:03',NULL),(3,NULL,'Detailed Reporting and Feedback.','We begin with a thorough consultation to understand your business goals.',1,'2024-12-29 02:10:03','2024-12-29 02:10:03',NULL),(4,NULL,'Development & Coding','We begin with a thorough consultation to understand your business goals.',1,'2024-12-29 02:10:03','2024-12-29 02:10:03',NULL);
/*!40000 ALTER TABLE `working_processes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-20 17:54:45
