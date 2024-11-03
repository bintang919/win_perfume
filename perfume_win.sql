/*
 Navicat Premium Data Transfer

 Source Server         : Parfumhh
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : perfume_win

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 03/11/2024 21:17:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `banner_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `banner_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`banner_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (2, 'Banner 1', 'images/ZicSCSax4HrYbSh6MtjfttW2uqoHFUTjB9lL0GMD.png', 1, 0, NULL, '2024-11-02 14:29:51', '2024-11-02 14:29:51');
INSERT INTO `banners` VALUES (3, 'Banner 2', 'images/xyjZlTfRkXUWOj7Wwp8oL1XYgNGT3Ui4xyZFuVXa.png', 1, 0, NULL, '2024-11-02 14:32:37', '2024-11-02 14:32:37');
INSERT INTO `banners` VALUES (4, 'Banner 3', 'images/altcOsz02g2d0vJfITsm4O7WG30bXwMhRxheM1jZ.png', 1, 1, '-', '2024-11-02 14:33:46', '2024-11-02 14:37:26');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `categories_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`categories_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'VERSACE', '-', 1, 0, '2024-11-02 11:40:54', '2024-11-02 12:56:30');
INSERT INTO `categories` VALUES (2, 'DIOR', '-', 1, 0, '2024-11-02 11:44:27', '2024-11-02 12:56:07');
INSERT INTO `categories` VALUES (3, 'BODY SHOP', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (4, 'BRITNEY SPEARS', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (5, 'BURBERRY ', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (6, 'BVLGARI', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (7, 'BYREDO', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (8, 'CALVIN KLEIN', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (9, 'CAROLINA HERRERA', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (10, 'CHANEL', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (11, 'CHLOE', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (12, 'CLINIQUE', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (13, 'COACH ', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (14, 'CREED ', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (15, 'DAVIDOFF', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (16, 'DE MARLY', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (17, 'DOLCE & GABANNA', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (18, 'DUNHILL', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (19, 'EMPORIO ARMANI', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (20, 'ESCADA ', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (21, 'ESTEE LAUDER ', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (22, 'GIARDINO BENESSERE', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (23, 'GIORGIO ARMANI', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (24, 'GUCCI', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (25, 'HERMES', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (26, 'HMNS', NULL, 1, 0, '2024-11-02 22:39:00', '2024-11-02 22:39:03');
INSERT INTO `categories` VALUES (27, 'HUGO BOSS', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (28, 'INITIO', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (29, 'JAGUAR', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (30, 'JEAN PAUL GAULTIER', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (31, 'JENNIFER LOPEZ', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (32, 'JO MALONE', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (33, 'KEEMUN', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (34, 'KORLOFF', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (35, 'LACOSTE', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (36, 'LALIQUE', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (37, 'LANCOME', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (38, 'LOUIS VUITTON', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (39, 'MAISON FRANCIS KURKDJIAN', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (40, 'MANCERA', NULL, 1, 0, '2024-11-02 22:41:30', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (41, 'MARC JACOBS', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (42, 'MEMO PARIS ', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (43, 'MONTALE', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (44, 'MONTBLANC', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (45, 'MUGLER', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (46, 'NARCISO RODRIGUEZ', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (47, 'NAUTICA ', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (48, 'PACO RABANNE', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (49, 'SAFF & CO', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (50, 'SALVATORE FERRAGAMO', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (51, 'TIZIANA TERENZI', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (52, 'TOM FORD', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (53, 'VICTORIA’S SECRET', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (54, 'XERJOFF', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (55, 'YVES SAINT LAURENT', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (56, 'ZARA', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (121, 'ANNA SUI', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (122, 'AIGNER', NULL, 1, 0, '2024-11-03 02:02:03', '2024-11-03 02:02:05');
INSERT INTO `categories` VALUES (123, 'BILLIE EILISH', NULL, 1, 0, '2024-11-02 22:41:07', '2024-11-02 22:41:07');
INSERT INTO `categories` VALUES (124, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (125, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (126, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (127, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (128, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (129, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (130, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (131, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (132, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (133, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (134, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (135, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (136, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (137, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (138, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (139, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (140, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (141, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (142, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (143, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (144, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (145, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (146, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (147, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (148, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (149, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (150, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (151, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (152, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (153, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (154, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (155, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (156, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (157, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (158, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (159, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (160, 'test', NULL, 1, 0, NULL, NULL);
INSERT INTO `categories` VALUES (161, 'test', NULL, 1, 0, NULL, NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_11_02_103208_create_categories_table', 2);
INSERT INTO `migrations` VALUES (7, '2024_11_02_130321_create_products_table', 3);
INSERT INTO `migrations` VALUES (9, '2024_11_02_141401_create_banners_table', 4);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `product_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `product_price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_detail_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `tiktok_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `shopee_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tokopedia_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (2, 'SAUVAGE', 2, '-', 0.00, 'images/7y4v59l2wtXgZmBkEcwCG9d8NwegblO8SMWg5fvk.jpg', 'images/cpscUI4pkNDXMiE2PhivrpLbosHESB9q4ZVhtZCR.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.48-SAUVAGEwin-i.221283574.20463043701?sp_atk=7d8b3ea4-90a9-4240-a05b-fc5a4ca00db6&xptdk=7d8b3ea4-90a9-4240-a05b-fc5a4ca00db6', NULL, '2024-11-02 14:07:43', '2024-11-02 14:09:47');
INSERT INTO `products` VALUES (3, 'SECRET WISH', 121, '-', 0.00, 'images/YY5hASXiCKsccgk6KTj3gM5cj9X25ul2YV1EoAAx.jpg', 'images/f0hczz3MAwEJZKzkabRHB1QoktT5sVarkQMolKr6.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.78-SECRET-WISHwin-i.221283574.20731208090?sp_atk=94a9a93f-31f5-4c28-ae2a-ef4cda3299a8&xptdk=94a9a93f-31f5-4c28-ae2a-ef4cda3299a8', NULL, '2024-11-02 16:54:45', '2024-11-02 16:54:45');
INSERT INTO `products` VALUES (4, 'FANCY', 121, '-', 0.00, 'images/ANNA SUI FLIGHT OF FANCY-01.png', 'images/ANNA SUI FLIGHT OF FANCY-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.380-A-FANCYwin-Women-i.221283574.25315281599?sp_atk=ac5d52c5-36ea-4c50-a5f1-fe64ad059230&xptdk=ac5d52c5-36ea-4c50-a5f1-fe64ad059230', NULL, NULL, NULL);
INSERT INTO `products` VALUES (5, 'MAN IN BLACK', 6, '-', 0.00, 'images/BVLGARI MAN IN BLACK-01.png', 'images/BVLGARI MAN IN BLACK-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.380-A-FANCYwin-Women-i.221283574.25315281599?sp_atk=ac5d52c5-36ea-4c50-a5f1-fe64ad059230&xptdk=ac5d52c5-36ea-4c50-a5f1-fe64ad059230', NULL, NULL, NULL);
INSERT INTO `products` VALUES (6, 'AQVA MARINE', 6, '-', 0.00, 'images/BVLGARI AQVA MARINE-01.png', 'images/BVLGARI AQVA MARINE-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.23-AQUAMARINEwin-i.221283574.9667245424?sp_atk=4b080c9e-0545-4988-b77e-a2e6e250f593&xptdk=4b080c9e-0545-4988-b77e-a2e6e250f593', NULL, NULL, NULL);
INSERT INTO `products` VALUES (7, 'EXTREME', 6, '-', 0.00, 'images/BVLGARI EXTREME-01.png', 'images/BVLGARI EXTREME-02.png', 1, 0, NULL, 'https://shopee.co.id/WIN-PARFUME-BANDUNG-NO.375-B.-EXTREMEwin-i.221283574.25365282959?sp_atk=846c5b8a-1026-4c19-a884-2b6142c7d322&xptdk=846c5b8a-1026-4c19-a884-2b6142c7d322', NULL, NULL, NULL);
INSERT INTO `products` VALUES (8, 'WOOD ESSENCE', 6, '-', 0.00, 'images/BVLGARI WOOD ESSENCE-01.png', 'images/BVLGARI WOOD ESSENCE-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.85-WOOD-ESSENCEwin-i.221283574.19131212954?sp_atk=c5edc8e0-455c-416a-b7a1-3fad5b9b6d19&xptdk=c5edc8e0-455c-416a-b7a1-3fad5b9b6d19', NULL, NULL, NULL);
INSERT INTO `products` VALUES (9, 'AQVA', 6, '-', 0.00, 'images/BVLGARI AQVA-01.png', 'images/BVLGARI AQVA-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-5-AQUAwin-i.221283574.24250937480?sp_atk=60750e2b-aef4-4bad-81b7-6954523963dc&xptdk=60750e2b-aef4-4bad-81b7-6954523963dc', NULL, NULL, NULL);
INSERT INTO `products` VALUES (10, 'BLEU DE CHANEL', 10, '-', 0.00, 'images/CHANEL ALLURE HOMME SPORT-01.png', 'images/CHANEL ALLURE HOMME SPORT-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.10-CH-DE-BLEUwin-i.221283574.6140521600?sp_atk=8c97e5da-3293-41e9-94ba-06254c4adb0a&xptdk=8c97e5da-3293-41e9-94ba-06254c4adb0a', NULL, NULL, NULL);
INSERT INTO `products` VALUES (11, 'ALLURE HOMME SPORT', 10, '-', 0.00, 'images/CHANEL ALLURE HOMME SPORT-01.png', 'images/CHANEL ALLURE HOMME SPORT-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.34-ALLURE-HOMMEwin-SPORT-i.221283574.4233712307?sp_atk=b9ee363c-25b9-4b2f-9a76-805c6518763f&xptdk=b9ee363c-25b9-4b2f-9a76-805c6518763f', NULL, NULL, NULL);
INSERT INTO `products` VALUES (12, 'COCO NOIR', 10, '-', 0.00, 'images/CHANNEL COCO-01.png', 'images/CHANNEL COCO-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.60-COCO-NOIRwin-i.221283574.7989691106?sp_atk=e4a93f68-2fd6-4907-9b1c-5b0b88454197&xptdk=e4a93f68-2fd6-4907-9b1c-5b0b88454197', NULL, NULL, NULL);
INSERT INTO `products` VALUES (13, 'COCO', 10, '-', 0.00, 'images/CHANNEL COCO-01.png', 'images/CHANNEL COCO-02.png', 1, 0, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO.353-COCOwin-i.221283574.22185226119?sp_atk=ebeb7b50-a29f-4ac8-9d15-d475f64a0797&xptdk=ebeb7b50-a29f-4ac8-9d15-d475f64a0797', NULL, NULL, NULL);
INSERT INTO `products` VALUES (14, 'COCO MADEMOISELLE', 10, '-', 0.00, 'images/CHANNEL ALLURE WOMEN-01.png', 'images/CHANNEL ALLURE WOMEN-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.125-Coco-MademoiselleWin-i.221283574.5189708261?sp_atk=abe3e248-3b5c-4d69-94ed-ca16f81548a1&xptdk=abe3e248-3b5c-4d69-94ed-ca16f81548a1', NULL, NULL, NULL);
INSERT INTO `products` VALUES (15, 'POISON GIRL', 2, '-', 0.00, 'images/DIOR POISON GIRL-01.png', 'images/DIOR POISON GIRL-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.21-POISONwin-GIRL-i.221283574.5966251388?sp_atk=fefe317a-c203-4d62-ad05-cd04dcc4ffc4&xptdk=fefe317a-c203-4d62-ad05-cd04dcc4ffc4', NULL, NULL, NULL);
INSERT INTO `products` VALUES (16, 'J’ADORE', 2, '-', 0.00, 'images/DIOR J_ADORE-01.png', 'images/DIOR J_ADORE-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.63-JADOREwin-i.221283574.7389696832?sp_atk=e8fc6a37-f747-4455-893b-eae760f2ffeb&xptdk=e8fc6a37-f747-4455-893b-eae760f2ffeb', NULL, NULL, NULL);
INSERT INTO `products` VALUES (17, 'BLOOMING BOUQUET', 2, '-', 0.00, 'images/DIOR BLOOMING BOUQUET-01.png', 'images/DIOR BLOOMING BOUQUET-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.357-BLOOMING-BOUQUETwin-i.221283574.22111790000?sp_atk=606e7731-ad63-4bd6-81f2-1da682a4d12b&xptdk=606e7731-ad63-4bd6-81f2-1da682a4d12b', NULL, NULL, NULL);
INSERT INTO `products` VALUES (18, 'SAUVAGE ELIXIR', 2, '-', 0.00, 'images/DIOR SAUVAGE ELIXIR-01.png', 'images/DIOR SAUVAGE ELIXIR-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-177-SAUVAGEwin-ELIXIRwin-i.221283574.24958603870?sp_atk=5af3144e-268b-4a6f-8dd6-9c12eb160b89&xptdk=5af3144e-268b-4a6f-8dd6-9c12eb160b89', NULL, NULL, NULL);
INSERT INTO `products` VALUES (19, 'BLACK XS', 48, '-', 0.00, 'images/PACO RABANNE BLACK XS MEN-01.png', 'images/PACO RABANNE BLACK XS MEN-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.77-BLACK-XSwin-MEN-PACORAwin-i.221283574.19831207029?sp_atk=d1eb1ec5-4d40-4f19-a6c6-ecb901796e93&xptdk=d1eb1ec5-4d40-4f19-a6c6-ecb901796e93', NULL, NULL, NULL);
INSERT INTO `products` VALUES (20, 'LADY MILLION', 48, '-', 0.00, 'images/PACO RABANNE LADY MILLION-01.png', 'images/PACO RABANNE LADY MILLION-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.54-LADY-MILLION-i.221283574.12193635279?sp_atk=850f218e-837e-4883-8550-7b1a64df973a&xptdk=850f218e-837e-4883-8550-7b1a64df973a', NULL, NULL, NULL);
INSERT INTO `products` VALUES (21, 'ONE MILLION', 48, '-', 0.00, 'images/PACO RABANNE ONE MILLION LUCKY-01.png', 'images/PACO RABANNE ONE MILLION LUCKY-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.72-ONE-MILLIONwin-i.221283574.16381286555?sp_atk=1afc61d4-a96d-42b9-a76d-053739e3202a&xptdk=1afc61d4-a96d-42b9-a76d-053739e3202a', NULL, NULL, NULL);
INSERT INTO `products` VALUES (22, 'ONE MILLION LUCKY', 48, '-', 0.00, 'images/PACO RABANNE ONE MILLION LUCKY-01.png', 'images/PACO RABANNE ONE MILLION LUCKY-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-16-LUCKYwin-i.221283574.19296298123?sp_atk=efd6bec6-0f23-4c0e-b786-17955c4ff5aa&xptdk=efd6bec6-0f23-4c0e-b786-17955c4ff5aa', NULL, NULL, NULL);
INSERT INTO `products` VALUES (23, 'LADY MILLION FABULOUS', 48, '-', 0.00, 'images/PACO RABANNE LADY MILLION FABULOUS-01.png', 'images/PACO RABANNE LADY MILLION FABULOUS-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.58-LADY-MILLION-FABULOUSwin-i.221283574.18431220300?sp_atk=0da24ad4-6827-4962-b4d9-cbdacc814be3&xptdk=0da24ad4-6827-4962-b4d9-cbdacc814be3', NULL, NULL, NULL);
INSERT INTO `products` VALUES (24, 'OLYMPEA SOLAR', 48, '-', 0.00, 'images/PACO RABANNE OLYMPEA SOLAR-01.png', 'images/PACO RABANNE OLYMPEA SOLAR-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NEW-!-NO.349-OLYMPEAN-SOLAREwin-i.221283574.22558371645?sp_atk=68f2c284-1429-4729-9c73-4d6a541fef00&xptdk=68f2c284-1429-4729-9c73-4d6a541fef00', NULL, NULL, NULL);
INSERT INTO `products` VALUES (25, 'SCANDALOUS', 53, '-', 0.00, 'images/VICTORIA SECRET SCANDALOUS-01.png', 'images/VICTORIA SECRET SCANDALOUS-02.png', 1, 0, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO.52-SCANDALOUSwin-i.221283574.3732831050?sp_atk=57aecdf0-21b0-4a33-ab22-13a5c87273a5&xptdk=57aecdf0-21b0-4a33-ab22-13a5c87273a5', NULL, NULL, NULL);
INSERT INTO `products` VALUES (26, 'BOMBSHELL', 53, '-', 0.00, 'images/VICTORIA SECRET BOMBSHELL-01.png', 'images/VICTORIA SECRET BOMBSHELL-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.4-BOMBSHELwin-i.221283574.4233711458?sp_atk=0f032a94-4d18-4b4e-8770-af66b6bd1819&xptdk=0f032a94-4d18-4b4e-8770-af66b6bd1819', NULL, NULL, NULL);
INSERT INTO `products` VALUES (27, 'VANILLA LACE', 53, '-', 0.00, 'images/VICTORIA SECRET VANILLA LACE-01.png', 'images/VICTORIA SECRET VANILLA LACE-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.98-VANILLA-LACEwin-i.221283574.21831224297?sp_atk=612cda00-7672-415a-8b82-00ff1a82bd2a&xptdk=612cda00-7672-415a-8b82-00ff1a82bd2a', NULL, NULL, NULL);
INSERT INTO `products` VALUES (28, 'ROMANTIC WISH', 53, '-', 0.00, 'images/VICTORIA SECRET ROMANTIC WISH-01.png', 'images/VICTORIA SECRET ROMANTIC WISH-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.381-ROMANTIC-WISHwin-i.221283574.24728046486?sp_atk=41e47d9e-43a8-4418-ac76-04b289df79fc&xptdk=41e47d9e-43a8-4418-ac76-04b289df79fc', NULL, NULL, NULL);
INSERT INTO `products` VALUES (29, 'BOMBSHELL GOLD', 53, '-', 0.00, 'images/VICTORIA SECRET BOMBSHELL GOLD-01.png', 'images/VICTORIA SECRET BOMBSHELL GOLD-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.339-BOMBSHELL-GOLDwin-i.221283574.23774474379?sp_atk=c46feade-fe03-49eb-8e93-efe783ab964f&xptdk=c46feade-fe03-49eb-8e93-efe783ab964f', NULL, NULL, NULL);
INSERT INTO `products` VALUES (30, 'EILISH', 123, '-', 0.00, 'images/BILLIE EILISH-01.png', 'images/BILLIE EILISH-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.364-BIELISHwin-i.221283574.25056769211?sp_atk=9466eda2-2578-41af-8f61-bcdf776a3cf9&xptdk=9466eda2-2578-41af-8f61-bcdf776a3cf9', NULL, NULL, NULL);
INSERT INTO `products` VALUES (31, 'WHITE MUSK', 3, '-', 0.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.139-women-WHITE-MUSKwin-women-i.221283574.20769084724?sp_atk=55a6381f-0eb6-42fe-9f11-ab3100db467f&xptdk=55a6381f-0eb6-42fe-9f11-ab3100db467f', NULL, NULL, NULL);
INSERT INTO `products` VALUES (32, 'MIDNIGHT FANTASY', 4, '-', 0.00, 'images/BRITNEY SPEARS MIDNIGHT FANTASY-01.png', 'images/BRITNEY SPEARS MIDNIGHT FANTASY-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.45-MIDNIGHT-FANTASY-B.SPEARS-i.221283574.9458312859?sp_atk=4ce85828-824d-4995-b83e-fccbc005a07f&xptdk=4ce85828-824d-4995-b83e-fccbc005a07f', NULL, NULL, NULL);
INSERT INTO `products` VALUES (33, 'HER', 5, '-', 0.00, 'images/BURBERRY HER-01.png', 'images/BURBERRY HER-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.376-BURBERRYwin-HER-WOMEN-i.221283574.25415283397?sp_atk=5e0f8204-c8ae-4552-8e37-69b56ff65915&xptdk=5e0f8204-c8ae-4552-8e37-69b56ff65915', NULL, NULL, NULL);
INSERT INTO `products` VALUES (34, 'BAL D’AFRIQUE', 7, '-', 0.00, 'images/BYREDO BAL D_AFRIQUE-01.png', 'images/BYREDO BAL D_AFRIQUE-02.png', 1, 0, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO.44-BAL-D\'AFRIQUEwin-i.221283574.14345764341?sp_atk=c344ba8c-f481-4334-bb6f-9986542e9dce&xptdk=c344ba8c-f481-4334-bb6f-9986542e9dce', NULL, NULL, NULL);
INSERT INTO `products` VALUES (35, 'BE', 8, '-', 0.00, 'images/CALVIN KLEIN CK BE-01.png', 'images/CALVIN KLEIN CK BE-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.15-BE-win-i.221283574.5632332445?sp_atk=310a1633-718c-4998-b624-a22adb5ed9de&xptdk=310a1633-718c-4998-b624-a22adb5ed9de', NULL, NULL, NULL);
INSERT INTO `products` VALUES (36, 'VIP 212 MEN', 9, '-', 0.00, 'images/CAROLINA HERRERA 212 VIP MEN-01.png', 'images/CAROLINA HERRERA 212 VIP MEN-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.8-212-VIPwin-Men-i.221283574.21063038827?sp_atk=09405577-f4b1-47e6-b503-9f18a724870f&xptdk=09405577-f4b1-47e6-b503-9f18a724870f', NULL, NULL, NULL);
INSERT INTO `products` VALUES (37, '212 MEN', 9, '-', 0.00, 'images/CAROLINA HERRERA 212 MEN-01.png', 'images/CAROLINA HERRERA 212 MEN-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.151-212win-MEN-i.221283574.13697951257?sp_atk=7b41d537-cae9-4edc-8499-1583e666a94f&xptdk=7b41d537-cae9-4edc-8499-1583e666a94f', NULL, NULL, NULL);
INSERT INTO `products` VALUES (38, 'HAPPY', 12, '-', 0.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO.2-CLINIQQ-HAPPYwin-men-i.221283574.5932327037?sp_atk=5187ad6e-e2b4-4f77-894e-e9d9fd2f5645&xptdk=5187ad6e-e2b4-4f77-894e-e9d9fd2f5645', NULL, NULL, NULL);
INSERT INTO `products` VALUES (39, 'FOR MEN', 13, '-', 0.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.30-COACH-FOR-MEN-i.221283574.9658319820?sp_atk=34a14bb6-c9e4-4f53-bfae-19b5f902e153&xptdk=34a14bb6-c9e4-4f53-bfae-19b5f902e153', NULL, NULL, NULL);
INSERT INTO `products` VALUES (40, 'AVENTUS', 14, '-', 0.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.49-AVENTUSwin-i.221283574.7570430956?sp_atk=8cd44ec4-e97c-441d-b400-681def7c0ce2&xptdk=8cd44ec4-e97c-441d-b400-681def7c0ce2', NULL, NULL, NULL);
INSERT INTO `products` VALUES (41, 'COOL WATER', 15, '-', 0.00, 'images/DAVIDOFF COOL WATER MEN-01.png', 'images/DAVIDOFF COOL WATER MEN-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.82-COOL-WATERwin-MEN-i.221283574.20531211292?sp_atk=7cd7f81a-0808-490f-8680-e33e294590c3&xptdk=7cd7f81a-0808-490f-8680-e33e294590c3', NULL, NULL, NULL);
INSERT INTO `products` VALUES (42, 'COOL WATER WOMEN', 15, '-', 0.00, 'images/DAVIDOFF COOL WATER WOMEN-01.png', 'images/DAVIDOFF COOL WATER WOMEN-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.84-COOL-WATERwin-WOMEN-i.221283574.19431211900?sp_atk=398a0bc8-0c46-4d86-b5fb-0da897e6d534&xptdk=398a0bc8-0c46-4d86-b5fb-0da897e6d534', NULL, NULL, NULL);
INSERT INTO `products` VALUES (43, 'DELINA EXCLUSIVE', 16, '-', 0.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-360-DELINA-EXLUSIFwin-i.221283574.18487071876?sp_atk=a6449ca6-3f0f-465c-b4cb-8eed4e07d142&xptdk=a6449ca6-3f0f-465c-b4cb-8eed4e07d142', NULL, NULL, NULL);
INSERT INTO `products` VALUES (44, 'LIGHT BLUE', 17, '-', 0.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.14-LIGHT-BLUE-i.221283574.4934076183?sp_atk=93ef95c1-06df-4357-9e5f-f29884284515&xptdk=93ef95c1-06df-4357-9e5f-f29884284515', NULL, NULL, NULL);
INSERT INTO `products` VALUES (45, 'LIGHT BLUE POUR HOMME', 17, '-', 1.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.17-LIGHT-BLUE-POUR-HOMMEwin-FOR-MEN-i.221283574.9900826514?sp_atk=601dd986-d05a-4b63-93b7-ebda2016ea5a&xptdk=601dd986-d05a-4b63-93b7-ebda2016ea5a', NULL, NULL, NULL);
INSERT INTO `products` VALUES (46, 'DOLCE PEONY', 17, '-', 2.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.340-DOLCE-PEONYwin-i.221283574.22048984670?sp_atk=6e24c8da-f203-4d10-835b-85ecee50f87b&xptdk=6e24c8da-f203-4d10-835b-85ecee50f87b', NULL, NULL, NULL);
INSERT INTO `products` VALUES (47, 'Q', 17, '-', 3.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/NEW-WIN-PARFUME-BANDUNG-NO.-369-DOLCEwin-Q-i.221283574.25363682492?sp_atk=bc98241f-a937-4467-a8da-1291e1d63262&xptdk=bc98241f-a937-4467-a8da-1291e1d63262', NULL, NULL, NULL);
INSERT INTO `products` VALUES (48, 'DESIRE BLUE', 18, '-', 4.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.53-DESIRE-BLUEwin-i.221283574.6133402134?sp_atk=edd84e4d-6636-4be0-9414-0f23fc2e96e5&xptdk=edd84e4d-6636-4be0-9414-0f23fc2e96e5', NULL, NULL, NULL);
INSERT INTO `products` VALUES (49, 'BECAUSE ITS YOU', 19, '-', 5.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/NEW-WIN-PARFUME-BANDUNG-NO.342-BECAUSE-ITS-YOUwin-i.221283574.23148985045?sp_atk=a6358f3e-e266-4a60-9c50-208525e33556&xptdk=a6358f3e-e266-4a60-9c50-208525e33556', NULL, NULL, NULL);
INSERT INTO `products` VALUES (50, 'SORBETTO ROSSO', 20, '-', 6.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.101-SORBETTO-ROSSOwin-i.221283574.20731226357?sp_atk=75f9c054-2471-46f9-a483-90b723592b4b&xptdk=75f9c054-2471-46f9-a483-90b723592b4b', NULL, NULL, NULL);
INSERT INTO `products` VALUES (51, 'PLEASURE', 21, '-', 7.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.13-PLEASUREwin-i.221283574.6933399572?sp_atk=26dc804b-eaf7-44ec-8b37-98338bf5a421&xptdk=26dc804b-eaf7-44ec-8b37-98338bf5a421', NULL, NULL, NULL);
INSERT INTO `products` VALUES (52, 'FEBE', 22, '-', 8.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-362-FEBEwin-i.221283574.24856763244?sp_atk=3bef0153-0d1a-4366-a243-94ef086621cd&xptdk=3bef0153-0d1a-4366-a243-94ef086621cd', NULL, NULL, NULL);
INSERT INTO `products` VALUES (53, 'ACQUA DI GIO PROFUMO', 23, '-', 9.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.20-DI-GIO-PROFUMOwin-i.221283574.7733572989?sp_atk=412b0304-f270-497a-8593-f9293c456082&xptdk=412b0304-f270-497a-8593-f9293c456082', NULL, NULL, NULL);
INSERT INTO `products` VALUES (54, 'ACQUA DI GIO', 23, '-', 10.00, 'images/GIORGIO ARMANI ACQUA DIGIOIA-01.png', 'images/GIORGIO ARMANI ACQUA DIGIOIA-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.163-ACQUA-DI-GIOwin-Men-i.221283574.22612347234?sp_atk=d3be2a92-372c-4b3a-bb1b-0e732af5ba35&xptdk=d3be2a92-372c-4b3a-bb1b-0e732af5ba35', NULL, NULL, NULL);
INSERT INTO `products` VALUES (55, 'SI', 23, '-', 11.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.118-SI-win-i.221283574.19968906988?sp_atk=4523c2d6-1f2c-419c-a3f6-a071fcd389ed&xptdk=4523c2d6-1f2c-419c-a3f6-a071fcd389ed', NULL, NULL, NULL);
INSERT INTO `products` VALUES (56, 'MY WAY FLORAL', 23, '-', 12.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.341-MY-WAY-FLORALwin-i.221283574.22974477983?sp_atk=ff7ac080-080b-45e5-afc9-29819da9dd50&xptdk=ff7ac080-080b-45e5-afc9-29819da9dd50', NULL, NULL, NULL);
INSERT INTO `products` VALUES (57, 'GUILTY MEN', 24, '-', 13.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-win-parfume-bandung-NO.28-GC-GUILTYwin-MEN-i.221283574.3777319670?sp_atk=0b9872d2-4bd4-4797-a13e-70b0c00f0ee2&xptdk=0b9872d2-4bd4-4797-a13e-70b0c00f0ee2', NULL, NULL, NULL);
INSERT INTO `products` VALUES (58, 'GUILTY WOMEN', 24, '-', 14.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.141-GC-GUILTY-FOR-WOMEN-i.221283574.23812297665?sp_atk=ec91a4dc-57bc-4e57-879c-13f66f11816f&xptdk=ec91a4dc-57bc-4e57-879c-13f66f11816f', NULL, NULL, NULL);
INSERT INTO `products` VALUES (59, 'BLOOM', 24, '-', 15.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.51-G-BLOOMwin-i.221283574.6140522413?sp_atk=4eb18970-bef4-4bfc-bda5-eb384fac2688&xptdk=4eb18970-bef4-4bfc-bda5-eb384fac2688', NULL, NULL, NULL);
INSERT INTO `products` VALUES (60, 'TERRE D’HERMES', 25, '-', 16.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.70-TERREwin-i.221283574.11996360233?sp_atk=a337c74d-440d-4d41-8bde-59cb1a13c97f&xptdk=a337c74d-440d-4d41-8bde-59cb1a13c97f', NULL, NULL, NULL);
INSERT INTO `products` VALUES (61, 'ALPHA', 26, '-', 17.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/NEW-WIN-PARFUME-BANDUNG-NO.345-Alpha-win-MHN-5-i.221283574.22450445651?sp_atk=55d1664a-7449-42b1-b8ef-11546a985a61&xptdk=55d1664a-7449-42b1-b8ef-11546a985a61', NULL, NULL, NULL);
INSERT INTO `products` VALUES (62, 'FARHAMPTON', 26, '-', 18.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/NEW-WIN-PARFUME-BANDUNG-NO.344-Farhampton-win-MHN-5-i.221283574.22850230541?sp_atk=40eb01b3-ab7f-450a-a96e-a9d39b03eac5&xptdk=40eb01b3-ab7f-450a-a96e-a9d39b03eac5', NULL, NULL, NULL);
INSERT INTO `products` VALUES (63, 'ORGASM', 26, '-', 19.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-win-parfume-bandung-NEW-NO.348-Orgasm-win-HMN-5-i.221283574.23358263793?sp_atk=8c09b5a4-03a8-4d53-b081-47cf0fcea4d1&xptdk=8c09b5a4-03a8-4d53-b081-47cf0fcea4d1', NULL, NULL, NULL);
INSERT INTO `products` VALUES (64, 'THE SCENT', 27, '-', 20.00, 'images/HUGO BOSS SCENT MEN-01.png', 'images/HUGO BOSS SCENT MEN-02.png', 1, 0, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO.7-HB-THE-SCENTwin-MAN-i.221283574.6132280622?sp_atk=5ff65229-13ab-481b-9901-273d8a6b1c0b&xptdk=5ff65229-13ab-481b-9901-273d8a6b1c0b', NULL, NULL, NULL);
INSERT INTO `products` VALUES (65, 'ORANGE', 27, '-', 21.00, 'images/HUGO BOSS ORANGE FOR MEN-01.png', 'images/HUGO BOSS ORANGE FOR MEN-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.26-HB-ORANGEwin-MEN-i.221283574.3232540839?sp_atk=23492390-93e3-4764-96c6-f48b8fb059fc&xptdk=23492390-93e3-4764-96c6-f48b8fb059fc', NULL, NULL, NULL);
INSERT INTO `products` VALUES (66, 'THE SCENT WOMEN', 27, '-', 22.00, 'images/HUGO BOSS SCENT WOMEN-01.png', 'images/HUGO BOSS SCENT WOMEN-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.175-THE-SCENTwin-WOMEN-i.221283574.20269198996?sp_atk=09166a06-cc64-4889-8756-362b28aa8a16&xptdk=09166a06-cc64-4889-8756-362b28aa8a16', NULL, NULL, NULL);
INSERT INTO `products` VALUES (67, 'PSYCHEDELIC LOVE', 28, '-', 23.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/NEW-WIN-PARFUME-BANDUNG-NO.-372-Inihtio-Psychedelig-lovewin-i.221283574.25613683725?sp_atk=c64b99da-568e-43d7-a3e7-d2378991b5db&xptdk=c64b99da-568e-43d7-a3e7-d2378991b5db', NULL, NULL, NULL);
INSERT INTO `products` VALUES (68, 'VISION', 29, '-', 24.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO.29-JG-VISIONwin-i.221283574.5632329093?sp_atk=8676c7f9-6869-4500-b89e-ba0cffbfaafd&xptdk=8676c7f9-6869-4500-b89e-ba0cffbfaafd', NULL, NULL, NULL);
INSERT INTO `products` VALUES (69, 'SCANDAL A PARIS', 30, '-', 25.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.115-SCANDAL-A-PARISwin-i.221283574.21255027256?sp_atk=1db2a969-1ca0-4fd9-a196-48b518a8ca0d&xptdk=1db2a969-1ca0-4fd9-a196-48b518a8ca0d', NULL, NULL, NULL);
INSERT INTO `products` VALUES (70, 'STILL', 31, '-', 26.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.65-JLO-STILLwin-i.221283574.3334172261?sp_atk=460d288e-34f3-4a61-8fd9-49ac8afe40a2&xptdk=460d288e-34f3-4a61-8fd9-49ac8afe40a2', NULL, NULL, NULL);
INSERT INTO `products` VALUES (71, 'ENGLISH PEAR', 32, '-', 27.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.3-ENGLISH-PEARwin-i.221283574.6734741549?sp_atk=8e0ea8ec-976d-4b05-a63d-5e13132aa36c&xptdk=8e0ea8ec-976d-4b05-a63d-5e13132aa36c', NULL, NULL, NULL);
INSERT INTO `products` VALUES (72, 'WELTON LONDON', 33, '-', 28.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/NEW-WIN-PARFUME-BANDUNG-NO.-374-WELTUN-LONDONwin-KEEMUNwin-i.221283574.24413684798?sp_atk=3f5cd4fc-fce7-4fb0-a349-8cfb29833e87&xptdk=3f5cd4fc-fce7-4fb0-a349-8cfb29833e87', NULL, NULL, NULL);
INSERT INTO `products` VALUES (73, 'ADDICTION PETALE', 34, '-', 29.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-358-KOR-PETALwin-i.221283574.18895838260?sp_atk=caf6d159-0774-4e09-995a-a39660aefb14&xptdk=caf6d159-0774-4e09-995a-a39660aefb14', NULL, NULL, NULL);
INSERT INTO `products` VALUES (74, 'ESSENTIAL', 35, '-', 30.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.24-LAC-ESSENTIALwin-i.221283574.22850700424?sp_atk=17bedefc-c798-44db-b5d0-e53f1c7d6a11&xptdk=17bedefc-c798-44db-b5d0-e53f1c7d6a11', NULL, NULL, NULL);
INSERT INTO `products` VALUES (75, 'AMETHYST WOMEN', 36, '-', 31.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO.55-LALIQE-AMETHYSTWIN-i.221283574.4332739256?sp_atk=a41645c7-d4ac-4fe3-9f80-ce23a9ff9dc4&xptdk=a41645c7-d4ac-4fe3-9f80-ce23a9ff9dc4', NULL, NULL, NULL);
INSERT INTO `products` VALUES (76, 'AMETHYST', 36, '-', 32.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-59-AMETHYSTEwin-i.221283574.24600938027?sp_atk=78baadee-519e-4550-b85b-14f70468332f&xptdk=78baadee-519e-4550-b85b-14f70468332f', NULL, NULL, NULL);
INSERT INTO `products` VALUES (77, 'LA VIE EST BELLE', 37, '-', 33.00, 'images/LANCOME LA VIE EST BELLE L_EVEIL-01.png', 'images/LANCOME LA VIE EST BELLE L_EVEIL-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.12-LA-VIEST-BELLEWin-i.221283574.20891660520?sp_atk=65b3bc11-5fcf-46ff-a486-fffba04ce684&xptdk=65b3bc11-5fcf-46ff-a486-fffba04ce684', NULL, NULL, NULL);
INSERT INTO `products` VALUES (78, 'OMBRE NOMADE', 38, '-', 34.00, 'images/LOUIS VUITTON OMBRE NOMADE-01.png', 'images/LOUIS VUITTON OMBRE NOMADE-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-365-OMBRE-NOMADEwin-i.221283574.24056769558?sp_atk=4cf77b87-4398-4c16-a8ea-03ee969829b5&xptdk=4cf77b87-4398-4c16-a8ea-03ee969829b5', NULL, NULL, NULL);
INSERT INTO `products` VALUES (79, 'IMAGINATION', 38, '-', 35.00, 'images/LOUIS VUITTON IMAGINATION-01.png', 'images/LOUIS VUITTON IMAGINATION-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.96-luwiswinIMAGINATION-i.221283574.19331223379?sp_atk=f6175539-73ce-4279-97b4-1068d0c73094&xptdk=f6175539-73ce-4279-97b4-1068d0c73094', NULL, NULL, NULL);
INSERT INTO `products` VALUES (80, 'ROSE DES VENTS', 38, '-', 36.00, 'images/LOUIS VUITTON ROSE DES VENTS-01.png', 'images/LOUIS VUITTON ROSE DES VENTS-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.93-ROSE-DES-VENTSwin-i.221283574.17181296406?sp_atk=e971d340-9014-43c0-af0b-1106c50e7362&xptdk=e971d340-9014-43c0-af0b-1106c50e7362', NULL, NULL, NULL);
INSERT INTO `products` VALUES (81, 'OUD SATIN', 39, '-', 37.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.90-OUD-SATINwin-i.221283574.20431216626?sp_atk=f36a43ad-e862-4d0b-a8d2-f2252af82f3a&xptdk=f36a43ad-e862-4d0b-a8d2-f2252af82f3a', NULL, NULL, NULL);
INSERT INTO `products` VALUES (82, 'BACARRAT ROUGE 540', 39, '-', 38.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.89-ROUGE-540win-i.221283574.21709670912?sp_atk=b5bbd2a0-a1a4-4848-a363-addfab12b6bb&xptdk=b5bbd2a0-a1a4-4848-a363-addfab12b6bb', NULL, NULL, NULL);
INSERT INTO `products` VALUES (83, 'COCO VANILLE', 40, '-', 39.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.99-COCO-VANILLE-i.221283574.21331224611?sp_atk=8d7ca07e-db9d-4c63-9d48-8b3257e381d2&xptdk=8d7ca07e-db9d-4c63-9d48-8b3257e381d2', NULL, NULL, NULL);
INSERT INTO `products` VALUES (84, 'CHOCO VIOLET', 40, '-', 40.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/NEW-WIN-PARFUME-BANDUNG-NO.-370-MANCE-CHOCO-VIOLETwin-i.221283574.24163687423?sp_atk=26aaec0a-58c3-4a56-b44a-8a0d17a61b98&xptdk=26aaec0a-58c3-4a56-b44a-8a0d17a61b98', NULL, NULL, NULL);
INSERT INTO `products` VALUES (85, 'DAISY', 41, '-', 41.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.97-DAISYwin-i.221283574.20331223696?sp_atk=9b58a371-c030-44ae-b4f0-b303a316ed10&xptdk=9b58a371-c030-44ae-b4f0-b303a316ed10', NULL, NULL, NULL);
INSERT INTO `products` VALUES (86, 'MARFA', 42, '-', 42.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO.356-MARFAwin-i.221283574.22385231654?sp_atk=ac4d489e-f3e2-4e02-915a-ecc4287a2b4e&xptdk=ac4d489e-f3e2-4e02-915a-ecc4287a2b4e', NULL, NULL, NULL);
INSERT INTO `products` VALUES (87, 'CHOCOLATE GREEDY', 43, '-', 43.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.74-CHOCOLATE-GREEDY-i.221283574.15290796804?sp_atk=dcc3a582-029f-4c92-b494-1e09086deeef&xptdk=dcc3a582-029f-4c92-b494-1e09086deeef', NULL, NULL, NULL);
INSERT INTO `products` VALUES (88, 'INTENSE CAFE', 43, '-', 44.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-No.117-Intense-CafeWin-Inspired-Premium-Perfume-i.221283574.22207578430?sp_atk=de99de81-7c07-443b-966d-e4a435f629e5&xptdk=de99de81-7c07-443b-966d-e4a435f629e5', NULL, NULL, NULL);
INSERT INTO `products` VALUES (89, 'EXPLORER', 44, '-', 45.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO.377-MONTB-EXPLORE-MEN-i.221283574.24515284517?sp_atk=8f9b6ab0-0d35-4f73-ae6c-c837721fd393&xptdk=8f9b6ab0-0d35-4f73-ae6c-c837721fd393', NULL, NULL, NULL);
INSERT INTO `products` VALUES (90, 'ANGEL NOVA', 45, '-', 46.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.116-ANGEL-NOVAwin-i.221283574.21555028053?sp_atk=d206470a-3bd0-4122-8e42-924bb63eb187&xptdk=d206470a-3bd0-4122-8e42-924bb63eb187', NULL, NULL, NULL);
INSERT INTO `products` VALUES (91, 'AMBREE', 46, '-', 47.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-363-NARCISOwin-RODRIGUEZwin-AMBREwin-WOMEN-i.221283574.19087290644?sp_atk=4b5aa1f3-ccd0-4f89-bfb6-10faaf548019&xptdk=4b5aa1f3-ccd0-4f89-bfb6-10faaf548019', NULL, NULL, NULL);
INSERT INTO `products` VALUES (92, 'VOYAGE', 47, '-', 48.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.161-NAU-VOYAGEwin-i.221283574.22112343019?sp_atk=018ad650-c0cc-4072-bd99-2cc6de3365b7&xptdk=018ad650-c0cc-4072-bd99-2cc6de3365b7', NULL, NULL, NULL);
INSERT INTO `products` VALUES (93, 'INVICTUS', 48, '-', 49.00, 'images/PACO RABANNE INVICTUS MEN-01.png', 'images/PACO RABANNE INVICTUS MEN-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.71-INVICTUSwin-i.221283574.21309669087?sp_atk=ab03414c-0e75-464c-b37e-30890080184b&xptdk=ab03414c-0e75-464c-b37e-30890080184b', NULL, NULL, NULL);
INSERT INTO `products` VALUES (94, 'TROUPE', 49, '-', 50.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO.-354-TROUPESwin-i.221283574.17199396472?sp_atk=52d5bbe8-d7a8-4cec-b233-5816cce25c04&xptdk=52d5bbe8-d7a8-4cec-b233-5816cce25c04', NULL, NULL, NULL);
INSERT INTO `products` VALUES (95, 'SOTB', 49, '-', 51.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO.350-SOTBEWIN-i.221283574.22359727539?sp_atk=8ece67f4-8b70-4f4d-9f09-3b79b70196c8&xptdk=8ece67f4-8b70-4f4d-9f09-3b79b70196c8', NULL, NULL, NULL);
INSERT INTO `products` VALUES (96, 'OSTARA', 49, '-', 52.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NO-351-OSTARASwin-i.221283574.23285226200?sp_atk=2e912307-af46-44e4-87c7-6b46fa3aabe2&xptdk=2e912307-af46-44e4-87c7-6b46fa3aabe2', NULL, NULL, NULL);
INSERT INTO `products` VALUES (97, 'SIGNORINA MISTERIOSA', 50, '-', 53.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.80-SIGNORINA-MISTERIOSAwin-i.221283574.19131210191?sp_atk=11dc1f66-c0a8-4250-a039-6d0a50c96f71&xptdk=11dc1f66-c0a8-4250-a039-6d0a50c96f71', NULL, NULL, NULL);
INSERT INTO `products` VALUES (98, 'KIRKE', 51, '-', 54.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.152-KIRKEwin-i.221283574.18469091248?sp_atk=87c10324-a4e0-4a92-b434-24698065d700&xptdk=87c10324-a4e0-4a92-b434-24698065d700', NULL, NULL, NULL);
INSERT INTO `products` VALUES (99, 'MORO DI VENEZIA', 51, '-', 55.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-361-MORO-DI-VENEZIAwin-i.221283574.25406767331?sp_atk=60c18d0c-df1c-479d-8d13-dafeb59ab4c0&xptdk=60c18d0c-df1c-479d-8d13-dafeb59ab4c0', NULL, NULL, NULL);
INSERT INTO `products` VALUES (100, 'ORZA', 51, '-', 56.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/NEW-WIN-PARFUME-BANDUNG-NO.-373-TIZI-TEREN-ORZAWIN-i.221283574.22863884809?sp_atk=34a30912-cbeb-4548-a333-32b9cdee7553&xptdk=34a30912-cbeb-4548-a333-32b9cdee7553', NULL, NULL, NULL);
INSERT INTO `products` VALUES (101, 'TOBACCO VANILLE', 52, '-', 57.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.143-TOBACCO-VANILLEwin-i.221283574.19869087216?sp_atk=82f2bee5-bcb4-463a-9252-6fb58e300d2b&xptdk=82f2bee5-bcb4-463a-9252-6fb58e300d2b', NULL, NULL, NULL);
INSERT INTO `products` VALUES (102, 'OUD WOOD', 52, '-', 58.00, 'images/TOM FORD OUD WOOD-01.png', 'images/TOM FORD OUD WOOD-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.6-OUD-WOODwin-i.221283574.10300738840?sp_atk=9e5c666e-1aa4-45d4-b80b-d6633826c290&xptdk=9e5c666e-1aa4-45d4-b80b-d6633826c290', NULL, NULL, NULL);
INSERT INTO `products` VALUES (103, 'EROS WOMEN', 1, '-', 59.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.42-EROSwin-WOMEN-i.221283574.5566260092?sp_atk=0c5ff7ec-f288-4598-bfb4-2e55b426bb94&xptdk=0c5ff7ec-f288-4598-bfb4-2e55b426bb94', NULL, NULL, NULL);
INSERT INTO `products` VALUES (104, 'EROS MEN', 1, '-', 60.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.1-EROSwin-i.221283574.3532430880?sp_atk=c6715e7d-a5ea-4a8d-ac12-e2aaf78d5230&xptdk=c6715e7d-a5ea-4a8d-ac12-e2aaf78d5230', NULL, NULL, NULL);
INSERT INTO `products` VALUES (105, 'EROS FLAME', 1, '-', 61.00, 'images/VERSACE EROS FLAME-01.png', 'images/VERSACE EROS FLAME-02.png', 1, 0, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.47-EROS-FLAMEwin-i.221283574.3691932352?sp_atk=9857f096-334e-41db-a4de-e1f865f5068e&xptdk=9857f096-334e-41db-a4de-e1f865f5068e', NULL, NULL, NULL);
INSERT INTO `products` VALUES (106, 'ERBA PURA', 54, '-', 62.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-Win-Parfume-Bandung-NEW-NO-347-ERBA-PURAwin-i.221283574.23867390634?sp_atk=3c895550-d802-4895-ab3a-5f46b6027e6b&xptdk=3c895550-d802-4895-ab3a-5f46b6027e6b', NULL, NULL, NULL);
INSERT INTO `products` VALUES (107, 'Y', 55, '-', 63.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-146-Ye-es-el-Ywin-i.221283574.23486349377?sp_atk=1c486ca1-e95c-45f3-b801-134e020ae65e&xptdk=1c486ca1-e95c-45f3-b801-134e020ae65e', NULL, NULL, NULL);
INSERT INTO `products` VALUES (108, 'LIBRE', 55, '-', 64.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.18-LIBREwin-i.221283574.23176181973?sp_atk=bf93911d-c7aa-442d-9007-03f6cdc39082&xptdk=bf93911d-c7aa-442d-9007-03f6cdc39082', NULL, NULL, NULL);
INSERT INTO `products` VALUES (109, 'BLACK OPIUM', 55, '-', 65.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.91-BLACK-OPIUMwin-i.221283574.19931216903?sp_atk=2bfbb69b-e8e5-4093-936a-f8f68dd847be&xptdk=2bfbb69b-e8e5-4093-936a-f8f68dd847be', NULL, NULL, NULL);
INSERT INTO `products` VALUES (110, 'SUPREME BOUQUET', 55, '-', 66.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-368-YE-ES-EL-SUPREMWIN-BOUQUETwin-i.221283574.24558555575?sp_atk=b6266572-084d-406d-bcce-bf3827352d3f&xptdk=b6266572-084d-406d-bcce-bf3827352d3f', NULL, NULL, NULL);
INSERT INTO `products` VALUES (111, 'VIBRANT LEATHER', 56, '-', 67.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.22-VIBRANT-LEATHERwin-i.221283574.4288052891?sp_atk=bcec8aa2-de04-4c5a-b011-c0755b7d2802&xptdk=bcec8aa2-de04-4c5a-b011-c0755b7d2802', NULL, NULL, NULL);
INSERT INTO `products` VALUES (112, 'ORCHID', 56, '-', 68.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-366-ZR.-ORCHIDwin-i.221283574.24358551461?sp_atk=65f54d17-4e86-471b-862c-757138551303&xptdk=65f54d17-4e86-471b-862c-757138551303', NULL, NULL, NULL);
INSERT INTO `products` VALUES (113, 'HOLIDAY MOOD', 56, '-', 69.00, 'images/', 'images/', 1, 1, NULL, 'https://shopee.co.id/-WIN-PARFUME-BANDUNG-NO.-367-ZR.-HOLIDAY-MOODwin-i.221283574.24858555269?sp_atk=e1957886-c430-4228-bdd8-3a17b9dd9062&xptdk=e1957886-c430-4228-bdd8-3a17b9dd9062', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin@admin.com', NULL, '$2y$12$FQGqnavSvmIDJlswyFg3g.bhVh/TTr5p1Bh8X2x6qH72WnWrLfBQ.', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
