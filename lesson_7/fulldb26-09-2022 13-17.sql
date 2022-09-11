#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '5', '12', 'Sit nihil doloribus commodi sit nobis sunt doloribus sed. Reprehenderit et laborum odio a. Laborum autem quas veniam necessitatibus nam veniam.', 'voluptas', 0, NULL, '2006-06-13 09:17:36', '1971-01-18 09:20:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '9', '4', 'Possimus veniam perferendis temporibus laudantium. Neque velit vero repudiandae excepturi nulla at. Fugit rem sit odit et et similique similique. Ipsum sequi vero hic repudiandae rerum neque.', 'sed', 0, NULL, '1996-03-27 09:06:01', '2005-05-07 00:42:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '10', '23', 'Facere quibusdam quis sint excepturi eum nisi ullam est. Omnis qui porro quisquam voluptatem id voluptatem. Exercitationem vitae exercitationem unde sit in aliquid. Ea quia est a.', 'rerum', 27809309, NULL, '2018-12-08 05:06:36', '2005-07-02 13:41:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '43', 'Consectetur ut quod voluptatem labore ut incidunt corrupti. Tempora nisi autem nulla aliquid. Officiis et soluta necessitatibus ad eos est.', 'exercitationem', 639099030, NULL, '1977-03-11 01:58:57', '2001-03-24 23:23:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '9', '99', 'Quis dolor asperiores ut veniam. Et quas non veritatis eos.', 'iste', 25841, NULL, '1995-02-12 21:10:35', '2021-03-11 14:02:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '4', '84', 'A quo corporis sit consectetur totam excepturi. Et totam et iure et expedita non consectetur doloremque.', 'dolorum', 0, NULL, '2001-12-29 23:05:27', '2022-04-24 09:48:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '8', '49', 'Et quis sapiente fuga dolores. Quaerat unde eaque id dolore. Quis ipsa iure impedit rerum inventore.', 'quis', 54686, NULL, '1976-03-04 21:25:08', '2017-02-23 15:25:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '11', 'Tempora unde neque consequatur. Et iure similique molestiae inventore. Repudiandae ducimus sed voluptatem qui modi omnis minus.', 'vitae', 85685, NULL, '1972-11-27 14:12:18', '2008-01-03 07:13:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '8', '1', 'Molestiae dolores similique voluptas aut voluptas eos minus. Est quis qui omnis est. Velit sed inventore explicabo enim sed. Consequatur accusantium quia velit sed quod officiis.', 'aperiam', 3704, NULL, '2016-05-15 05:22:16', '2005-04-24 22:45:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '6', '24', 'Dolorum aspernatur voluptas consequatur animi rerum rerum. Rerum et fugiat similique et. Enim id fugiat est omnis nihil labore. Provident voluptates vel nihil molestiae architecto.', 'et', 96506438, NULL, '1974-02-09 18:26:01', '1978-07-10 08:51:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '10', '45', 'Inventore molestiae nemo quidem commodi soluta qui. Quas quae necessitatibus quibusdam veniam et. Voluptatem esse inventore et accusamus.', 'iste', 2288, NULL, '1994-08-23 21:39:19', '1986-03-17 15:09:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '6', '84', 'Deleniti reiciendis et corrupti tempora temporibus qui quos consequatur. Facilis ut maiores quasi voluptatem voluptas dignissimos. Voluptates ducimus quis nihil. Consequuntur delectus enim earum mollitia nobis laborum.', 'laudantium', 14, NULL, '2022-03-12 12:37:47', '1996-08-30 07:08:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '3', '95', 'Et exercitationem est aut ut nemo. Dicta voluptatem impedit cupiditate possimus. Recusandae sit dolor earum quia cum.', 'ad', 323362, NULL, '1974-10-15 17:22:45', '1984-09-17 20:54:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '5', '39', 'Voluptas a voluptas ipsa incidunt non. Alias est facere laudantium consequatur nobis aut blanditiis. Praesentium a sunt tenetur et facere nesciunt.', 'fugit', 359129, NULL, '1983-10-31 08:16:14', '1977-12-23 19:39:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '3', '68', 'Aliquid suscipit aut laboriosam qui placeat. Nisi nesciunt dolores fuga excepturi commodi magnam atque. Ut eum maiores impedit nostrum autem quod. Minima ut est veniam.', 'ut', 222705, NULL, '1999-10-02 23:33:13', '1982-04-23 19:36:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '1', '71', 'Est a hic omnis in dolore. Libero natus impedit omnis officiis enim. Ea quidem quisquam et nihil earum dolorum. Veniam eos inventore quam.', 'architecto', 56942, NULL, '1981-02-27 22:35:32', '1996-05-09 00:08:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '8', '92', 'Quo aut voluptates provident expedita et doloremque. In numquam quis aut accusamus reprehenderit distinctio impedit. Libero magnam nihil dolor. Aut et aperiam eaque repudiandae quod eos inventore ut.', 'commodi', 3452, NULL, '2012-07-06 11:35:34', '1993-02-16 23:58:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '8', '70', 'Dolorem doloribus vero odio voluptatibus perferendis. Quisquam quod nemo officia quia deserunt. Ut iure atque mollitia non. Suscipit tenetur optio in ipsam non illum.', 'rerum', 6638842, NULL, '1980-08-14 15:59:26', '1994-05-08 07:42:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '2', '13', 'Nesciunt aliquam qui ut deleniti eos in qui. Omnis accusamus nobis blanditiis voluptate. Magni in nihil dolorem quis quam.', 'ipsum', 89376, NULL, '2001-08-11 01:00:27', '2018-04-17 16:53:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '2', '1', 'Voluptatem ex voluptatem eveniet quae maiores eos ratione. Pariatur eaque eaque quo accusantium explicabo cum.', 'velit', 253168579, NULL, '1980-11-24 00:57:12', '1976-08-09 21:00:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '2', '49', 'Hic dicta velit nesciunt voluptas possimus. Omnis molestias dolor dicta sunt molestiae et suscipit.', 'itaque', 68034, NULL, '1994-06-05 01:27:42', '1993-09-02 03:59:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '9', '85', 'Reprehenderit consequatur id adipisci. Ea eaque labore quis ducimus exercitationem et possimus. Dolorem libero ut sapiente rem magni. Vel soluta modi ex eius dolorem.', 'assumenda', 955, NULL, '2011-05-19 04:36:45', '1977-09-30 13:13:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '10', '62', 'Itaque rerum veritatis animi repellendus dolor. Repudiandae excepturi atque in non aperiam tenetur eaque. Nesciunt quis veniam non ex.', 'quisquam', 65, NULL, '1976-06-29 09:58:47', '2020-08-15 00:02:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '10', '73', 'Voluptatem inventore error et praesentium debitis perspiciatis. Laudantium et voluptates cupiditate autem reiciendis. Eius a dicta perferendis non exercitationem cum. Velit sunt voluptatibus eum dolore voluptatem autem quia.', 'libero', 133, NULL, '2020-12-16 19:10:16', '1974-03-06 16:52:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '7', '52', 'Sit voluptas nostrum voluptatibus officiis veniam sed. Quasi occaecati qui voluptatem inventore quisquam.', 'nobis', 3918, NULL, '1981-08-01 13:00:19', '2011-09-10 21:16:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '10', '52', 'Dolorem animi inventore provident provident. Sunt provident accusantium esse aut qui blanditiis facere qui. Tempore et autem quae saepe. Sunt veniam et debitis quis consectetur sunt quae.', 'qui', 321298, NULL, '1971-06-13 02:20:25', '2012-07-14 00:11:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '10', '53', 'Libero est omnis odit nostrum. Debitis itaque nihil est consequatur aut cupiditate quia.', 'nulla', 5471, NULL, '2004-02-19 08:37:26', '1986-07-18 05:53:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '4', '26', 'Dolor provident exercitationem tenetur fugit corporis deserunt. Assumenda esse unde deserunt repudiandae eveniet dolor ut et. Voluptas voluptas quia et asperiores vel voluptatem incidunt. Non in magni fugiat vero et ut sint.', 'illo', 62919436, NULL, '2016-10-26 09:16:25', '2016-03-04 07:43:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '5', '77', 'Omnis porro facilis mollitia dolorem. Repellendus in non dolorem rerum. Culpa expedita blanditiis consequatur quo ut dicta enim odit. Veritatis consequatur quasi nihil itaque officiis commodi occaecati ipsa.', 'voluptatem', 58413615, NULL, '2017-04-03 07:14:17', '1977-02-10 23:19:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '7', '72', 'Dolorem maxime fugiat quis harum. Quam tempore et enim est. Veniam maiores iste iusto. Qui harum dolores quia odit itaque.', 'fugiat', 0, NULL, '2021-04-07 11:04:45', '1972-06-24 10:22:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '5', '73', 'Enim quo ut dolores eveniet similique sit. Totam aliquam aperiam nostrum est. Quia est id recusandae fugiat perspiciatis optio saepe laborum.', 'temporibus', 565264373, NULL, '2007-03-02 01:16:18', '2014-07-22 14:51:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '5', '24', 'Omnis voluptates repudiandae ea suscipit. Ipsam ipsum voluptas veritatis nemo nam est a. Ab et inventore quia omnis qui assumenda.', 'rerum', 5, NULL, '2011-04-21 08:48:21', '1993-02-24 03:07:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '7', '16', 'Non eius magnam quo explicabo voluptas sequi voluptate. Modi sapiente nemo totam nobis. Magnam similique dicta veniam. Ea voluptatum omnis sit sint voluptatum voluptates.', 'et', 0, NULL, '1984-04-04 04:00:25', '1991-06-14 09:15:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '10', '78', 'Occaecati voluptatem est ut ipsam doloribus qui rem. Et reprehenderit praesentium voluptatem aut aperiam. Perspiciatis amet sed sequi dolores quo.', 'voluptatem', 0, NULL, '1987-11-14 13:56:03', '2014-06-26 10:13:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '3', '6', 'Quia iure facilis est quasi. Accusamus aliquam aut illum ab expedita est amet.', 'animi', 11, NULL, '1993-09-15 01:26:19', '2007-11-07 07:35:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '8', '40', 'Eaque hic molestias facilis laudantium amet eum. Maxime magni quia eum nam. Ipsa vero facilis ducimus in pariatur culpa ut pariatur.', 'et', 9606, NULL, '1986-01-05 00:15:28', '2014-10-26 12:11:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '6', '62', 'In facere ad et. Laborum in eaque cupiditate est suscipit nobis qui. Aut molestias vero exercitationem ratione quibusdam et praesentium eum. Cupiditate voluptate pariatur perspiciatis sed quaerat illum sequi aut. Exercitationem omnis aliquid non assumenda voluptas.', 'cumque', 600245, NULL, '2021-08-11 18:07:11', '1994-06-13 08:13:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '3', '51', 'Vero quo facere ut vero est praesentium. Illo iure placeat eius eum dolores. Omnis ut omnis qui et odio hic exercitationem eveniet.', 'omnis', 0, NULL, '1993-08-11 00:13:20', '2013-11-11 00:55:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '3', '20', 'Ipsum tenetur non quae rerum dolores aut. Ex quod officiis tenetur. Doloremque reiciendis exercitationem ipsam sint expedita et sunt.', 'et', 5336273, NULL, '2007-12-26 21:43:00', '2014-09-08 20:03:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '3', '84', 'Eum explicabo repudiandae porro et quod atque molestiae id. Non nulla qui occaecati. Deserunt optio ad nostrum ea. Et quidem odio ipsam.', 'sit', 447712969, NULL, '1983-03-06 07:05:35', '1992-02-12 21:51:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '8', '20', 'Quia autem eius voluptatem ipsa ipsum id magnam. Atque dolorem ab occaecati qui sint. Hic quas eveniet corporis cumque repudiandae adipisci occaecati. Quisquam delectus iure non consequatur ut.', 'aut', 0, NULL, '1997-11-24 13:23:55', '1991-08-02 01:41:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '4', '67', 'Doloremque dolores aut quia est sed. Laborum vel est enim provident. Officia et numquam quos et vel inventore expedita. Eius iste numquam illo voluptatem sed facere eligendi.', 'nobis', 3281645, NULL, '1970-07-28 10:38:21', '2010-09-07 11:43:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '8', '72', 'Expedita iste et quod saepe facere nihil omnis consequatur. Suscipit aut aliquid a incidunt inventore. Voluptatem architecto omnis pariatur labore rerum. Est aut nihil sed esse. Animi unde quas eligendi.', 'explicabo', 558, NULL, '1993-12-05 05:55:54', '1999-04-22 02:39:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '10', '20', 'Ea non magni sint architecto error. Iure sunt non enim velit. Labore doloremque minus consectetur quod minus est rerum. Itaque tempora vitae itaque eius ipsam et maiores nihil.', 'quia', 953931, NULL, '2004-10-23 23:29:20', '1991-09-05 18:05:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '5', '57', 'Minima dolore a vero. Consequatur in totam molestiae qui atque aut. Voluptas temporibus unde fugit ratione voluptate. Ut doloribus ullam iste optio iusto et quo. Nisi rerum aspernatur veritatis sunt.', 'non', 9, NULL, '2021-10-20 18:21:13', '2015-12-18 04:59:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '10', '93', 'Repellat enim odio ut. Sed ut commodi omnis aspernatur quis vel eos. Deleniti maxime occaecati repellendus labore quod earum.', 'odio', 1, NULL, '2001-04-12 04:55:01', '1999-04-22 21:14:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '3', '33', 'Maiores rem deserunt voluptatem sed et ipsum. Molestias unde sit ut repellendus. Aut praesentium quisquam velit quia ratione.', 'error', 5004, NULL, '1984-02-13 20:16:10', '2016-02-15 11:10:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '2', '93', 'Sed laborum dolorum est eius velit blanditiis. Fugiat pariatur fuga ratione aut. Quaerat est aut sit. Necessitatibus cupiditate et quia quia.', 'suscipit', 26, NULL, '2021-09-28 17:12:21', '1980-11-25 20:12:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '5', '10', 'Vero ut nulla officiis aut optio voluptatem quod. Quos quas sit ipsam accusamus possimus expedita molestias non. Aut fugit eligendi molestiae deleniti. Accusamus cupiditate consequatur et aspernatur voluptates. Enim ut reprehenderit quidem deserunt est voluptas omnis nesciunt.', 'autem', 173236, NULL, '1974-01-09 04:23:31', '2020-03-23 03:26:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '8', '76', 'Laudantium cumque consequuntur quibusdam minus quaerat praesentium natus. Blanditiis et eum provident id eligendi. Et vel impedit asperiores porro assumenda est ut.', 'modi', 4881, NULL, '2014-03-03 23:18:57', '2021-10-12 13:46:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '2', '49', 'Ullam ad voluptas qui commodi. Harum fuga aperiam id rerum rerum commodi minima. Sunt eius at voluptates et explicabo voluptatibus natus qui.', 'ipsum', 80, NULL, '2003-04-15 17:41:39', '1990-11-01 10:25:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '2', '69', 'Inventore nam laboriosam harum sunt aspernatur. Et et architecto est omnis perferendis sed. Saepe ad eius in qui et fuga culpa.', 'temporibus', 0, NULL, '1999-01-30 18:44:50', '1996-09-05 07:52:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '1', '40', 'Nesciunt qui pariatur accusantium possimus rerum officiis maiores. Omnis voluptatem eius quis iste est et doloribus. Ex tempore repellat et quis et.', 'unde', 985700775, NULL, '1984-04-09 07:28:28', '1980-01-03 13:12:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '2', '33', 'Accusamus unde odit ipsa repellendus ullam deserunt. Iure sit temporibus dolorem aut qui voluptas. Quia maiores quaerat doloribus ducimus assumenda. Nam voluptatem dolore reprehenderit velit deserunt non.', 'et', 33940, NULL, '2008-12-13 07:33:38', '2016-11-27 12:16:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '6', '44', 'Adipisci expedita sed voluptatum fugiat recusandae natus repudiandae. Perspiciatis et ut amet quia. Facilis odio omnis voluptas fugit quos.', 'non', 90, NULL, '2009-10-11 20:24:05', '1970-06-15 20:09:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '2', '30', 'Quidem et voluptatum in in corporis odit. Enim explicabo asperiores incidunt suscipit officia. Ut aut aut autem. Voluptates ipsum culpa porro rerum.', 'esse', 9, NULL, '1986-06-08 11:38:46', '2001-02-14 05:19:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '7', '52', 'Voluptatum est dolores enim officia libero molestias dolore. Repellendus odio non pariatur blanditiis sit. Ipsum est adipisci voluptatum delectus vitae enim.', 'dolorum', 19003, NULL, '2001-04-13 08:51:20', '1992-07-23 06:50:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '10', '35', 'Incidunt iste consequuntur tempora ipsum officia earum tenetur. Perferendis explicabo ullam id. Vero exercitationem quos natus cum.', 'possimus', 139092, NULL, '2014-09-15 19:42:07', '1991-06-26 09:24:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '3', '89', 'Similique exercitationem fuga repellat nostrum. Error nulla id ea reiciendis. Velit voluptas reprehenderit non qui ad repellendus. Hic quidem voluptas in nobis cupiditate.', 'rerum', 235, NULL, '1998-03-05 08:47:57', '1970-10-31 09:05:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '6', '71', 'Est vel praesentium qui aut quo quas fuga. Veniam veniam et molestiae aliquid aliquam occaecati cumque. Ipsum expedita blanditiis necessitatibus mollitia illo. Sit accusamus quia et.', 'quibusdam', 5567, NULL, '1986-05-30 03:57:43', '2001-12-13 05:05:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '5', '45', 'Magnam incidunt similique aliquam eligendi. Porro dolorem dolorum maiores sapiente odit cupiditate natus alias. Dolore expedita animi porro delectus sapiente dolor.', 'eveniet', 773150, NULL, '2011-12-11 07:45:37', '2017-12-10 08:52:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '7', '73', 'Id et similique iusto sint. Ad blanditiis ut hic maiores nisi. Aspernatur consequatur sit soluta aut.', 'nulla', 45, NULL, '1998-08-12 10:51:59', '2010-10-22 11:13:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '8', '80', 'Cumque consequatur enim sit rem perferendis. Est est illum rerum corrupti fugiat numquam nostrum. Molestias et a voluptas ipsam consectetur.', 'molestias', 80, NULL, '2020-10-23 08:06:52', '2012-01-15 05:27:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '7', '25', 'Quia et quod sed quia sapiente. Voluptas nihil tempore dolore repudiandae inventore modi. Sit aliquam et quibusdam velit eveniet. Occaecati sequi eveniet necessitatibus dignissimos aut officiis ipsum.', 'tempora', 0, NULL, '2014-09-13 05:12:45', '2013-12-26 15:12:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '9', '35', 'Iusto rerum facere et dignissimos commodi aut. Molestiae est praesentium quia cupiditate aut blanditiis. Quaerat cum et quaerat sit labore ut ipsa.', 'ipsam', 744757, NULL, '2014-04-21 16:23:39', '1990-07-12 23:08:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '10', '5', 'Atque praesentium modi est magnam veniam tempora voluptates aliquam. Neque et soluta deleniti blanditiis mollitia. Eius voluptas totam eligendi numquam labore quis.', 'dicta', 63332, NULL, '1983-07-26 17:27:35', '2014-06-12 03:07:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '9', '15', 'Qui aspernatur non voluptatem nihil beatae eligendi accusamus. Doloremque enim omnis sed temporibus consequatur.', 'eius', 405998, NULL, '1973-05-14 13:45:42', '2016-05-23 14:46:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '8', '93', 'Ea consectetur sed libero. Cupiditate et autem quia quo ea consectetur temporibus optio. Voluptate iste velit aspernatur quo.', 'voluptate', 104, NULL, '1984-08-23 02:38:28', '1970-08-09 04:00:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '6', '93', 'Fuga beatae ut perferendis incidunt quasi velit. Molestiae quo quia ullam est distinctio rem libero. Autem cupiditate quod consequatur quo enim non enim.', 'sed', 923653127, NULL, '2022-03-21 07:18:02', '2007-08-05 04:03:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '3', '13', 'Voluptatum quia distinctio repellat est quidem dolorem nulla. Optio aperiam mollitia ex aperiam facere assumenda sit quis. Ut qui minus et et illo. Nemo non sunt delectus non qui delectus.', 'vitae', 5099, NULL, '1994-08-23 23:36:49', '1989-10-15 19:48:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '4', '41', 'Et iusto eos culpa possimus facere. Ipsam et dolorum quia dolorem. Omnis ipsum possimus quis quo. Ut vitae omnis excepturi ut error magni.', 'veniam', 2200878, NULL, '1994-01-13 20:01:42', '1989-06-14 07:01:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '5', '100', 'Dolor rerum corrupti fuga sit et ut eius eaque. Repellendus corrupti totam et ut repudiandae ab. Sit id fugiat ut voluptas fugit rem. Voluptates a rerum fuga deleniti velit repudiandae minima. Dolor quia possimus iusto doloremque ut soluta sunt.', 'non', 337419246, NULL, '1986-12-27 22:07:04', '2022-03-11 05:53:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '10', '38', 'Ex qui nam corrupti beatae consequatur. Tempore necessitatibus aut accusamus. Delectus sint delectus voluptatem ut. Deserunt vero praesentium earum voluptas consequatur.', 'aut', 279701, NULL, '2003-01-05 07:00:01', '1994-08-05 14:55:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '4', '15', 'Ea velit repellat id aut. Et quaerat alias ipsam assumenda ullam blanditiis inventore. Dolore omnis fugit animi dolorem ut quod. Et sit repellat aspernatur tempore itaque tempore quis. Modi consequuntur molestias officiis eos nisi ea maiores quas.', 'est', 874, NULL, '1979-09-29 22:33:17', '2008-07-07 16:54:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '3', '88', 'Nisi sequi exercitationem excepturi quibusdam officiis impedit. Tempora aut earum quam rerum. Rerum sed modi exercitationem rerum et architecto ipsa architecto. Vel et consequatur dolorem rerum deserunt possimus.', 'cupiditate', 9, NULL, '1996-01-29 00:37:13', '2008-07-29 08:18:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '9', '71', 'Quidem possimus et quos voluptas excepturi ut. Quia et tenetur explicabo illo. Reprehenderit architecto voluptas ea repellat quis.', 'eum', 7, NULL, '2006-08-13 06:38:17', '1995-09-07 01:46:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '4', '49', 'Quo aut perferendis aspernatur natus atque. Magnam nemo vitae numquam aliquid. Voluptas ipsa sint omnis quam omnis.', 'voluptas', 42, NULL, '2020-08-23 07:22:09', '2018-04-06 08:08:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '5', '10', 'Earum maiores illum repudiandae vel ut et. Repellendus in et non id. Nulla est exercitationem consequatur ea quia ab. Reprehenderit deserunt maxime sit incidunt.', 'molestiae', 0, NULL, '1998-08-14 02:33:04', '1994-05-27 07:30:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '3', '8', 'Quia animi omnis sapiente similique cumque deserunt dolores. Odio qui enim at rerum iure qui recusandae. Sed perferendis veniam unde voluptas.', 'at', 92, NULL, '1985-01-18 15:27:37', '2005-06-22 08:42:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '4', '18', 'Consectetur iusto qui voluptate inventore non tempora earum aut. Doloribus quia esse deleniti explicabo vel molestiae sapiente. Optio laborum tempora sunt consequatur quis est natus. Aliquid eum ducimus tempore quis cumque repellat numquam.', 'aut', 7, NULL, '1981-04-19 14:09:58', '1985-04-22 06:41:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '5', '34', 'Eveniet accusantium tempore ipsa officiis sequi eos laboriosam aut. Est voluptas recusandae velit. Adipisci et et perspiciatis.', 'nostrum', 5, NULL, '1974-02-21 14:45:18', '1979-11-20 18:43:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '3', '26', 'Qui neque eum ut voluptas dolores iure ut. Iste rerum harum sit non dolorem doloribus ipsum quo. Odit aut est voluptates vero sed qui fuga. Voluptatem ipsum sit in ducimus sit consequatur aut.', 'cumque', 939697748, NULL, '1978-10-05 12:23:01', '2006-11-27 05:30:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '5', '95', 'Dolor est mollitia iusto occaecati accusamus voluptatem accusantium nemo. Facere alias eaque odit asperiores ipsum. Maiores laboriosam et voluptatem eaque odio inventore est. Impedit dolorem quis aut pariatur debitis.', 'iste', 6616, NULL, '2015-10-25 06:17:55', '1989-10-18 19:52:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '2', '3', 'Sit exercitationem hic et mollitia. Aut eum quia cupiditate ipsum vitae saepe. Veritatis facilis qui aliquam quis qui.', 'hic', 356961, NULL, '1981-02-16 00:52:36', '1981-01-04 04:42:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '9', '44', 'Earum voluptas qui debitis. Et omnis maxime labore eligendi totam. Voluptatum aut aspernatur voluptatum. Aut architecto impedit sed non sequi tempora id.', 'voluptatum', 595248536, NULL, '2005-11-25 01:56:28', '2005-06-26 21:59:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '2', '24', 'Doloremque harum nisi vel aliquid est itaque dolor. Doloremque eos qui occaecati velit. Praesentium placeat fugit aut reprehenderit odit perspiciatis fugit. Delectus laborum incidunt ab quae reiciendis fugit numquam.', 'sapiente', 640, NULL, '1982-12-06 19:32:48', '1993-01-11 16:33:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '9', '57', 'Earum cum tempore omnis itaque sit quis. Modi a eos ipsum consectetur sit. Sit reprehenderit tempora aut blanditiis magnam minima rem.', 'molestiae', 71455, NULL, '2004-05-25 19:58:54', '2008-11-24 10:47:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '3', '77', 'Tempore harum voluptatibus animi laudantium sequi soluta. Fugiat perspiciatis cupiditate quos modi illum assumenda minima. Ipsam provident sint fuga debitis magnam inventore repellendus quidem. Nesciunt neque eos corporis aut culpa ab deleniti.', 'et', 7286, NULL, '1978-09-06 15:02:08', '1972-10-07 00:25:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '10', '57', 'Quo omnis eveniet ut ut et consequuntur ipsum. Odio aliquam numquam facere velit reprehenderit. Ipsa omnis reprehenderit earum.', 'id', 625, NULL, '2009-06-01 15:58:32', '1993-07-25 02:18:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '10', '21', 'Et sit odio error ut. Vel hic itaque exercitationem placeat possimus. Magni est iure nihil dolorem iusto. Quae quaerat autem vel porro et harum.', 'natus', 59642441, NULL, '2021-01-14 05:37:57', '2010-02-19 06:24:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '5', '76', 'Rerum omnis quaerat consequatur consequuntur et perspiciatis. Voluptatem est nostrum qui non non. Illo vel et commodi in. Incidunt ipsam iure officia numquam quos eius illum.', 'voluptatem', 971407837, NULL, '1988-11-12 23:23:31', '1980-02-07 09:13:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '10', '77', 'Molestiae fugit eligendi architecto rerum voluptas voluptas. Rerum distinctio occaecati cumque sapiente.', 'necessitatibus', 60773, NULL, '1993-05-15 14:01:57', '1975-08-08 17:23:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '3', '34', 'Neque sit mollitia praesentium aspernatur. Amet beatae aut aspernatur omnis. Voluptas et rerum labore nobis explicabo. Maiores et maxime earum minus.', 'amet', 267773, NULL, '2015-04-22 02:15:03', '1985-04-03 01:56:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '9', '52', 'Impedit quia et quis nesciunt. Ullam ducimus sit ullam veritatis accusamus exercitationem. Mollitia eum explicabo qui ipsum omnis. Vitae iure et accusamus sapiente aspernatur ducimus.', 'nulla', 957467090, NULL, '2008-06-04 20:07:41', '2000-12-09 01:38:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '5', '20', 'Deserunt aut aut voluptas molestias. Iste id blanditiis error aut enim aut tenetur. Consequuntur at eius et.', 'natus', 714, NULL, '2010-05-21 01:11:49', '2020-11-22 10:59:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '7', '85', 'Est id enim voluptatem. Ut unde nostrum fugit magnam repellendus. Et vel officia ut cupiditate quia officiis alias. Temporibus vel non sit quo et dolores nisi.', 'repudiandae', 312160, NULL, '2014-02-07 22:54:57', '1987-11-26 15:05:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '6', '90', 'Magni tempora aperiam rem vel corrupti facilis. Nihil nihil tempora porro praesentium qui eius. Est qui necessitatibus repudiandae. Tenetur explicabo a amet cupiditate quia voluptatem repellat. Non ut eos aspernatur odit saepe commodi explicabo voluptas.', 'delectus', 5, NULL, '2006-11-03 07:40:54', '2002-11-23 01:09:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '2', '2', 'Ut facere et aut. Non fugiat aut quaerat vel possimus dolores. Quam nam ipsum repudiandae a necessitatibus.', 'cum', 526, NULL, '2003-04-17 00:07:06', '2000-01-08 13:43:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '9', '29', 'Est ex aliquam sapiente facilis. Nemo enim veritatis aut et vero eos illum ipsam. Impedit sapiente vel illo provident. Modi et sed consequatur autem eos.', 'provident', 64917694, NULL, '1990-08-11 14:18:13', '1988-03-07 00:10:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '1', '72', 'Sed rerum voluptas qui aliquam et necessitatibus. Eius aut ea provident et. Debitis est praesentium adipisci ut qui. Iure vitae non suscipit sint fuga maxime qui.', 'enim', 5, NULL, '2001-08-14 20:23:04', '2016-09-07 17:04:19');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'Classical_music', '1975-02-11 21:55:33', '2001-04-04 01:54:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'Spiritual_music', '2004-03-25 16:17:06', '2004-11-09 21:32:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'Blues', '1991-01-13 22:41:30', '2017-06-13 22:16:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'Rock', '1991-11-25 04:56:54', '1993-08-07 15:12:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'Metal', '1975-02-17 15:57:24', '2004-03-02 11:52:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'Rap', '2006-05-07 21:26:27', '1970-05-31 12:45:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'Disco', '1978-09-07 19:59:25', '1994-05-16 20:51:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'reggae', '1981-11-14 01:00:31', '2000-11-27 10:02:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'Pop', '2008-04-05 00:27:52', '1984-06-02 01:54:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'Amogus', '1985-04-27 00:32:54', '1986-08-27 20:24:21');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '13', '21', 'Accusantium tenetur sunt dolorem. Veritatis est dolor sunt nisi architecto assumenda. Numquam fuga praesentium sed ut aliquid rerum sapiente. Magnam quae vero fugiat soluta distinctio quia alias.', '1986-09-27 05:37:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '87', '52', 'Repellendus eum dolorem quis. At rerum magni magni dolor atque pariatur. Recusandae ipsa rerum ullam repellat ratione ad. Et tempore dicta vel aut vitae.', '2004-07-07 05:06:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '29', '25', 'Assumenda doloremque modi sunt dolorem et ut non et. Velit nihil et temporibus quidem possimus dolor eligendi. Est eius reprehenderit velit qui perferendis sint.', '2003-09-16 19:40:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '45', '92', 'Cum eos aperiam non et dolore soluta. Natus maxime rem mollitia eveniet cumque. Temporibus provident reprehenderit tempore sit odit.', '2006-05-03 20:55:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '82', '49', 'Dolorem similique voluptatem aut facere et perferendis. Deserunt consequatur magnam ab reprehenderit delectus nemo.', '2017-01-31 19:21:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '85', '61', 'Fugiat eaque debitis nemo porro molestias harum ipsam. Laborum in sed voluptatem aliquid. Omnis ipsa quae saepe quae aut illum molestiae.', '2015-04-17 16:54:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '22', '10', 'Repellendus inventore repellat et optio nihil. Sed et reiciendis voluptatem sit tempore accusantium et. Tempore et nisi laboriosam deleniti vero velit. Illo reiciendis aut et temporibus sunt quo ut. Ipsa ut et magnam.', '1975-08-13 16:01:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '26', '7', 'Aspernatur est facilis est in consequatur nulla laboriosam. Aut sed aperiam laboriosam enim nulla consequatur.', '1990-07-08 09:34:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '56', '84', 'Mollitia aliquam incidunt quia natus. Assumenda est quia repellat ad. Sed deserunt ducimus vel et ut. Maiores enim ipsum ullam omnis ut.', '1984-01-07 16:45:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '70', '32', 'Cumque quibusdam rerum provident quo. Velit temporibus neque tenetur repellat suscipit veniam. Et ea ad voluptatem alias. Possimus est voluptatem adipisci est minus qui.', '1998-01-02 18:58:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '43', '78', 'Eum corporis molestias et et eum esse. Ipsam et illum voluptas aspernatur rem exercitationem nihil. Qui at impedit aut non sit ea. Saepe voluptatibus consectetur omnis ad voluptatem. Fuga nihil rerum eos sunt in.', '1982-03-14 02:36:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '58', '30', 'Consequatur et dolor ut ducimus animi molestiae illo. Itaque atque velit eum libero vel possimus. Nostrum a dolore ratione ut magnam ea molestiae eos. Expedita debitis qui dolor beatae.', '1991-06-13 04:23:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '31', '50', 'Pariatur ut et eligendi. Dolores quia quis sed tempora. Enim veniam sunt est laboriosam est aliquam sed dolor.', '1991-11-10 10:36:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '60', '74', 'Est provident nemo quos unde ea a molestiae. Eum voluptas occaecati ratione tempore suscipit non. Dolorum eos delectus deleniti recusandae non explicabo. Magnam impedit quod assumenda voluptatum.', '1982-05-17 09:13:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '72', '35', 'Quis voluptatibus quo neque voluptatem. Aperiam ullam natus porro reiciendis quis saepe. Error corporis distinctio labore atque fugit ut quis.', '1985-08-21 11:10:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '96', '21', 'Dolor deleniti veniam quos rerum. Eligendi odit libero quisquam enim quas quibusdam quo ut.', '1972-09-22 08:27:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '49', '97', 'Et est culpa aliquid sit veniam. Molestiae quibusdam ipsam corporis exercitationem id a explicabo atque. Est id voluptas unde. Maiores quaerat et voluptatum perspiciatis illum et minus.', '1988-08-09 11:07:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '84', '2', 'Odio occaecati similique et aut tempore molestias aliquam esse. In vel omnis omnis vero sed consequatur natus. Dolores animi maxime neque blanditiis sapiente dolor voluptas.', '1997-06-11 02:39:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '2', '8', 'Aliquam aperiam perferendis fuga non placeat suscipit consequuntur. Impedit deleniti doloribus omnis ut aut debitis. Et illum aut quis harum et.', '1970-11-12 00:20:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '77', '8', 'Laborum asperiores harum aliquam officia molestias sit. Et animi dolorem voluptatem ex blanditiis.', '1989-03-13 13:04:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '54', '64', 'Beatae eaque repudiandae sint ut et. Laudantium aliquid magni pariatur vitae. Modi qui provident id ab qui consequatur dolor ipsa.', '1993-07-13 01:32:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '49', '32', 'Numquam tempore neque quis. Consequatur est molestias consectetur. In fugit veritatis aut quaerat nemo. Veniam voluptas inventore eius aut.', '2016-11-16 00:42:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '70', '92', 'Quia eos molestiae qui quasi inventore occaecati voluptatem. Eaque assumenda exercitationem nisi qui sint. Odio totam recusandae laudantium laborum quis.', '1978-12-14 19:48:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '65', '7', 'Fugiat doloremque provident aliquam hic quisquam ullam. Occaecati repudiandae blanditiis dicta culpa libero. Sit non est necessitatibus. Perferendis eligendi libero porro harum et fugiat. Dicta voluptas vitae vitae placeat corporis.', '2020-06-06 23:54:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '20', '67', 'Qui et temporibus fugiat sit sapiente dolores ut. Praesentium quia odit optio enim quam. Cum repellendus ut vero. Culpa sequi et quisquam earum quia et aut.', '2007-06-03 21:26:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '87', '22', 'Perferendis architecto voluptatibus possimus veritatis. Voluptate perspiciatis necessitatibus dolor consequatur. Quae sed harum cum cupiditate et consequuntur minus. Suscipit molestiae est tempore sapiente quia quo delectus. Ea consequuntur assumenda aliquid vel nihil similique repudiandae.', '2000-05-01 17:43:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '68', '91', 'Rem est quibusdam et ea. Corporis nemo sed adipisci eveniet. Voluptas odit dolorum omnis inventore dolores voluptate voluptatem.', '1991-08-29 02:18:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '7', '3', 'Eum voluptate optio eveniet. Aut neque laudantium eaque omnis delectus et. Eos nihil quisquam mollitia non.', '2022-02-17 13:47:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '20', '82', 'Reprehenderit omnis quaerat voluptate qui aut nobis. Iusto blanditiis sit nisi omnis cupiditate. Dolorem quaerat ut voluptatem est qui.', '2007-09-16 08:00:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '91', '51', 'Aspernatur et officia est voluptatem itaque sed repudiandae dolor. Cupiditate quas non natus impedit adipisci. Minima impedit ex ut vero. Iste est doloribus aut quia.', '2022-03-17 02:31:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '95', '87', 'A ea qui qui. Temporibus recusandae mollitia voluptas. Natus qui voluptatem animi velit. Omnis quas consequatur quidem tempora ut est sequi.', '2010-12-09 12:10:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '6', '83', 'Quia distinctio aliquam sequi delectus et. Non blanditiis illum sunt aut ea sunt. Quibusdam possimus vel non. Eos tenetur cumque odio nulla.', '1981-08-06 00:27:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '6', '47', 'Eaque quisquam porro libero consequuntur inventore. Aut dolore sit dolores excepturi alias. Non sit atque occaecati magni eum velit amet. Iure et odio accusantium officiis.', '2011-04-23 05:27:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '48', '16', 'Ea est quis aut et quam alias consequatur dolores. Consequatur rerum est vero minima ipsam nulla voluptate. Atque libero distinctio provident et optio. Magni deleniti officia iste impedit sed repellat.', '1992-12-15 10:07:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '58', '90', 'Sapiente est et nihil quibusdam molestias molestias. Voluptatem nemo qui id qui est ut qui. Quos iste occaecati incidunt fugiat consectetur autem.', '1971-08-31 04:47:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '2', '63', 'Expedita fugit aut quisquam saepe officiis itaque suscipit. Officiis aut est a. Sed est sit impedit et illo reiciendis.', '2002-03-31 00:43:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '7', '61', 'Vel repudiandae non temporibus velit quia voluptatem. Velit aperiam quos dolore nihil hic ab voluptates non. Est quas animi quaerat officiis voluptatibus animi qui. Illo quisquam ipsam autem deserunt doloribus eum fugit.', '2008-05-19 16:34:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '87', '86', 'Nostrum voluptas nam iste non. Quis natus inventore occaecati aut. Non voluptate at suscipit voluptatem in veniam et. Temporibus ad quae nihil dolores cum deserunt a.', '2010-01-20 11:46:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '16', '61', 'Cupiditate quam unde ut tenetur. Quo et ducimus veritatis aut eum nam aliquam. Labore accusantium fugit fugit.', '2012-04-16 19:51:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '39', '84', 'At iusto architecto velit recusandae. Consequatur accusantium tempore facilis sed velit eveniet sit laudantium. In temporibus a ea qui. Aliquid aspernatur sint et quia in vitae eum culpa. Error distinctio qui quaerat dolorum soluta magni.', '2012-05-18 02:53:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '64', '63', 'Iure error repellendus aut inventore fugiat provident. Sit dicta autem ipsa accusantium sunt. Dicta vitae odit corrupti et sit sequi explicabo at. Voluptas sit assumenda possimus esse quod cumque a.', '2004-03-24 05:16:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '74', '97', 'Modi quo saepe occaecati omnis. Similique maxime enim quos repellendus. Tenetur quo laboriosam harum praesentium fugit nulla odio. Harum beatae sint consequuntur qui.', '2008-04-15 08:44:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '68', '35', 'Accusamus nihil veritatis nesciunt soluta maxime. Eius tenetur ipsa ab soluta placeat dicta. Nisi sint quia accusantium.', '1988-10-29 07:39:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '28', '80', 'Atque molestiae laudantium omnis placeat voluptate sequi. Impedit reprehenderit repellat veniam. Omnis quisquam assumenda odio dolores sunt sunt. Praesentium minus autem animi in eum officia. Explicabo itaque velit sit iure totam.', '2004-05-24 12:41:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '93', '41', 'Ut sit impedit architecto neque incidunt ipsam. Eligendi illo sit illo unde repellendus quisquam. Fuga dolorum a facilis odio voluptatum. Ratione ducimus voluptas nam exercitationem harum assumenda est.', '2015-02-03 13:08:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '65', '23', 'Illum ullam et ut voluptas dignissimos vel sit. Sint qui tempora sed explicabo necessitatibus. Aut sint pariatur consectetur ut officiis. Excepturi vero repellendus voluptatem tempora sit est enim quae.', '2003-08-03 08:59:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '48', '93', 'Adipisci molestias corporis et iusto consectetur itaque nihil. Suscipit molestiae deleniti accusantium minus nobis molestiae. Deserunt fugiat cumque laudantium ipsa deleniti doloremque. Sit atque aliquid nemo nulla cupiditate molestiae.', '1977-12-20 18:51:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '61', '67', 'Cumque minima quasi molestias voluptate. Sunt ad illo hic qui. Minus cumque et error non.', '2004-11-04 08:43:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '90', '9', 'Atque tempore a magnam ut dolorum. Itaque excepturi eos omnis eligendi aliquam sed eligendi illo. Id sed repellat libero quia nostrum nisi fuga qui.', '1999-11-26 22:29:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '57', '17', 'Assumenda quo modi ipsam impedit autem non. Ad explicabo qui ut nam aut. Iste sunt voluptatem et eaque quas dolor. Qui quia accusantium est non ut non corrupti.', '1972-12-18 03:25:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '41', '36', 'Est qui alias sint et in iusto. Rerum quidem reprehenderit magnam ea nesciunt et. Autem inventore repudiandae soluta sed voluptatibus debitis fugit.', '2015-12-10 23:02:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '80', '18', 'Consequatur cum libero voluptas voluptatem earum unde enim. Aut nobis eos ab eum eos explicabo. Aspernatur cum omnis culpa non dolorem a.', '1975-03-24 19:29:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '24', '5', 'Possimus possimus dolore quis sint quidem culpa saepe. Dolorum quasi ex inventore molestiae corrupti pariatur dolores. Deserunt eum nam explicabo ipsum sapiente natus vel.', '1998-01-15 11:31:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '5', '30', 'Esse adipisci reiciendis sunt. Sit nulla itaque quo aliquam adipisci facere. Dignissimos quae vero qui odio placeat odit. Distinctio ipsa omnis quas et omnis mollitia.', '1987-09-13 00:00:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '18', '28', 'Excepturi repellendus sint tenetur ratione minus aliquid. Voluptas illo itaque soluta error. Quia harum quia est repellendus impedit sapiente nostrum.', '2009-11-16 04:05:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '61', '61', 'Quia a consectetur consequatur facere. Enim dolore earum tenetur et. Et velit eum debitis repudiandae.', '1986-12-24 00:03:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '2', '56', 'Minima molestiae sit est perspiciatis laborum explicabo. Quia vitae quod porro sed ut earum similique. Dicta enim temporibus qui eligendi et non reprehenderit. Facilis voluptatibus consequatur voluptate numquam aut blanditiis et maiores.', '2012-04-02 10:54:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '41', '85', 'Ipsa ab voluptas occaecati eos enim ea. Dolores fuga in pariatur voluptates. Et optio nihil omnis omnis omnis enim culpa. Reiciendis excepturi nisi aut vitae cupiditate.', '2019-12-14 18:47:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '56', '84', 'Cumque sunt nobis delectus laborum omnis. Voluptas dolor corrupti cumque ut. Cum consectetur et dolor quod consectetur accusantium consequatur. Nobis atque est sed.', '1995-10-08 02:27:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '87', '92', 'Vel qui voluptatem quae laboriosam temporibus. Eos beatae atque fugiat est. Minima pariatur quisquam quia dolore nam rerum rem eaque.', '1976-03-30 20:20:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '1', '79', 'Officiis earum rerum exercitationem ex nesciunt. Error sapiente nesciunt esse. Laboriosam alias quisquam molestiae sit eum est fugit. Pariatur ea ut rem ad.', '2016-02-29 05:18:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '15', '17', 'Aut earum nihil laboriosam molestiae amet id sed. Est laboriosam sint enim libero officiis mollitia voluptatibus porro. Nulla consequatur aspernatur sed voluptas et et vel incidunt. Aut possimus deleniti fuga illum quia.', '2017-10-23 16:51:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '22', '77', 'Dolorem numquam amet quae et et dolorem et. Dolor dignissimos ex nostrum nemo optio quaerat ea. Rerum et eum quo.', '1976-05-15 17:55:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '54', '85', 'Id sit nostrum nisi nisi vitae. Quia et nesciunt est sit est nihil. Porro maxime ea sapiente omnis. Delectus nihil similique in numquam ut eius veniam.', '2003-05-17 14:18:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '70', '79', 'Non quam aut vero repudiandae quos adipisci. Occaecati harum eum et maxime vitae et nisi. Cum quis sequi assumenda fugit odit aliquid.', '2016-11-19 21:47:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '66', '16', 'A dolor facilis voluptate veritatis ullam minima omnis rerum. Reprehenderit explicabo enim inventore nulla omnis aut aut. Non dolorem laboriosam sunt animi deleniti fugiat.', '2016-10-03 09:41:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '57', '78', 'Ea dolores optio necessitatibus maiores optio. Id voluptatem non deleniti ut blanditiis. Est culpa id est est. Vel odio incidunt occaecati quae.', '1978-06-27 04:59:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '31', '82', 'Hic architecto ipsa quod molestiae. Facilis vero excepturi aut qui unde quo. Pariatur est officia nobis eligendi quis quam. Sit reprehenderit et aut quos excepturi voluptas.', '2020-02-13 01:03:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '50', '76', 'Dicta veniam aut laborum voluptas ipsa. Quia cumque autem corporis aliquid voluptatum voluptas reprehenderit. Vel nihil aliquam fugiat et repellendus sed.', '2012-09-13 11:43:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '56', '86', 'Dolores libero magnam aliquid consequatur. Sint nemo asperiores voluptas. Doloremque distinctio consectetur eum delectus. Tempora cupiditate ad non aliquam voluptatem ratione.', '1987-11-05 18:10:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '43', '66', 'Qui sunt explicabo et sit dicta provident. Labore quibusdam molestiae ut non ab aut consequatur. Ut sed quia unde ut.', '2014-06-11 10:21:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '57', '57', 'Voluptatem ipsum quaerat quo assumenda aut aliquam. Soluta quia consequatur enim molestiae sunt quam.', '2015-02-07 22:55:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '35', '98', 'Dolores autem qui quas nulla enim a. Quas repellat vitae qui doloremque nemo debitis. Esse saepe excepturi in repellendus. Enim asperiores dolor architecto quo qui.', '1988-10-15 22:26:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '87', '78', 'Quod omnis iure quia harum recusandae optio eligendi quia. Quos et est et aut ab voluptatibus. Soluta alias nihil nihil ex.', '1998-07-25 21:23:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '37', '97', 'Et at cum eligendi quibusdam possimus repellat voluptas. Ad itaque possimus aut saepe. Sunt quis qui at adipisci quo eaque voluptatem.', '2018-12-18 10:31:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '33', '51', 'Non aliquam totam voluptas consectetur perferendis aliquid. Architecto quod officiis nihil quisquam autem et tenetur.', '2012-06-18 02:11:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '9', '78', 'Est sit est fuga maiores. Fugit officiis adipisci quis rem enim. Doloribus sit et libero.', '2006-12-29 19:14:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '27', '62', 'A blanditiis id et eum. Aperiam nihil nostrum modi ea nemo aut et. Eum commodi sunt temporibus deleniti.', '1979-05-08 19:20:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '68', '62', 'Accusantium voluptates quia id rerum voluptatem debitis. Nihil nostrum sequi explicabo esse repellat hic. Nesciunt eos non illum molestiae qui sed est. Nihil consequuntur quo voluptatem vel.', '1993-06-26 10:36:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '33', '3', 'Deserunt sit voluptatem doloremque asperiores eos saepe et. Aut repudiandae beatae placeat est vitae ullam assumenda autem. Et sequi aut atque reiciendis. Soluta corrupti sequi inventore nobis modi recusandae qui. Molestiae debitis porro qui eum voluptatibus qui aut.', '2012-02-27 06:43:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '57', '83', 'Adipisci ipsa ut id accusantium molestias. Officia illum maiores aut eius. Architecto est voluptate odit aliquid qui.', '2006-03-06 12:01:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '94', '30', 'Perspiciatis quo aut omnis quos. Nemo itaque itaque blanditiis eos temporibus sed aut. Quia consequatur nostrum eos voluptas nesciunt dolorem.', '1981-04-07 15:15:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '81', '32', 'Sit voluptatem cupiditate eum et. Illo dolores qui fuga adipisci esse hic. Est velit ratione minima quo. Voluptas omnis amet rerum magnam.', '2000-09-28 16:56:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '10', '39', 'Aut dolorem autem magnam in mollitia aut et accusamus. Laborum explicabo alias rerum eum labore quia non. Deserunt aspernatur et id non a.', '1983-10-11 01:59:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '58', '6', 'Et laborum aut et qui voluptatibus. Quo dolorem non modi rem adipisci eos. Et quis laboriosam rerum omnis rerum.', '1977-06-13 08:59:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '70', '57', 'Maiores architecto ut nam. Ratione molestiae quas et tempore facilis sit aliquam. Ducimus velit reiciendis aperiam. Natus non totam facilis facere maxime temporibus. Nihil est vel sapiente ut.', '1989-01-10 09:37:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '32', '42', 'Sit enim laudantium sed ducimus quia totam iste. Voluptatem eos voluptas accusamus consectetur ratione consectetur ipsa. Placeat ea quo laboriosam iure dolores.', '1983-10-14 11:02:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '9', '63', 'Ex dignissimos ut debitis dolorem. Rem voluptatem et velit ut nam pariatur. Magnam ea odit sint iure blanditiis dicta error. Molestias quia non et ut et. Et veritatis fugit autem aliquam aut tempora.', '1982-02-06 10:45:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '52', '59', 'Iusto labore incidunt modi esse. Est laborum blanditiis ducimus vel impedit. A qui ex aut modi at. Quod ea doloribus odit iste cum dolores.', '1991-07-22 18:45:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '43', '43', 'Pariatur et quam eligendi ut architecto. Reprehenderit dolor quo sed commodi. Est et blanditiis occaecati provident illum saepe consectetur.', '1977-08-21 17:12:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '61', '39', 'Inventore quasi fugiat iusto et a vel culpa sunt. Harum voluptatem animi aut minima non eum cum earum. Adipisci enim quod et unde. Aperiam dolorum quas et facilis eligendi ducimus. Ea aut consequatur eaque nulla aut.', '1993-11-21 02:55:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '64', '93', 'Nisi eum ut consequatur impedit consequatur. Aspernatur modi quo et eum. Beatae ut nulla exercitationem libero rerum quo. Voluptas corporis illo nihil.', '2008-09-20 09:09:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '55', '57', 'Dolores non consequatur repellendus sit incidunt. Eum est nesciunt nobis sunt. Qui soluta distinctio est error omnis eaque. Ducimus deserunt iure tempore officiis rerum maxime.', '1979-01-24 21:52:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '6', '85', 'Impedit dolorum velit non necessitatibus odit. Impedit sint maiores tempore in ullam nihil. Ipsa est animi consequatur amet repellendus inventore nihil et.', '2010-04-27 05:40:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '87', '50', 'Sunt ut porro ut qui veniam id perspiciatis. Expedita pariatur provident quibusdam commodi. Magni quis tempore perferendis possimus veritatis id. Animi quis eos debitis ut expedita esse et.', '1999-08-21 03:03:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '42', '26', 'Perferendis aut architecto veniam ut soluta quaerat. Consequatur eius tenetur eius quo iusto.', '1985-05-22 11:28:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '72', '96', 'Cum a cum nobis labore. Temporibus officiis nemo repellendus et et harum recusandae. Debitis nemo quidem corporis cum exercitationem.', '2004-06-02 16:50:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '59', '94', 'Quaerat placeat consectetur et magni architecto voluptatem incidunt. Ullam consectetur pariatur eos neque. Velit qui ut ratione et laudantium enim consequatur.', '1997-08-24 18:29:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '38', '85', 'Quibusdam delectus officia ab hic doloribus. Sit sapiente reprehenderit perferendis autem facilis corporis. Quia tempore accusamus aut fuga. Maiores autem iste aliquid voluptate perferendis.', '2022-03-12 07:14:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '10', '63', 'Est assumenda ducimus non quidem. Voluptas omnis non qui.', '2002-08-20 14:31:42');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'consequatur', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'ea', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'tempora', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'asperiores', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'cupiditate', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'dolore', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'enim', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'et', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'assumenda', '92');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'maxime', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'dolores', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'officia', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'magni', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'deserunt', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'ullam', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'sunt', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'distinctio', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'non', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'voluptas', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'rerum', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'minus', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'repellendus', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'quis', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'magni', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'consequuntur', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'voluptate', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'laborum', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'ab', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'ea', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'dicta', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'aut', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'rem', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'qui', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'est', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'officia', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'ea', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'nulla', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'quis', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'incidunt', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'quo', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'mollitia', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'enim', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'fugiat', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'veniam', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'quod', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'saepe', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'sequi', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'aut', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'fuga', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'quod', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'similique', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'dicta', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'quisquam', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'molestias', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'consequatur', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'in', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'voluptatem', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'modi', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'autem', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'quis', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'sint', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'qui', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'eaque', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'incidunt', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'et', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'est', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'vel', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'qui', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'accusamus', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'velit', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'nihil', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'molestiae', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'dolorum', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'facilis', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'enim', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'a', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'corporis', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'aliquid', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'sit', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'omnis', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'ut', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'repellendus', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'pariatur', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'facere', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'ut', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'tempora', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'rerum', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'sed', '70');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'sed', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'aut', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'iure', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'hic', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'rerum', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'et', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'ut', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'odio', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'est', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'accusantium', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'non', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'non', '6');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('601', '42', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('602', '21', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('603', '25', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('604', '30', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('605', '30', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('606', '91', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('607', '81', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('608', '74', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('609', '98', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('610', '55', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('611', '38', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('612', '37', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('613', '99', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('614', '42', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('615', '73', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('616', '88', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('617', '80', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('618', '87', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('619', '27', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('620', '95', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('621', '37', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('622', '30', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('623', '51', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('624', '9', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('625', '17', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('626', '49', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('627', '100', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('628', '3', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('629', '56', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('630', '74', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('631', '19', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('632', '20', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('633', '72', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('634', '93', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('635', '89', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('636', '26', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('637', '11', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('638', '15', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('639', '42', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('640', '97', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('641', '36', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('642', '22', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('643', '90', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('644', '76', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('645', '12', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('646', '85', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('647', '48', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('648', '79', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('649', '91', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('650', '11', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('651', '30', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('652', '76', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('653', '20', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('654', '69', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('655', '72', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('656', '99', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('657', '69', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('658', '48', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('659', '90', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('660', '8', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('661', '39', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('662', '40', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('663', '23', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('664', '41', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('665', '88', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('666', '94', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('667', '49', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('668', '35', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('669', '76', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('670', '53', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('671', '70', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('672', '55', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('673', '93', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('674', '71', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('675', '73', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('676', '64', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('677', '4', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('678', '26', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('679', '4', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('680', '30', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('681', '72', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('682', '13', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('683', '87', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('684', '53', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('685', '84', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('686', '9', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('687', '76', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('688', '95', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('689', '41', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('690', '29', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('691', '4', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('692', '73', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('693', '44', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('694', '80', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('695', '17', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('696', '65', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('697', '23', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('698', '77', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('699', '29', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('700', '63', '95');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'M', '2012-12-05', '687', '2013-10-18 20:43:15', 'Keyshawnhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'M', '1993-05-14', '669', '1999-03-17 15:26:07', 'Kovacekbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'M', '1997-06-06', '608', '1978-07-31 03:25:02', 'Hackettside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'F', '1977-10-10', '609', '1980-08-23 00:17:10', 'Abigailland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'M', '1994-12-22', '689', '2017-06-19 16:18:40', 'Aaliyahchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'M', '1973-01-06', '644', '1984-03-26 13:05:55', 'East Brennanbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'M', '2020-07-18', '618', '1971-01-12 09:02:47', 'Danburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'F', '2013-03-28', '657', '2006-09-29 14:54:29', 'Laneyshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'F', '2006-04-07', '692', '1983-02-02 11:59:34', 'Effieberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'F', '1991-10-10', '687', '1972-07-04 18:16:02', 'West Rosario');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'M', '2016-12-09', '649', '2008-12-10 18:57:25', 'Lulatown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'M', '1992-03-16', '668', '1995-01-16 05:12:21', 'Traceymouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'M', '2002-12-30', '605', '2011-08-30 07:35:26', 'North Roosevelt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'M', '1987-11-09', '634', '1978-02-06 18:58:56', 'Rosaleeburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'F', '1977-09-28', '641', '2004-11-30 04:09:02', 'North Mylenebury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'F', '2021-12-28', '640', '1987-08-10 00:37:33', 'Halvorsonchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'F', '2015-05-22', '632', '2022-09-23 09:01:41', 'Soniaville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'M', '1973-11-18', '699', '2019-01-23 08:57:40', 'Anissabury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'M', '1972-04-07', '699', '1975-03-03 08:11:45', 'Bradtkehaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'F', '2019-04-07', '699', '2015-06-17 03:56:41', 'Haagmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'F', '2019-03-17', '624', '1978-06-11 15:25:45', 'Haleytown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'M', '1975-03-22', '625', '1986-12-05 16:24:15', 'Alfredside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'M', '1995-07-26', '648', '1979-06-21 06:43:33', 'West Jeramieside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'F', '2013-01-26', '672', '1989-05-20 05:54:25', 'Raynorville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'M', '1982-04-29', '664', '2015-04-29 10:47:01', 'Lake Keith');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'F', '1994-10-15', '663', '2012-04-15 05:07:53', 'Port Patriciashire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'M', '1986-07-26', '656', '2018-09-29 06:54:12', 'East Crystal');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'M', '1999-09-16', '628', '2005-09-23 08:39:30', 'Port Nicolette');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'M', '1985-01-07', '693', '2018-02-21 08:11:46', 'New Carli');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'M', '1971-10-16', '636', '1994-01-20 20:28:17', 'Lake Jovany');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'F', '2009-07-08', '623', '1979-03-08 23:27:59', 'North Hailie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'M', '1979-05-20', '679', '2020-06-19 00:58:48', 'Marciastad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'M', '2016-08-15', '605', '2015-11-01 20:00:59', 'Millerport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'M', '1993-01-06', '630', '1992-02-28 10:12:42', 'Marilieville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'M', '2019-09-05', '688', '2015-01-01 15:42:00', 'North Austenmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'F', '1972-01-06', '694', '1995-03-21 03:10:24', 'Fidelshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'F', '1970-10-05', '674', '2006-06-06 18:13:44', 'Port Aubree');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'M', '1992-04-01', '605', '1973-07-05 07:08:50', 'Ziemannmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'F', '2003-06-02', '650', '1990-01-06 18:35:50', 'Kellihaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'M', '1974-08-02', '666', '1973-11-21 06:33:06', 'East Cotyland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'F', '1973-04-28', '691', '1993-07-30 07:38:23', 'New Noel');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'F', '1989-01-24', '699', '2013-05-27 12:52:20', 'South Bartholomeview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'M', '1970-05-01', '633', '2009-02-08 01:37:44', 'New Alfonsotown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'M', '1996-12-23', '696', '1980-04-15 10:35:31', 'West Wilfredo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'M', '2000-05-11', '632', '2017-04-06 08:10:28', 'South Amystad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'F', '1980-02-16', '673', '1999-09-02 06:40:31', 'South Blazemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'F', '1983-06-17', '635', '1987-07-11 03:37:26', 'Schimmelville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'F', '2004-10-23', '664', '2014-03-25 16:07:18', 'Dibbertburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'M', '1988-03-03', '672', '1990-12-06 08:07:00', 'North Louton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'F', '1996-03-13', '634', '1996-08-29 18:11:37', 'Lake Demondberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'M', '1982-12-23', '663', '1973-08-27 19:11:26', 'Gaylordside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'F', '1971-06-16', '695', '1980-02-22 21:23:35', 'West Alethafurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'F', '1983-11-11', '658', '2010-11-21 20:03:54', 'Weimannberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'M', '2000-06-18', '610', '1993-05-27 16:19:22', 'Port Keyon');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'F', '1970-12-22', '667', '1974-08-30 01:09:09', 'Lake Esteltown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'F', '2003-03-25', '622', '1996-01-04 06:42:31', 'Idamouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'M', '1975-11-30', '672', '1989-08-04 16:41:08', 'Wisozkburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'F', '2006-02-11', '622', '1993-01-24 14:03:58', 'Rutheport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'M', '1983-08-16', '649', '1982-04-28 14:54:57', 'Nikitaberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'M', '2005-01-24', '665', '2004-02-16 22:12:16', 'Mohammedmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'F', '2003-12-24', '658', '1992-08-31 13:39:47', 'East Hallieport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'M', '1997-08-03', '672', '1971-09-08 12:01:25', 'Kuphalland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'F', '2013-03-25', '643', '1990-04-15 04:46:26', 'Port Rodrigo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'F', '2014-12-20', '663', '2002-11-23 11:00:58', 'Breitenbergtown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'M', '1970-01-08', '601', '2000-03-08 08:16:43', 'New Kallie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'F', '2015-08-12', '631', '2008-09-06 15:06:44', 'South Vincentstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'F', '1974-04-09', '657', '1972-10-27 18:18:54', 'Port Faye');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'F', '1998-01-30', '674', '1992-07-12 06:30:54', 'Wymanton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'M', '2013-07-24', '635', '1989-08-19 15:45:34', 'New Lessie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'M', '2021-01-26', '607', '1995-04-14 20:55:11', 'Pfefferberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'F', '1979-10-14', '639', '2003-11-02 07:53:01', 'Britneyborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'F', '2001-08-09', '626', '1981-11-20 17:15:23', 'Yasminside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'F', '1985-10-25', '605', '2020-06-30 21:52:58', 'North Myrnaland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'F', '2010-03-14', '671', '1987-08-21 02:02:44', 'Stanleyberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'M', '1989-05-29', '621', '2012-04-15 14:01:51', 'Lake Joanyberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'F', '2009-08-15', '637', '2014-03-14 14:35:39', 'Bergstromville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'F', '1971-10-19', '644', '1989-08-19 15:17:56', 'Vandervortton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'M', '1974-04-14', '656', '2004-11-21 06:20:12', 'Norvaltown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'F', '2004-05-17', '700', '2010-12-03 05:33:12', 'Osvaldoberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'M', '1991-11-24', '615', '1976-08-09 14:17:09', 'West Savionchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'M', '2001-06-14', '689', '1970-10-10 21:35:35', 'Gleichnerborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'F', '2014-02-23', '663', '2020-05-20 17:06:35', 'New Stephanieshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'F', '2020-08-13', '610', '1987-05-14 12:52:19', 'Breitenberghaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'F', '2013-08-30', '647', '1999-03-26 11:19:16', 'New Reuben');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'F', '2011-10-31', '672', '2000-02-15 14:26:10', 'North Oscar');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'M', '1988-12-19', '676', '1998-04-10 05:45:24', 'New Giovannyborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'M', '1974-05-16', '668', '1986-09-11 12:57:40', 'Hipolitoton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'F', '1995-03-13', '644', '1971-11-13 08:57:06', 'North Kennamouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'F', '1980-04-30', '698', '1973-02-27 19:48:41', 'West Linnieland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'F', '1975-07-10', '617', '2019-05-17 23:40:41', 'Lake Maybell');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'M', '1991-07-03', '608', '2006-08-03 06:36:29', 'Dudleystad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'M', '1993-08-16', '656', '1973-12-17 03:45:19', 'Treutelbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'M', '2003-08-01', '688', '2010-09-07 01:21:59', 'West Estelview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'M', '2022-07-25', '651', '1986-11-16 15:12:20', 'Sidneyborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'M', '2014-10-02', '618', '1995-01-06 10:31:40', 'Victormouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'M', '2018-12-30', '689', '2011-05-09 18:22:37', 'North Camilamouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'M', '2007-12-28', '681', '2002-02-19 06:04:51', 'East Antonina');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'F', '2022-08-16', '674', '1983-07-01 08:12:10', 'Lake London');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'M', '2013-07-05', '663', '2019-12-11 07:24:26', 'Tressieport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'F', '2019-06-03', '616', '1971-01-13 10:58:08', 'West Clemmie');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Lyda', 'King', 'madge98@example.org', '0355b07ff52229eeac05ca35bf5320ffd551b3ed', '89224577044', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Ellsworth', 'Simonis', 'cmueller@example.net', '88c02226e849088c9e01baa96a71123adf526c8d', '89933680573', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Kaylie', 'Christiansen', 'jewel06@example.com', '1a62a0b65f3fedfcad8648d8d135b3dfc996771e', '89096345851', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Brendan', 'Jacobs', 'tevin.reichert@example.net', '443b718f72fe8e344103bce4f5f3255512bb966d', '89268941883', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Marley', 'Buckridge', 'crist.brayan@example.org', 'bd5a35d82bed1280cf1c057ebeefd916b5c30332', '89382934049', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Joesph', 'Gibson', 'elvie.heaney@example.org', 'af82bd84c82f5d0d511477f158d485dea2c19ad2', '89592719818', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Tyrel', 'Homenick', 'chasity38@example.org', '3c41e94e3436e7c444d4ecadf5bc84ea6f2d1561', '89114467088', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Timmothy', 'Runolfsson', 'kemmer.jeromy@example.org', '7d12b94afce5226b63cea0ba59345cae17e9d243', '89092374909', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Afton', 'Satterfield', 'roberts.keaton@example.net', '89c0349a60792edc2fdae79740e9072170d268de', '89175113156', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Pat', 'Sanford', 'marielle.casper@example.net', '196bf49d92c0997ec98812d294ad41d23fa966ac', '89249594595', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Alden', 'Wunsch', 'katherine.hirthe@example.org', '80c7a4ec957e56f7b4ef72b545547c9b4b8eb98f', '89219231187', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Jovany', 'McClure', 'd\'amore.kaia@example.net', '86107e4e1c8fbf3770c397515b069aaf4b456fa6', '89538628432', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Eric', 'Champlin', 'felicity95@example.net', '5157ee83ae51f950fd76c1cb20e356cf57ae0df0', '89992299821', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Selena', 'Runolfsson', 'stroman.amber@example.org', '0edfedf0ef4ef599e569b70eb392c5cd66177262', '89489214144', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Meaghan', 'Goodwin', 'bailey.stiedemann@example.com', 'bb410be4a051465e748848b6e38b8e84f1a8d3a4', '89797840033', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Angelita', 'Purdy', 'roma35@example.net', '8ddc337d0c160cd88bab0c399bf153c40dbeaac7', '89981268829', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Myrna', 'Runte', 'heather68@example.net', '5276af6081169d334105883c9835c8149dd924d8', '89565963770', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Harley', 'Erdman', 'llang@example.net', '1ff8b52445e79ed153fdfb92ccac307811921012', '89026194504', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Gianni', 'Greenholt', 'claudie94@example.net', '6d3efbd430ec4a61b5128988a9c04b3e98fb7308', '89655936077', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Wilburn', 'Howe', 'fwest@example.org', '00f163522d4112da290ae5295c6579c5f072732d', '89627039557', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Asia', 'Reilly', 'lynn.ruecker@example.net', 'aba665c4299d29d7311e6c7b824543b8413526f7', '89923073178', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Britney', 'Stiedemann', 'wyman.geraldine@example.net', '69b1fe1537ce9ef103a292755a836a0ad79a63a7', '89082055715', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Rosalind', 'Wilderman', 'gaylord.freddie@example.net', '78f5a41d6a6c31d6f00ddab37542fb45d4df3f7d', '89299698511', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Oral', 'Wisozk', 'elsie.jerde@example.net', 'ec0a28a2eb664cad5b171767f4df0d933111bea3', '89094742603', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Mia', 'Boyle', 'beryl.larkin@example.net', '0aeb118ffb7f4e32cdbeb969010bb86cf770bd9b', '89050890244', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Treva', 'Spencer', 'liza.wolf@example.org', '5351b001ae628b77875378ac29c8f00a0400ce2c', '89244376337', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Rebeca', 'Parisian', 'naomi.hegmann@example.com', '5b86737c7f76e63afa5536ab8a5b4036265a41ea', '89492049289', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Kelvin', 'Gutkowski', 'giles.hartmann@example.net', 'cf29a060a533673257d15f8aad1fce1dcf9fda87', '89849066192', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Aletha', 'Hermiston', 'imacejkovic@example.org', 'd0dd8c98a9856f06e827d326466c2014a7da6364', '89056570642', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Demario', 'Nienow', 'kyra12@example.net', 'dc96638ac727e3ed00e1efe7a1124a6692e318d7', '89405056622', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Omari', 'Kulas', 'wjacobi@example.net', 'd82c9eed941698d7212075977808a9596ac436ea', '89149847915', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Esmeralda', 'Lemke', 'pedro.anderson@example.net', '22e0d8e33b16fe1ab5dcad94d55a0cd2df2ed4fc', '89371874433', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Rudy', 'Mohr', 'rrowe@example.org', '6848933994c0ecf8f164612a842300b1258ca31f', '89391776148', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Wiley', 'Stark', 'lenora97@example.org', 'b79b3bce4bdfba5d7ba09619544b554b696a7bda', '89495736699', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Marisa', 'Beer', 'dconroy@example.net', '2bc2c29ceaaa46eb2829916dc1eea9f520011559', '89294709726', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Caleigh', 'Smitham', 'marina.crist@example.net', '4092d522fc8baaf15bc96996ff0c373361df9417', '89002475043', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Marisa', 'Zieme', 'gupton@example.org', '8ddfae113ff9c96c77b2965b83a2ca54e5bb6525', '89029242085', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Belle', 'Hermann', 'wo\'conner@example.com', '24c96fcc5b4db980d5ba2fb78f12a36aaff7c8e5', '89044002651', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Devon', 'Bailey', 'garret55@example.org', '517e7f854336355f346da36568a7c48629a08126', '89399770523', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Maymie', 'Mraz', 'lavina.block@example.org', '9022c95c58551da20c7abdcccf28956d5abf972d', '89979711969', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Carter', 'Terry', 'dicki.rolando@example.com', '10b4bc7d1d0d8caf974790cf4a972017a3b97420', '89620948525', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Jaunita', 'Stanton', 'champlin.lesly@example.com', 'f5714b872a89e92fe0b4fe63f3202d5db47984e5', '89933843079', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Joany', 'Roberts', 'mable.stamm@example.com', '1e999ac08b9eda1deb7b3476d9c88c226480a2de', '89915204214', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Carleton', 'Parisian', 'yfriesen@example.com', 'e8533267ced7514e907abb79b998ec2918af80ab', '89188495690', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Josh', 'Mertz', 'joelle.eichmann@example.com', 'f82a029569ec78e3457cab2e0c91e6c7f0c27caf', '89439513613', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Bridgette', 'Sipes', 'joany08@example.com', '3f3457eb420d3649b0f66828afdc8d815f849979', '89517858709', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Torey', 'Schimmel', 'mertz.nikki@example.net', 'e21086221256e294917ab13935dbe938c40cd136', '89257569970', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Cleveland', 'Mante', 'diana.mraz@example.net', '9f68f396e93b5d703461ddd72df8b45e9239b590', '89087991452', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Kirk', 'Mills', 'apfannerstill@example.net', '3e13c359de4db85846ae6f65d3c2fda5d7b6380f', '89523396376', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Bethany', 'Stark', 'tara.schaden@example.org', '628ffaa4fd69ade4285842bec5a3e06d92d0a7f7', '89464479031', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Reginald', 'Hoeger', 'pspinka@example.net', 'f726abc8d923876fe95aa33c77c96d63089ddc2f', '89096635453', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Mandy', 'McClure', 'vito03@example.net', '99a3bae5786affea5c193b42b0f49aa4680871ab', '89794567881', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Maxwell', 'Reinger', 'waino89@example.com', '86e1f0d805df0ef536cd5a0603d855999812ee46', '89483511972', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Marcelo', 'Halvorson', 'jaycee61@example.net', '38a68a3e62470f8af38f9e4b38e9e4bb01ea09a1', '89799869112', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Gregorio', 'Bogisich', 'ernser.alexane@example.net', 'd43dcc1c80882f99e9fdc7572913c7e1def35c92', '89735102683', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Ivy', 'Fahey', 'laisha.sawayn@example.org', '79310ea6498988ebe624db4bdcc34e4de0520307', '89984328725', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Schuyler', 'Mills', 'rsenger@example.com', '926b2cb6e8b8ef0a9ce134fc2c0a0c9ac0f359e6', '89049342982', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Domenick', 'Brakus', 'fanny.pagac@example.net', 'f0adf87752221d783d900a28e8cd83898082ea65', '89019421233', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Rosina', 'Mann', 'gaston17@example.net', '363b2c9d7dbca1d2d4ed8dcd013dbbd534ea51df', '89796289209', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Bertha', 'Wunsch', 'christiansen.jerad@example.org', '1c4467207ff73704d4dce1c5a2a3a61dcd48127c', '89163909709', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Lucius', 'Conroy', 'hillary09@example.net', '4d81184a1edafb71decfac6b345970ffa1bcd900', '89450728423', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Maybell', 'Stark', 'kareem12@example.com', '5ad3290ec7c4c0ac17049199e39c79f207800d23', '89838318546', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Amanda', 'Stiedemann', 'treutel.josefa@example.org', '141d8430e2d7dc8213026dc2bd739771decbe077', '89628255088', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Bennie', 'Schoen', 'sorn@example.org', 'c7fe7473554f4164261b34a8fe7f04580c2e383f', '89638154035', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Gust', 'Okuneva', 'barton.ward@example.net', '67453c0611087435ba3689c7bad73085dc29d3c0', '89457678164', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Vickie', 'Orn', 'osinski.willa@example.net', '06218683235546fe819e2cea684e3f1e8ceff51a', '89365351206', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Lori', 'Thiel', 'sconnelly@example.com', '9d0ff86498add7b3de50fc1de9e512381aed8048', '89512944977', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Garth', 'Brown', 'pmedhurst@example.com', '4971ee64261b94b8d13735100e946233c1527916', '89027133092', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Mollie', 'Nikolaus', 'mmayer@example.net', '1ce6aaa5eb97ce4001aa9628b90cd54a03703350', '89236853339', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Kadin', 'Rempel', 'joe.rolfson@example.org', '189c5ba03bb13f13812138d5c9be812236850c17', '89015548178', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Ewell', 'Ward', 'stanton.adella@example.org', 'a1f79a4e648ff00e21a35a33438be3c1a8571b5a', '89742651528', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Lucie', 'Herzog', 'bergnaum.merle@example.net', 'e632d78eae4e591e3b36fde2273262fe4a27c3eb', '89114912972', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Willis', 'Goldner', 'isac88@example.com', 'f2beecf1c36e69a1340fd43973f67aa314ff338c', '89551301865', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Vidal', 'Block', 'kendall41@example.org', 'ee1d62f283246090f40465a45280dc0c6ae63ceb', '89299283321', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Taylor', 'Runolfsson', 'dorris.schultz@example.com', '492ec50d65935c7234c9049d1c4d00b5ad2da211', '89906245398', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Josephine', 'Rodriguez', 'colin.hessel@example.com', '6bde56d1efd0657bbea09c69db66e7ce7c587f0a', '89351229324', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Aurelie', 'Jones', 'heaney.kitty@example.org', 'c7176962e65f47d797e21cb739f39d10e065f471', '89378709411', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Elnora', 'Haley', 'burley21@example.net', '1050d62244204f8ee69a5446f1e6b82590bdbbdd', '89094653733', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Tony', 'Considine', 'norberto98@example.net', '14d336dfeb2276fac49588592c367e705285bbad', '89301397048', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Krista', 'Corkery', 'casper.rutherford@example.net', 'd6fadcdc30508a5d3a897c6793f2b4b75ff9c0ba', '89066068519', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Hyman', 'Raynor', 'derick.schaden@example.net', '93f356c1d8bfc5351949466504b2bf2356d0cae0', '89346492092', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Leonardo', 'Howell', 'robin.lakin@example.com', 'edb390370b35f98645c1082434636bc71a9e0a63', '89121557845', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Barry', 'Leuschke', 'garret17@example.org', '34f5c2f4f2a04600e80fa058f25c12122998e943', '89254130457', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Charlie', 'Miller', 'jalon43@example.com', '9efaecc527027686f8b982cf499c7cf00914e6eb', '89079088738', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Marlee', 'Koss', 'elenor.koch@example.org', '16db13c717320258cdcc4d243f004106835ad8ef', '89243629982', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Dwight', 'Cummerata', 'guy.macejkovic@example.com', '1a81dff2da2086b289e83b0e11614f1ee8927f58', '89412822099', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Ernestine', 'Shields', 'wilber49@example.net', 'a4b5ce367932daef53b62728bb88feaedad9bfa4', '89311582483', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Daryl', 'O\'Reilly', 'monserrat21@example.com', '484a5e0e117d992dc68774272a09ce378197635b', '89270937818', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Jovany', 'Schuppe', 'leilani.waters@example.org', '03cfc68a6ed358581aaa535d97868f73997390e8', '89768828618', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Mae', 'Cartwright', 'feest.loma@example.org', '83a44059aba9879c7f4296c488afd60916b45d6d', '89181048994', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Brent', 'Runolfsdottir', 'senger.amalia@example.net', '6827021d2f086e2d510891dc1faa97df0459a7f0', '89865611378', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Katrine', 'Pollich', 'larkin.noah@example.org', '00da5d665bd273956e5fd2406c80c615e5a0b4a9', '89022468531', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Lionel', 'Monahan', 'isaias.nitzsche@example.net', '41e49ceff9604fa425d634925c4229770c0bc17e', '89578060827', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Ruthe', 'Conn', 'rickey67@example.org', '8d66a3668e2ad398edc48c33cc5b20ed5cbbf8cd', '89501877922', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Margarete', 'Gislason', 'cruz.windler@example.com', 'db8d673130fbb0e1cabdcc363c9ae686d271b448', '89973722553', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Alexanne', 'Armstrong', 'albertha77@example.net', '99847f24ee3708beccdb0a2ecf24e04a7fbb9b8a', '89897490946', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Bryon', 'Christiansen', 'violet35@example.org', 'd5daa5d6c6e94017834cb701e54ec7de63985132', '89448258651', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Shawn', 'Fahey', 'rodriguez.cindy@example.com', '8b9e62b66d28b199ea0b2c9089b87d8717756521', '89480257249', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Vince', 'Krajcik', 'montana40@example.net', 'bb3c58ebc5ae7bb8f80298c8f6158e4314181d0e', '89806919910', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Era', 'Stroman', 'qkonopelski@example.com', '9f1a9d86db91f9808243250b51bf989085e7a7e5', '89594944417', '0');


