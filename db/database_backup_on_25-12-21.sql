

CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO admins (id, name, email, phone, photo, role_id, password, email_token, created_at, updated_at) VALUES ('1','Admin','admin@gmail.com','01629552892','1631023655pexels-moose-photos-1036627.jpg','0','$2y$10$mLsS8bPSXRZ9DJ/MpoBnluT5bsMaJ9LDsBBfjjVm1yno0PWilFhm.','','2018-03-01 05:27:08','2021-12-04 11:04:55');

INSERT INTO admins (id, name, email, phone, photo, role_id, password, email_token, created_at, updated_at) VALUES ('2','test','test@gmail.com','09000000','BhTv1584160189Brooklyn99-310x310.jpg','1','$2y$10$cl6qNdVuAhzJyaaLACVxGOQhlYf7n/UgLrwW0vx9QDGlZyKGM97mm','','2021-12-05 16:24:50','2021-12-05 16:24:50');


CREATE TABLE `attribute_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT 0,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` varchar(255) DEFAULT 'unlimited',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('221','2','Red','5','red','2025-12-21 03:30:10','2025-12-21 03:19:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('222','2','Blue','6','blue','2025-12-21 03:22:10','2025-12-21 03:50:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('223','2','Black','7','bed','2025-12-21 03:10:10','2025-12-21 03:04:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('224','2','Pink','8','pink','2025-12-21 03:28:10','2025-12-21 03:09:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('225','3','Red','5','red','2025-12-21 03:28:10','2025-12-21 03:29:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('226','3','Blue','6','blue','2025-12-21 03:31:10','2025-12-21 03:41:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('227','3','Black','7','bed','2025-12-21 03:15:10','2025-12-21 03:09:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('228','3','Pink','8','pink','2025-12-21 03:38:10','2025-12-21 03:41:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('229','4','Red','5','red','2025-12-21 03:22:10','2025-12-21 03:22:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('230','4','Blue','6','blue','2025-12-21 03:26:10','2025-12-21 03:41:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('231','4','Black','7','bed','2025-12-21 03:05:10','2025-12-21 03:12:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('232','4','Pink','8','pink','2025-12-21 03:00:10','2025-12-21 03:06:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('233','5','Red','5','red','2025-12-21 03:32:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('234','5','Blue','6','blue','2025-12-21 03:25:10','2025-12-21 03:47:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('235','5','Black','7','bed','2025-12-21 03:09:10','2025-12-21 03:25:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('236','5','Pink','8','pink','2025-12-21 03:26:10','2025-12-21 03:13:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('237','6','Red','5','red','2025-12-21 03:42:10','2025-12-21 03:25:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('238','6','Blue','6','blue','2025-12-21 03:28:10','2025-12-21 03:27:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('239','6','Black','7','bed','2025-12-21 03:35:10','2025-12-21 03:40:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('240','6','Pink','8','pink','2025-12-21 03:30:10','2025-12-21 03:01:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('241','7','Red','5','red','2025-12-21 03:20:10','2025-12-21 03:02:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('242','7','Blue','6','blue','2025-12-21 03:09:10','2025-12-21 03:54:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('243','7','Black','7','bed','2025-12-21 03:20:10','2025-12-21 03:29:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('244','7','Pink','8','pink','2025-12-21 03:09:10','2025-12-21 03:01:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('245','8','Red','5','red','2025-12-21 03:50:10','2025-12-21 03:35:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('246','8','Blue','6','blue','2025-12-21 03:19:10','2025-12-21 03:53:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('247','8','Black','7','bed','2025-12-21 03:49:10','2025-12-21 03:08:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('248','8','Pink','8','pink','2025-12-21 03:43:10','2025-12-21 03:09:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('249','9','Red','5','red','2025-12-21 03:44:10','2025-12-21 03:29:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('250','9','Blue','6','blue','2025-12-21 03:03:10','2025-12-21 03:30:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('251','9','Black','7','bed','2025-12-21 03:00:10','2025-12-21 03:31:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('252','9','Pink','8','pink','2025-12-21 03:11:10','2025-12-21 03:22:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('253','10','Red','5','red','2025-12-21 03:27:10','2025-12-21 03:37:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('254','10','Blue','6','blue','2025-12-21 03:06:10','2025-12-21 03:11:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('255','10','Black','7','bed','2025-12-21 03:23:10','2025-12-21 03:49:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('256','10','Pink','8','pink','2025-12-21 03:52:10','2025-12-21 03:22:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('257','11','Red','5','red','2025-12-21 03:05:10','2025-12-21 03:00:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('258','11','Blue','6','blue','2025-12-21 03:35:10','2025-12-21 03:08:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('259','11','Black','7','bed','2025-12-21 03:29:10','2025-12-21 03:39:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('260','11','Pink','8','pink','2025-12-21 03:48:10','2025-12-21 03:29:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('261','12','Red','5','red','2025-12-21 03:15:10','2025-12-21 03:39:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('262','12','Blue','6','blue','2025-12-21 03:01:10','2025-12-21 03:42:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('263','12','Black','7','bed','2025-12-21 03:54:10','2025-12-21 03:34:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('264','12','Pink','8','pink','2025-12-21 03:50:10','2025-12-21 03:25:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('265','13','Red','5','red','2025-12-21 03:03:10','2025-12-21 03:42:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('266','13','Blue','6','blue','2025-12-21 03:37:10','2025-12-21 03:17:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('267','13','Black','7','bed','2025-12-21 03:47:10','2025-12-21 03:13:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('268','13','Pink','8','pink','2025-12-21 03:38:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('269','14','Red','5','red','2025-12-21 03:40:10','2025-12-21 03:16:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('270','14','Blue','6','blue','2025-12-21 03:15:10','2025-12-21 03:49:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('271','14','Black','7','bed','2025-12-21 03:46:10','2025-12-21 03:32:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('272','14','Pink','8','pink','2025-12-21 03:40:10','2025-12-21 03:36:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('273','15','Red','5','red','2025-12-21 03:27:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('274','15','Blue','6','blue','2025-12-21 03:10:10','2025-12-21 03:48:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('275','15','Black','7','bed','2025-12-21 03:51:10','2025-12-21 03:00:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('276','15','Pink','8','pink','2025-12-21 03:21:10','2025-12-21 03:00:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('277','16','Red','5','red','2025-12-21 03:32:10','2025-12-21 03:03:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('278','16','Blue','6','blue','2025-12-21 03:36:10','2025-12-21 03:45:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('279','16','Black','7','bed','2025-12-21 03:54:10','2025-12-21 03:05:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('280','16','Pink','8','pink','2025-12-21 03:14:10','2025-12-21 03:32:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('281','17','Red','5','red','2025-12-21 03:44:10','2025-12-21 03:29:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('282','17','Blue','6','blue','2025-12-21 03:46:10','2025-12-21 03:32:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('283','17','Black','7','bed','2025-12-21 03:15:10','2025-12-21 03:51:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('284','17','Pink','8','pink','2025-12-21 03:47:10','2025-12-21 03:23:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('285','18','Red','5','red','2025-12-21 03:34:10','2025-12-21 03:33:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('286','18','Blue','6','blue','2025-12-21 03:45:10','2025-12-21 03:15:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('287','18','Black','7','bed','2025-12-21 03:26:10','2025-12-21 03:43:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('288','18','Pink','8','pink','2025-12-21 03:12:10','2025-12-21 03:34:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('305','23','Red','5','red','2025-12-21 03:52:10','2025-12-21 03:06:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('306','23','Blue','6','blue','2025-12-21 03:19:10','2025-12-21 03:36:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('307','23','Black','7','bed','2025-12-21 03:38:10','2025-12-21 03:29:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('308','23','Pink','8','pink','2025-12-21 03:28:10','2025-12-21 03:13:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('317','26','Red','5','red','2025-12-21 03:40:10','2025-12-21 03:27:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('318','26','Blue','6','blue','2025-12-21 03:18:10','2025-12-21 03:18:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('319','26','Black','7','bed','2025-12-21 03:34:10','2025-12-21 03:43:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('320','26','Pink','8','pink','2025-12-21 03:05:10','2025-12-21 03:01:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('321','27','Red','5','red','2025-12-21 03:54:10','2025-12-21 03:01:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('322','27','Blue','6','blue','2025-12-21 03:09:10','2025-12-21 03:41:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('323','27','Black','7','bed','2025-12-21 03:13:10','2025-12-21 03:03:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('324','27','Pink','8','pink','2025-12-21 03:12:10','2025-12-21 03:03:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('325','28','Red','5','red','2025-12-21 03:27:10','2025-12-21 03:32:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('326','28','Blue','6','blue','2025-12-21 03:43:10','2025-12-21 03:13:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('327','28','Black','7','bed','2025-12-21 03:26:10','2025-12-21 03:10:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('328','28','Pink','8','pink','2025-12-21 03:16:10','2025-12-21 03:29:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('329','29','Red','5','red','2025-12-21 03:13:10','2025-12-21 03:50:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('330','29','Blue','6','blue','2025-12-21 03:36:10','2025-12-21 03:35:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('331','29','Black','7','bed','2025-12-21 03:44:10','2025-12-21 03:16:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('332','29','Pink','8','pink','2025-12-21 03:02:10','2025-12-21 03:40:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('333','30','Red','5','red','2025-12-21 03:09:10','2025-12-21 03:23:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('334','30','Blue','6','blue','2025-12-21 03:52:10','2025-12-21 03:24:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('335','30','Black','7','bed','2025-12-21 03:41:10','2025-12-21 03:03:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('336','30','Pink','8','pink','2025-12-21 03:51:10','2025-12-21 03:24:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('337','31','Red','5','red','2025-12-21 03:54:10','2025-12-21 03:15:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('338','31','Blue','6','blue','2025-12-21 03:20:10','2025-12-21 03:37:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('339','31','Black','7','bed','2025-12-21 03:42:10','2025-12-21 03:13:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('340','31','Pink','8','pink','2025-12-21 03:11:10','2025-12-21 03:11:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('341','32','Red','5','red','2025-12-21 03:18:10','2025-12-21 03:03:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('342','32','Blue','6','blue','2025-12-21 03:01:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('343','32','Black','7','bed','2025-12-21 03:22:10','2025-12-21 03:34:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('344','32','Pink','8','pink','2025-12-21 03:27:10','2025-12-21 03:25:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('345','33','Red','5','red','2025-12-21 03:47:10','2025-12-21 03:19:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('346','33','Blue','6','blue','2025-12-21 03:02:10','2025-12-21 03:36:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('347','33','Black','7','bed','2025-12-21 03:16:10','2025-12-21 03:15:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('348','33','Pink','8','pink','2025-12-21 03:25:10','2025-12-21 03:43:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('349','34','Red','5','red','2025-12-21 03:45:10','2025-12-21 03:09:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('350','34','Blue','6','blue','2025-12-21 03:32:10','2025-12-21 03:01:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('351','34','Black','7','bed','2025-12-21 03:21:10','2025-12-21 03:14:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('352','34','Pink','8','pink','2025-12-21 03:07:10','2025-12-21 03:53:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('353','35','Red','5','red','2025-12-21 03:01:10','2025-12-21 03:54:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('354','35','Blue','6','blue','2025-12-21 03:09:10','2025-12-21 03:51:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('355','35','Black','7','bed','2025-12-21 03:02:10','2025-12-21 03:53:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('356','35','Pink','8','pink','2025-12-21 03:19:10','2025-12-21 03:08:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('357','36','Red','5','red','2025-12-21 03:27:10','2025-12-21 03:19:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('358','36','Blue','6','blue','2025-12-21 03:26:10','2025-12-21 03:36:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('359','36','Black','7','bed','2025-12-21 03:47:10','2025-12-21 03:38:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('360','36','Pink','8','pink','2025-12-21 03:14:10','2025-12-21 03:12:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('361','37','Red','5','red','2025-12-21 03:20:10','2025-12-21 03:35:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('362','37','Blue','6','blue','2025-12-21 03:53:10','2025-12-21 03:51:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('363','37','Black','7','bed','2025-12-21 03:49:10','2025-12-21 03:37:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('364','37','Pink','8','pink','2025-12-21 03:12:10','2025-12-21 03:04:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('365','38','Red','5','red','2025-12-21 03:28:10','2025-12-21 03:06:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('366','38','Blue','6','blue','2025-12-21 03:22:10','2025-12-21 03:16:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('367','38','Black','7','bed','2025-12-21 03:21:10','2025-12-21 03:05:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('368','38','Pink','8','pink','2025-12-21 03:07:10','2025-12-21 03:34:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('401','47','Red','5','red','2025-12-21 03:11:10','2025-12-21 03:49:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('402','47','Blue','6','blue','2025-12-21 03:49:10','2025-12-21 03:24:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('403','47','Black','7','bed','2025-12-21 03:39:10','2025-12-21 03:48:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('404','47','Pink','8','pink','2025-12-21 03:13:10','2025-12-21 03:01:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('405','48','Red','5','red','2025-12-21 03:13:10','2025-12-21 03:49:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('406','48','Blue','6','blue','2025-12-21 03:15:10','2025-12-21 03:25:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('407','48','Black','7','bed','2025-12-21 03:31:10','2025-12-21 03:28:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('408','48','Pink','8','pink','2025-12-21 03:44:10','2025-12-21 03:53:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('409','49','Red','5','red','2025-12-21 03:47:10','2025-12-21 03:53:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('410','49','Blue','6','blue','2025-12-21 03:52:10','2025-12-21 03:20:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('411','49','Black','7','bed','2025-12-21 03:32:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('412','49','Pink','8','pink','2025-12-21 03:30:10','2025-12-21 03:09:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('413','50','Red','5','red','2025-12-21 03:39:10','2025-12-21 03:02:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('414','50','Blue','6','blue','2025-12-21 03:26:10','2025-12-21 03:27:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('415','50','Black','7','bed','2025-12-21 03:08:10','2025-12-21 03:08:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('416','50','Pink','8','pink','2025-12-21 03:50:10','2025-12-21 03:37:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('417','51','Red','5','red','2025-12-21 03:44:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('418','51','Blue','6','blue','2025-12-21 03:19:10','2025-12-21 03:53:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('419','51','Black','7','bed','2025-12-21 03:18:10','2025-12-21 03:48:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('420','51','Pink','8','pink','2025-12-21 03:17:10','2025-12-21 03:25:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('421','52','Red','5','red','2025-12-21 03:34:10','2025-12-21 03:05:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('422','52','Blue','6','blue','2025-12-21 03:21:10','2025-12-21 03:38:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('423','52','Black','7','bed','2025-12-21 03:13:10','2025-12-21 03:00:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('424','52','Pink','8','pink','2025-12-21 03:40:10','2025-12-21 03:45:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('425','53','Red','5','red','2025-12-21 03:51:10','2025-12-21 03:48:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('426','53','Blue','6','blue','2025-12-21 03:02:10','2025-12-21 03:43:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('427','53','Black','7','bed','2025-12-21 03:13:10','2025-12-21 03:39:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('428','53','Pink','8','pink','2025-12-21 03:32:10','2025-12-21 03:51:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('429','54','Red','5','red','2025-12-21 03:38:10','2025-12-21 03:51:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('430','54','Blue','6','blue','2025-12-21 03:30:10','2025-12-21 03:51:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('431','54','Black','7','bed','2025-12-21 03:42:10','2025-12-21 03:44:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('432','54','Pink','8','pink','2025-12-21 03:06:10','2025-12-21 03:40:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1082','56','M','5','m','2025-12-21 03:26:10','2025-12-21 03:26:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1083','57','M','5','m','2025-12-21 03:44:10','2025-12-21 03:51:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1084','58','M','5','m','2025-12-21 03:35:10','2025-12-21 03:51:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1085','59','M','5','m','2025-12-21 03:17:10','2025-12-21 03:05:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1086','60','M','5','m','2025-12-21 03:46:10','2025-12-21 03:21:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1087','61','M','5','m','2025-12-21 03:47:10','2025-12-21 03:48:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1088','62','M','5','m','2025-12-21 03:00:10','2025-12-21 03:21:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1089','63','M','5','m','2025-12-21 03:22:10','2025-12-21 03:27:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1090','64','M','5','m','2025-12-21 03:07:10','2025-12-21 03:12:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1091','65','M','5','m','2025-12-21 03:12:10','2025-12-21 03:32:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1092','66','M','5','m','2025-12-21 03:12:10','2025-12-21 03:19:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1093','67','M','5','m','2025-12-21 03:47:10','2025-12-21 03:03:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1094','68','M','5','m','2025-12-21 03:26:10','2025-12-21 03:45:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1095','69','M','5','m','2025-12-21 03:30:10','2025-12-21 03:34:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1096','70','M','5','m','2025-12-21 03:15:10','2025-12-21 03:02:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1097','71','M','5','m','2025-12-21 03:16:10','2025-12-21 03:38:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1098','72','M','5','m','2025-12-21 03:46:10','2025-12-21 03:03:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1103','77','M','5','m','2025-12-21 03:36:10','2025-12-21 03:15:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1106','80','M','5','m','2025-12-21 03:08:10','2025-12-21 03:30:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1107','81','M','5','m','2025-12-21 03:09:10','2025-12-21 03:53:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1108','82','M','5','m','2025-12-21 03:37:10','2025-12-21 03:29:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1109','83','M','5','m','2025-12-21 03:29:10','2025-12-21 03:31:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1110','84','M','5','m','2025-12-21 03:28:10','2025-12-21 03:35:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1111','85','M','5','m','2025-12-21 03:41:10','2025-12-21 03:16:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1112','86','M','5','m','2025-12-21 03:10:10','2025-12-21 03:25:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1113','87','M','5','m','2025-12-21 03:06:10','2025-12-21 03:53:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1114','88','M','5','m','2025-12-21 03:15:10','2025-12-21 03:23:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1115','89','M','5','m','2025-12-21 03:27:10','2025-12-21 03:13:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1116','90','M','5','m','2025-12-21 03:53:10','2025-12-21 03:27:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1117','91','M','5','m','2025-12-21 03:32:10','2025-12-21 03:11:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1118','92','M','5','m','2025-12-21 03:19:10','2025-12-21 03:33:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1119','101','M','5','m','2025-12-21 03:26:10','2025-12-21 03:11:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1120','102','M','5','m','2025-12-21 03:27:10','2025-12-21 03:06:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1121','103','M','5','m','2025-12-21 03:26:10','2025-12-21 03:09:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1122','104','M','5','m','2025-12-21 03:35:10','2025-12-21 03:23:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1123','105','M','5','m','2025-12-21 03:43:10','2025-12-21 03:03:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1124','106','M','5','m','2025-12-21 03:29:10','2025-12-21 03:43:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1125','107','M','5','m','2025-12-21 03:04:10','2025-12-21 03:26:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1126','108','M','5','m','2025-12-21 03:13:10','2025-12-21 03:10:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1128','56','L','6','L','2025-12-21 03:11:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1129','57','L','6','L','2025-12-21 03:14:10','2025-12-21 03:36:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1130','58','L','6','L','2025-12-21 03:43:10','2025-12-21 03:54:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1131','59','L','6','L','2025-12-21 03:24:10','2025-12-21 03:03:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1132','60','L','6','L','2025-12-21 03:27:10','2025-12-21 03:21:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1133','61','L','6','L','2025-12-21 03:11:10','2025-12-21 03:10:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1134','62','L','6','L','2025-12-21 03:49:10','2025-12-21 03:39:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1135','63','L','6','L','2025-12-21 03:04:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1136','64','L','6','L','2025-12-21 03:04:10','2025-12-21 03:25:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1137','65','L','6','L','2025-12-21 03:30:10','2025-12-21 03:43:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1138','66','L','6','L','2025-12-21 03:29:10','2025-12-21 03:42:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1139','67','L','6','L','2025-12-21 03:03:10','2025-12-21 03:30:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1140','68','L','6','L','2025-12-21 03:48:10','2025-12-21 03:41:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1141','69','L','6','L','2025-12-21 03:09:10','2025-12-21 03:27:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1142','70','L','6','L','2025-12-21 03:54:10','2025-12-21 03:39:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1143','71','L','6','L','2025-12-21 03:16:10','2025-12-21 03:18:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1144','72','L','6','L','2025-12-21 03:03:10','2025-12-21 03:26:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1149','77','L','6','L','2025-12-21 03:32:10','2025-12-21 03:03:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1152','80','L','6','L','2025-12-21 03:19:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1153','81','L','6','L','2025-12-21 03:19:10','2025-12-21 03:14:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1154','82','L','6','L','2025-12-21 03:44:10','2025-12-21 03:32:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1155','83','L','6','L','2025-12-21 03:13:10','2025-12-21 03:08:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1156','84','L','6','L','2025-12-21 03:49:10','2025-12-21 03:49:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1157','85','L','6','L','2025-12-21 03:34:10','2025-12-21 03:49:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1158','86','L','6','L','2025-12-21 03:35:10','2025-12-21 03:45:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1159','87','L','6','L','2025-12-21 03:08:10','2025-12-21 03:01:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1160','88','L','6','L','2025-12-21 03:20:10','2025-12-21 03:34:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1161','89','L','6','L','2025-12-21 03:36:10','2025-12-21 03:30:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1162','90','L','6','L','2025-12-21 03:34:10','2025-12-21 03:05:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1163','91','L','6','L','2025-12-21 03:00:10','2025-12-21 03:39:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1164','92','L','6','L','2025-12-21 03:20:10','2025-12-21 03:43:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1165','101','L','6','L','2025-12-21 03:33:10','2025-12-21 03:19:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1166','102','L','6','L','2025-12-21 03:51:10','2025-12-21 03:34:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1167','103','L','6','L','2025-12-21 03:26:10','2025-12-21 03:06:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1168','104','L','6','L','2025-12-21 03:50:10','2025-12-21 03:07:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1169','105','L','6','L','2025-12-21 03:13:10','2025-12-21 03:45:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1170','106','L','6','L','2025-12-21 03:09:10','2025-12-21 03:52:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1171','107','L','6','L','2025-12-21 03:24:10','2025-12-21 03:54:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1172','108','L','6','L','2025-12-21 03:21:10','2025-12-21 03:12:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1174','56','XL','7','xl','2025-12-21 03:08:10','2025-12-21 03:47:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1175','57','XL','7','xl','2025-12-21 03:12:10','2025-12-21 03:34:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1176','58','XL','7','xl','2025-12-21 03:10:10','2025-12-21 03:26:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1177','59','XL','7','xl','2025-12-21 03:40:10','2025-12-21 03:40:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1178','60','XL','7','xl','2025-12-21 03:46:10','2025-12-21 03:04:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1179','61','XL','7','xl','2025-12-21 03:33:10','2025-12-21 03:53:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1180','62','XL','7','xl','2025-12-21 03:10:10','2025-12-21 03:08:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1181','63','XL','7','xl','2025-12-21 03:17:10','2025-12-21 03:18:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1182','64','XL','7','xl','2025-12-21 03:37:10','2025-12-21 03:36:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1183','65','XL','7','xl','2025-12-21 03:47:10','2025-12-21 03:18:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1184','66','XL','7','xl','2025-12-21 03:19:10','2025-12-21 03:09:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1185','67','XL','7','xl','2025-12-21 03:43:10','2025-12-21 03:26:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1186','68','XL','7','xl','2025-12-21 03:45:10','2025-12-21 03:35:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1187','69','XL','7','xl','2025-12-21 03:46:10','2025-12-21 03:53:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1188','70','XL','7','xl','2025-12-21 03:21:10','2025-12-21 03:28:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1189','71','XL','7','xl','2025-12-21 03:15:10','2025-12-21 03:36:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1190','72','XL','7','xl','2025-12-21 03:51:10','2025-12-21 03:32:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1195','77','XL','7','xl','2025-12-21 03:10:10','2025-12-21 03:24:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1198','80','XL','7','xl','2025-12-21 03:10:10','2025-12-21 03:48:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1199','81','XL','7','xl','2025-12-21 03:50:10','2025-12-21 03:21:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1200','82','XL','7','xl','2025-12-21 03:09:10','2025-12-21 03:41:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1201','83','XL','7','xl','2025-12-21 03:43:10','2025-12-21 03:54:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1202','84','XL','7','xl','2025-12-21 03:29:10','2025-12-21 03:41:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1203','85','XL','7','xl','2025-12-21 03:46:10','2025-12-21 03:28:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1204','86','XL','7','xl','2025-12-21 03:29:10','2025-12-21 03:52:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1205','87','XL','7','xl','2025-12-21 03:17:10','2025-12-21 03:14:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1206','88','XL','7','xl','2025-12-21 03:43:10','2025-12-21 03:33:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1207','89','XL','7','xl','2025-12-21 03:39:10','2025-12-21 03:48:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1208','90','XL','7','xl','2025-12-21 03:20:10','2025-12-21 03:05:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1209','91','XL','7','xl','2025-12-21 03:52:10','2025-12-21 03:28:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1210','92','XL','7','xl','2025-12-21 03:20:10','2025-12-21 03:34:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1211','101','XL','7','xl','2025-12-21 03:21:10','2025-12-21 03:34:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1212','102','XL','7','xl','2025-12-21 03:47:10','2025-12-21 03:07:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1213','103','XL','7','xl','2025-12-21 03:46:10','2025-12-21 03:36:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1214','104','XL','7','xl','2025-12-21 03:23:10','2025-12-21 03:48:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1215','105','XL','7','xl','2025-12-21 03:04:10','2025-12-21 03:38:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1216','106','XL','7','xl','2025-12-21 03:06:10','2025-12-21 03:51:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1217','107','XL','7','xl','2025-12-21 03:17:10','2025-12-21 03:23:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1218','108','XL','7','xl','2025-12-21 03:24:10','2025-12-21 03:45:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1220','56','XXL','7','xxl','2025-12-21 03:25:10','2025-12-21 03:16:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1221','57','XXL','7','xxl','2025-12-21 03:38:10','2025-12-21 03:54:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1222','58','XXL','7','xxl','2025-12-21 03:27:10','2025-12-21 03:30:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1223','59','XXL','7','xxl','2025-12-21 03:17:10','2025-12-21 03:31:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1224','60','XXL','7','xxl','2025-12-21 03:03:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1225','61','XXL','7','xxl','2025-12-21 03:19:10','2025-12-21 03:39:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1226','62','XXL','7','xxl','2025-12-21 03:23:10','2025-12-21 03:01:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1227','63','XXL','7','xxl','2025-12-21 03:14:10','2025-12-21 03:30:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1228','64','XXL','7','xxl','2025-12-21 03:30:10','2025-12-21 03:54:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1229','65','XXL','7','xxl','2025-12-21 03:21:10','2025-12-21 03:21:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1230','66','XXL','7','xxl','2025-12-21 03:48:10','2025-12-21 03:44:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1231','67','XXL','7','xxl','2025-12-21 03:43:10','2025-12-21 03:14:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1232','68','XXL','7','xxl','2025-12-21 03:03:10','2025-12-21 03:43:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1233','69','XXL','7','xxl','2025-12-21 03:37:10','2025-12-21 03:19:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1234','70','XXL','7','xxl','2025-12-21 03:16:10','2025-12-21 03:19:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1235','71','XXL','7','xxl','2025-12-21 03:19:10','2025-12-21 03:45:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1236','72','XXL','7','xxl','2025-12-21 03:07:10','2025-12-21 03:08:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1241','77','XXL','7','xxl','2025-12-21 03:21:10','2025-12-21 03:24:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1244','80','XXL','7','xxl','2025-12-21 03:42:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1245','81','XXL','7','xxl','2025-12-21 03:27:10','2025-12-21 03:22:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1246','82','XXL','7','xxl','2025-12-21 03:16:10','2025-12-21 03:53:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1247','83','XXL','7','xxl','2025-12-21 03:39:10','2025-12-21 03:23:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1248','84','XXL','7','xxl','2025-12-21 03:20:10','2025-12-21 03:34:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1249','85','XXL','7','xxl','2025-12-21 03:41:10','2025-12-21 03:16:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1250','86','XXL','7','xxl','2025-12-21 03:43:10','2025-12-21 03:31:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1251','87','XXL','7','xxl','2025-12-21 03:32:10','2025-12-21 03:41:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1252','88','XXL','7','xxl','2025-12-21 03:45:10','2025-12-21 03:09:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1253','89','XXL','7','xxl','2025-12-21 03:39:10','2025-12-21 03:22:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1254','90','XXL','7','xxl','2025-12-21 03:08:10','2025-12-21 03:40:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1255','91','XXL','7','xxl','2025-12-21 03:39:10','2025-12-21 03:33:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1256','92','XXL','7','xxl','2025-12-21 03:08:10','2025-12-21 03:41:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1257','101','XXL','7','xxl','2025-12-21 03:22:10','2025-12-21 03:43:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1258','102','XXL','7','xxl','2025-12-21 03:24:10','2025-12-21 03:21:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1259','103','XXL','7','xxl','2025-12-21 03:33:10','2025-12-21 03:42:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1260','104','XXL','7','xxl','2025-12-21 03:07:10','2025-12-21 03:30:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1261','105','XXL','7','xxl','2025-12-21 03:40:10','2025-12-21 03:24:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1262','106','XXL','7','xxl','2025-12-21 03:47:10','2025-12-21 03:42:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1263','107','XXL','7','xxl','2025-12-21 03:32:10','2025-12-21 03:46:10','unlimited');

INSERT INTO attribute_options (id, attribute_id, name, price, keyword, created_at, updated_at, stock) VALUES ('1264','108','XXL','7','xxl','2025-12-21 03:37:10','2025-12-21 03:19:10','unlimited');


CREATE TABLE `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('2','523','Color','color','2025-12-21 03:03:10','2025-12-21 03:36:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('3','524','Color','color','2025-12-21 03:51:10','2025-12-21 03:37:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('4','525','Color','color','2025-12-21 03:22:10','2025-12-21 03:31:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('5','526','Color','color','2025-12-21 03:10:10','2025-12-21 03:00:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('6','527','Color','color','2025-12-21 03:25:10','2025-12-21 03:47:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('7','528','Color','color','2025-12-21 03:22:10','2025-12-21 03:10:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('8','529','Color','color','2025-12-21 03:33:10','2025-12-21 03:39:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('9','530','Color','color','2025-12-21 03:06:10','2025-12-21 03:43:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('10','531','Color','color','2025-12-21 03:09:10','2025-12-21 03:34:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('11','532','Color','color','2025-12-21 03:33:10','2025-12-21 03:49:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('12','533','Color','color','2025-12-21 03:17:10','2025-12-21 03:17:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('13','534','Color','color','2025-12-21 03:45:10','2025-12-21 03:19:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('14','535','Color','color','2025-12-21 03:49:10','2025-12-21 03:36:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('15','536','Color','color','2025-12-21 03:23:10','2025-12-21 03:08:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('16','537','Color','color','2025-12-21 03:03:10','2025-12-21 03:17:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('17','538','Color','color','2025-12-21 03:13:10','2025-12-21 03:43:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('18','539','Color','color','2025-12-21 03:12:10','2025-12-21 03:22:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('23','544','Color','color','2025-12-21 03:26:10','2025-12-21 03:23:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('26','559','Color','color','2025-12-21 03:36:10','2025-12-21 03:30:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('27','560','Color','color','2025-12-21 03:33:10','2025-12-21 03:21:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('28','561','Color','color','2025-12-21 03:47:10','2025-12-21 03:19:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('29','562','Color','color','2025-12-21 03:18:10','2025-12-21 03:22:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('30','563','Color','color','2025-12-21 03:15:10','2025-12-21 03:10:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('31','564','Color','color','2025-12-21 03:13:10','2025-12-21 03:26:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('32','565','Color','color','2025-12-21 03:01:10','2025-12-21 03:28:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('33','566','Color','color','2025-12-21 03:53:10','2025-12-21 03:09:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('34','567','Color','color','2025-12-21 03:18:10','2025-12-21 03:11:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('35','568','Color','color','2025-12-21 03:54:10','2025-12-21 03:17:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('36','569','Color','color','2025-12-21 03:24:10','2025-12-21 03:54:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('37','570','Color','color','2025-12-21 03:30:10','2025-12-21 03:41:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('38','571','Color','color','2025-12-21 03:52:10','2025-12-21 03:50:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('47','580','Color','color','2025-12-21 03:08:10','2025-12-21 03:00:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('48','581','Color','color','2025-12-21 03:37:10','2025-12-21 03:01:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('49','582','Color','color','2025-12-21 03:19:10','2025-12-21 03:11:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('50','583','Color','color','2025-12-21 03:31:10','2025-12-21 03:38:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('51','584','Color','color','2025-12-21 03:03:10','2025-12-21 03:08:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('52','585','Color','color','2025-12-21 03:01:10','2025-12-21 03:03:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('53','586','Color','color','2025-12-21 03:06:10','2025-12-21 03:37:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('54','587','Color','color','2025-12-21 03:49:10','2025-12-21 03:21:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('56','523','Size','size','2025-12-21 03:17:10','2025-12-21 03:06:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('57','524','Size','size','2025-12-21 03:30:10','2025-12-21 03:41:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('58','525','Size','size','2025-12-21 03:22:10','2025-12-21 03:48:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('59','526','Size','size','2025-12-21 03:47:10','2025-12-21 03:43:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('60','527','Size','size','2025-12-21 03:16:10','2025-12-21 03:26:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('61','528','Size','size','2025-12-21 03:00:10','2025-12-21 03:29:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('62','529','Size','size','2025-12-21 03:01:10','2025-12-21 03:00:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('63','530','Size','size','2025-12-21 03:18:10','2025-12-21 03:27:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('64','531','Size','size','2025-12-21 03:48:10','2025-12-21 03:28:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('65','532','Size','size','2025-12-21 03:24:10','2025-12-21 03:18:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('66','533','Size','size','2025-12-21 03:37:10','2025-12-21 03:26:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('67','534','Size','size','2025-12-21 03:44:10','2025-12-21 03:08:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('68','535','Size','size','2025-12-21 03:39:10','2025-12-21 03:38:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('69','536','Size','size','2025-12-21 03:04:10','2025-12-21 03:45:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('70','537','Size','size','2025-12-21 03:46:10','2025-12-21 03:45:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('71','538','Size','size','2025-12-21 03:51:10','2025-12-21 03:38:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('72','539','Size','size','2025-12-21 03:40:10','2025-12-21 03:03:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('77','544','Size','size','2025-12-21 03:22:10','2025-12-21 03:38:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('80','559','Size','size','2025-12-21 03:37:10','2025-12-21 03:10:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('81','560','Size','size','2025-12-21 03:03:10','2025-12-21 03:23:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('82','561','Size','size','2025-12-21 03:45:10','2025-12-21 03:02:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('83','562','Size','size','2025-12-21 03:54:10','2025-12-21 03:53:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('84','563','Size','size','2025-12-21 03:32:10','2025-12-21 03:47:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('85','564','Size','size','2025-12-21 03:28:10','2025-12-21 03:29:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('86','565','Size','size','2025-12-21 03:07:10','2025-12-21 03:06:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('87','566','Size','size','2025-12-21 03:14:10','2025-12-21 03:47:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('88','567','Size','size','2025-12-21 03:45:10','2025-12-21 03:18:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('89','568','Size','size','2025-12-21 03:11:10','2025-12-21 03:00:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('90','569','Size','size','2025-12-21 03:29:10','2025-12-21 03:11:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('91','570','Size','size','2025-12-21 03:18:10','2025-12-21 03:25:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('92','571','Size','size','2025-12-21 03:46:10','2025-12-21 03:05:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('101','580','Size','size','2025-12-21 03:51:10','2025-12-21 03:18:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('102','581','Size','size','2025-12-21 03:18:10','2025-12-21 03:44:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('103','582','Size','size','2025-12-21 03:06:10','2025-12-21 03:54:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('104','583','Size','size','2025-12-21 03:08:10','2025-12-21 03:46:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('105','584','Size','size','2025-12-21 03:26:10','2025-12-21 03:40:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('106','585','Size','size','2025-12-21 03:10:10','2025-12-21 03:37:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('107','586','Size','size','2025-12-21 03:41:10','2025-12-21 03:30:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('108','587','Size','size','2025-12-21 03:16:10','2025-12-21 03:20:10');

INSERT INTO attributes (id, item_id, name, keyword, created_at, updated_at) VALUES ('110','587','test','test','2025-12-21 03:11:10','2025-12-21 03:54:10');


CREATE TABLE `banners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO banners (id, title, subtitle, url, image, type, status, created_at, updated_at) VALUES ('1','Shein Womens Clothing 2021 Summer Fashion Design Clothing Manufacturer Lantern Long Sleeve','45% OFF','#','163172091306.jpg',' Banner 1','1','2025-12-21 03:33:10','2025-12-21 03:32:10');

INSERT INTO banners (id, title, subtitle, url, image, type, status, created_at, updated_at) VALUES ('2','Casual Minimalist Tie Waist women clothing Denim Halter Midi Pencil Sling Dresses','70% OFF','#','163172090805.jpg','Banner 2','1','2025-12-21 03:43:10','2025-12-21 03:31:10');

INSERT INTO banners (id, title, subtitle, url, image, type, status, created_at, updated_at) VALUES ('3','Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses','60% OFF','#','163172090304.jpg','Banner 3','1','2025-12-21 03:15:10','2025-12-21 03:10:10');

INSERT INTO banners (id, title, subtitle, url, image, type, status, created_at, updated_at) VALUES ('5','2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses','50% OFF','#','163172089704.jpg','Banner 4','1','2025-12-21 03:48:10','2025-12-21 03:51:10');


CREATE TABLE `bcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO bcategories (id, name, slug, status, created_at, updated_at) VALUES ('1','Beauty','Beauty','1','2025-12-21 03:22:10','2025-12-21 03:13:10');

INSERT INTO bcategories (id, name, slug, status, created_at, updated_at) VALUES ('2','Fashion','fashion','1','2025-12-21 03:45:10','2025-12-21 03:42:10');


CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_popular` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO brands (id, name, slug, photo, status, is_popular, created_at, updated_at) VALUES ('7','Adidas','Adidas','1632336527add.png','1','1','2025-12-21 03:43:10','2025-12-21 03:32:10');

INSERT INTO brands (id, name, slug, photo, status, is_popular, created_at, updated_at) VALUES ('8','Lavie','Lavie','1632336517leves.jpg','1','1','2025-12-21 03:35:10','2025-12-21 03:19:10');

INSERT INTO brands (id, name, slug, photo, status, is_popular, created_at, updated_at) VALUES ('9','Skyart','Skyart','1632336538skyart.png','1','1','2025-12-21 03:29:10','2025-12-21 03:32:10');

INSERT INTO brands (id, name, slug, photo, status, is_popular, created_at, updated_at) VALUES ('10','Nike','Nike','1632336489nike.jpg','1','1','2025-12-21 03:08:10','2025-12-21 03:52:10');

INSERT INTO brands (id, name, slug, photo, status, is_popular, created_at, updated_at) VALUES ('11','Samsung','Samsung','1632336479samsung.png','1','1','2025-12-21 03:36:10','2025-12-21 03:37:10');

INSERT INTO brands (id, name, slug, photo, status, is_popular, created_at, updated_at) VALUES ('14','Yamaha','Yamaha','1632336551yamaha.png','1','1','2025-12-21 03:21:10','2025-12-21 03:33:10');

INSERT INTO brands (id, name, slug, photo, status, is_popular, created_at, updated_at) VALUES ('15','H.M','HM','1632336576hm.jpg','1','1','2025-12-21 03:17:10','2025-12-21 03:03:10');

INSERT INTO brands (id, name, slug, photo, status, is_popular, created_at, updated_at) VALUES ('16','Loreal','Loreal','1632336591lora.jpg','1','1','2025-12-21 03:45:10','2025-12-21 03:31:10');

INSERT INTO brands (id, name, slug, photo, status, is_popular, created_at, updated_at) VALUES ('19','Ascis','Ascis','1632336642ascis.jpg','1','1','2025-12-21 03:10:10','2025-12-21 03:18:10');


CREATE TABLE `campaign_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_feature` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO campaign_items (id, item_id, status, is_feature, created_at, updated_at) VALUES ('33','559','1','1','2025-12-21 03:49:10','2025-12-21 03:41:10');

INSERT INTO campaign_items (id, item_id, status, is_feature, created_at, updated_at) VALUES ('34','543','1','1','2025-12-21 03:00:10','2025-12-21 03:46:10');

INSERT INTO campaign_items (id, item_id, status, is_feature, created_at, updated_at) VALUES ('35','545','1','1','2025-12-21 03:52:10','2025-12-21 03:37:10');

INSERT INTO campaign_items (id, item_id, status, is_feature, created_at, updated_at) VALUES ('36','538','1','1','2025-12-21 03:53:10','2025-12-21 03:38:10');

INSERT INTO campaign_items (id, item_id, status, is_feature, created_at, updated_at) VALUES ('37','534','1','1','2025-12-21 03:15:10','2025-12-21 03:13:10');

INSERT INTO campaign_items (id, item_id, status, is_feature, created_at, updated_at) VALUES ('38','535','1','1','2025-12-21 03:15:10','2025-12-21 03:48:10');

INSERT INTO campaign_items (id, item_id, status, is_feature, created_at, updated_at) VALUES ('39','540','1','1','2025-12-21 03:03:10','2025-12-21 03:22:10');

INSERT INTO campaign_items (id, item_id, status, is_feature, created_at, updated_at) VALUES ('40','563','1','1','2025-12-21 03:46:10','2025-12-21 03:48:10');


CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_feature` tinyint(4) DEFAULT 1,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO categories (id, name, slug, photo, meta_keywords, meta_descriptions, status, is_feature, serial, created_at, updated_at) VALUES ('18','Women Clothing','Women-Clothing','1629616296pexels-juan-mendez-1536619.jpg','[{"value":"women"}]','Women Clothing','1','1','0','2025-12-21 03:06:10','2025-12-21 03:05:10');

INSERT INTO categories (id, name, slug, photo, meta_keywords, meta_descriptions, status, is_feature, serial, created_at, updated_at) VALUES ('19','Men Clothing','men-clothing','1629616281pexels-moose-photos-1036627.jpg','[{"value":"men"}]','men','1','1','1','2025-12-21 03:51:10','2025-12-21 03:24:10');

INSERT INTO categories (id, name, slug, photo, meta_keywords, meta_descriptions, status, is_feature, serial, created_at, updated_at) VALUES ('21','Electronics','Electronics','1629616270computer.jpg','','','1','1','1','2025-12-21 03:46:10','2025-12-21 03:18:10');

INSERT INTO categories (id, name, slug, photo, meta_keywords, meta_descriptions, status, is_feature, serial, created_at, updated_at) VALUES ('22','Beauty & Personal Care','Beauty--Personal-Care','1631023636ballll.jpg','','','1','1','5','2025-12-21 03:06:10','2025-12-21 03:53:10');

INSERT INTO categories (id, name, slug, photo, meta_keywords, meta_descriptions, status, is_feature, serial, created_at, updated_at) VALUES ('23','Vehicles & Accessories','Vehicles--Accessories','1629616254pexels-thales-silva-772393.jpg','','','1','1','4','2025-12-21 03:07:10','2025-12-21 03:08:10');

INSERT INTO categories (id, name, slug, photo, meta_keywords, meta_descriptions, status, is_feature, serial, created_at, updated_at) VALUES ('24','Sports & Entertainment','Sports--Entertainment','1629616243pexels-karolina-grabowska-4498574.jpg','','','1','1','6','2025-12-21 03:05:10','2025-12-21 03:37:10');

INSERT INTO categories (id, name, slug, photo, meta_keywords, meta_descriptions, status, is_feature, serial, created_at, updated_at) VALUES ('25','Home & Garden','Home--Garden','1629616234pexels-cup-of-couple-8015784.jpg','','','1','1','6','2025-12-21 03:15:10','2025-12-21 03:00:10');

INSERT INTO categories (id, name, slug, photo, meta_keywords, meta_descriptions, status, is_feature, serial, created_at, updated_at) VALUES ('26','Medicine & Health Care','Medicine-Health-Care','OM_1744578120Ru6I75uW.jpg','','','1','1','6','2025-12-21 03:28:10','2025-12-21 03:35:10');

INSERT INTO categories (id, name, slug, photo, meta_keywords, meta_descriptions, status, is_feature, serial, created_at, updated_at) VALUES ('27','Web Themes & Templates','Web-Themes--Templates','OM_1765785848weWuEp4j.jpg','','','1','1','5','2025-12-21 03:22:10','2025-12-21 03:40:10');


CREATE TABLE `chield_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('5','Pajama Sets','Pajama-Sets','18','6','1','2025-12-21 03:37:10','2025-12-21 03:04:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('6','Women Socks & Hosiery','Women-Socks--Hosiery','18','6','1','2025-12-21 03:04:10','2025-12-21 03:39:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('7','Shapewer','Shapewer','18','6','1','2025-12-21 03:30:10','2025-12-21 03:12:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('8','Bras','Bras','18','6','1','2025-12-21 03:08:10','2025-12-21 03:14:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('9','Wedding Dresses','Wedding-Dresses','18','7','1','2025-12-21 03:29:10','2025-12-21 03:43:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('10','Prom Dresses','Prom-Dresses','18','7','1','2025-12-21 03:33:10','2025-12-21 03:39:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('11','Evening Dresses','Evening-Dresses','18','7','1','2025-12-21 03:42:10','2025-12-21 03:01:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('12','Costumes','Costumes','18','7','1','2025-12-21 03:09:10','2025-12-21 03:46:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('13','Leggings','Leggings','18','8','1','2025-12-21 03:19:10','2025-12-21 03:24:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('14','Skirt','Skirt','18','8','1','2025-12-21 03:32:10','2025-12-21 03:50:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('15','Jeans','Jeans','18','8','1','2025-12-21 03:36:10','2025-12-21 03:43:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('16','Pants & Capris','Pants--Capris','18','8','1','2025-12-21 03:21:10','2025-12-21 03:40:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('17','Jackets','Jackets','19','9','1','2025-12-21 03:39:10','2025-12-21 03:04:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('18','Sweaters','Sweaters','19','9','1','2025-12-21 03:01:10','2025-12-21 03:33:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('19','Parkas','Parkas','19','9','1','2025-12-21 03:20:10','2025-12-21 03:28:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('20','Down Jackets','Down-Jackets','19','9','1','2025-12-21 03:46:10','2025-12-21 03:54:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('21','Suits & Blazers','Suits--Blazers','19','9','1','2025-12-21 03:07:10','2025-12-21 03:22:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('22','Boxers','Boxers','19','17','1','2025-12-21 03:25:10','2025-12-21 03:40:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('23','Briefs','Briefs','19','17','1','2025-12-21 03:31:10','2025-12-21 03:36:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('24','Long Johns','Long-Johns','19','17','1','2025-12-21 03:03:10','2025-12-21 03:46:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('25','Sleep & Lounge','Sleep--Lounge','19','17','1','2025-12-21 03:42:10','2025-12-21 03:37:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('26','Pajama Sets','Pajama-Sets','19','17','1','2025-12-21 03:11:10','2025-12-21 03:19:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('27','Cellphones','Cellphones','21','12','1','2025-12-21 03:51:10','2025-12-21 03:41:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('28','iPhones','iPhones','21','12','1','2025-12-21 03:31:10','2025-12-21 03:48:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('29','Android Phone','Android-Phone','21','12','1','2025-12-21 03:43:10','2025-12-21 03:23:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('30','Phone Bags & Cases','Phone-Bags--Cases','21','13','1','2025-12-21 03:40:10','2025-12-21 03:22:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('31','Mobile Phone Cables','Mobile-Phone-Cables','21','13','1','2025-12-21 03:05:10','2025-12-21 03:00:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('32','Power Bank','Power-Bank','21','13','1','2025-12-21 03:01:10','2025-12-21 03:41:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('33','Screen Protectors','Screen-Protectors','21','13','1','2025-12-21 03:23:10','2025-12-21 03:41:10');

INSERT INTO chield_categories (id, name, slug, category_id, subcategory_id, status, created_at, updated_at) VALUES ('34','Shirt','Shirt','19','9','1','2025-12-21 03:05:10','2025-12-21 03:12:10');


CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO countries (id, name, created_at, updated_at) VALUES ('1','Afghanistan','2025-12-21 03:42:10','2025-12-21 03:26:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('2','Albania','2025-12-21 03:07:10','2025-12-21 03:49:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('3','Algeria','2025-12-21 03:10:10','2025-12-21 03:00:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('4','American Samoa','2025-12-21 03:22:10','2025-12-21 03:49:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('5','Andorra','2025-12-21 03:13:10','2025-12-21 03:09:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('6','Angola','2025-12-21 03:33:10','2025-12-21 03:42:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('7','Anguilla','2025-12-21 03:43:10','2025-12-21 03:35:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('8','Antarctica','2025-12-21 03:28:10','2025-12-21 03:08:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('9','Antigua and Barbuda','2025-12-21 03:30:10','2025-12-21 03:25:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('10','Argentina','2025-12-21 03:13:10','2025-12-21 03:33:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('11','Armenia','2025-12-21 03:08:10','2025-12-21 03:33:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('12','Aruba','2025-12-21 03:03:10','2025-12-21 03:49:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('13','Australia','2025-12-21 03:47:10','2025-12-21 03:13:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('14','Austria','2025-12-21 03:11:10','2025-12-21 03:29:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('15','Azerbaijan','2025-12-21 03:17:10','2025-12-21 03:03:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('16','Bahamas','2025-12-21 03:54:10','2025-12-21 03:07:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('17','Bahrain','2025-12-21 03:47:10','2025-12-21 03:52:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('18','Bangladesh','2025-12-21 03:38:10','2025-12-21 03:29:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('19','Barbados','2025-12-21 03:09:10','2025-12-21 03:26:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('20','Belarus','2025-12-21 03:41:10','2025-12-21 03:31:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('21','Belgium','2025-12-21 03:47:10','2025-12-21 03:04:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('22','Belize','2025-12-21 03:42:10','2025-12-21 03:50:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('23','Benin','2025-12-21 03:04:10','2025-12-21 03:46:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('24','Bermuda','2025-12-21 03:07:10','2025-12-21 03:35:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('25','Bhutan','2025-12-21 03:40:10','2025-12-21 03:38:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('26','Bolivia','2025-12-21 03:03:10','2025-12-21 03:09:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('27','Bosnia and Herzegovina','2025-12-21 03:01:10','2025-12-21 03:16:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('28','Botswana','2025-12-21 03:17:10','2025-12-21 03:41:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('29','Bouvet Island','2025-12-21 03:42:10','2025-12-21 03:36:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('30','Brazil','2025-12-21 03:11:10','2025-12-21 03:12:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('31','British Indian Ocean Territory','2025-12-21 03:04:10','2025-12-21 03:24:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('32','Brunei Darussalam','2025-12-21 03:06:10','2025-12-21 03:36:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('33','Bulgaria','2025-12-21 03:05:10','2025-12-21 03:27:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('34','Burkina Faso','2025-12-21 03:53:10','2025-12-21 03:52:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('35','Burundi','2025-12-21 03:01:10','2025-12-21 03:24:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('36','Cambodia','2025-12-21 03:19:10','2025-12-21 03:14:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('37','Cameroon','2025-12-21 03:16:10','2025-12-21 03:40:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('38','Canada','2025-12-21 03:43:10','2025-12-21 03:54:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('39','Cape Verde','2025-12-21 03:49:10','2025-12-21 03:15:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('40','Cayman Islands','2025-12-21 03:06:10','2025-12-21 03:43:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('41','Central African Republic','2025-12-21 03:26:10','2025-12-21 03:27:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('42','Chad','2025-12-21 03:46:10','2025-12-21 03:25:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('43','Chile','2025-12-21 03:52:10','2025-12-21 03:36:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('44','China','2025-12-21 03:44:10','2025-12-21 03:03:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('45','Christmas Island','2025-12-21 03:47:10','2025-12-21 03:46:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('46','Cocos (Keeling) Islands','2025-12-21 03:10:10','2025-12-21 03:14:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('47','Colombia','2025-12-21 03:01:10','2025-12-21 03:05:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('48','Comoros','2025-12-21 03:24:10','2025-12-21 03:23:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('49','Democratic Republic of the Congo','2025-12-21 03:39:10','2025-12-21 03:22:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('50','Republic of Congo','2025-12-21 03:46:10','2025-12-21 03:40:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('51','Cook Islands','2025-12-21 03:05:10','2025-12-21 03:35:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('52','Costa Rica','2025-12-21 03:45:10','2025-12-21 03:00:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('53','Croatia (Hrvatska)','2025-12-21 03:41:10','2025-12-21 03:29:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('54','Cuba','2025-12-21 03:26:10','2025-12-21 03:00:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('55','Cyprus','2025-12-21 03:54:10','2025-12-21 03:24:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('56','Czech Republic','2025-12-21 03:35:10','2025-12-21 03:33:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('57','Denmark','2025-12-21 03:37:10','2025-12-21 03:11:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('58','Djibouti','2025-12-21 03:27:10','2025-12-21 03:04:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('59','Dominica','2025-12-21 03:14:10','2025-12-21 03:25:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('60','Dominican Republic','2025-12-21 03:35:10','2025-12-21 03:30:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('61','East Timor','2025-12-21 03:04:10','2025-12-21 03:36:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('62','Ecuador','2025-12-21 03:29:10','2025-12-21 03:19:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('63','Egypt','2025-12-21 03:07:10','2025-12-21 03:17:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('64','El Salvador','2025-12-21 03:26:10','2025-12-21 03:52:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('65','Equatorial Guinea','2025-12-21 03:31:10','2025-12-21 03:38:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('66','Eritrea','2025-12-21 03:52:10','2025-12-21 03:43:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('67','Estonia','2025-12-21 03:43:10','2025-12-21 03:16:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('68','Ethiopia','2025-12-21 03:25:10','2025-12-21 03:36:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('69','Falkland Islands (Malvinas)','2025-12-21 03:24:10','2025-12-21 03:02:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('70','Faroe Islands','2025-12-21 03:36:10','2025-12-21 03:52:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('71','Fiji','2025-12-21 03:32:10','2025-12-21 03:41:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('72','Finland','2025-12-21 03:28:10','2025-12-21 03:03:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('73','France','2025-12-21 03:38:10','2025-12-21 03:21:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('74','France, Metropolitan','2025-12-21 03:08:10','2025-12-21 03:31:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('75','French Guiana','2025-12-21 03:27:10','2025-12-21 03:35:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('76','French Polynesia','2025-12-21 03:51:10','2025-12-21 03:17:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('77','French Southern Territories','2025-12-21 03:46:10','2025-12-21 03:34:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('78','Gabon','2025-12-21 03:24:10','2025-12-21 03:48:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('79','Gambia','2025-12-21 03:12:10','2025-12-21 03:12:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('80','Georgia','2025-12-21 03:15:10','2025-12-21 03:36:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('81','Germany','2025-12-21 03:26:10','2025-12-21 03:45:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('82','Ghana','2025-12-21 03:00:10','2025-12-21 03:33:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('83','Gibraltar','2025-12-21 03:09:10','2025-12-21 03:02:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('84','Guernsey','2025-12-21 03:09:10','2025-12-21 03:02:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('85','Greece','2025-12-21 03:28:10','2025-12-21 03:40:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('86','Greenland','2025-12-21 03:48:10','2025-12-21 03:40:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('87','Grenada','2025-12-21 03:48:10','2025-12-21 03:53:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('88','Guadeloupe','2025-12-21 03:23:10','2025-12-21 03:40:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('89','Guam','2025-12-21 03:37:10','2025-12-21 03:06:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('90','Guatemala','2025-12-21 03:16:10','2025-12-21 03:00:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('91','Guinea','2025-12-21 03:42:10','2025-12-21 03:42:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('92','Guinea-Bissau','2025-12-21 03:45:10','2025-12-21 03:29:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('93','Guyana','2025-12-21 03:43:10','2025-12-21 03:26:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('94','Haiti','2025-12-21 03:11:10','2025-12-21 03:48:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('95','Heard and Mc Donald Islands','2025-12-21 03:26:10','2025-12-21 03:01:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('96','Honduras','2025-12-21 03:09:10','2025-12-21 03:51:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('97','Hong Kong','2025-12-21 03:39:10','2025-12-21 03:47:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('98','Hungary','2025-12-21 03:42:10','2025-12-21 03:41:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('99','Iceland','2025-12-21 03:17:10','2025-12-21 03:50:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('100','India','2025-12-21 03:34:10','2025-12-21 03:10:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('101','Isle of Man','2025-12-21 03:51:10','2025-12-21 03:49:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('102','Indonesia','2025-12-21 03:40:10','2025-12-21 03:38:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('103','Iran (Islamic Republic of)','2025-12-21 03:02:10','2025-12-21 03:03:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('104','Iraq','2025-12-21 03:07:10','2025-12-21 03:39:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('105','Ireland','2025-12-21 03:38:10','2025-12-21 03:36:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('106','Israel','2025-12-21 03:01:10','2025-12-21 03:05:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('107','Italy','2025-12-21 03:07:10','2025-12-21 03:52:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('108','Ivory Coast','2025-12-21 03:31:10','2025-12-21 03:50:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('109','Jersey','2025-12-21 03:06:10','2025-12-21 03:27:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('110','Jamaica','2025-12-21 03:23:10','2025-12-21 03:32:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('111','Japan','2025-12-21 03:15:10','2025-12-21 03:37:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('112','Jordan','2025-12-21 03:38:10','2025-12-21 03:06:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('113','Kazakhstan','2025-12-21 03:42:10','2025-12-21 03:05:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('114','Kenya','2025-12-21 03:53:10','2025-12-21 03:37:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('115','Kiribati','2025-12-21 03:47:10','2025-12-21 03:24:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('116','Korea, Democratic People\'s Republic of','2025-12-21 03:15:10','2025-12-21 03:11:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('118','Kosovo','2025-12-21 03:31:10','2025-12-21 03:17:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('119','Kuwait','2025-12-21 03:30:10','2025-12-21 03:48:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('120','Kyrgyzstan','2025-12-21 03:21:10','2025-12-21 03:02:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('121','Lao People\'s Democratic Republic','2025-12-21 03:31:10','2025-12-21 03:13:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('122','Latvia','2025-12-21 03:12:10','2025-12-21 03:40:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('123','Lebanon','2025-12-21 03:45:10','2025-12-21 03:35:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('124','Lesotho','2025-12-21 03:38:10','2025-12-21 03:09:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('125','Liberia','2025-12-21 03:30:10','2025-12-21 03:50:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('126','Libyan Arab Jamahiriya','2025-12-21 03:10:10','2025-12-21 03:30:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('127','Liechtenstein','2025-12-21 03:05:10','2025-12-21 03:37:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('128','Lithuania','2025-12-21 03:37:10','2025-12-21 03:05:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('129','Luxembourg','2025-12-21 03:19:10','2025-12-21 03:24:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('130','Macau','2025-12-21 03:13:10','2025-12-21 03:37:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('131','North Macedonia','2025-12-21 03:26:10','2025-12-21 03:52:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('132','Madagascar','2025-12-21 03:10:10','2025-12-21 03:20:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('133','Malawi','2025-12-21 03:43:10','2025-12-21 03:16:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('134','Malaysia','2025-12-21 03:31:10','2025-12-21 03:27:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('135','Maldives','2025-12-21 03:04:10','2025-12-21 03:05:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('136','Mali','2025-12-21 03:22:10','2025-12-21 03:27:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('137','Malta','2025-12-21 03:16:10','2025-12-21 03:33:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('138','Marshall Islands','2025-12-21 03:52:10','2025-12-21 03:53:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('139','Martinique','2025-12-21 03:19:10','2025-12-21 03:12:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('140','Mauritania','2025-12-21 03:18:10','2025-12-21 03:49:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('141','Mauritius','2025-12-21 03:17:10','2025-12-21 03:30:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('142','Mayotte','2025-12-21 03:28:10','2025-12-21 03:42:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('143','Mexico','2025-12-21 03:10:10','2025-12-21 03:24:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('144','Micronesia, Federated States of','2025-12-21 03:49:10','2025-12-21 03:43:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('145','Moldova, Republic of','2025-12-21 03:25:10','2025-12-21 03:18:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('146','Monaco','2025-12-21 03:34:10','2025-12-21 03:29:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('147','Mongolia','2025-12-21 03:16:10','2025-12-21 03:20:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('148','Montenegro','2025-12-21 03:34:10','2025-12-21 03:38:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('149','Montserrat','2025-12-21 03:53:10','2025-12-21 03:46:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('150','Morocco','2025-12-21 03:38:10','2025-12-21 03:17:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('151','Mozambique','2025-12-21 03:31:10','2025-12-21 03:47:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('152','Myanmar','2025-12-21 03:36:10','2025-12-21 03:30:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('153','Namibia','2025-12-21 03:32:10','2025-12-21 03:31:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('154','Nauru','2025-12-21 03:27:10','2025-12-21 03:12:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('155','Nepal','2025-12-21 03:04:10','2025-12-21 03:28:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('156','Netherlands','2025-12-21 03:08:10','2025-12-21 03:51:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('157','Netherlands Antilles','2025-12-21 03:26:10','2025-12-21 03:49:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('158','New Caledonia','2025-12-21 03:22:10','2025-12-21 03:19:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('159','New Zealand','2025-12-21 03:28:10','2025-12-21 03:32:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('160','Nicaragua','2025-12-21 03:33:10','2025-12-21 03:15:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('161','Niger','2025-12-21 03:01:10','2025-12-21 03:26:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('162','Nigeria','2025-12-21 03:54:10','2025-12-21 03:42:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('163','Niue','2025-12-21 03:00:10','2025-12-21 03:38:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('164','Norfolk Island','2025-12-21 03:13:10','2025-12-21 03:28:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('165','Northern Mariana Islands','2025-12-21 03:11:10','2025-12-21 03:53:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('166','Norway','2025-12-21 03:22:10','2025-12-21 03:08:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('167','Oman','2025-12-21 03:47:10','2025-12-21 03:43:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('168','Pakistan','2025-12-21 03:08:10','2025-12-21 03:27:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('169','Palau','2025-12-21 03:17:10','2025-12-21 03:24:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('170','Palestine','2025-12-21 03:36:10','2025-12-21 03:38:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('171','Panama','2025-12-21 03:05:10','2025-12-21 03:17:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('172','Papua New Guinea','2025-12-21 03:04:10','2025-12-21 03:21:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('173','Paraguay','2025-12-21 03:51:10','2025-12-21 03:28:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('174','Peru','2025-12-21 03:21:10','2025-12-21 03:27:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('175','Philippines','2025-12-21 03:13:10','2025-12-21 03:09:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('176','Pitcairn','2025-12-21 03:21:10','2025-12-21 03:34:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('177','Poland','2025-12-21 03:24:10','2025-12-21 03:21:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('178','Portugal','2025-12-21 03:21:10','2025-12-21 03:45:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('179','Puerto Rico','2025-12-21 03:52:10','2025-12-21 03:52:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('180','Qatar','2025-12-21 03:16:10','2025-12-21 03:23:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('181','Reunion','2025-12-21 03:53:10','2025-12-21 03:09:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('182','Romania','2025-12-21 03:13:10','2025-12-21 03:42:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('183','Russian Federation','2025-12-21 03:00:10','2025-12-21 03:45:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('184','Rwanda','2025-12-21 03:35:10','2025-12-21 03:06:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('185','Saint Kitts and Nevis','2025-12-21 03:41:10','2025-12-21 03:07:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('186','Saint Lucia','2025-12-21 03:26:10','2025-12-21 03:47:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('187','Saint Vincent and the Grenadines','2025-12-21 03:06:10','2025-12-21 03:06:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('188','Samoa','2025-12-21 03:41:10','2025-12-21 03:03:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('189','San Marino','2025-12-21 03:50:10','2025-12-21 03:05:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('190','Sao Tome and Principe','2025-12-21 03:46:10','2025-12-21 03:21:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('191','Saudi Arabia','2025-12-21 03:13:10','2025-12-21 03:38:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('192','Senegal','2025-12-21 03:53:10','2025-12-21 03:16:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('193','Serbia','2025-12-21 03:13:10','2025-12-21 03:08:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('194','Seychelles','2025-12-21 03:45:10','2025-12-21 03:51:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('195','Sierra Leone','2025-12-21 03:11:10','2025-12-21 03:29:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('196','Singapore','2025-12-21 03:03:10','2025-12-21 03:41:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('197','Slovakia','2025-12-21 03:42:10','2025-12-21 03:40:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('198','Slovenia','2025-12-21 03:19:10','2025-12-21 03:15:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('199','Solomon Islands','2025-12-21 03:29:10','2025-12-21 03:25:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('200','Somalia','2025-12-21 03:44:10','2025-12-21 03:19:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('201','South Africa','2025-12-21 03:23:10','2025-12-21 03:07:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('202','South Georgia South Sandwich Islands','2025-12-21 03:01:10','2025-12-21 03:08:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('203','South Sudan','2025-12-21 03:19:10','2025-12-21 03:17:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('204','Spain','2025-12-21 03:46:10','2025-12-21 03:04:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('205','Sri Lanka','2025-12-21 03:04:10','2025-12-21 03:40:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('206','St. Helena','2025-12-21 03:21:10','2025-12-21 03:24:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('207','St. Pierre and Miquelon','2025-12-21 03:09:10','2025-12-21 03:08:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('208','Sudan','2025-12-21 03:27:10','2025-12-21 03:48:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('209','Suriname','2025-12-21 03:49:10','2025-12-21 03:53:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('210','Svalbard and Jan Mayen Islands','2025-12-21 03:28:10','2025-12-21 03:47:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('211','Swaziland','2025-12-21 03:45:10','2025-12-21 03:43:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('212','Sweden','2025-12-21 03:37:10','2025-12-21 03:53:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('213','Switzerland','2025-12-21 03:49:10','2025-12-21 03:45:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('214','Syrian Arab Republic','2025-12-21 03:41:10','2025-12-21 03:51:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('215','Taiwan','2025-12-21 03:10:10','2025-12-21 03:41:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('216','Tajikistan','2025-12-21 03:11:10','2025-12-21 03:49:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('217','Tanzania, United Republic of','2025-12-21 03:05:10','2025-12-21 03:39:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('218','Thailand','2025-12-21 03:33:10','2025-12-21 03:41:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('219','Togo','2025-12-21 03:21:10','2025-12-21 03:15:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('220','Tokelau','2025-12-21 03:53:10','2025-12-21 03:24:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('221','Tonga','2025-12-21 03:12:10','2025-12-21 03:13:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('222','Trinidad and Tobago','2025-12-21 03:37:10','2025-12-21 03:53:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('223','Tunisia','2025-12-21 03:03:10','2025-12-21 03:47:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('224','Turkey','2025-12-21 03:26:10','2025-12-21 03:23:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('225','Turkmenistan','2025-12-21 03:13:10','2025-12-21 03:04:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('226','Turks and Caicos Islands','2025-12-21 03:19:10','2025-12-21 03:10:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('227','Tuvalu','2025-12-21 03:38:10','2025-12-21 03:49:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('228','Uganda','2025-12-21 03:14:10','2025-12-21 03:43:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('229','Ukraine','2025-12-21 03:22:10','2025-12-21 03:44:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('230','United Arab Emirates','2025-12-21 03:39:10','2025-12-21 03:27:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('231','United Kingdom','2025-12-21 03:09:10','2025-12-21 03:03:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('232','United States','2025-12-21 03:09:10','2025-12-21 03:15:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('233','United States minor outlying islands','2025-12-21 03:53:10','2025-12-21 03:11:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('234','Uruguay','2025-12-21 03:27:10','2025-12-21 03:13:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('235','Uzbekistan','2025-12-21 03:38:10','2025-12-21 03:48:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('236','Vanuatu','2025-12-21 03:52:10','2025-12-21 03:48:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('237','Vatican City State','2025-12-21 03:44:10','2025-12-21 03:15:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('238','Venezuela','2025-12-21 03:54:10','2025-12-21 03:09:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('239','Vietnam','2025-12-21 03:00:10','2025-12-21 03:28:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('240','Virgin Islands (British)','2025-12-21 03:18:10','2025-12-21 03:10:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('241','Virgin Islands (U.S.)','2025-12-21 03:04:10','2025-12-21 03:20:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('242','Wallis and Futuna Islands','2025-12-21 03:02:10','2025-12-21 03:48:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('243','Western Sahara','2025-12-21 03:12:10','2025-12-21 03:25:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('244','Yemen','2025-12-21 03:44:10','2025-12-21 03:15:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('245','Zambia','2025-12-21 03:20:10','2025-12-21 03:34:10');

INSERT INTO countries (id, name, created_at, updated_at) VALUES ('246','Zimbabwe','2025-12-21 03:21:10','2025-12-21 03:08:10');


CREATE TABLE `curier_settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `unique_keyword` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO curier_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('1','SteadFast','{"base_url":"https:\/\/portal.packzy.com\/api\/v1","key":"ecaeypfgb8kyxurjrkemzbkwvekmr7pq","secret":"pgisrqnv4keommltozszc2ep"}','speed','OM_1765789648hwTF4feQ.svg','text','1','2025-12-15 14:42:45','2025-12-15 14:42:45');

INSERT INTO curier_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('2','Pathao','{"base_url":"https:\/\/api-hermes.pathao.com","key":"J0dN0mNaLO","secret":"G6UTczdqoMRnO6U19FYeOJLWuAsNpKCWVYvl7gu2","username":"shawonomar05@gmail.com","password":"123452@Pa","store_id":"355405"}','patho','OM_1765788581hzLB8cQT.svg','','1','2025-12-15 14:43:04','2025-12-15 14:43:04');

INSERT INTO curier_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('3','RedX','{"base_url":"https:\/\/openapi.redx.com.bd\/v1.0.0-beta","key":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMDM0NTc0IiwiaWF0IjoxNzY1OTYxOTc0LCJpc3MiOiJHZEJxMHFjbFFWcDF1eWNJell5UTRlbDZwTFZRNUFGTSIsInNob3BfaWQiOjEwMzQ1NzQsInVzZXJfaWQiOjEwNzI3NDUzfQ.59BePHu_STmvCBE1oTd3iRxlCue8RikMWR3UgOhJSQc"}','redex','OM_17657888260XcJe5lV.svg','','1','2025-12-15 14:43:39','2025-12-15 14:43:39');


CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO currencies (id, name, sign, value, is_default, created_at, updated_at) VALUES ('1','USD','$','0.0082','0','2025-12-21 03:17:10','2025-12-21 03:47:10');

INSERT INTO currencies (id, name, sign, value, is_default, created_at, updated_at) VALUES ('6','EUR','€','0.007','0','2025-12-21 03:49:10','2025-12-21 03:22:10');

INSERT INTO currencies (id, name, sign, value, is_default, created_at, updated_at) VALUES ('7','INR','₹','0.74','0','2025-12-21 03:32:10','2025-12-21 03:14:10');

INSERT INTO currencies (id, name, sign, value, is_default, created_at, updated_at) VALUES ('8','BDT','৳','1','1','2025-12-21 03:54:10','2025-12-21 03:39:10');

INSERT INTO currencies (id, name, sign, value, is_default, created_at, updated_at) VALUES ('9','NGN','₦','11.89','0','2025-12-21 03:12:10','2025-12-21 03:08:10');


CREATE TABLE `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO email_templates (id, type, subject, body, created_at, updated_at) VALUES ('1','Order','Your Have Successfully Placed The Order','<!--
* This email was built using Tabular.
* For more information, visit https://www.techorbitit.com
-->
<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml"
    xmlns:o="urn:schemas-microsoft-com:office:office" lang="en">

<head>
    <title></title>
    <meta charset="UTF-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!--[if !mso]>-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!--<![endif]-->
    <meta name="x-apple-disable-message-reformatting" content="" />
    <meta content="target-densitydpi=device-dpi" name="viewport" />
    <meta content="true" name="HandheldFriendly" />
    <meta content="width=device-width" name="viewport" />
    <meta name="format-detection" content="telephone=no, date=no, address=no, email=no, url=no" />
    <style type="text/css">
        table {
            border-collapse: separate;
            table-layout: fixed;
            mso-table-lspace: 0pt;
            mso-table-rspace: 0pt
        }

        table td {
            border-collapse: collapse
        }

        .ExternalClass {
            width: 100%
        }

        .ExternalClass,
        .ExternalClass p,
        .ExternalClass span,
        .ExternalClass font,
        .ExternalClass td,
        .ExternalClass div {
            line-height: 100%
        }

        body,
        a,
        li,
        p,
        h1,
        h2,
        h3 {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        html {
            -webkit-text-size-adjust: none !important
        }

        body {
            min-width: 100%;
            Margin: 0px;
            padding: 0px;
        }

        body,
        #innerTable {
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale
        }

        #innerTable img+div {
            display: none;
            display: none !important
        }

        img {
            Margin: 0;
            padding: 0;
            -ms-interpolation-mode: bicubic
        }

        h1,
        h2,
        h3,
        p,
        a {
            line-height: inherit;
            overflow-wrap: normal;
            white-space: normal;
            word-break: break-word
        }

        a {
            text-decoration: none
        }

        h1,
        h2,
        h3,
        p {
            min-width: 100% !important;
            width: 100% !important;
            max-width: 100% !important;
            display: inline-block !important;
            border: 0;
            padding: 0;
            margin: 0
        }

        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: none !important;
            font-size: inherit !important;
            font-family: inherit !important;
            font-weight: inherit !important;
            line-height: inherit !important
        }

        u+#body a {
            color: inherit;
            text-decoration: none;
            font-size: inherit;
            font-family: inherit;
            font-weight: inherit;
            line-height: inherit;
        }

        a[href^="mailto"],
        a[href^="tel"],
        a[href^="sms"] {
            color: inherit;
            text-decoration: none
        }
    </style>
    <style type="text/css">
        @media (min-width: 481px) {
            .hd {
                display: none !important
            }
        }
    </style>
    <style type="text/css">
        @media (max-width: 480px) {
            .hm {
                display: none !important
            }
        }
    </style>
    <style type="text/css">
        @media (max-width: 480px) {
            .t94 {
                mso-line-height-alt: 0px !important;
                line-height: 0 !important;
                display: none !important
            }

            .t95 {
                padding-left: 30px !important;
                padding-bottom: 40px !important;
                padding-right: 30px !important
            }

            .t92 {
                width: 353px !important
            }

            .t6 {
                padding-bottom: 20px !important
            }

            .t5 {
                line-height: 28px !important;
                font-size: 26px !important;
                letter-spacing: -1.04px !important
            }

            .t145 {
                padding: 40px 30px !important
            }

            .t128 {
                padding-bottom: 36px !important
            }

            .t124 {
                text-align: center !important
            }

            .t107,
            .t111,
            .t115,
            .t119,
            .t123 {
                vertical-align: top !important;
                width: 24px !important
            }

            .t63,
            .t68,
            .t73 {
                vertical-align: middle !important
            }

            .t1 {
                padding-bottom: 50px !important
            }

            .t3 {
                width: 80px !important
            }

            .t74 {
                text-align: left !important
            }

            .t61,
            .t66 {
                display: revert !important
            }

            .t68 {
                width: 610px !important
            }

            .t65 {
                padding-left: 0 !important
            }

            .t73 {
                width: 368px !important
            }

            .t63 {
                width: 211px !important
            }
        }
    </style>
    <!--[if !mso]>-->
    <link href="https://fonts.googleapis.com/css2?family=Albert+Sans:wght@400;500;700;800&amp;display=swap"
        rel="stylesheet" type="text/css" />
    <!--<![endif]-->
    <!--[if mso]>
<xml>
<o:OfficeDocumentSettings>
<o:AllowPNG/>
<o:PixelsPerInch>96</o:PixelsPerInch>
</o:OfficeDocumentSettings>
</xml>
<![endif]-->
</head>

<body id="body" class="t151" style="min-width:100%;Margin:0px;padding:0px;background-color:#242424;">
    <div class="t150" style="background-color:#242424;">
        <table role="presentation" width="100%" cellpadding="0" cellspacing="0" border="0" align="center">
            <tr>
                <td class="t149"
                    style="font-size:0;line-height:0;mso-line-height-rule:exactly;background-color:#242424;"
                    valign="top" align="center">
                    <!--[if mso]>
<v:background xmlns:v="urn:schemas-microsoft-com:vml" fill="true" stroke="false">
<v:fill color="#242424"/>
</v:background>
<![endif]-->
                    <table role="presentation" width="100%" cellpadding="0" cellspacing="0" border="0" align="center"
                        id="innerTable">
                        <tr>
                            <td>
                                <div class="t94"
                                    style="mso-line-height-rule:exactly;mso-line-height-alt:45px;line-height:45px;font-size:1px;display:block;">
                                    &nbsp;&nbsp;</div>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <table class="t98" role="presentation" cellpadding="0" cellspacing="0"
                                    style="Margin-left:auto;Margin-right:auto;">
                                    <tr>
                                        <td width="600" class="t97" style="width:600px;">
                                            <table class="t96" role="presentation" cellpadding="0" cellspacing="0"
                                                width="100%" style="width:100%;">
                                                <tr>
                                                    <td class="t95"
                                                        style="background-color:#F8F8F8;padding:0 50px 60px 50px;">
                                                        <table role="presentation" width="100%" cellpadding="0"
                                                            cellspacing="0" style="width:100% !important;">
                                                            <tr>
                                                                <td align="left">
                                                                    <table class="t4" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="130" class="t3"
                                                                                style="width:130px;">
                                                                                <table class="t2" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t1"
                                                                                            style="padding:0 0 60px 0;">
                                                                                            <div style="font-size:0px;">
                                                                                                <img class="t0"
                                                                                                    style="display:block;border:0;height:auto;width:100%;Margin:0;max-width:100%;"
                                                                                                    width="130"
                                                                                                    height="130" alt=""
                                                                                                    src="https://www.techorbitit.com//_next/image?url=%2Flogo%2FTech_Orbit_IT_logo.png&w=96&q=75" />
                                                                                                    
                                                                                           
                                                                                            
                                                                                        </td>
                                                                                        
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t9" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t8"
                                                                                style="width:600px;">
                                                                                <table class="t7" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t6"
                                                                                            style="padding:0 0 15px 0;">
                                                                                            <h1 class="t5"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:26px;font-weight:800;font-style:normal;font-size:24px;text-decoration:none;text-transform:none;letter-spacing:-1.56px;direction:ltr;color:#191919;text-align:left;mso-line-height-rule:exactly;mso-text-raise:1px;">
                                                                                                {user_name}, thank you
                                                                                                for your order.</h1>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t14" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t13"
                                                                                style="width:600px;">
                                                                                <table class="t12" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t11"
                                                                                            style="padding:0 0 22px 0;">
                                                                                            <p class="t10"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:22px;font-weight:500;font-style:normal;font-size:14px;text-decoration:none;text-transform:none;letter-spacing:-0.56px;direction:ltr;color:#333333;text-align:left;mso-line-height-rule:exactly;mso-text-raise:2px;">
                                                                                                Your order is being
                                                                                                processed by UPS and is
                                                                                                on its way to Amsterdam.
                                                                                                You will receive an
                                                                                                update from us regarding
                                                                                                the status of your order
                                                                                                and the delivery of the
                                                                                                parcel.</p>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t20" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t19"
                                                                                style="width:600px;">
                                                                                <table class="t18" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t17">
                                                                                            <p class="t16"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:22px;font-weight:500;font-style:normal;font-size:14px;text-decoration:none;text-transform:none;letter-spacing:-0.56px;direction:ltr;color:#333333;text-align:left;mso-line-height-rule:exactly;mso-text-raise:2px;">
                                                                                                <span class="t15"
                                                                                                    style="margin:0;Margin:0;font-weight:bold;mso-line-height-rule:exactly;">Order
                                                                                                    number</span></p>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t25" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t24"
                                                                                style="width:600px;">
                                                                                <table class="t23" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t22"
                                                                                            style="padding:0 0 22px 0;">
                                                                                            <p class="t21"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:22px;font-weight:500;font-style:normal;font-size:14px;text-decoration:none;text-transform:none;letter-spacing:-0.56px;direction:ltr;color:#333333;text-align:left;mso-line-height-rule:exactly;mso-text-raise:2px;">
                                                                                                {transaction_number}</p>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>

                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t42" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t41"
                                                                                style="width:600px;">
                                                                                <table class="t40" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t39">
                                                                                            <p class="t38"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:22px;font-weight:500;font-style:normal;font-size:14px;text-decoration:none;text-transform:none;letter-spacing:-0.56px;direction:ltr;color:#333333;text-align:left;mso-line-height-rule:exactly;mso-text-raise:2px;">
                                                                                                <span class="t37"
                                                                                                    style="margin:0;Margin:0;font-weight:bold;mso-line-height-rule:exactly;">Delivery
                                                                                                    address</span></p>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t47" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t46"
                                                                                style="width:600px;">
                                                                                <table class="t45" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t44">
                                                                                            <p class="t43"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:22px;font-weight:500;font-style:normal;font-size:14px;text-decoration:none;text-transform:none;letter-spacing:-0.56px;direction:ltr;color:#333333;text-align:left;mso-line-height-rule:exactly;mso-text-raise:2px;">
                                                                                                Waterview Lane Sante Fe
                                                                                                4019</p>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t52" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t51"
                                                                                style="width:600px;">
                                                                                <table class="t50" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t49">
                                                                                            <p class="t48"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:22px;font-weight:500;font-style:normal;font-size:14px;text-decoration:none;text-transform:none;letter-spacing:-0.56px;direction:ltr;color:#333333;text-align:left;mso-line-height-rule:exactly;mso-text-raise:2px;">
                                                                                                NM, New Mexico 87500</p>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t57" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t56"
                                                                                style="width:600px;">
                                                                                <table class="t55" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t54">
                                                                                            <p class="t53"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:22px;font-weight:500;font-style:normal;font-size:14px;text-decoration:none;text-transform:none;letter-spacing:-0.56px;direction:ltr;color:#333333;text-align:left;mso-line-height-rule:exactly;mso-text-raise:2px;">
                                                                                                United States</p>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="t58"
                                                                        style="mso-line-height-rule:exactly;mso-line-height-alt:30px;line-height:30px;font-size:1px;display:block;">
                                                                        &nbsp;&nbsp;</div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                              
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="t82"
                                                                        style="mso-line-height-rule:exactly;mso-line-height-alt:30px;line-height:30px;font-size:1px;display:block;">
                                                                        &nbsp;&nbsp;</div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t87" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t86"
                                                                                style="width:600px;">
                                                                                <table class="t85" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t84">
                                                                                            <p class="t83"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:22px;font-weight:500;font-style:normal;font-size:14px;text-decoration:none;text-transform:none;letter-spacing:-0.56px;direction:ltr;color:#333333;text-align:left;mso-line-height-rule:exactly;mso-text-raise:2px;">
                                                                                                Click the button below
                                                                                                for a status update on
                                                                                                your delivery.</p>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div class="t88"
                                                                        style="mso-line-height-rule:exactly;mso-line-height-alt:40px;line-height:40px;font-size:1px;display:block;">
                                                                        &nbsp;&nbsp;</div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left">
                                                                    <table class="t93" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="250" class="t92"
                                                                                style="width:250px;">
                                                                                <table class="t91" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t90"
                                                                                            style="overflow:hidden;background-color:#181818;text-align:center;line-height:44px;mso-line-height-rule:exactly;mso-text-raise:10px;border-radius:44px 44px 44px 44px;">
                                                                                            <a class="t89"
                                                                                                href="https://www.techorbitit.com"
                                                                                                style="display:block;margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:44px;font-weight:800;font-style:normal;font-size:12px;text-decoration:none;text-transform:uppercase;letter-spacing:2.4px;direction:ltr;color:#F8F8F8;text-align:center;mso-line-height-rule:exactly;mso-text-raise:10px;"
                                                                                                target="_blank">TRACK
                                                                                                YOUR ORDER</a></td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <table class="t148" role="presentation" cellpadding="0" cellspacing="0"
                                    style="Margin-left:auto;Margin-right:auto;">
                                    <tr>
                                        <td width="600" class="t147" style="width:600px;">
                                            <table class="t146" role="presentation" cellpadding="0" cellspacing="0"
                                                width="100%" style="width:100%;">
                                                <tr>
                                                    <td class="t145"
                                                        style="background-color:#242424;padding:48px 50px 48px 50px;">
                                                        <table role="presentation" width="100%" cellpadding="0"
                                                            cellspacing="0" style="width:100% !important;">
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t103" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t102"
                                                                                style="width:600px;">
                                                                                <table class="t101" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t100">
                                                                                            <p class="t99"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:22px;font-weight:800;font-style:normal;font-size:18px;text-decoration:none;text-transform:none;letter-spacing:-0.9px;direction:ltr;color:#757575;text-align:center;mso-line-height-rule:exactly;mso-text-raise:1px;">
                                                                                                Want updates through
                                                                                                more platforms?</p>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t131" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t130"
                                                                                style="width:800px;">
                                                                                <table class="t129" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t128"
                                                                                            style="padding:10px 0 44px 0;">
                                                                                            <div class="t127"
                                                                                                style="width:100%;text-align:center;">
                                                                                                <div class="t126"
                                                                                                    style="display:inline-block;">
                                                                                                    <table class="t125"
                                                                                                        role="presentation"
                                                                                                        cellpadding="0"
                                                                                                        cellspacing="0"
                                                                                                        align="center"
                                                                                                        valign="top">
                                                                                                        <tr
                                                                                                            class="t124">
                                                                                                            <td></td>
                                                                                                            <td class="t107"
                                                                                                                width="24"
                                                                                                                valign="top">
                                                                                                                <table
                                                                                                                    role="presentation"
                                                                                                                    width="100%"
                                                                                                                    cellpadding="0"
                                                                                                                    cellspacing="0"
                                                                                                                    class="t106"
                                                                                                                    style="width:100%;">
                                                                                                                    <tr>
                                                                                                                        <td
                                                                                                                            class="t105">
                                                                                                                            <div
                                                                                                                                style="font-size:0px;">
                                                                                                                                <img class="t104"
                                                                                                                                    style="display:block;border:0;height:auto;width:100%;Margin:0;max-width:100%;"
                                                                                                                                    width="24"
                                                                                                                                    height="24"
                                                                                                                                    alt=""
                                                                                                                                    src="https://41594363-0289-43ef-ad9d-453f1fae8f25.b-cdn.net/e/7aa0e1a1-6455-47e6-ab5f-bad1bea6b619/42616934-ecb5-401b-91d7-930fd43cef55.png" />
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                            <td class="t111"
                                                                                                                width="24"
                                                                                                                valign="top">
                                                                                                                <table
                                                                                                                    role="presentation"
                                                                                                                    width="100%"
                                                                                                                    cellpadding="0"
                                                                                                                    cellspacing="0"
                                                                                                                    class="t110"
                                                                                                                    style="width:100%;">
                                                                                                                    <tr>
                                                                                                                        <td
                                                                                                                            class="t109">
                                                                                                                            <div
                                                                                                                                style="font-size:0px;">
                                                                                                                                <img class="t108"
                                                                                                                                    style="display:block;border:0;height:auto;width:100%;Margin:0;max-width:100%;"
                                                                                                                                    width="24"
                                                                                                                                    height="24"
                                                                                                                                    alt=""
                                                                                                                                    src="https://41594363-0289-43ef-ad9d-453f1fae8f25.b-cdn.net/e/7aa0e1a1-6455-47e6-ab5f-bad1bea6b619/f8a064da-3262-4a8f-ae72-a311869becb0.png" />
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                            <td class="t115"
                                                                                                                width="24"
                                                                                                                valign="top">
                                                                                                                <table
                                                                                                                    role="presentation"
                                                                                                                    width="100%"
                                                                                                                    cellpadding="0"
                                                                                                                    cellspacing="0"
                                                                                                                    class="t114"
                                                                                                                    style="width:100%;">
                                                                                                                    <tr>
                                                                                                                        <td
                                                                                                                            class="t113">
                                                                                                                            <div
                                                                                                                                style="font-size:0px;">
                                                                                                                                <img class="t112"
                                                                                                                                    style="display:block;border:0;height:auto;width:100%;Margin:0;max-width:100%;"
                                                                                                                                    width="24"
                                                                                                                                    height="24"
                                                                                                                                    alt=""
                                                                                                                                    src="https://41594363-0289-43ef-ad9d-453f1fae8f25.b-cdn.net/e/7aa0e1a1-6455-47e6-ab5f-bad1bea6b619/de48add3-8ce8-4780-bcbc-55bdd64ec381.png" />
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                            <td class="t119"
                                                                                                                width="24"
                                                                                                                valign="top">
                                                                                                                <table
                                                                                                                    role="presentation"
                                                                                                                    width="100%"
                                                                                                                    cellpadding="0"
                                                                                                                    cellspacing="0"
                                                                                                                    class="t118"
                                                                                                                    style="width:100%;">
                                                                                                                    <tr>
                                                                                                                        <td
                                                                                                                            class="t117">
                                                                                                                            <div
                                                                                                                                style="font-size:0px;">
                                                                                                                                <img class="t116"
                                                                                                                                    style="display:block;border:0;height:auto;width:100%;Margin:0;max-width:100%;"
                                                                                                                                    width="24"
                                                                                                                                    height="24"
                                                                                                                                    alt=""
                                                                                                                                    src="https://41594363-0289-43ef-ad9d-453f1fae8f25.b-cdn.net/e/7aa0e1a1-6455-47e6-ab5f-bad1bea6b619/b08bea78-5cab-4a2a-8d00-83d9256ae8d7.png" />
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                            <td class="t123"
                                                                                                                width="24"
                                                                                                                valign="top">
                                                                                                                <table
                                                                                                                    role="presentation"
                                                                                                                    width="100%"
                                                                                                                    cellpadding="0"
                                                                                                                    cellspacing="0"
                                                                                                                    class="t122"
                                                                                                                    style="width:100%;">
                                                                                                                    <tr>
                                                                                                                        <td
                                                                                                                            class="t121">
                                                                                                                            <div
                                                                                                                                style="font-size:0px;">
                                                                                                                                <img class="t120"
                                                                                                                                    style="display:block;border:0;height:auto;width:100%;Margin:0;max-width:100%;"
                                                                                                                                    width="24"
                                                                                                                                    height="24"
                                                                                                                                    alt=""
                                                                                                                                    src="https://41594363-0289-43ef-ad9d-453f1fae8f25.b-cdn.net/e/7aa0e1a1-6455-47e6-ab5f-bad1bea6b619/b44069d4-61ae-46e1-8488-08a1fb56a11f.png" />
                                                                                                                            </div>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                            <td></td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </div>
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t136" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t135"
                                                                                style="width:600px;">
                                                                                <table class="t134" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t133">
                                                                                            <p class="t132"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:22px;font-weight:500;font-style:normal;font-size:12px;text-decoration:none;text-transform:none;direction:ltr;color:#888888;text-align:center;mso-line-height-rule:exactly;mso-text-raise:3px;">
                                                                                                73/1 Diamond Tower (9th
                                                                                                Floor), College Road,
                                                                                                Opposite Of Matuail
                                                                                                Medicale, Jatrabari,
                                                                                                Dhaka-1362</p>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="t144" role="presentation"
                                                                        cellpadding="0" cellspacing="0"
                                                                        style="Margin-left:auto;Margin-right:auto;">
                                                                        <tr>
                                                                            <td width="500" class="t143"
                                                                                style="width:600px;">
                                                                                <table class="t142" role="presentation"
                                                                                    cellpadding="0" cellspacing="0"
                                                                                    width="100%" style="width:100%;">
                                                                                    <tr>
                                                                                        <td class="t141">
                                                                                            <p class="t140"
                                                                                                style="margin:0;Margin:0;font-family:Albert Sans,BlinkMacSystemFont,Segoe UI,Helvetica Neue,Arial,sans-serif;line-height:22px;font-weight:500;font-style:normal;font-size:12px;text-decoration:none;text-transform:none;direction:ltr;color:#888888;text-align:center;mso-line-height-rule:exactly;mso-text-raise:3px;">
                                                                                                <a class="t137"
                                                                                                    href="https://www.techorbitit.com"
                                                                                                    style="margin:0;Margin:0;font-weight:700;font-style:normal;text-decoration:none;direction:ltr;color:#888888;mso-line-height-rule:exactly;"
                                                                                                    target="_blank">Unsubscribe</a>&nbsp;
                                                                                                •&nbsp; <a class="t138"
                                                                                                    href="https://www.techorbitit.com"
                                                                                                    style="margin:0;Margin:0;font-weight:700;font-style:normal;text-decoration:none;direction:ltr;color:#888888;mso-line-height-rule:exactly;"
                                                                                                    target="_blank">Privacy
                                                                                                    policy</a>&nbsp;
                                                                                                •&nbsp; <a class="t139"
                                                                                                    href="https://www.techorbitit.com"
                                                                                                    style="margin:0;Margin:0;font-weight:700;font-style:normal;text-decoration:none;direction:ltr;color:#878787;mso-line-height-rule:exactly;"
                                                                                                    target="_blank">Contact
                                                                                                    us</a></p>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div class="gmail-fix" style="display: none; white-space: nowrap; font: 15px courier; line-height: 0;">&nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
</body>

</html>','2025-12-21 03:24:10','2025-12-21 03:46:10');

INSERT INTO email_templates (id, type, subject, body, created_at, updated_at) VALUES ('2','Registration','Welcome To Omnimart','<p>Hello ; {user_name},</p><p>You have successfully registered to {site_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You .<br></p>','2025-12-21 03:05:10','2025-12-21 03:08:10');

INSERT INTO email_templates (id, type, subject, body, created_at, updated_at) VALUES ('3','New Order Admin','New Order','<p>You Got a order, Transaction number {transaction_number}</p>','2025-12-21 03:51:10','2025-12-21 03:54:10');


CREATE TABLE `extra_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `is_t4_slider` tinyint(4) DEFAULT 1,
  `is_t4_featured_banner` tinyint(4) DEFAULT 1,
  `is_t4_specialpick` tinyint(4) DEFAULT 1,
  `is_t4_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t4_flashdeal` tinyint(4) DEFAULT 1,
  `is_t4_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t4_popular_category` tinyint(4) DEFAULT 1,
  `is_t4_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t4_blog_section` tinyint(4) DEFAULT 1,
  `is_t4_brand_section` tinyint(4) DEFAULT 1,
  `is_t4_service_section` tinyint(4) DEFAULT 1,
  `is_t3_slider` tinyint(4) DEFAULT 1,
  `is_t3_service_section` tinyint(4) DEFAULT 1,
  `is_t3_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t3_popular_category` tinyint(4) DEFAULT 1,
  `is_t3_flashdeal` tinyint(4) DEFAULT 1,
  `is_t3_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t3_pecialpick` tinyint(4) DEFAULT 1,
  `is_t3_brand_section` tinyint(4) DEFAULT 1,
  `is_t3_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t3_blog_section` tinyint(4) DEFAULT 1,
  `is_t2_slider` tinyint(4) DEFAULT 1,
  `is_t2_service_section` tinyint(4) DEFAULT 1,
  `is_t2_3_column_banner_first` tinyint(4) DEFAULT 1,
  `is_t2_flashdeal` tinyint(4) DEFAULT 1,
  `is_t2_new_product` tinyint(4) DEFAULT 1,
  `is_t2_3_column_banner_second` tinyint(4) DEFAULT 1,
  `is_t2_featured_product` tinyint(4) DEFAULT 1,
  `is_t2_bestseller_product` tinyint(4) DEFAULT 1,
  `is_t2_toprated_product` tinyint(4) DEFAULT 1,
  `is_t2_2_column_banner` tinyint(4) DEFAULT 1,
  `is_t2_blog_section` tinyint(4) DEFAULT 1,
  `is_t2_brand_section` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_t1_falsh` tinyint(4) DEFAULT 1,
  `is_t2_falsh` tinyint(4) DEFAULT 1,
  `is_t3_falsh` tinyint(4) DEFAULT 1,
  `is_t4_falsh` tinyint(4) DEFAULT 1,
  `is_t2_three_column_category` tinyint(4) DEFAULT 1,
  `is_t3_three_column_category` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO extra_settings (id, is_t4_slider, is_t4_featured_banner, is_t4_specialpick, is_t4_3_column_banner_first, is_t4_flashdeal, is_t4_3_column_banner_second, is_t4_popular_category, is_t4_2_column_banner, is_t4_blog_section, is_t4_brand_section, is_t4_service_section, is_t3_slider, is_t3_service_section, is_t3_3_column_banner_first, is_t3_popular_category, is_t3_flashdeal, is_t3_3_column_banner_second, is_t3_pecialpick, is_t3_brand_section, is_t3_2_column_banner, is_t3_blog_section, is_t2_slider, is_t2_service_section, is_t2_3_column_banner_first, is_t2_flashdeal, is_t2_new_product, is_t2_3_column_banner_second, is_t2_featured_product, is_t2_bestseller_product, is_t2_toprated_product, is_t2_2_column_banner, is_t2_blog_section, is_t2_brand_section, created_at, updated_at, is_t1_falsh, is_t2_falsh, is_t3_falsh, is_t4_falsh, is_t2_three_column_category, is_t3_three_column_category) VALUES ('1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','1','1','1','1','1','0','1','1','1','1','1','1','1','1','2025-12-21 03:40:10','2025-12-21 03:09:10','1','1','1','1','0','1');


CREATE TABLE `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('15','1','How can I purchase it ?','Voluptatibus enim, aut natus sint porro veniam atque obcaecati ullam, consequatur laboriosam laborum corrupti autem fugit','','','2025-12-21 03:20:10','2025-12-21 03:39:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('25','1','Anim pariatur cliche reprehenderit ?','Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus.','','','2025-12-21 03:09:10','2025-12-21 03:24:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('27','1','Smartphones in Every Day Life ?','afdads','[{"value":"ad"},{"value":"fd"}]','dfa','2025-12-21 03:40:10','2025-12-21 03:12:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('28','3','Lorem ipsum dolor sit amet, consectetur adipiscing  ?','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','','','2025-12-21 03:42:10','2025-12-21 03:21:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('29','3','But I must explain to you how all this mistaken idea ?','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, cons','','','2025-12-21 03:22:10','2025-12-21 03:22:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('30','3','Where does it come from ?','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.','','','2025-12-21 03:01:10','2025-12-21 03:27:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('31','4','Where can I get some ?','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','','','2025-12-21 03:50:10','2025-12-21 03:01:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('32','4','Why do we use it?','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','','','2025-12-21 03:29:10','2025-12-21 03:12:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('33','4','Where can I get some?','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','','','2025-12-21 03:14:10','2025-12-21 03:21:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('34','4','Where does it come from?','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.','','','2025-12-21 03:09:10','2025-12-21 03:40:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('35','5','Where can I get some?','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','','','2025-12-21 03:36:10','2025-12-21 03:43:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('36','5','Why do we use it?','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','','','2025-12-21 03:44:10','2025-12-21 03:26:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('37','5','Where does it come from?','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.','','','2025-12-21 03:39:10','2025-12-21 03:54:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('38','6','Where does it come from?','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.','','','2025-12-21 03:43:10','2025-12-21 03:46:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('39','6','Why do we use it?','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','','','2025-12-21 03:54:10','2025-12-21 03:37:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('40','6','Where can I get some?','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','','','2025-12-21 03:14:10','2025-12-21 03:44:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('41','7','Where does it come from?','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.','','','2025-12-21 03:39:10','2025-12-21 03:34:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('42','7','Why do we use it?','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','','','2025-12-21 03:51:10','2025-12-21 03:16:10');

INSERT INTO faqs (id, category_id, title, details, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('43','7','Where can I get some?','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','','','2025-12-21 03:12:10','2025-12-21 03:32:10');


CREATE TABLE `fcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO fcategories (id, name, text, slug, meta_keywords, meta_descriptions, status, created_at, updated_at) VALUES ('1','Electronics !','But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born','Electronics-','','','1','2025-12-21 03:34:10','2025-12-21 03:16:10');

INSERT INTO fcategories (id, name, text, slug, meta_keywords, meta_descriptions, status, created_at, updated_at) VALUES ('3','Poroduct Delevery !','But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born','Poroduct-Delevery-','[{"value":"a"},{"value":"b"},{"value":"c"}]','It is a long established fact that a r','1','2025-12-21 03:52:10','2025-12-21 03:40:10');

INSERT INTO fcategories (id, name, text, slug, meta_keywords, meta_descriptions, status, created_at, updated_at) VALUES ('4','Discount Policy !','But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born','Discount-Policy-','','','1','2025-12-21 03:11:10','2025-12-21 03:41:10');

INSERT INTO fcategories (id, name, text, slug, meta_keywords, meta_descriptions, status, created_at, updated_at) VALUES ('5','Vat Information !','But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born','Vat-Information-','','','1','2025-12-21 03:38:10','2025-12-21 03:22:10');

INSERT INTO fcategories (id, name, text, slug, meta_keywords, meta_descriptions, status, created_at, updated_at) VALUES ('6','Coupon  Information !','But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born','Coupon--Information-','','','1','2025-12-21 03:52:10','2025-12-21 03:43:10');

INSERT INTO fcategories (id, name, text, slug, meta_keywords, meta_descriptions, status, created_at, updated_at) VALUES ('7','Offer Information !','But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born','Offer-Information-','','','1','2025-12-21 03:45:10','2025-12-21 03:22:10');


CREATE TABLE `galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('2','587','1634490507Hd47c5c350c3f44839b7573930fe5ab4dX.jpg','2025-12-21 03:16:10','2025-12-21 03:49:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('3','587','1634490507Hf086ae681630461684ced251f8fb5206P.jpg','2025-12-21 03:47:10','2025-12-21 03:44:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('4','525','1634490530Hcc2445bfd070462089ea573816837100j.jpg','2025-12-21 03:29:10','2025-12-21 03:41:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('5','525','1634490530Hd47c5c350c3f44839b7573930fe5ab4dX.jpg','2025-12-21 03:36:10','2025-12-21 03:30:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('6','525','1634490530Hf086ae681630461684ced251f8fb5206P.jpg','2025-12-21 03:35:10','2025-12-21 03:16:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('7','535','1634490542Hcc2445bfd070462089ea573816837100j.jpg','2025-12-21 03:29:10','2025-12-21 03:01:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('8','535','1634490542Hd47c5c350c3f44839b7573930fe5ab4dX.jpg','2025-12-21 03:42:10','2025-12-21 03:08:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('9','535','1634490542Hf086ae681630461684ced251f8fb5206P.jpg','2025-12-21 03:33:10','2025-12-21 03:38:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('10','534','1634490554Hcc2445bfd070462089ea573816837100j.jpg','2025-12-21 03:01:10','2025-12-21 03:49:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('11','534','1634490554Hd47c5c350c3f44839b7573930fe5ab4dX.jpg','2025-12-21 03:18:10','2025-12-21 03:09:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('12','534','1634490554Hf086ae681630461684ced251f8fb5206P.jpg','2025-12-21 03:42:10','2025-12-21 03:29:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('13','532','1634490565Hcc2445bfd070462089ea573816837100j.jpg','2025-12-21 03:49:10','2025-12-21 03:05:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('14','532','1634490565Hd47c5c350c3f44839b7573930fe5ab4dX.jpg','2025-12-21 03:22:10','2025-12-21 03:29:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('15','532','1634490565Hf086ae681630461684ced251f8fb5206P.jpg','2025-12-21 03:21:10','2025-12-21 03:07:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('16','529','1634490585Hcc2445bfd070462089ea573816837100j.jpg','2025-12-21 03:14:10','2025-12-21 03:46:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('17','529','1634490585Hd47c5c350c3f44839b7573930fe5ab4dX.jpg','2025-12-21 03:50:10','2025-12-21 03:53:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('18','529','1634490585Hf086ae681630461684ced251f8fb5206P.jpg','2025-12-21 03:39:10','2025-12-21 03:22:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('19','586','1634490597Hcc2445bfd070462089ea573816837100j.jpg','2025-12-21 03:41:10','2025-12-21 03:26:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('20','586','1634490597Hd47c5c350c3f44839b7573930fe5ab4dX.jpg','2025-12-21 03:38:10','2025-12-21 03:08:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('21','586','1634490597Hf086ae681630461684ced251f8fb5206P.jpg','2025-12-21 03:29:10','2025-12-21 03:14:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('22','563','1634490619Haeebad0b0907432897c3ee27adc13ef48.jpg','2025-12-21 03:13:10','2025-12-21 03:02:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('23','563','1634490619Hdb695965a744470b958f17251d4d277ew.jpg','2025-12-21 03:08:10','2025-12-21 03:32:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('24','563','1634490619Hedf90cf6656546e7a8548d4980edc5bda.jpg','2025-12-21 03:05:10','2025-12-21 03:18:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('25','562','1634490633Haeebad0b0907432897c3ee27adc13ef48.jpg','2025-12-21 03:14:10','2025-12-21 03:32:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('26','562','1634490633Hdb695965a744470b958f17251d4d277ew.jpg','2025-12-21 03:35:10','2025-12-21 03:53:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('27','562','1634490633Hedf90cf6656546e7a8548d4980edc5bda.jpg','2025-12-21 03:36:10','2025-12-21 03:52:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('28','545','1634490675H349db6b6a70c4604b507c446a7b06ae5k.jpg','2025-12-21 03:13:10','2025-12-21 03:49:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('29','545','1634490675HTB1BqH4aIfrK1RkSmLyq6xGApXaJ.jpg','2025-12-21 03:34:10','2025-12-21 03:34:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('30','545','1634490675U02280db692c8449a91b8886b5a9f043fI.jpg','2025-12-21 03:47:10','2025-12-21 03:00:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('31','543','1634490719H220c85b541d145789e167a4b23787dd5h.jpg','2025-12-21 03:03:10','2025-12-21 03:41:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('32','543','1634490719Ha04a8a2d450544c9a80996bcdd70c543b.jpg','2025-12-21 03:52:10','2025-12-21 03:53:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('33','543','1634490719Hcb62dec2d6a241fc90ce2bb04059684em.jpg','2025-12-21 03:10:10','2025-12-21 03:03:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('34','540','1634490735H220c85b541d145789e167a4b23787dd5h.jpg','2025-12-21 03:33:10','2025-12-21 03:06:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('35','540','1634490735H624bc94495584b2384c07e2db9f2bdfcd.jpg','2025-12-21 03:50:10','2025-12-21 03:06:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('36','540','1634490735Ha04a8a2d450544c9a80996bcdd70c543b.jpg','2025-12-21 03:51:10','2025-12-21 03:41:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('37','541','1634490748H220c85b541d145789e167a4b23787dd5h.jpg','2025-12-21 03:18:10','2025-12-21 03:11:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('38','541','1634490748H624bc94495584b2384c07e2db9f2bdfcd.jpg','2025-12-21 03:35:10','2025-12-21 03:03:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('39','541','1634490748Hcb62dec2d6a241fc90ce2bb04059684em.jpg','2025-12-21 03:30:10','2025-12-21 03:03:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('40','561','1634490779H8fb00d2318bd48048dcd8bf2546f3f52h.jpg','2025-12-21 03:28:10','2025-12-21 03:00:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('41','561','1634490779H206d1d68ce2440ada7b7bc6dfb6354a8p.jpg','2025-12-21 03:10:10','2025-12-21 03:48:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('42','561','1634490779Hedf90cf6656546e7a8548d4980edc5bda.jpg','2025-12-21 03:31:10','2025-12-21 03:18:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('43','524','1634490804Hcc2445bfd070462089ea573816837100j.jpg','2025-12-21 03:08:10','2025-12-21 03:41:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('44','524','1634490804Hd47c5c350c3f44839b7573930fe5ab4dX.jpg','2025-12-21 03:48:10','2025-12-21 03:16:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('45','524','1634490804Hf086ae681630461684ced251f8fb5206P.jpg','2025-12-21 03:46:10','2025-12-21 03:20:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('46','542','1634490838H624bc94495584b2384c07e2db9f2bdfcd.jpg','2025-12-21 03:04:10','2025-12-21 03:12:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('47','542','1634490838Ha04a8a2d450544c9a80996bcdd70c543b.jpg','2025-12-21 03:09:10','2025-12-21 03:26:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('48','542','1634490838Hcb62dec2d6a241fc90ce2bb04059684em.jpg','2025-12-21 03:13:10','2025-12-21 03:16:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('55','575','1634491031Uc343eca8de2c490eab3930b8f60827379.png','2025-12-21 03:40:10','2025-12-21 03:15:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('56','575','1634491031Ucc4d26e9889041dc899c3522859ed3f88.jpg','2025-12-21 03:30:10','2025-12-21 03:32:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('57','575','1634491031Ucdd42554b97a4e159ea958eeb2d4363f8.jpg','2025-12-21 03:47:10','2025-12-21 03:10:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('58','577','1634491052Hf435248807dd438aaf4d8a53e6f7eaedP.jpg','2025-12-21 03:37:10','2025-12-21 03:26:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('59','577','1634491052U32feef72859d4a018dc33710b3647992j.jpg','2025-12-21 03:37:10','2025-12-21 03:38:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('60','577','1634491052U4431f054a85341a5a36101d8df36f90a7.jpg','2025-12-21 03:37:10','2025-12-21 03:50:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('61','582','1634491069HTB1HSCEe25G3KVjSZPxq6zI3XXao.jpg','2025-12-21 03:03:10','2025-12-21 03:18:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('62','582','1634491069HTB1K4CyX6DuK1Rjy1zjq6zraFXaj.jpg','2025-12-21 03:45:10','2025-12-21 03:50:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('63','582','1634491069HTB1ymRhXfjsK1Rjy1Xaq6zispXad.jpg','2025-12-21 03:43:10','2025-12-21 03:03:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('64','585','1634491082H6e71ffd70a134245aaab2261bf685508j.jpg','2025-12-21 03:07:10','2025-12-21 03:27:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('65','585','1634491082H1575ae72d5e144cfbf237196d6ea139bj.jpg','2025-12-21 03:15:10','2025-12-21 03:29:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('66','585','1634491082H8064fa369ca644958a52846035a40641p.jpg','2025-12-21 03:20:10','2025-12-21 03:16:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('67','581','1634491092HTB1HSCEe25G3KVjSZPxq6zI3XXao.jpg','2025-12-21 03:06:10','2025-12-21 03:28:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('68','581','1634491092HTB1K4CyX6DuK1Rjy1zjq6zraFXaj.jpg','2025-12-21 03:02:10','2025-12-21 03:32:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('69','581','1634491092HTB1ymRhXfjsK1Rjy1Xaq6zispXad.jpg','2025-12-21 03:38:10','2025-12-21 03:29:10');

INSERT INTO galleries (id, item_id, photo, created_at, updated_at) VALUES ('79','523','bZ7iScreenshot 2021-11-23 at 10.31.36 PM.png','2025-12-21 03:14:10','2025-12-21 03:00:10');


CREATE TABLE `home_cutomizes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `banner_first` text DEFAULT NULL,
  `banner_secend` text DEFAULT NULL,
  `banner_third` text DEFAULT NULL,
  `popular_category` text DEFAULT NULL,
  `two_column_category` text DEFAULT NULL,
  `feature_category` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page4` text DEFAULT NULL,
  `home_4_popular_category` text DEFAULT NULL,
  `hero_banner` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO home_cutomizes (id, banner_first, banner_secend, banner_third, popular_category, two_column_category, feature_category, created_at, updated_at, home_page4, home_4_popular_category, hero_banner) VALUES ('1','{"title1":"Watch","subtitle1":"50% OFF","firsturl1":"#","title2":"Drone","subtitle2":"40% OFF","firsturl2":"#","title3":"Phone","subtitle3":"30% OFF","firsturl3":"#","img1":"16365336391.jpg","img2":"16365336392.jpg","img3":"16365336393.jpg"}','{"title1":"Watch","subtitle1":"50% OFF","url1":"#","title2":"Man","subtitle2":"40% OFF","url2":"#","title3":"Headphone","subtitle3":"60% OFF","url3":"#","img1":"16365342794.jpg","img2":"16365342795.jpg","img3":"16365342796.jpg"}','{"title1":"Watch","subtitle1":"50% OFF","url1":"#","title2":"Headphones","subtitle2":"40% OFF","url2":"#","img1":"1636534291b22.jpg","img2":"1636534291b11.jpg"}','{"popular_title":"Popular Categories","category_id1":"18","subcategory_id1":"6","childcategory_id1":null,"category_id2":"19","subcategory_id2":null,"childcategory_id2":null,"category_id3":"21","subcategory_id3":null,"childcategory_id3":null,"category_id4":"22","subcategory_id4":null,"childcategory_id4":null}','{"category_id1":"27","subcategory_id1":null,"childcategory_id1":null,"category_id2":"22","subcategory_id2":null,"childcategory_id2":null,"category_id3":"21","subcategory_id3":null,"childcategory_id3":null}','{"feature_title":"Featured Categories","category_id1":"18","subcategory_id1":null,"childcategory_id1":null,"category_id2":"27","subcategory_id2":null,"childcategory_id2":null,"category_id3":"21","subcategory_id3":null,"childcategory_id3":null,"category_id4":"22","subcategory_id4":null,"childcategory_id4":null}','2025-12-21 03:29:10','2025-12-21 03:06:10','{"label1":"FORMAL","url1":"#","label2":"LIMITEN EDITION","url2":"#","label3":"WOMEN\'S COLLECTION","url3":"#","label4":"SMART CASUALS","url4":"#","label5":"POLO","url5":"#","img1":"16368975771.jpg","img2":"16368975772.jpg","img3":"16368975773.jpg","img4":"16368975774.jpg","img5":"16368975775.jpg"}','["18","19","21","27"]','{"title1":"Watch","subtitle1":"50% OFF","url1":"#","title2":"Man","subtitle2":"40% OFF","url2":"#","img1":"ONMF222.jpg","img2":"24gX1111.jpg"}');


CREATE TABLE `items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT 0,
  `subcategory_id` int(11) DEFAULT 0,
  `childcategory_id` int(11) DEFAULT 0,
  `tax_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT 0,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `sort_details` text DEFAULT NULL,
  `specification_name` text DEFAULT NULL,
  `specification_description` text DEFAULT NULL,
  `is_specification` tinyint(4) DEFAULT 0,
  `details` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `discount_price` double DEFAULT 0,
  `previous_price` double DEFAULT 0,
  `stock` int(11) DEFAULT 0,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `is_type` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `file_type` enum('file','link') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `license_name` text DEFAULT NULL,
  `license_key` text DEFAULT NULL,
  `item_type` varchar(255) DEFAULT 'normal',
  `thumbnail` varchar(255) DEFAULT NULL,
  `affiliate_link` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=595 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('524','18','6','0','2','0','Women\'s Women Clothing Women Dresses Women Bodycon 2021 Trendy Black Women\'s Sexy Dres','Women-s-Women-Clothing-Women-Dresses-Women-Bodycon------Trendy-Black-Women-s-Sexy-Dres','65dVy8J8Uo1','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135567H6230e6b983944982bc81e124a6b54484y.jpg','134.83','189.78','197','','','1','feature','','','','file','2021-09-30 15:48:38','2025-12-20 04:19:11','','','normal','1634135567ZBvH6230e6b983944982bc81e124a6b54484y.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('525','18','6','0','2','0','New Women\'s Square Collar Pleated Long Sleeve Dresses','New-Women-s-Square-Collar-Pleated-Long-Sleeve-Dresses','65dVy8J8Uo22','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135549Hd734b291822a4cdd8ffe19da91b365e8F.jpg','134.83','','199','','','1','new','','','','file','2021-09-30 15:48:38','2021-10-13 14:32:29','','','normal','16341355498taHd734b291822a4cdd8ffe19da91b365e8F.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('526','18','6','0','2','0','OEM Morden Fashion Design Women Clothing Super Eight Silk Wrap V-neck Satin Mini Dress','OEM-Morden-Fashion-Design-Women-Clothing-Super-Eight-Silk-Wrap-V-neck-Satin-Mini-Dress','65dVy8J8Uo1q','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135532Hb2d512b424b3420899645bdefcc03ca3O.jpg','134.83','189.78','199','','','1','top','','','','file','2021-09-30 15:48:38','2021-10-13 14:32:13','','','normal','1634135532RFiHb2d512b424b3420899645bdefcc03ca3O.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('527','18','6','0','2','0','New arrivals Hot Sale Summer New Women\'s Long Dresses Beach Floral Print Boho Maxi Dress','New-arrivals-Hot-Sale-Summer-New-Women-s-Long-Dresses-Beach-Floral-Print-Boho-Maxi-Dress','65dVy8J8Uo23x','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135517H2477b68e6b044ea98a0614c488203114H.jpg','134.83','189.78','199','','','1','top','','','','file','2021-09-30 15:48:38','2021-10-13 14:31:57','','','normal','1634135517dHKH2477b68e6b044ea98a0614c488203114H.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('528','18','6','0','2','0','Bodycon Tube Tie Dye Summer Dress Sun Dresses 2021 Colorful Women Long Floral Summer Dress','Bodycon-Tube-Tie-Dye-Summer-Dress-Sun-Dresses------Colorful-Women-Long-Floral-Summer-Dress','65dVy8J8Uo1r3','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135502H9ef30f583b96459684b6d40a50d441c65.jpg','134.83','','199','','','1','top','','','','file','2021-09-30 15:48:38','2021-10-13 14:31:42','','','normal','1634135502CwFH9ef30f583b96459684b6d40a50d441c65.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('529','18','6','0','2','0','Plus size women Clothing floral print Long sleeve Maxi African Split Dress for women','Plus-size-women-Clothing-floral-print-Long-sleeve-Maxi-African-Split-Dress-for-women','65dVy8J8Uo224z','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo','1634135466H05e7334ec3664662b136268a00cc2f331.jpg','134.83','189.78','199','','','1','feature','','','','file','2021-09-30 15:48:38','2021-12-03 15:45:10','','','normal','1634135466He5H05e7334ec3664662b136268a00cc2f331.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('530','18','6','0','2','0','Best Sale Fashion Elegant Muslim stitching National style vintage double pocket Plaid islamic dress','Best-Sale-Fashion-Elegant-Muslim-stitching-National-style-vintage-double-pocket-Plaid-islamic-dress','65dVy8J8Uo2dd','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135447H0c25aedf26654552bd7e1d4c8751ffddM.jpg','134.83','189.78','199','','','1','top','','','','file','2021-09-30 15:48:38','2021-10-13 14:30:47','','','normal','1634135447jo2H0c25aedf26654552bd7e1d4c8751ffddM.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('531','18','6','0','2','0','Women Women Fall 2021 Women Clothes Backless Halter Dress Casual Jersey Dress Mini Sexy Knit Dress','Women-Women-Fall------Women-Clothes-Backless-Halter-Dress-Casual-Jersey-Dress-Mini-Sexy-Knit-Dress','65dVy8J8Uo25gg','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135412H98f42eece72a4cf3980c64ab58dbfd890.jpg','134.83','189.78','199','','','1','flash_deal','02/02/2022','','','file','2021-09-30 15:48:38','2021-10-16 14:11:24','','','normal','1634135412IgjH98f42eece72a4cf3980c64ab58dbfd890.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('532','18','8','0','2','0','Shein Womens Clothing 2021 Summer Fashion Design Clothing Manufacturer Lantern Long Sleeve','Shein-Womens-Clothing------Summer-Fashion-Design-Clothing-Manufacturer-Lantern-Long-Sleeve','65dVy8J8Uo25gg3e','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135382Uff4a9015ea454a79a2b9e3249bd2e19bg.jpg','134.83','189.78','199','','','1','flash_deal','02/02/2022','','','file','2021-09-30 15:48:38','2021-10-13 14:29:42','','','normal','1634135382cOuUff4a9015ea454a79a2b9e3249bd2e19bg.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('533','18','8','0','2','0','Casual Minimalist Tie Waist women clothing Denim Halter Midi Pencil Sling Dresses','Casual-Minimalist-Tie-Waist-women-clothing-Denim-Halter-Midi-Pencil-Sling-Dresses','65dVy8J8Uo25gg3e','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135363HTB1cVsPaEz1gK0jSZLeq6z9kVXay.jpg','134.83','189.78','199','','','1','top','','','','file','2021-09-30 15:48:38','2021-10-13 14:29:23','','','normal','16341353638cLHTB1cVsPaEz1gK0jSZLeq6z9kVXay.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('534','18','8','0','2','0','Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses','Top-Sale-High-Quality-Newest-Designs-Custom-Women-Clothing-Wholesale-from-China-Dresses','65dVy8J8Uo25gg3e23','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135337H948b3bef197c492d999473dffa5303f9P.jpg','59.55','','196','','','1','feature','','','','file','2021-09-30 15:48:38','2025-12-18 11:02:51','','','normal','1634135337Pw5H948b3bef197c492d999473dffa5303f9P.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('535','18','8','0','2','0','2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses','-----Summer-Women-Clothing-Ropa-Sexy-Lady-Cut-Out-Halter-Mini-Dresses','65dVy8J8Uo25gg3e23','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135320H408d7d7e37b4437297de600584c1af1fL.jpg','134.83','189.78','194','','','1','best','','','','file','2021-09-30 15:48:38','2025-12-20 04:20:06','','','normal','16341353201KsH408d7d7e37b4437297de600584c1af1fL.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('536','18','7','0','2','0','B4301 2021 New Arrivals Wholesale Hot Night Sexy Mini Bodycon Summer Dress','B----------New-Arrivals-Wholesale-Hot-Night-Sexy-Mini-Bodycon-Summer-Dress','65dVy8J8Uo25gg3e34r','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135094H0f71a2a40cf04ee0b5a03980a5a617020.jpg','157.3','201.01','198','','','1','new','','','','file','2021-09-30 15:48:38','2025-12-17 08:32:43','','','normal','1634135094rfSH0f71a2a40cf04ee0b5a03980a5a617020.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('537','18','7','0','2','0','Hot Sale Women Clothing 2021 Designer Clothes Women Clothing Sexy Dress','Hot-Sale-Women-Clothing------Designer-Clothes-Women-Clothing-Sexy-Dress','65dVy8J8Uo25gg3e6sf','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135078H4886d13f040a41739481b3c9bd241aaaa.jpg','53.93','100','199','','','1','new','','','','file','2021-09-30 15:48:38','2021-10-13 14:24:38','','','normal','1634135078ILXH4886d13f040a41739481b3c9bd241aaaa.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('538','18','7','0','2','0','New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress','New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress','65dVy8J8Uo25gg3e23f4','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg','134.83','189.78','176','','','1','top','','','','file','2021-09-30 15:48:38','2025-12-20 04:48:32','','','normal','1634135061epkHd8364db18d9942a38e89779ca3b4fa7an.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('539','18','8','15','2','0','Clothing Women 2021 New Fashion Printed Knitwear Round Neck Casual Couple Clothing Christmas','Clothing-Women------New-Fashion-Printed-Knitwear-Round-Neck-Casual-Couple-Clothing-Christmas','65dVy8J8Uo25gg3e23ty6','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134958H8b2502797ffe4c93984c99bdd5061ab3W.jpg','56.18','','199','','','1','new','','','','file','2021-09-30 15:48:38','2021-10-13 14:22:38','','','normal','1634134958dLZH8b2502797ffe4c93984c99bdd5061ab3W.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('540','21','12','0','2','0','UMIDIGI A9 Pro Android Mobile Phone 4g 48MP Quad Camera 6.3" FHD+ Full Screen 6GB RAM','UMIDIGI-A--Pro-Android-Mobile-Phone--g---MP-Quad-Camera------FHD--Full-Screen--GB-RAM','65dVy8J8Uo25gg3e34r45fdg','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134938Hcb62dec2d6a241fc90ce2bb04059684em.jpg','1573.03','1910.11','196','','','1','flash_deal','02/02/2022','','','file','2021-09-30 15:48:38','2025-12-18 11:02:51','','','normal','1634134938VjgHcb62dec2d6a241fc90ce2bb04059684em.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('541','21','12','0','2','0','Hot Selling s10+ Unlocked 8+16MP 8 Core Dual SIM 4G+64G Cheap Smart Phone 5.8 inch','Hot-Selling-s----Unlocked-----MP---Core-Dual-SIM--G---G-Cheap-Smart-Phone-----inch','65dVy8J8Uo25gg3e6sf456fgh','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134920Ha04a8a2d450544c9a80996bcdd70c543b.jpg','134.83','189.78','199','','','1','top','','','','file','2021-09-30 15:48:38','2021-10-13 14:22:00','','','normal','16341349201T0Ha04a8a2d450544c9a80996bcdd70c543b.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('542','21','12','0','2','0','Cheap Price Mobile Phones i13 Pro 6.6inch FHD Big Screen Smart Phone 12+512GB','Cheap-Price-Mobile-Phones-i---Pro----inch-FHD-Big-Screen-Smart-Phone-------GB','65dVy8J8Uo25gg3e23f4fdgh','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134904H220c85b541d145789e167a4b23787dd5h.jpg','1235.96','1460.67','199','','','1','flash_deal','02/02/2022','','','file','2021-09-30 15:48:38','2021-10-16 18:01:27','','','normal','1634134904Sy7H220c85b541d145789e167a4b23787dd5h.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('543','21','12','0','2','0','New product 2019 Refurbished used smart phone for I phone XS MAX XR 64GB 256GB 4G','New-product------Refurbished-used-smart-phone-for-I-phone-XS-MAX-XR---GB----GB--G','65dVy8J8Uo25gg3e23ty6ge4','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134888H624bc94495584b2384c07e2db9f2bdfcd.jpg','932.58','1348.31','199','','','1','new','02/02/2022','','','file','2021-09-30 15:48:38','2021-10-13 14:21:28','','','normal','1634134888WQ3H624bc94495584b2384c07e2db9f2bdfcd.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('544','21','13','0','2','0','Wholesale Price 1.3 Mega HD DV SLR Camera, 2.4 inch LCD Full HD 720P Recording, EIS, Supply Drops','Wholesale-Price-----Mega-HD-DV-SLR-Camera------inch-LCD-Full-HD----P-Recording--EIS--Supply-Drops','65dVy8J8Uo2gfd7','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134872HTB1BqH4aIfrK1RkSmLyq6xGApXaJ.jpg','146.07','167.3','197','','','1','top','','','','file','2021-09-30 15:48:38','2025-04-27 20:06:24','','','normal','1634134872KxvHTB1BqH4aIfrK1RkSmLyq6xGApXaJ.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('545','21','13','0','2','0','Dropshipping EIS 2.4 inch LCD Full HD 720P Recording 1.3 Mega HD DV SLR Camera','Dropshipping-EIS-----inch-LCD-Full-HD----P-Recording-----Mega-HD-DV-SLR-Camera','65dVy8J8Uo1dfg87','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134831H75345266923349e280d5f5e5fd5c71e5a.jpg','134.83','189.78','199','','','1','flash_deal','02/02/2022','','','file','2021-09-30 15:48:38','2021-10-13 14:20:31','','','normal','1634134831EzTH75345266923349e280d5f5e5fd5c71e5a.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('546','21','22','0','2','0','DC-7200 DSLR support 32G sd card video camera 33 Mega pixels digital camera dslr HD professional','DC------DSLR-support---G-sd-card-video-camera----Mega-pixels-digital-camera-dslr-HD-professional','65dVy8J8Uo22cvh9','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134811H349db6b6a70c4604b507c446a7b06ae5k.jpg','1352.81','','199','','','1','new','','','','file','2021-09-30 15:48:38','2021-10-16 14:02:36','','','normal','1634134811DFfH349db6b6a70c4604b507c446a7b06ae5k.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('559','19','9','34','2','0','Shirts Menshirts Mens Cotton Shirt Factory Direct Various Style Customization','sxJShirts-Menshirts-Mens-Cotton-Shirt-Factory-Direct-Various-Style-CustomizationTf','65dVy8Jzx45gt','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134777H8fb00d2318bd48048dcd8bf2546f3f52h.jpg','1352.81','','199','','','1','new','','','','file','2021-09-30 15:48:39','2021-10-13 14:19:37','','','normal','1634134777NcCH8fb00d2318bd48048dcd8bf2546f3f52h.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('560','19','9','34','2','0','Men Shirt Custom Shirts Hot Sale Men Women Polyester Cotton Long Sleeve Casual','LGUMen-Shirt-Custom-Shirts-Hot-Sale-Men-Women-Polyester-Cotton-Long-Sleeve-CasualI5','65dVy8Jtt5rde5','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134766H206d1d68ce2440ada7b7bc6dfb6354a8p.jpg','1352.81','1893.26','199','','','1','new','','','','file','2021-09-30 15:48:39','2021-10-13 14:19:26','','','normal','1634134766vobH206d1d68ce2440ada7b7bc6dfb6354a8p.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('561','19','9','34','2','0','Men Shirt Custom Shirts High Quality Men Women Bamboo Fiber Long Sleeve','Men-Shirt-Custom-Shirts-High-Quality-Men-Women-Bamboo-Fiber-Long-Sleeve','65dVy8Jzxsd','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134755Hdb695965a744470b958f17251d4d277ew.jpg','1352.81','1893.26','198','','','1','feature','','','','file','2021-09-30 15:48:39','2025-12-18 11:12:20','','','normal','1634134755JdFHdb695965a744470b958f17251d4d277ew.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('562','19','9','17','2','0','Men Leather Jacket Men New Men High Quality Collar Motorcycle Punk Leather Jacket','Men-Leather-Jacket-Men-New-Men-High-Quality-Collar-Motorcycle-Punk-Leather-Jacket','65dVy8Jzxdty','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134738H7e01b6c3e996405db8555c5e81c8ade0b.jpg','1352.81','1893.26','199','','','1','flash_deal','02/02/2022','','','file','2021-09-30 15:48:39','2021-10-16 18:00:52','','','normal','1634134738rC1H7e01b6c3e996405db8555c5e81c8ade0b.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('563','19','9','17','3','0','Men Shirt Custom Shirts Hot Sale Men Women Polyester Cotton Long Sleeve Casual pro','Men-Shirt-Custom-Shirts-Hot-Sale-Men-Women-Polyester-Cotton-Long-Sleeve-Casual-pro','65dVy8Jt456tg','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134720Hedf90cf6656546e7a8548d4980edc5bda.jpg','1352.81','1893.26','191','','','1','new','','','','file','2021-09-30 15:48:39','2025-12-21 03:25:12','','','normal','1634134720QX6Hedf90cf6656546e7a8548d4980edc5bda.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('564','19','0','0','2','0','Pants Factory Hot Sales Large Pockets Elastic Trousers Men Cargo Pants','Pants-Factory-Hot-Sales-Large-Pockets-Elastic-Trousers-Men-Cargo-Pants','65dVy8Jrty56','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134687H32fbf23e6d3346748cd304531e0a272aa.jpg','1352.81','1893.26','199','','','1','new','','','','file','2021-09-30 15:48:39','2021-10-13 14:18:07','','','normal','163413468740iH32fbf23e6d3346748cd304531e0a272aa.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('565','19','0','0','2','0','Pants Wholesales Custom Cotton Workout Exercise Sweatpants Gym Jogger Pants','Pants-Wholesales-Custom-Cotton-Workout-Exercise-Sweatpants-Gym-Jogger-Pants','65dVy8Jrt546g','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134669H367ac7f408644e8dad8cd151e5cc683cF.jpg','1352.81','1893.26','199','','','1','new','','','','file','2021-09-30 15:48:39','2021-10-13 14:17:49','','','normal','1634134669FDWH367ac7f408644e8dad8cd151e5cc683cF.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('566','19','0','0','2','0','Pants Men Jogger Pants Just Arrived Street Type Fitness Running Active Wear','Pants-Men-Jogger-Pants-Just-Arrived-Street-Type-Fitness-Running-Active-Wear','65dVy8Jt45xswe','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134635H12506540827146faad596973c3424597O.jpg','1352.81','1893.26','199','','','1','new','','','','file','2021-09-30 15:48:39','2021-10-13 14:17:15','','','normal','16341346352QRH12506540827146faad596973c3424597O.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('567','19','0','0','2','0','Slim Fit Joggers Tapered Sweatpants For Gym Casual Zipper','Slim-Fit-Joggers-Tapered-Sweatpants-For-Gym-Casual-Zipper','65dVy8Jzxewr34','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134618Ha24a8c4da58943759d7725cea11cbd5eU.jpg','1352.81','1893.26','199','','','1','new','','','','file','2021-09-30 15:48:39','2021-10-13 14:16:59','','','normal','1634134618UnmHa24a8c4da58943759d7725cea11cbd5eU.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('568','19','0','0','2','0','Men Shirt Custom Shirts High Quality Men Women Bamboo Fiber Long Sleeve 3','Men-Shirt-Custom-Shirts-High-Quality-Men-Women-Bamboo-Fiber-Long-Sleeve--','65dVy8Jzxewr34xs','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134594Haeebad0b0907432897c3ee27adc13ef48.jpg','1352.81','','199','','','1','new','','','','file','2021-09-30 15:48:39','2021-10-13 14:16:34','','','normal','163413459494CHaeebad0b0907432897c3ee27adc13ef48.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('569','22','26','0','2','0','AMEIZII Beauty And Personal Care Face Skin Masks Nose Blackhead Remover','AMEIZII-Beauty-And-Personal-Care-Face-Skin-Masks-Nose-Blackhead-Remover','65dVy8Jt45xsrr','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134558H6e71ffd70a134245aaab2261bf685508j.jpg','1352.81','1893.26','199','','','1','new','','','','file','2021-09-30 15:48:39','2021-10-13 14:15:58','','','normal','16341345587a1H6e71ffd70a134245aaab2261bf685508j.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('570','22','24','0','2','0','OEM ODM Fullerene essence best face moisturizer whitening anti-aging cream','OEM-ODM-Fullerene-essence-best-face-moisturizer-whitening-anti-aging-cream','65dVy8Jrt546gcsw','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134534H1575ae72d5e144cfbf237196d6ea139bj.jpg','1352.81','1893.26','199','','','1','new','','','','file','2021-09-30 15:48:39','2021-10-13 14:15:34','','','normal','1634134534qTHH1575ae72d5e144cfbf237196d6ea139bj.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('571','22','27','0','2','0','Korean Beauty Organic Brightening Peel off Hyaluronic Acid Facial Jelly Powder','Korean-Beauty-Organic-Brightening-Peel-off-Hyaluronic-Acid-Facial-Jelly-Powder','65dVy8Jrtxew','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134515H8064fa369ca644958a52846035a40641p.jpg','1352.81','1893.26','199','','','1','new','','','','file','2021-09-30 15:48:39','2021-10-13 14:15:15','','','normal','1634134515gdzH8064fa369ca644958a52846035a40641p.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('572','27','30','0','2','7','Wordpress Ecommerce Online Store B2C Online Shop Website Design Business Online Website','Wordpress-Ecommerce-Online-Store-B-C-Online-Shop-Website-Design-Business-Online-Website','','HTML,CSS,Wordpress,Laravel','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["High Resolution","Compatible Browsers","Files Included","Software Framework","Software Version"]','["Yes","IE10, IE11, Firefox, Safari, Opera, Chrome, Edge","JavaScript JS, HTML, CSS, PHP, SQL","Wordpress","PHP 8.x, PHP 7.x, MySQL 5.x"]','1','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae
 illo soluta sapiente minus voluptatibus molestias voluptates maiores 
repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae 
illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero 
porro at asperiores atque numquam adipisci esse perferendis hic dolore 
dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit 
voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam
 ab adipisci nihil mollitia odio ducimus architecto unde harum saepe 
illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. 
Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat
 nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod 
consectetur culpa autem aliquid? Inventore adipisci officia error dolore
 provident omnis sint perferendis, consequuntur, sapiente magni sequi 
quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed 
expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio 
ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla 
perspiciatis similique est, libero sapiente hic error amet, quisquam vel
 obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error 
voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident
 dolores facere necessitatibus commodi vel in, laborum quidem aliquam 
ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, 
sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam 
qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? 
Dolore excepturi quod doloribus quam rem placeat at odit dicta amet 
expedita illo laboriosam minus ut minima, tenetur suscipit soluta 
assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum 
repellat consequatur odit, laudantium velit non nobis labore illo omnis 
quod suscipit voluptates quaerat consectetur temporibus et, laborum quam
 ducimus earum! Repellat, fugit? Repudiandae repellendus maiores 
doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa 
itaque? Harum et, velit ratione corrupti error asperiores optio, 
recusandae mollitia necessitatibus cumque vero voluptatem ullam porro 
aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae 
ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque 
officiis ea et atque eveniet similique sequi illo!</p>','1634134489U32feef72859d4a018dc33710b3647992j.jpg','35','70','0','','','1','new','','1632344407sample.zip','','file','2021-09-30 15:48:39','2021-10-16 18:28:29','','','digital','16341344897saU32feef72859d4a018dc33710b3647992j.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('573','27','32','0','2','7','Custom Website Builder Shopping Website Design and Development','e0ACustom-Website-Builder-Shopping-Website-Design-and-DevelopmenthV','','HTML,CSS,Wordpress,Laravel','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["High Resolution","Compatible Browsers","Files Included","Software Framework","Software Version"]','["Yes","IE10, IE11, Firefox, Safari, Opera, Chrome, Edge","JavaScript JS, HTML, CSS, PHP, SQL","Wordpress","PHP 8.x, PHP 7.x, MySQL 5.x"]','1','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae
 illo soluta sapiente minus voluptatibus molestias voluptates maiores 
repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae 
illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero 
porro at asperiores atque numquam adipisci esse perferendis hic dolore 
dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit 
voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam
 ab adipisci nihil mollitia odio ducimus architecto unde harum saepe 
illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. 
Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat
 nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod 
consectetur culpa autem aliquid? Inventore adipisci officia error dolore
 provident omnis sint perferendis, consequuntur, sapiente magni sequi 
quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed 
expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio 
ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla 
perspiciatis similique est, libero sapiente hic error amet, quisquam vel
 obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error 
voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident
 dolores facere necessitatibus commodi vel in, laborum quidem aliquam 
ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, 
sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam 
qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? 
Dolore excepturi quod doloribus quam rem placeat at odit dicta amet 
expedita illo laboriosam minus ut minima, tenetur suscipit soluta 
assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum 
repellat consequatur odit, laudantium velit non nobis labore illo omnis 
quod suscipit voluptates quaerat consectetur temporibus et, laborum quam
 ducimus earum! Repellat, fugit? Repudiandae repellendus maiores 
doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa 
itaque? Harum et, velit ratione corrupti error asperiores optio, 
recusandae mollitia necessitatibus cumque vero voluptatem ullam porro 
aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae 
ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque 
officiis ea et atque eveniet similique sequi illo!</p>','1634134470H32e77b35ed3e4f359723b0893abdf333y.jpg','35','70','0','','','1','feature','','1632344739sample.zip','','file','2021-09-30 15:48:39','2021-11-17 14:22:31','["dff-dfg-dfg-dfg-dfg","hjk-hjk-hjk-hkk-hjk","xcv-xcv-xcv-xvxv-xcv","bnm-bnm-bnm-bm-bnm"]','["dff-dfg-dfg-dfg-dfg","hjk-hjk-hjk-hkk-hjk","xcv-xcv-xcv-xvxv-xcv","bnm-bnm-bnm-bm-bnm"]','license','1634134470aUCH32e77b35ed3e4f359723b0893abdf333y.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('574','27','31','0','2','0','Website Development Payment Gateway Website Online Business Webdesign Responsive','Website-Development-Payment-Gateway-Website-Online-Business-Webdesign-Responsive','','HTML,CSS,Wordpress,Laravel','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["High Resolution","Compatible Browsers","Files Included","Software Framework","Software Version"]','["Yes","IE10, IE11, Firefox, Safari, Opera, Chrome, Edge","JavaScript JS, HTML, CSS, PHP, SQL","Wordpress","PHP 8.x, PHP 7.x, MySQL 5.x"]','1','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae
 illo soluta sapiente minus voluptatibus molestias voluptates maiores 
repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae 
illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero 
porro at asperiores atque numquam adipisci esse perferendis hic dolore 
dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit 
voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam
 ab adipisci nihil mollitia odio ducimus architecto unde harum saepe 
illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. 
Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat
 nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod 
consectetur culpa autem aliquid? Inventore adipisci officia error dolore
 provident omnis sint perferendis, consequuntur, sapiente magni sequi 
quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed 
expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio 
ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla 
perspiciatis similique est, libero sapiente hic error amet, quisquam vel
 obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error 
voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident
 dolores facere necessitatibus commodi vel in, laborum quidem aliquam 
ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, 
sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam 
qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? 
Dolore excepturi quod doloribus quam rem placeat at odit dicta amet 
expedita illo laboriosam minus ut minima, tenetur suscipit soluta 
assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum 
repellat consequatur odit, laudantium velit non nobis labore illo omnis 
quod suscipit voluptates quaerat consectetur temporibus et, laborum quam
 ducimus earum! Repellat, fugit? Repudiandae repellendus maiores 
doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa 
itaque? Harum et, velit ratione corrupti error asperiores optio, 
recusandae mollitia necessitatibus cumque vero voluptatem ullam porro 
aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae 
ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque 
officiis ea et atque eveniet similique sequi illo!</p>','1634134459Hd8e8ee6b580644beba14f0866d6a1269l.jpg','35','70','0','','','1','top','','1632344834sample.zip','','file','2021-09-30 15:48:39','2021-10-16 18:16:59','','','digital','16341344598AFHd8e8ee6b580644beba14f0866d6a1269l.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('575','27','30','0','2','7','wordpress shopify Start Your Own eCommerce Site Create Your Online Store Today online store websit','qzswordpress-shopify-Start-Your-Own-eCommerce-Site-Create-Your-Online-Store-Today-online-store-websit5l','','HTML,CSS,Wordpress,Laravel','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["High Resolution","Compatible Browsers","Files Included","Software Framework","Software Version"]','["Yes","IE10, IE11, Firefox, Safari, Opera, Chrome, Edge","JavaScript JS, HTML, CSS, PHP, SQL","Wordpress","PHP 8.x, PHP 7.x, MySQL 5.x"]','1','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae
 illo soluta sapiente minus voluptatibus molestias voluptates maiores 
repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae 
illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero 
porro at asperiores atque numquam adipisci esse perferendis hic dolore 
dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit 
voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam
 ab adipisci nihil mollitia odio ducimus architecto unde harum saepe 
illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. 
Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat
 nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod 
consectetur culpa autem aliquid? Inventore adipisci officia error dolore
 provident omnis sint perferendis, consequuntur, sapiente magni sequi 
quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed 
expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio 
ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla 
perspiciatis similique est, libero sapiente hic error amet, quisquam vel
 obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error 
voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident
 dolores facere necessitatibus commodi vel in, laborum quidem aliquam 
ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, 
sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam 
qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? 
Dolore excepturi quod doloribus quam rem placeat at odit dicta amet 
expedita illo laboriosam minus ut minima, tenetur suscipit soluta 
assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum 
repellat consequatur odit, laudantium velit non nobis labore illo omnis 
quod suscipit voluptates quaerat consectetur temporibus et, laborum quam
 ducimus earum! Repellat, fugit? Repudiandae repellendus maiores 
doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa 
itaque? Harum et, velit ratione corrupti error asperiores optio, 
recusandae mollitia necessitatibus cumque vero voluptatem ullam porro 
aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae 
ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque 
officiis ea et atque eveniet similique sequi illo!</p>','1634134442Hf435248807dd438aaf4d8a53e6f7eaedP.jpg','35','70','0','','','1','new','','1632344887sample.zip','','file','2021-09-30 15:48:39','2021-10-18 11:14:19','["1","2","3","4","5"]','["yui-yui-yui-yui-gnn","dfv-dfv-dfv-dfv-dfv","ghn-ghn-ghn-ghn-ghn","asx-asx-asx-asx-asx","wef-wf-wf-wef-wef"]','license','1634134442OSWHf435248807dd438aaf4d8a53e6f7eaedP.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('576','27','30','0','2','0','Create a Wordpress Website Designers Ecommerce, Multivendor Website Software','Create-a-Wordpress-Website-Designers-Ecommerce--Multivendor-Website-Software','','HTML,CSS,Wordpress,Laravel','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["High Resolution","Compatible Browsers","Files Included","Software Framework","Software Version"]','["Yes","IE10, IE11, Firefox, Safari, Opera, Chrome, Edge","JavaScript JS, HTML, CSS, PHP, SQL","Wordpress","PHP 8.x, PHP 7.x, MySQL 5.x"]','1','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae
 illo soluta sapiente minus voluptatibus molestias voluptates maiores 
repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae 
illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero 
porro at asperiores atque numquam adipisci esse perferendis hic dolore 
dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit 
voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam
 ab adipisci nihil mollitia odio ducimus architecto unde harum saepe 
illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. 
Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat
 nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod 
consectetur culpa autem aliquid? Inventore adipisci officia error dolore
 provident omnis sint perferendis, consequuntur, sapiente magni sequi 
quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed 
expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio 
ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla 
perspiciatis similique est, libero sapiente hic error amet, quisquam vel
 obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error 
voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident
 dolores facere necessitatibus commodi vel in, laborum quidem aliquam 
ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, 
sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam 
qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? 
Dolore excepturi quod doloribus quam rem placeat at odit dicta amet 
expedita illo laboriosam minus ut minima, tenetur suscipit soluta 
assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum 
repellat consequatur odit, laudantium velit non nobis labore illo omnis 
quod suscipit voluptates quaerat consectetur temporibus et, laborum quam
 ducimus earum! Repellat, fugit? Repudiandae repellendus maiores 
doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa 
itaque? Harum et, velit ratione corrupti error asperiores optio, 
recusandae mollitia necessitatibus cumque vero voluptatem ullam porro 
aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae 
ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque 
officiis ea et atque eveniet similique sequi illo!</p>','1634134428U4431f054a85341a5a36101d8df36f90a7.jpg','35','','0','','','1','new','','1632344940sample.zip','','file','2021-09-30 15:48:39','2021-10-16 18:16:59','','','digital','1634134428tuCU4431f054a85341a5a36101d8df36f90a7.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('577','27','0','0','2','7','Best Online Wholesale Website Design and development company | Ecommerce shopping webdesign','fgcBest-Online-Wholesale-Website-Design-and-development-company--Ecommerce-shopping-webdesign8q','','HTML,CSS,Wordpress,Laravel','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["High Resolution","Compatible Browsers","Files Included","Software Framework","Software Version"]','["Yes","IE10, IE11, Firefox, Safari, Opera, Chrome, Edge","JavaScript JS, HTML, CSS, PHP, SQL","Wordpress","PHP 8.x, PHP 7.x, MySQL 5.x"]','1','<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae
 illo soluta sapiente minus voluptatibus molestias voluptates maiores 
repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae 
illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero 
porro at asperiores atque numquam adipisci esse perferendis hic dolore 
dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit 
voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam
 ab adipisci nihil mollitia odio ducimus architecto unde harum saepe 
illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. 
Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat
 nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod 
consectetur culpa autem aliquid? Inventore adipisci officia error dolore
 provident omnis sint perferendis, consequuntur, sapiente magni sequi 
quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed 
expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio 
ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla 
perspiciatis similique est, libero sapiente hic error amet, quisquam vel
 obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error 
voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident
 dolores facere necessitatibus commodi vel in, laborum quidem aliquam 
ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, 
sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam 
qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? 
Dolore excepturi quod doloribus quam rem placeat at odit dicta amet 
expedita illo laboriosam minus ut minima, tenetur suscipit soluta 
assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum 
repellat consequatur odit, laudantium velit non nobis labore illo omnis 
quod suscipit voluptates quaerat consectetur temporibus et, laborum quam
 ducimus earum! Repellat, fugit? Repudiandae repellendus maiores 
doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa 
itaque? Harum et, velit ratione corrupti error asperiores optio, 
recusandae mollitia necessitatibus cumque vero voluptatem ullam porro 
aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae 
ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque 
officiis ea et atque eveniet similique sequi illo!</p>','1634134411Ucc4d26e9889041dc899c3522859ed3f88.jpg','35','70','0','','','1','best','','1632345025sample.zip','','file','2021-09-30 15:48:39','2022-03-02 08:18:08','["qqq-qqq-qqq-qqq","www-www-www-www","aaa-aaa-aaa-aaa"]','["qqq-qqq-qqq-qqq","www-www-www-www","aaa-aaa-aaa-aaa"]','license','16341344113y6Ucc4d26e9889041dc899c3522859ed3f88.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('580','22','27','0','2','0','Mask stick to your face moisture skin care clay facial natural moisturiser low moq','Mask-stick-to-your-face-moisture-skin-care-clay-facial-natural-moisturiser-low-moq','65dVy8Jrtfdg4','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134291Habf8df421e5b4d99b802fc6120d050a7N.jpg','1352.81','1893.26','197','','','1','new','','','','file','2021-09-30 15:48:39','2021-12-03 11:42:25','','','normal','16341342918rPHabf8df421e5b4d99b802fc6120d050a7N.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('581','22','26','0','2','0','Face Lift Band Facial Beauty Slimming Double Chin Bandage Strap Weight','CGtFace-Lift-Band-Facial-Beauty-Slimming-Double-Chin-Bandage-Strap-Weight1U','65dVy8345dfg','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134273Hcfd42cbddf7b40b08d3f9048f4d425e5A.jpg','1352.81','','198','','','1','new','','','','file','2021-09-30 15:48:39','2021-12-03 11:42:25','','','normal','1634134273FQVHcfd42cbddf7b40b08d3f9048f4d425e5A.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('582','22','27','0','2','0','Mini Electric Silicone Face Brush Massager Cepillo Facial Beautiful Silicone Facial Cleansing Brush','Mini-Electric-Silicone-Face-Brush-Massager-Cepillo-Facial-Beautiful-Silicone-Facial-Cleansing-Brush','65dVy834345g','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134262Hdee8e662b5c747d69275ffd10450d8c1u.jpg','1352.81','1893.26','199','','','1','best','','','','file','2021-09-30 15:48:39','2021-10-13 14:11:02','','','normal','1634134262rpfHdee8e662b5c747d69275ffd10450d8c1u.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('583','22','24','0','2','0','Beauty Beauty Anti-wrinkle USB Charging Neck Wrinkle Removal Neck Care','Beauty-Beauty-Anti-wrinkle-USB-Charging-Neck-Wrinkle-Removal-Neck-Care','65dVy8Jr8fg','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134247He4cca751c6c94532958892118104e47ck.jpg','1352.81','1893.26','199','','','1','new','','','','file','2021-09-30 15:48:39','2021-10-16 14:10:33','','','normal','163413424721nHe4cca751c6c94532958892118104e47ck.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('584','22','26','0','2','0','Latex free makeup sponge Customized beauty make up blender makeup spong','sEcLatex-free-makeup-sponge-Customized-beauty-make-up-blender-makeup-spongpD','65dVy8Jr8fg566','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134231HTB1HSCEe25G3KVjSZPxq6zI3XXao.jpg','1352.81','1893.26','199','','','1','best','','','','file','2021-09-30 15:48:39','2021-10-13 14:10:31','','','normal','1634134231tV8HTB1HSCEe25G3KVjSZPxq6zI3XXao.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('585','22','27','0','1','0','Home Use Beauty Device Face Massager Facial Lifting Tool Beauty Anti-Aging','p5lHome-Use-Beauty-Device-Face-Massager-Facial-Lifting-Tool-Beauty-AntiAgingbD','65dVy83xxd08','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134210HTB1K4CyX6DuK1Rjy1zjq6zraFXaj.jpg','1352.81','1893.26','198','','','1','new','','','','file','2021-09-30 15:48:39','2021-12-03 11:42:25','','','normal','1634134210aEUHTB1K4CyX6DuK1Rjy1zjq6zraFXaj.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('586','22','0','0','2','0','BREYLEE facial mask hyaluronic acid facial firming mask beauty','Td5BREYLEE-facial-mask-hyaluronic-acid-facial-firming-mask-beautyca','65dVy8345fg9776','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134188HTB1ymRhXfjsK1Rjy1Xaq6zispXad.jpg','1352.81','0','170','','','1','feature','','','','file','2021-09-30 15:48:39','2025-04-13 21:53:01','','','normal','1634134188F6gHTB1ymRhXfjsK1Rjy1Xaq6zispXad.jpg','');

INSERT INTO items (id, category_id, subcategory_id, childcategory_id, tax_id, brand_id, name, slug, sku, tags, video, sort_details, specification_name, specification_description, is_specification, details, photo, discount_price, previous_price, stock, meta_keywords, meta_description, status, is_type, date, file, link, file_type, created_at, updated_at, license_name, license_key, item_type, thumbnail, affiliate_link) VALUES ('587','18','6','0','2','7','New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses','0AENew-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-DressesnC','65dVy8J8Uo','women,dresses','https://www.youtube.com/watch?v=6ZVEAXmupEo','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.','["Product Type:","Material:","Lining Material:","Fabric Type:","Technics:","Decoration:","Size:"]','["Velvet elegant sleeveless evening dress","Polyester \/ Spandex","Polyester","Fleece","Plain dyed","Sequins","S\/M\/L"]','1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','1634134144H03667d1e3ae44be08f32b72d840db095J.jpg','334.83','500.78','92','','','1','best','','','','file','2021-09-30 17:46:05','2025-04-27 20:06:24','','','normal','1634134144s9RH03667d1e3ae44be08f32b72d840db095J.jpg','');


CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO languages (id, language, file, name, is_default, rtl, created_at, updated_at, type) VALUES ('1','English','1744539358qWpD7nW6.json','1744539358qWpD7nW6','1','0','2025-12-21 03:02:10','2025-12-21 03:48:10','Website');

INSERT INTO languages (id, language, file, name, is_default, rtl, created_at, updated_at, type) VALUES ('2','Arabic','1647792286wzAqXQOx.json','1647792286wzAqXQOx','0','1','2025-12-21 03:34:10','2025-12-21 03:00:10','Website');

INSERT INTO languages (id, language, file, name, is_default, rtl, created_at, updated_at, type) VALUES ('3','English','1647794074eEeCbfDD.json','1647794074eEeCbfDD','1','0','2025-12-21 03:08:10','2025-12-21 03:19:10','Dashboard');

INSERT INTO languages (id, language, file, name, is_default, rtl, created_at, updated_at, type) VALUES ('4','Arabic','1638870927JMqjbCXv.json','1638870927JMqjbCXv','0','1','2025-12-21 03:09:10','2025-12-21 03:03:10','Dashboard');


CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) DEFAULT NULL,
  `menus` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO menus (id, language_id, menus, created_at, updated_at) VALUES ('1','1','[{"text":"Home","href":"","icon":"empty","target":"_self","title":"","type":"home"},{"text":"Shop","href":"","icon":"empty","target":"_self","title":"","type":"shop"},{"text":"Campaign","href":"","icon":"empty","target":"_self","title":"","type":"campaign"},{"type":"blog","text":"Blog","href":"","target":"_self"},{"type":"pages","text":"Pages","href":"","target":"_self","children":[{"type":"7","text":"About Us","href":"","target":"_self"},{"type":"14","text":"How It Works","href":"","target":"_self"},{"type":"10","text":"Privacy Policy","href":"","target":"_self"},{"type":"11","text":"Terms & Service","href":"","target":"_self"},{"type":"12","text":"Return Policy","href":"","target":"_self"}]},{"text":"Contact","href":"","icon":"empty","target":"_self","title":"","type":"contact"}]','2025-02-26 06:09:08','2025-02-26 06:09:08');


CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO messages (id, ticket_id, user_id, message, created_at, updated_at) VALUES ('1','1','1','test','2021-12-03 12:33:29','2021-12-03 12:33:29');


CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO migrations (id, migration, batch) VALUES ('1','2021_08_21_073142_create_admins_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('2','2021_08_21_073507_create_users_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('3','2021_09_20_144419_create_items_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('4','2021_09_20_151605_create_settings_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('5','2021_09_21_073848_create_attributes_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('6','2021_09_21_073951_create_attribute_options_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('7','2021_09_21_074028_create_banners_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('8','2021_09_21_074231_create_bcategories_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('9','2021_09_21_074309_create_brands_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('10','2021_09_21_074412_create_campaign_items_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('11','2021_09_21_074536_create_categories_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('12','2021_09_21_074744_create_chield_categories_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('13','2021_09_21_074952_create_countries_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('14','2021_09_21_075024_create_currencies_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('15','2021_09_21_075231_create_email_templates_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('16','2021_09_21_075346_create_faqs_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('17','2021_09_21_075642_create_fcategories_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('18','2021_09_21_080223_create_galleries_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('19','2021_09_21_080320_create_home_cutomizes_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('20','2021_09_21_080454_create_languages_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('21','2021_09_21_080652_create_messages_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('22','2021_09_21_080805_create_notifications_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('23','2021_09_21_090957_create_orders_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('25','2021_09_21_092255_create_payment_settings_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('26','2021_09_21_092722_create_posts_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('27','2021_09_21_092801_create_promo_codes_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('28','2021_09_21_093709_create_reviews_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('29','2021_09_21_093833_create_roles_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('30','2021_09_21_094020_create_services_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('31','2021_09_21_094413_create_shipping_services_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('32','2021_09_21_094517_create_sliders_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('33','2021_09_21_094630_create_socials_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('34','2021_09_21_094739_create_subcategories_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('35','2021_09_21_094831_create_subscribers_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('36','2021_09_21_094903_create_taxes_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('37','2021_09_21_095021_create_tickets_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('38','2021_09_21_095605_create_track_orders_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('39','2021_09_21_095650_create_transactions_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('40','2021_09_21_095836_create_wishlists_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('41','2021_09_21_091316_create_pages_table','2');

INSERT INTO migrations (id, migration, batch) VALUES ('42','2021_09_22_095954_add_extra_visibility_to_settings_table','3');

INSERT INTO migrations (id, migration, batch) VALUES ('43','2021_09_29_075836_add_theme_to_settings_table','4');

INSERT INTO migrations (id, migration, batch) VALUES ('44','2021_09_30_103035_google_chapcha_to_settings__table','5');

INSERT INTO migrations (id, migration, batch) VALUES ('45','2021_10_04_141643_add_currency_deraction_to_settings_table','6');

INSERT INTO migrations (id, migration, batch) VALUES ('46','2021_10_08_135417_add_theme_field_to_sliders_table','7');

INSERT INTO migrations (id, migration, batch) VALUES ('51','2021_10_09_153059_license_to_items_table','8');

INSERT INTO migrations (id, migration, batch) VALUES ('56','2021_10_09_173004_remove_item_type_to_items_table','9');

INSERT INTO migrations (id, migration, batch) VALUES ('57','2021_10_09_173038_set_item_type_to_items_table','9');

INSERT INTO migrations (id, migration, batch) VALUES ('58','2021_10_10_051502_add_scrript_to_settings_table','10');

INSERT INTO migrations (id, migration, batch) VALUES ('59','2021_10_10_142339_thumbnail_to_items_table','11');

INSERT INTO migrations (id, migration, batch) VALUES ('61','2021_10_10_163455_home_page4_to_home_cutomizes_table','12');

INSERT INTO migrations (id, migration, batch) VALUES ('62','2021_10_11_090243_create_extra_settings_table','13');

INSERT INTO migrations (id, migration, batch) VALUES ('63','2021_10_12_145150_add_home4populer_category_to_home_cutomizes_table','14');

INSERT INTO migrations (id, migration, batch) VALUES ('64','2021_10_13_100048_create_sitemaps_table','15');

INSERT INTO migrations (id, migration, batch) VALUES ('65','2021_10_15_140708_add_type_to_promo_codes_table','16');

INSERT INTO migrations (id, migration, batch) VALUES ('66','2021_10_15_163958_add_announcement_link_to_settings_table','17');

INSERT INTO migrations (id, migration, batch) VALUES ('68','2021_11_21_143624_add_shop_extra_field_to_settings_table','19');

INSERT INTO migrations (id, migration, batch) VALUES ('69','2021_11_20_105052_add_stock_to_attribute_options_table','20');

INSERT INTO migrations (id, migration, batch) VALUES ('71','2021_11_21_151422_add_home_page_title_to_settings_table','21');

INSERT INTO migrations (id, migration, batch) VALUES ('72','2021_11_23_141528_add_type_to_languages_table','22');

INSERT INTO migrations (id, migration, batch) VALUES ('73','2021_11_23_144810_add_privacy_terms_to_settings_table','23');

INSERT INTO migrations (id, migration, batch) VALUES ('74','2021_11_23_182026_add_guest_checkout_to_settings_table','24');

INSERT INTO migrations (id, migration, batch) VALUES ('76','2021_11_24_144859_add_guest_hero_banner_to_home_cutomizes_table','25');

INSERT INTO migrations (id, migration, batch) VALUES ('77','2021_11_26_163222_add_affiliate_link_to_items_table','26');

INSERT INTO migrations (id, migration, batch) VALUES ('78','2021_11_27_113624_add_css_field_to_settings_table','27');

INSERT INTO migrations (id, migration, batch) VALUES ('79','2021_12_05_161222_add_flash_section_to_extra_settings_table','28');

INSERT INTO migrations (id, migration, batch) VALUES ('82','2021_12_05_165840_add_popup_field_to_settings_table','29');

INSERT INTO migrations (id, migration, batch) VALUES ('83','2021_12_06_141255_add_3column_section_to_extra_settings_table','30');

INSERT INTO migrations (id, migration, batch) VALUES ('84','2022_01_03_141239_add_currency_seperator_to_settings_table','31');

INSERT INTO migrations (id, migration, batch) VALUES ('85','2022_01_04_142738_create_states_table','32');

INSERT INTO migrations (id, migration, batch) VALUES ('86','2022_01_04_145532_add_state_id_to_users_table','33');

INSERT INTO migrations (id, migration, batch) VALUES ('88','2022_01_04_161647_add_state_id_to_orders_table','34');

INSERT INTO migrations (id, migration, batch) VALUES ('89','2022_01_06_155345_add_disqus_to_settings_table','35');

INSERT INTO migrations (id, migration, batch) VALUES ('90','2022_01_16_143429_add_type_to_states_table','36');

INSERT INTO migrations (id, migration, batch) VALUES ('91','2022_01_16_153254_add_state_to_orders_table','37');

INSERT INTO migrations (id, migration, batch) VALUES ('92','2022_03_01_162121_add_is_decemial_to_settings_table','38');

INSERT INTO migrations (id, migration, batch) VALUES ('93','2022_03_20_154807_update_column_to_home_cutomizes_table','39');

INSERT INTO migrations (id, migration, batch) VALUES ('94','2023_10_10_151706_order_mail_settings_table','40');

INSERT INTO migrations (id, migration, batch) VALUES ('95','2023_10_10_151706_ticket_mail_settings_table','40');

INSERT INTO migrations (id, migration, batch) VALUES ('96','2024_08_19_152014_create_jobs_table','41');

INSERT INTO migrations (id, migration, batch) VALUES ('97','2024_08_19_152355_add_category_enable_field_settings_table','41');

INSERT INTO migrations (id, migration, batch) VALUES ('98','2024_08_19_152355_add_queue_settings_table','41');

INSERT INTO migrations (id, migration, batch) VALUES ('99','2024_08_19_152355_add_working_field_settings_table','41');

INSERT INTO migrations (id, migration, batch) VALUES ('100','2024_08_19_1672355_add_attribute_type_settings_table','41');

INSERT INTO migrations (id, migration, batch) VALUES ('101','2024_08_19_1672355_add_email_verify_add_users_table','41');

INSERT INTO migrations (id, migration, batch) VALUES ('102','2024_08_19_1672355_add_is_mail_verify_settings_table','41');

INSERT INTO migrations (id, migration, batch) VALUES ('103','2024_08_19_1672355_add_is_single_checkout_settings_table','41');

INSERT INTO migrations (id, migration, batch) VALUES ('104','2024_10_01_185249_create_menus_table','41');

INSERT INTO migrations (id, migration, batch) VALUES ('105','2024_08_19_1672355_add_language_id_add_munes_table','42');

INSERT INTO migrations (id, migration, batch) VALUES ('106','2024_08_19_1672355_add_language_id_add_munes_table','42');

INSERT INTO migrations (id, migration, batch) VALUES ('107','2024_08_19_1672355_add_language_id_add_munes_table','42');


CREATE TABLE `notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `cart` text DEFAULT NULL,
  `currency_sign` varchar(255) DEFAULT NULL,
  `currency_value` varchar(255) DEFAULT NULL,
  `discount` text DEFAULT NULL,
  `shipping` text DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `tax` double NOT NULL DEFAULT 0,
  `charge_id` varchar(255) DEFAULT NULL,
  `transaction_number` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `curier_agent` varchar(50) DEFAULT NULL,
  `shipping_info` text DEFAULT NULL,
  `billing_info` text DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_price` double DEFAULT 0,
  `state` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('122','0','{"535-Red,M":{"options_id":[269,1094],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses","slug":"-----Summer-Women-Clothing-Ropa-Sexy-Lady-Cut-Out-Halter-Mini-Dresses","qty":"1","price":144.830000000000012505552149377763271331787109375,"main_price":134.830000000000012505552149377763271331787109375,"photo":"1634135320H408d7d7e37b4437297de600584c1af1fL.jpg","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":1,"title":"Free Delevery","price":0,"minimum_price":1000,"is_condition":1,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','zNF5gDbPnM','Pending','','{"ship_first_name":"showrav","ship_last_name":"Hasan","ship_email":"teacher@gmail.com","ship_phone":"01728332009","ship_company":null,"ship_address1":"Munshinogor,Delduar,Tangail,Dhaka,Bangladesh","ship_address2":null,"ship_zip":"1234","ship_city":"Tangail...","ship_country":"Bangladesh"}','{"_token":"QOD5MKmJWvK28KB8O9k913pbovZvrzIHs89Ac2KK","bill_first_name":"showrav","bill_last_name":"Hasan","bill_email":"teacher@gmail.com","bill_phone":"01728332009","bill_company":null,"bill_address1":"Munshinogor,Delduar,Tangail,Dhaka,Bangladesh","bill_address2":null,"bill_zip":"1234","bill_city":"Tangail...","bill_country":"Bangladesh","same_ship_address":"on"}','Unpaid','2022-01-16 15:37:45','2022-01-16 15:37:45','14.483','{"id":6,"name":"India","price":10,"status":1,"type":"fixed"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('123','1','{"587-Red,M":{"options_id":[429,1126],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses","slug":"0AENew-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-DressesnC","qty":"1","price":344.82999999999998408384271897375583648681640625,"main_price":334.82999999999998408384271897375583648681640625,"photo":"1634134144H03667d1e3ae44be08f32b72d840db095J.jpg","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":1,"title":"Free Delevery","price":0,"minimum_price":1000,"is_condition":1,"status":1,"created_at":null,"updated_at":null}','Stripe','txn_3KIb9QH3jdWvr8gE1Ph1bOxa','3.3483','ch_3KIb9QH3jdWvr8gE1d2Ivr4f','ZN6ve2FsBf','Pending','','{"ship_first_name":"Alex","ship_last_name":"Smith","ship_email":"user@gmail.com","ship_phone":"01728332009","ship_company":null,"ship_address1":"472 Clark Street,  Bay Shore, New York","ship_address2":null,"ship_zip":"3444","ship_city":"New York","ship_country":"United States"}','{"_token":"QOD5MKmJWvK28KB8O9k913pbovZvrzIHs89Ac2KK","bill_first_name":"Alex","bill_last_name":"Smith","bill_email":"user@gmail.com","bill_phone":"01728332009","bill_company":null,"bill_address1":"472 Clark Street,  Bay Shore, New York","bill_address2":null,"bill_zip":"3444","bill_city":"New York","bill_country":"United States","same_ship_address":"on"}','Paid','2022-01-16 16:00:15','2022-01-16 16:00:15','34.483','{"id":6,"name":"India","price":10,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('124','1','{"534-Red,M":{"options_id":[265,1093],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses","slug":"Top-Sale-High-Quality-Newest-Designs-Custom-Women-Clothing-Wholesale-from-China-Dresses","qty":"1","price":69.5499999999999971578290569595992565155029296875,"main_price":59.5499999999999971578290569595992565155029296875,"photo":"1634135337H948b3bef197c492d999473dffa5303f9P.jpg","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":1,"title":"Free Delevery","price":0,"minimum_price":1000,"is_condition":1,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','0.5955','','GPt4RZ0RCq','Pending','','{"ship_first_name":"Alex","ship_last_name":"Smith","ship_email":"user@gmail.com","ship_phone":"01728332009","ship_company":null,"ship_address1":"472 Clark Street,  Bay Shore, New York","ship_address2":null,"ship_zip":"3444","ship_city":"New York","ship_country":"United States"}','{"_token":"QOD5MKmJWvK28KB8O9k913pbovZvrzIHs89Ac2KK","bill_first_name":"Alex","bill_last_name":"Smith","bill_email":"user@gmail.com","bill_phone":"01728332009","bill_company":null,"bill_address1":"472 Clark Street,  Bay Shore, New York","bill_address2":null,"bill_zip":"3444","bill_city":"New York","bill_country":"United States","same_ship_address":"on"}','Unpaid','2022-01-16 16:03:35','2022-01-16 16:03:35','6.955','{"id":6,"name":"India","price":10,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('125','1','{"534-Red,M":{"options_id":[265,1093],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses","slug":"Top-Sale-High-Quality-Newest-Designs-Custom-Women-Clothing-Wholesale-from-China-Dresses","qty":"1","price":69.5499999999999971578290569595992565155029296875,"main_price":59.5499999999999971578290569595992565155029296875,"photo":"1634135337H948b3bef197c492d999473dffa5303f9P.jpg","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":2,"title":"Delivery","price":20,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','0.5955','','0HGakDhxlW','In Progress','','{"ship_first_name":"Alex","ship_last_name":"Smith","ship_email":"user@gmail.com","ship_phone":"01728332009","ship_company":null,"ship_address1":"472 Clark Street,  Bay Shore, New York","ship_address2":null,"ship_zip":"3444","ship_city":"New York","ship_country":"United States"}','{"_token":"QOD5MKmJWvK28KB8O9k913pbovZvrzIHs89Ac2KK","bill_first_name":"Alex","bill_last_name":"Smith","bill_email":"user@gmail.com","bill_phone":"01728332009","bill_company":null,"bill_address1":"472 Clark Street,  Bay Shore, New York","bill_address2":null,"bill_zip":"3444","bill_city":"New York","bill_country":"United States","same_ship_address":"on"}','Unpaid','2022-01-16 16:08:36','2022-02-28 14:24:36','6.955','{"id":6,"name":"India","price":10,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('126','1','{"587-Pink,XXL":{"options_id":[432,1264],"attribute":{"names":["Color","Size"],"option_name":["Pink","XXL"],"option_price":[8,7]},"attribute_price":15,"name":"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses","slug":"0AENew-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-DressesnC","qty":"2","price":344.82999999999998408384271897375583648681640625,"main_price":334.82999999999998408384271897375583648681640625,"photo":"1634134144H03667d1e3ae44be08f32b72d840db095J.jpg","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":2,"title":"Delivery","price":20,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Stripe','txn_3KIcZsH3jdWvr8gE1xCmNaNe','3.3483','ch_3KIcZsH3jdWvr8gE1g4sD0jO','Ffr4zOVXnf','Delivered','','{"ship_first_name":"Alex","ship_last_name":"Smith","ship_email":"user@gmail.com","ship_phone":"01728332009","ship_company":null,"ship_address1":"472 Clark Street,  Bay Shore, New York","ship_address2":null,"ship_zip":"3444","ship_city":"New York","ship_country":"United States"}','{"_token":"72BuSB7wcI55oScnzMJaMuCK0ZBFOdNoLGTqPuI0","bill_first_name":"Alex","bill_last_name":"Smith","bill_email":"user@gmail.com","bill_phone":"01728332009","bill_company":null,"bill_address1":"472 Clark Street,  Bay Shore, New York","bill_address2":null,"bill_zip":"3444","bill_city":"New York","bill_country":"United States","same_ship_address":"on"}','Paid','2022-01-16 17:31:41','2022-01-17 09:59:27','68.466','{"id":6,"name":"India","price":10,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('127','1','{"587-Pink,XXL":{"options_id":[432,1264],"attribute":{"names":["Color","Size"],"option_name":["Pink","XXL"],"option_price":[8,7]},"attribute_price":15,"name":"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses","slug":"0AENew-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-DressesnC","qty":"1","price":344.82999999999998408384271897375583648681640625,"main_price":334.82999999999998408384271897375583648681640625,"photo":"1634134144H03667d1e3ae44be08f32b72d840db095J.jpg","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":2,"title":"Delivery","price":20,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Paypal','0JS90047YT3185603','1','','rTgJph3cv8','Delivered','','{"ship_first_name":"Alex","ship_last_name":"Smith","ship_email":"user@gmail.com","ship_phone":"01728332009","ship_company":null,"ship_address1":"472 Clark Street,  Bay Shore, New York","ship_address2":null,"ship_zip":"3444","ship_city":"New York","ship_country":"United States"}','{"_token":"72BuSB7wcI55oScnzMJaMuCK0ZBFOdNoLGTqPuI0","bill_first_name":"Alex","bill_last_name":"Smith","bill_email":"user@gmail.com","bill_phone":"01728332009","bill_company":null,"bill_address1":"472 Clark Street,  Bay Shore, New York","bill_address2":null,"bill_zip":"3444","bill_city":"New York","bill_country":"United States","same_ship_address":"on"}','Paid','2022-01-16 17:33:57','2022-01-17 09:59:21','34.983','{"id":6,"name":"India","price":10,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('128','1','{"539-Pink,XXL":{"options_id":[288,1236],"attribute":{"names":["Color","Size"],"option_name":["Pink","XXL"],"option_price":[8,7]},"attribute_price":15,"name":"Clothing Women 2021 New Fashion Printed Knitwear Round Neck Casual Couple Clothing Christmas","slug":"Clothing-Women------New-Fashion-Printed-Knitwear-Round-Neck-Casual-Couple-Clothing-Christmas","qty":"2","price":66.18000000000000682121026329696178436279296875,"main_price":56.17999999999999971578290569595992565155029296875,"photo":"1634134958H8b2502797ffe4c93984c99bdd5061ab3W.jpg","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":2,"title":"Delivery","price":20,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Stripe','txn_3KIcesH3jdWvr8gE17fmrDps','0.5618','ch_3KIcesH3jdWvr8gE1bWbzyns','JrV7oupswB','Delivered','["redex","OM_17657888260XcJe5lV.svg"]','{"ship_first_name":"Alex","ship_last_name":"Smith","ship_email":"user@gmail.com","ship_phone":"01728332009","ship_company":null,"ship_address1":"472 Clark Street,  Bay Shore, New York","ship_address2":null,"ship_zip":"3444","ship_city":"New York","ship_country":"United States"}','{"_token":"72BuSB7wcI55oScnzMJaMuCK0ZBFOdNoLGTqPuI0","bill_first_name":"Alex","bill_last_name":"Smith","bill_email":"user@gmail.com","bill_phone":"01728332009","bill_company":null,"bill_address1":"472 Clark Street,  Bay Shore, New York","bill_address2":null,"bill_zip":"3444","bill_city":"New York","bill_country":"United States","same_ship_address":"on"}','Paid','2022-01-16 17:36:51','2025-12-17 06:49:21','12.736','{"id":6,"name":"India","price":10,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('129','1','{"586-Red,M":{"options_id":[425,1125],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"BREYLEE facial mask hyaluronic acid facial firming mask beauty","slug":"Td5BREYLEE-facial-mask-hyaluronic-acid-facial-firming-mask-beautyca","qty":"1","price":1362.80999999999994543031789362430572509765625,"main_price":1352.80999999999994543031789362430572509765625,"photo":"1634134188HTB1ymRhXfjsK1Rjy1Xaq6zispXad.jpg","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":1,"title":"Free Delevery","price":0,"minimum_price":1000,"is_condition":1,"status":1,"created_at":null,"updated_at":null}','Stripe','txn_3KIcihH3jdWvr8gE1jYOlJfQ','13.5281','ch_3KIcihH3jdWvr8gE164YxcvT','HhgjzEg09z','Delivered','','{"ship_first_name":"Alex","ship_last_name":"Smith","ship_email":"user@gmail.com","ship_phone":"01728332009","ship_company":null,"ship_address1":"472 Clark Street,  Bay Shore, New York","ship_address2":null,"ship_zip":"3444","ship_city":"New York","ship_country":"United States"}','{"_token":"72BuSB7wcI55oScnzMJaMuCK0ZBFOdNoLGTqPuI0","bill_first_name":"Alex","bill_last_name":"Smith","bill_email":"user@gmail.com","bill_phone":"01728332009","bill_company":null,"bill_address1":"472 Clark Street,  Bay Shore, New York","bill_address2":null,"bill_zip":"3444","bill_city":"New York","bill_country":"United States","same_ship_address":"on"}','Paid','2022-01-16 17:40:48','2022-01-17 09:59:09','136.281','{"id":6,"name":"India","price":10,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('130','1','{"535-Red,M":{"options_id":[269,1094],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses","slug":"-----Summer-Women-Clothing-Ropa-Sexy-Lady-Cut-Out-Halter-Mini-Dresses","qty":"1","price":144.830000000000012505552149377763271331787109375,"main_price":134.830000000000012505552149377763271331787109375,"photo":"1634135320H408d7d7e37b4437297de600584c1af1fL.jpg","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":2,"title":"Delivery","price":20,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','j0W5sAeolz','Pending','["redex","OM_17657888260XcJe5lV.svg"]','{"ship_first_name":"showrav","ship_last_name":"Hasan","ship_email":"showrabhasan715@gmail.com","ship_phone":"0172833200","ship_company":null,"ship_address1":"Dhaka,Bangladesh","ship_address2":null,"ship_zip":"1234","ship_city":"Tangail...","ship_country":"Bangladesh"}','{"_token":"qm68PlIpjNaoP7Tkcz9JT55huv8mzjCgs8YnHJsW","bill_first_name":"showrav","bill_last_name":"Hasan","bill_email":"showrabhasan715@gmail.com","bill_phone":"0172833200","bill_company":null,"bill_address1":"Dhaka,Bangladesh","bill_address2":null,"bill_zip":"1234","bill_city":"Tangail...","bill_country":"Bangladesh","same_ship_address":"on"}','Unpaid','2022-03-01 16:10:39','2025-12-17 06:22:23','5.7932','{"id":7,"name":"California","price":4,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('131','1','{"587-Red,M":{"options_id":[429,1126],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses","slug":"0AENew-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-DressesnC","qty":"1","price":344.83,"main_price":334.83,"photo":"1634134144H03667d1e3ae44be08f32b72d840db095J.jpg","item_type":"normal","item_l_n":null,"item_l_k":null},"586-Red,M":{"options_id":[425,1125],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"BREYLEE facial mask hyaluronic acid facial firming mask beauty","slug":"Td5BREYLEE-facial-mask-hyaluronic-acid-facial-firming-mask-beautyca","qty":"1","price":1362.81,"main_price":1352.81,"photo":"1634134188HTB1ymRhXfjsK1Rjy1Xaq6zispXad.jpg","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":1,"title":"Free Delevery","price":0,"minimum_price":1000,"is_condition":1,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','16.8764','','TyExwhsbeS','Pending','["redex","OM_17657888260XcJe5lV.svg"]','{"ship_first_name":"Alex","ship_last_name":"Smith","ship_email":"user@gmail.com","ship_phone":"01728332009","ship_company":null,"ship_address1":"472 Clark Street,  Bay Shore, New York","ship_address2":null,"ship_zip":"3444","ship_city":"New York","ship_country":"United States"}','{"_token":"wMuLFwlTenaXlbg4ZZk2UrBZxBHJqtgBs8USQUmC","bill_first_name":"Alex","bill_last_name":"Smith","bill_email":"user@gmail.com","bill_phone":"01728332009","bill_company":null,"bill_address1":"472 Clark Street,  Bay Shore, New York","bill_address2":null,"bill_zip":"3444","bill_city":"New York","bill_country":"United States","same_ship_address":"on"}','Unpaid','2022-03-02 08:15:49','2025-12-17 06:47:45','0','');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('132','1','{"577-":{"options_id":[],"attribute":{"names":[],"option_name":[],"option_price":[]},"attribute_price":0,"name":"Best Online Wholesale Website Design and development company | Ecommerce shopping webdesign","slug":"fgcBest-Online-Wholesale-Website-Design-and-development-company--Ecommerce-shopping-webdesign8q","qty":"1","price":35,"main_price":35,"photo":"1634134411Ucc4d26e9889041dc899c3522859ed3f88.jpg","item_type":"license","item_l_n":"5","item_l_k":"5"}}','$','1','[]','{"id":2,"title":"Delivery","price":20,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Stripe','txn_3KYnNsH3jdWvr8gE0GZ6b8YQ','0.35','ch_3KYnNsH3jdWvr8gE0WD94EcP','w10xGWiN80','Pending','["speed","OM_1765789648hwTF4feQ.svg"]','{"ship_first_name":"Alex","ship_last_name":"Smith","ship_email":"user@gmail.com","ship_phone":"01728332009"}','{"_token":"wMuLFwlTenaXlbg4ZZk2UrBZxBHJqtgBs8USQUmC","bill_first_name":"Alex","bill_last_name":"Smith","bill_email":"user@gmail.com","bill_phone":"01728332009","same_ship_address":"on"}','Paid','2022-03-02 08:18:08','2025-12-17 03:25:49','0','');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('133','1','{"586-Red,M":{"options_id":[425,1125],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"BREYLEE facial mask hyaluronic acid facial firming mask beauty","slug":"Td5BREYLEE-facial-mask-hyaluronic-acid-facial-firming-mask-beautyca","qty":"1","price":1362.81,"main_price":1352.81,"photo":"1634134188HTB1ymRhXfjsK1Rjy1Xaq6zispXad.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":1,"title":"Free Delevery","price":0,"minimum_price":1000,"is_condition":1,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','13.5281','','ORD-20250413-133','Pending','["redex","OM_17657888260XcJe5lV.svg"]','{"ship_first_name":"Alex","ship_last_name":"Smith","ship_email":"user@gmail.com","ship_phone":"01728332009","ship_company":null,"ship_address1":"472 Clark Street,  Bay Shore, New York","ship_address2":null,"ship_zip":"3444","ship_city":"New York","ship_country":null}','{"_token":"suef2R0IZFBTrPBLn9bsRywqs3nb2ZmKoKUPOgc8","payment_method":"Cash On Delivery","state_id":"10","shipping_id":"1","bill_first_name":"Alex","bill_last_name":"Smith","bill_email":"user@gmail.com","bill_phone":"01728332009","bill_address1":"472 Clark Street,  Bay Shore, New York","bill_zip":"3444","bill_city":"New York"}','Unpaid','2025-04-13 21:53:01','2025-12-17 06:48:51','81.7686','{"id":10,"name":"Virginia","price":6,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('134','0','{"594-500ml":{"options_id":[1265],"attribute":{"names":["Weight"],"option_name":["500ml"],"option_price":[100]},"attribute_price":100,"name":"Honey","slug":"Honey","qty":"1","price":100,"main_price":0,"photo":"OM_1745772286v8jlTKP9.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null},"587-Red,M":{"options_id":[429,1126],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses","slug":"0AENew-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-DressesnC","qty":"1","price":344.83,"main_price":334.83,"photo":"1634134144H03667d1e3ae44be08f32b72d840db095J.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null},"544-Red,M":{"options_id":[305,1103],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Wholesale Price 1.3 Mega HD DV SLR Camera, 2.4 inch LCD Full HD 720P Recording, EIS, Supply Drops","slug":"Wholesale-Price-----Mega-HD-DV-SLR-Camera------inch-LCD-Full-HD----P-Recording--EIS--Supply-Drops","qty":"1","price":156.07,"main_price":146.07,"photo":"1634134872HTB1BqH4aIfrK1RkSmLyq6xGApXaJ.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":2,"title":"Delivery","price":20,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','4.809','','ORD-20250427-134','Pending','["speed","OM_1765789648hwTF4feQ.svg"]','{"ship_first_name":"Mamunur","ship_last_name":"Rashid","ship_email":"mamunurrashid6424@gmail.com","ship_phone":"01795846424","ship_company":null,"ship_address1":"Ring Road, Mohammadpur, House 18\/5, Floor - 2nd Dhaka, 1207, Dhaka, Bangladesh","ship_address2":null,"ship_zip":"1207","ship_city":"Dhaka Metro","ship_country":null}','{"_token":"rjPNZ6X0RCled5ZzefD4gqm3bNQjOKRshhFVjET5","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Mamunur","bill_last_name":"Rashid","bill_email":"mamunurrashid6424@gmail.com","bill_phone":"01795846424","bill_address1":"Ring Road, Mohammadpur, House 18\/5, Floor - 2nd Dhaka, 1207, Dhaka, Bangladesh","bill_zip":"1207","bill_city":"Dhaka Metro"}','Unpaid','2025-04-27 20:05:39','2025-12-17 04:23:38','30.045','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('135','1','{"594-500ml":{"options_id":[1265],"attribute":{"names":["Weight"],"option_name":["500ml"],"option_price":[100]},"attribute_price":100,"name":"Honey","slug":"Honey","qty":"1","price":100,"main_price":0,"photo":"OM_1745772286v8jlTKP9.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null},"587-Red,M":{"options_id":[429,1126],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses","slug":"0AENew-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-DressesnC","qty":"1","price":344.83,"main_price":334.83,"photo":"1634134144H03667d1e3ae44be08f32b72d840db095J.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null},"544-Red,M":{"options_id":[305,1103],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Wholesale Price 1.3 Mega HD DV SLR Camera, 2.4 inch LCD Full HD 720P Recording, EIS, Supply Drops","slug":"Wholesale-Price-----Mega-HD-DV-SLR-Camera------inch-LCD-Full-HD----P-Recording--EIS--Supply-Drops","qty":"1","price":156.07,"main_price":146.07,"photo":"1634134872HTB1BqH4aIfrK1RkSmLyq6xGApXaJ.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','$','1','[]','{"id":2,"title":"Delivery","price":20,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','4.809','','ORD-20250427-135','In Progress','["speed","OM_1765789648hwTF4feQ.svg"]','{"ship_first_name":"Alex","ship_last_name":"Smith","ship_email":"user@gmail.com","ship_phone":"01728332009","ship_company":null,"ship_address1":"472 Clark Street,  Bay Shore, New York","ship_address2":null,"ship_zip":"3444","ship_city":"New York","ship_country":null}','{"_token":"rjPNZ6X0RCled5ZzefD4gqm3bNQjOKRshhFVjET5","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Alex","bill_last_name":"Smith","bill_email":"user@gmail.com","bill_phone":"01728332009","bill_address1":"472 Clark Street,  Bay Shore, New York","bill_zip":"3444","bill_city":"New York"}','Unpaid','2025-04-27 20:06:24','2025-12-17 05:12:21','30.045','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('136','0','{"524-Red,M":{"options_id":[225,1083],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Women\'s Women Clothing Women Dresses Women Bodycon 2021 Trendy Black Women\'s Sexy Dres","slug":"Women-s-Women-Clothing-Women-Dresses-Women-Bodycon------Trendy-Black-Women-s-Sexy-Dres","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135567H6230e6b983944982bc81e124a6b54484y.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251217-136','In Progress','["redex","OM_17657888260XcJe5lV.svg"]','{"ship_first_name":"sdf","ship_last_name":"sf","ship_email":"sdf@gmal.com","ship_phone":"324323253","ship_company":null,"ship_address1":"rge","ship_address2":null,"ship_zip":"dfg","ship_city":"dfg","ship_country":null}','{"_token":"LV1fWq31SS77AVX3r0cBY9NXPE6YBjhkqibBoxxn","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"sdf","bill_last_name":"sf","bill_email":"sdf@gmal.com","bill_phone":"324323253","bill_address1":"rge","bill_zip":"dfg","bill_city":"dfg"}','Unpaid','2025-12-17 06:57:16','2025-12-17 10:50:14','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('137','0','{"536-Red,M":{"options_id":[273,1095],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"B4301 2021 New Arrivals Wholesale Hot Night Sexy Mini Bodycon Summer Dress","slug":"B----------New-Arrivals-Wholesale-Hot-Night-Sexy-Mini-Bodycon-Summer-Dress","qty":"1","price":167.3,"main_price":157.3,"photo":"1634135094H0f71a2a40cf04ee0b5a03980a5a617020.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":3,"title":"Inside Dhaka Delivery","price":70,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.573','','ORD-20251217-137','In Progress','["patho","OM_1765788581hzLB8cQT.svg"]','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"da@gmail.com","ship_phone":"01842334322","ship_company":null,"ship_address1":"Boalkhali,chittagong","ship_address2":null,"ship_zip":"3452","ship_city":"chittagong","ship_country":null}','{"_token":"uEUhkphb1uK9Qu0HSyNpNIypQbkgtlb8y55QAECT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"3","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"da@gmail.com","bill_phone":"32423342","bill_address1":"feni","bill_zip":"3452","bill_city":"chiitagong"}','Unpaid','2025-12-17 08:32:42','2025-12-18 04:45:09','8.365','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('138','0','{"563-Red,M":{"options_id":[333,1110],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Men Shirt Custom Shirts Hot Sale Men Women Polyester Cotton Long Sleeve Casual pro","slug":"Men-Shirt-Custom-Shirts-Hot-Sale-Men-Women-Polyester-Cotton-Long-Sleeve-Casual-pro","qty":"1","price":1362.81,"main_price":1352.81,"photo":"1634134720Hedf90cf6656546e7a8548d4980edc5bda.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','13.5281','','ORD-20251218-138','In Progress','["redex","OM_17657888260XcJe5lV.svg"]','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"018645644","ship_company":null,"ship_address1":"cumilla,choddogram,podua","ship_address2":null,"ship_zip":"3452","ship_city":"chiitagong","ship_country":null}','{"_token":"0csMfQqfzoXBoLWM7JmvxFAVzae96y5HQHBQBEdu","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"018645644","bill_address1":"cumilla,choddogram,podua","bill_zip":"3452","bill_city":"chiitagong"}','Unpaid','2025-12-18 06:08:22','2025-12-18 06:08:42','68.1405','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('139','0','{"563-Red,M":{"options_id":[333,1110],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Men Shirt Custom Shirts Hot Sale Men Women Polyester Cotton Long Sleeve Casual pro","slug":"Men-Shirt-Custom-Shirts-Hot-Sale-Men-Women-Polyester-Cotton-Long-Sleeve-Casual-pro","qty":"1","price":1362.81,"main_price":1352.81,"photo":"1634134720Hedf90cf6656546e7a8548d4980edc5bda.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','13.5281','','ORD-20251218-139','Pending','["redex","OM_17657888260XcJe5lV.svg"]','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"sahad@gmail.com","ship_phone":"3534545","ship_company":null,"ship_address1":"choddugram","ship_address2":null,"ship_zip":"3452","ship_city":"cumilla","ship_country":null}','{"_token":"0csMfQqfzoXBoLWM7JmvxFAVzae96y5HQHBQBEdu","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"sahad@gmail.com","bill_phone":"3534545","bill_address1":"choddugram","bill_zip":"3452","bill_city":"cumilla"}','Unpaid','2025-12-18 06:11:01','2025-12-18 06:12:41','68.1405','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('140','8','{"563-Red,M":{"options_id":[333,1110],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Men Shirt Custom Shirts Hot Sale Men Women Polyester Cotton Long Sleeve Casual pro","slug":"Men-Shirt-Custom-Shirts-Hot-Sale-Men-Women-Polyester-Cotton-Long-Sleeve-Casual-pro","qty":2,"price":1362.81,"main_price":1352.81,"photo":"1634134720Hedf90cf6656546e7a8548d4980edc5bda.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','27.0562','','ORD-20251218-140','Pending','','{"ship_first_name":"Omar Faruk Shawon","ship_last_name":"Hasan","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"feni sador, house 03","ship_address2":null,"ship_zip":"3452","ship_city":"feni","ship_country":null}','{"_token":"0csMfQqfzoXBoLWM7JmvxFAVzae96y5HQHBQBEdu","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar Faruk Shawon","bill_last_name":"Hasan","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"feni sador, house 03","bill_zip":"3452","bill_city":"feni"}','Unpaid','2025-12-18 09:31:47','2025-12-18 09:31:47','135.781','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('141','15','{"563-Red,M":{"options_id":[333,1110],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Men Shirt Custom Shirts Hot Sale Men Women Polyester Cotton Long Sleeve Casual pro","slug":"Men-Shirt-Custom-Shirts-Hot-Sale-Men-Women-Polyester-Cotton-Long-Sleeve-Casual-pro","qty":"1","price":1362.81,"main_price":1352.81,"photo":"1634134720Hedf90cf6656546e7a8548d4980edc5bda.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','13.5281','','ORD-20251218-141','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"feni,sdfsd","ship_address2":null,"ship_zip":"3452","ship_city":"chiitagong","ship_country":null}','{"_token":"RwALHP43rBqd89TlBAoqWOOMAk9TlsZc1JQC3kjf","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"feni,sdfsd","bill_zip":"3452","bill_city":"chiitagong"}','Unpaid','2025-12-18 10:28:54','2025-12-18 10:28:54','68.1405','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('142','15','{"534-Red,M":{"options_id":[265,1093],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses","slug":"Top-Sale-High-Quality-Newest-Designs-Custom-Women-Clothing-Wholesale-from-China-Dresses","qty":"1","price":69.55,"main_price":59.55,"photo":"1634135337H948b3bef197c492d999473dffa5303f9P.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null},"540-":{"options_id":[],"attribute":{"names":[],"option_name":[],"option_price":[]},"attribute_price":0,"name":"UMIDIGI A9 Pro Android Mobile Phone 4g 48MP Quad Camera 6.3\" FHD+ Full Screen 6GB RAM","slug":"UMIDIGI-A--Pro-Android-Mobile-Phone--g---MP-Quad-Camera------FHD--Full-Screen--GB-RAM","qty":"1","price":1573.03,"main_price":1573.03,"photo":"1634134938Hcb62dec2d6a241fc90ce2bb04059684em.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','16.3258','','ORD-20251218-142','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"feni","ship_address2":null,"ship_zip":"3452","ship_city":"chiitagong","ship_country":null}','{"_token":"RwALHP43rBqd89TlBAoqWOOMAk9TlsZc1JQC3kjf","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"feni","bill_zip":"3452","bill_city":"chiitagong"}','Unpaid','2025-12-18 11:02:51','2025-12-18 11:02:51','82.129','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('143','15','{"561-Red,M":{"options_id":[325,1108],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Men Shirt Custom Shirts High Quality Men Women Bamboo Fiber Long Sleeve","slug":"Men-Shirt-Custom-Shirts-High-Quality-Men-Women-Bamboo-Fiber-Long-Sleeve","qty":"1","price":1362.81,"main_price":1352.81,"photo":"1634134755Hdb695965a744470b958f17251d4d277ew.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','13.5281','','ORD-20251218-143','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"feni","ship_address2":null,"ship_zip":"3452","ship_city":"chiitagong","ship_country":null}','{"_token":"RwALHP43rBqd89TlBAoqWOOMAk9TlsZc1JQC3kjf","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"feni","bill_zip":"3452","bill_city":"chiitagong"}','Unpaid','2025-12-18 11:12:20','2025-12-18 11:12:20','68.1405','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('144','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-144','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"sdfdfb fgbb","ship_address2":null,"ship_zip":"34534","ship_city":"fdgdf","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"sdfdfb fgbb","bill_zip":"34534","bill_city":"fdgdf"}','Unpaid','2025-12-20 04:11:51','2025-12-20 04:11:51','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('145','15','{"563-Red,M":{"options_id":[333,1110],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Men Shirt Custom Shirts Hot Sale Men Women Polyester Cotton Long Sleeve Casual pro","slug":"Men-Shirt-Custom-Shirts-Hot-Sale-Men-Women-Polyester-Cotton-Long-Sleeve-Casual-pro","qty":"1","price":1362.81,"main_price":1352.81,"photo":"1634134720Hedf90cf6656546e7a8548d4980edc5bda.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null},"524-Red,M":{"options_id":[225,1083],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Women\'s Women Clothing Women Dresses Women Bodycon 2021 Trendy Black Women\'s Sexy Dres","slug":"Women-s-Women-Clothing-Women-Dresses-Women-Bodycon------Trendy-Black-Women-s-Sexy-Dres","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135567H6230e6b983944982bc81e124a6b54484y.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','14.8764','','ORD-20251220-145','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"45 grb","ship_address2":null,"ship_zip":"35","ship_city":"retgb","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"45 grb","bill_zip":"35","bill_city":"retgb"}','Unpaid','2025-12-20 04:19:11','2025-12-20 04:19:11','75.382','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('146','15','{"535-Red,M":{"options_id":[269,1094],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses","slug":"-----Summer-Women-Clothing-Ropa-Sexy-Lady-Cut-Out-Halter-Mini-Dresses","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135320H408d7d7e37b4437297de600584c1af1fL.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-146','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"fgh fhnf","ship_address2":null,"ship_zip":"564","ship_city":"fghf","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"fgh fhnf","bill_zip":"564","bill_city":"fghf"}','Unpaid','2025-12-20 04:20:06','2025-12-20 04:20:06','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('147','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-147','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:22:58','2025-12-20 04:22:58','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('148','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-148','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:23:55','2025-12-20 04:23:55','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('149','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-149','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:24:22','2025-12-20 04:24:22','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('150','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-150','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:25:00','2025-12-20 04:25:00','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('151','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-151','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:25:54','2025-12-20 04:25:54','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('152','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-152','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:26:31','2025-12-20 04:26:31','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('153','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-153','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:27:05','2025-12-20 04:27:05','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('154','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-154','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:33:13','2025-12-20 04:33:13','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('155','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-155','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:37:17','2025-12-20 04:37:17','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('156','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-156','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:40:20','2025-12-20 04:40:20','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('157','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-157','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:40:41','2025-12-20 04:40:41','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('158','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-158','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:40:57','2025-12-20 04:40:57','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('159','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-159','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:42:24','2025-12-20 04:42:24','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('160','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-160','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:42:50','2025-12-20 04:42:50','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('161','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-161','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:43:51','2025-12-20 04:43:51','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('162','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-162','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:44:33','2025-12-20 04:44:33','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('163','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-163','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"ada","ship_address2":null,"ship_zip":"a3","ship_city":"asd","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"ada","bill_zip":"a3","bill_city":"asd"}','Unpaid','2025-12-20 04:44:55','2025-12-20 04:44:55','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('164','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-164','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"fg fghn","ship_address2":null,"ship_zip":"56r","ship_city":"dn fg","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"fg fghn","bill_zip":"56r","bill_city":"dn fg"}','Unpaid','2025-12-20 04:45:31','2025-12-20 04:45:31','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('165','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-165','Pending','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"fg fghn","ship_address2":null,"ship_zip":"56r","ship_city":"dn fg","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"fg fghn","bill_zip":"56r","bill_city":"dn fg"}','Unpaid','2025-12-20 04:46:36','2025-12-20 04:46:36','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('166','15','{"538-Red,M":{"options_id":[281,1097],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"New Arrive Spring Fall Women Clothing Plus Size Dresses Floral Layered Ruffle Off Shoulder Dress","slug":"New-Arrive-Spring-Fall-Women-Clothing-Plus-Size-Dresses-Floral-Layered-Ruffle-Off-Shoulder-Dress","qty":"1","price":144.83,"main_price":134.83,"photo":"1634135061Hd8364db18d9942a38e89779ca3b4fa7an.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','1.3483','','ORD-20251220-166','Delivered','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"fg fghn","ship_address2":null,"ship_zip":"56r","ship_city":"dn fg","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"fg fghn","bill_zip":"56r","bill_city":"dn fg"}','Paid','2025-12-20 04:48:32','2025-12-21 03:38:32','7.2415','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');

INSERT INTO orders (id, user_id, cart, currency_sign, currency_value, discount, shipping, payment_method, txnid, tax, charge_id, transaction_number, order_status, curier_agent, shipping_info, billing_info, payment_status, created_at, updated_at, state_price, state) VALUES ('167','15','{"563-Red,M":{"options_id":[333,1110],"attribute":{"names":["Color","Size"],"option_name":["Red","M"],"option_price":[5,5]},"attribute_price":10,"name":"Men Shirt Custom Shirts Hot Sale Men Women Polyester Cotton Long Sleeve Casual pro","slug":"Men-Shirt-Custom-Shirts-Hot-Sale-Men-Women-Polyester-Cotton-Long-Sleeve-Casual-pro","qty":"1","price":1362.81,"main_price":1352.81,"photo":"1634134720Hedf90cf6656546e7a8548d4980edc5bda.jpg","type":"normal","item_type":"normal","item_l_n":null,"item_l_k":null}}','৳','1','[]','{"id":2,"title":"Out Of Dhaka Delivery","price":130,"minimum_price":0,"is_condition":0,"status":1,"created_at":null,"updated_at":null}','Cash On Delivery','','13.5281','','ORD-20251220-167','Delivered','','{"ship_first_name":"Omar","ship_last_name":"Shawon","ship_email":"shawonomar05@gmail.com","ship_phone":"01857751705","ship_company":null,"ship_address1":"feni,dhaa","ship_address2":null,"ship_zip":"23421","ship_city":"cumilla","ship_country":null}','{"_token":"qscw2urLfcVyAbK8zmqYwwyPVm4ksqpdz1RGkaCT","payment_method":"Cash On Delivery","state_id":"8","shipping_id":"2","single_page_checkout":"1","bill_first_name":"Omar","bill_last_name":"Shawon","bill_email":"shawonomar05@gmail.com","bill_phone":"01857751705","bill_address1":"feni,dhaa","bill_zip":"23421","bill_city":"cumilla"}','Paid','2025-12-20 05:01:56','2025-12-21 03:38:35','68.1405','{"id":8,"name":"New Mexico","price":5,"status":1,"type":"percentage"}');


CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `pos` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO pages (id, title, slug, details, meta_keywords, meta_descriptions, pos, created_at, updated_at) VALUES ('7','About Us','about-us','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','','','2','2025-12-21 03:23:10','2025-12-21 03:36:10');

INSERT INTO pages (id, title, slug, details, meta_keywords, meta_descriptions, pos, created_at, updated_at) VALUES ('10','Privacy Policy','privacy-policy','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','','','2','2025-12-21 03:04:10','2025-12-21 03:01:10');

INSERT INTO pages (id, title, slug, details, meta_keywords, meta_descriptions, pos, created_at, updated_at) VALUES ('11','Terms & Service','terms-and-service','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','','','2','2025-12-21 03:29:10','2025-12-21 03:17:10');

INSERT INTO pages (id, title, slug, details, meta_keywords, meta_descriptions, pos, created_at, updated_at) VALUES ('12','Return Policy','return-policy','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','','','2','2025-12-21 03:19:10','2025-12-21 03:23:10');

INSERT INTO pages (id, title, slug, details, meta_keywords, meta_descriptions, pos, created_at, updated_at) VALUES ('14','How It Works','How-It-Works','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','[{"value":"a"},{"value":"b"},{"value":"c"}]','','2','2025-12-21 03:41:10','2025-12-21 03:24:10');


CREATE TABLE `payment_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `unique_keyword` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('1','Cash On Delivery','','cod','1631032407index.png','Cash on Delivery basically means you will pay the amount of product while you get the item delivered to you.','1','2025-12-21 03:02:10','2025-12-21 03:01:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('14','Stripe','{"key":"pk_test_51HZI80H3jdWvr8gEn3oRtFlnJTqRpecXGQueOyngEArTyF6gjjfOVqbFeFMpAMRoQmKwPPrh81OiWzhDlqtS5nGs00gKycg4Oa","secret":"sk_test_51HZI80H3jdWvr8gErqdNWpqUkAgHMQdw7uug1mfUY38vIUfodsAWj4hoBK43rBvHebYETVX4ZCne03o3Ifco1qkR00dhrdpPsh"}','stripe','1601930611stripe-logo-blue.png','Stripe is the faster & safer way to send money. Make an online payment via Stripe.','0','2025-12-21 03:02:10','2025-12-21 03:40:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('15','Paypal','{"client_id":"AUtv8KISHG9l9rmlXB0cSLjt6A91IsGfPACeRreuRpEV3GR-ZRnxIxXnUVKNYIfqVXrxs2uPlGDot0Cc","client_secret":"EEdtOBI_NjI2bJzLSIzumsN_xSI7htn8qyAcRz0mvO8Emv-7CdfQeqxNZlDhiDAd0ZhV49e4sOhjtwho","check_sandbox":1}','paypal','16218678201601930675paypal-784404_960_720.png','PayPal is the faster & safer way to send money. Make an online payment via PayPal.','0','2025-12-21 03:39:10','2025-12-21 03:44:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('17','Mollie','{"key":"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J"}','mollie','1621785282Mollie.jpeg','Mollie is a Payment Provider for Belgium and the Netherlands, offering payment methods such as credit card, iDEAL, Bancontact/Mister cash, PayPal, SCT, SDD and others.','0','2025-12-21 03:51:10','2025-12-21 03:01:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('18','Paytm','{"mercent":"tkogux49985047638244","client_secret":"LhNGUUKE9xCQ9xY8","website":"WEBSTAGING","industry":"Retail","is_paytm":"1","paytm_mode":0}','paytm','1631978815images.png','Paytm is the faster & safer way to send money. Make an online payment via Paytm.','0','2025-12-21 03:36:10','2025-12-21 03:36:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('19','SSLCommerz','{"store_id":"geniu5e1b00621f81e","store_password":"geniu5e1b00621f81e@ssl","check_sandbox":1}','sslcommerz','1631978716ssl-thumb.jpeg','SSL commerz is the faster & safer way to send money. Make an online payment via SSL commerz.','0','2025-12-21 03:36:10','2025-12-21 03:17:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('24','Mercadopago','{"public_key":"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8","token":"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482","check_sandbox":1}','mercadopago','1633085560unnamed.jpeg','Mercadopago is the faster & safer way to send money. Make an online payment via Mercadopago.','0','2025-12-21 03:37:10','2025-12-21 03:10:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('25','Authorize.Net','{"login_id":"76zu9VgUSxrJ","txn_key":"2Vj62a6skSrP5U3X","check_sandbox":1}','authorize','1633100640seal2.png','Authorize.Net is the faster & safer way to send money. Make an online payment via Authorize.Net','0','2025-12-21 03:53:10','2025-12-21 03:05:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('26','Paystack','{"key":"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2","email":"geniusdevs@gmail.com"}','paystack','1634237632paystack-opengraph.png','Paystack is the faster & safer way to send money. Make an online payment via Paystack.','0','2025-12-21 03:14:10','2025-12-21 03:10:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('27','Bank Transfer','','bank','1638530860pngwing.com (1).png','<p>Account Number : 434 3434 3334</p><p>Pay With Bank Transfer.</p><p>Account Name : Jhon Due</p><p>Account Email : demo@gmail.com</p>','0','2025-12-21 03:17:10','2025-12-21 03:42:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('28','Razorpay','{"key":"rzp_test_xDH74d48cwl8DF","secret":"cr0H1BiQ20hVzhpHfHuNbGri"}','razorpay','1637992878download.jpeg','Rezorpay is the faster & safer way to send money. Make an online payment via Rezorpay.','0','2025-12-21 03:38:10','2025-12-21 03:27:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('29','Flutter Wave','{"public_key":"FLWPUBK_TEST-d54c4c69ef195e721af2139e7dfe1a23-X","secret_key":"FLWSECK_TEST-86c6484143e62c4c9bc2e8aa08a07c92-X","text":"Pay via your Flutter Wave account."}','flutterwave','1637998096download.png','Flutterwave is the faster & safer way to send money. Make an online payment via Flutterwave.','0','2025-12-21 03:34:10','2025-12-21 03:20:10');

INSERT INTO payment_settings (id, name, information, unique_keyword, photo, text, status, created_at, updated_at) VALUES ('30','Paytabs','{"profile_id":"159330","client_secret":"SNJ9BGGL9W-JKLRTKJ6DR-MTMZ2GMTNW","check_sandbox":1}','paytabs','','Paytabs is the faster & safer way to send money. Make an online payment via Paytabs.','0','2025-12-21 03:46:10','2025-12-21 03:32:10');


CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO posts (id, title, slug, details, photo, category_id, tags, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('59','Fashion and Beauty Series 1','fashion-and-beauty-series-1','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','["1632349673media_5-768x512.jpg"]','1','mobile,phone,camera,lapop','[{"value":"mobile"},{"value":"phone"},{"value":"camera"},{"value":"lapop"}]','It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','2021-05-31 13:48:23','2021-09-22 22:27:53');

INSERT INTO posts (id, title, slug, details, photo, category_id, tags, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('61','Fashion and Beauty Series 2','fashion-and-beauty-series-2','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','["1632349684media_7-768x512.jpg"]','1','mobile,phone,camera,lapop','[{"value":"mobile"},{"value":"phone"},{"value":"camera"},{"value":"laptop"}]','It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','2021-05-31 13:48:23','2021-09-22 22:28:04');

INSERT INTO posts (id, title, slug, details, photo, category_id, tags, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('62','Fashion and Beauty Series 3','fashion-and-beauty-series-3','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','["1632349695media_10-768x512.jpg"]','1','mobile,phone,camera,lapop','[{"value":"mobile"},{"value":"phone"},{"value":"camera"},{"value":"laptop"}]','It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','2021-05-31 13:48:23','2021-09-22 22:28:15');

INSERT INTO posts (id, title, slug, details, photo, category_id, tags, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('63','Fashion and Beauty Series 4','fashion-and-beauty-series-4','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','["1632349704media_21-768x512.jpg"]','1','mobile,phone,camera,lapop','[{"value":"mobile"},{"value":"phone"},{"value":"camera"},{"value":"laptop"}]','It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','2021-05-31 13:48:23','2021-09-22 22:28:24');

INSERT INTO posts (id, title, slug, details, photo, category_id, tags, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('64','Fashion and Beauty Series 5','fashion-and-beauty-series-5','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','["1632349716media_23-768x512.jpg"]','1','mobile,phone,camera,lapop','[{"value":"mobile"},{"value":"phone"},{"value":"camera"},{"value":"laptop"}]','It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','2021-05-31 13:48:23','2021-09-22 22:28:36');

INSERT INTO posts (id, title, slug, details, photo, category_id, tags, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('65','Fashion and Beauty Series 6','fashion-and-beauty-series-6','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','["1632349728media_24-768x512.jpg"]','1','mobile,phone,camera,lapop','[{"value":"mobile"},{"value":"phone"},{"value":"camera"},{"value":"laptop"}]','It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','2021-05-31 13:48:23','2021-09-22 22:28:48');

INSERT INTO posts (id, title, slug, details, photo, category_id, tags, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('66','Fashion and Beauty Series 7','fashion-and-beauty-series-7','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','["1632349736media_26-768x512.jpg"]','1','mobile,phone,camera,lapop','[{"value":"mobile"},{"value":"phone"},{"value":"camera"},{"value":"laptop"}]','It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','2021-05-31 13:48:23','2021-09-22 22:28:56');

INSERT INTO posts (id, title, slug, details, photo, category_id, tags, meta_keywords, meta_descriptions, created_at, updated_at) VALUES ('67','Fashion and Beauty Series 8','fashion-and-beauty-series-8','Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!','["1632349747media_28-768x512.jpg"]','1','mobile,phone,camera,lapop','[{"value":"mobile"},{"value":"phone"},{"value":"camera"},{"value":"laptop"}]','It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','2021-05-31 13:48:23','2021-09-22 22:29:07');


CREATE TABLE `promo_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `code_name` varchar(255) DEFAULT NULL,
  `no_of_times` int(11) NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO promo_codes (id, title, code_name, no_of_times, discount, status, created_at, updated_at, type) VALUES ('1','Flash Discount','ironman','95','2','1','2025-12-21 03:13:10','2025-12-21 03:08:10','');

INSERT INTO promo_codes (id, title, code_name, no_of_times, discount, status, created_at, updated_at, type) VALUES ('2','Halloween Carnival','superman','96','5','1','2025-12-21 03:28:10','2025-12-21 03:42:10','');

INSERT INTO promo_codes (id, title, code_name, no_of_times, discount, status, created_at, updated_at, type) VALUES ('3','Fest Carnival','loki','94','10','1','2025-12-21 03:34:10','2025-12-21 03:39:10','amount');


CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `review` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO reviews (id, user_id, item_id, review, subject, rating, status, created_at, updated_at) VALUES ('1','1','587','ssssss','ssssssss','5','1','2021-10-17 01:29:45','2021-10-17 01:29:58');

INSERT INTO reviews (id, user_id, item_id, review, subject, rating, status, created_at, updated_at) VALUES ('2','1','586','I like this product, and the quality is very good too.','Very Good Produc','5','1','2021-12-03 08:54:30','2025-03-01 04:55:26');


CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `section` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO roles (id, name, section, created_at, updated_at) VALUES ('1','test','["Manage Categories","Manage Products","Manage Orders","Transactions","Ecommerce","Customer List","Manages Tickets","Manage Site","Manage Faqs Contents","Manage Blogs","Manages Pages","Subscribers List","Manage System User"]','2021-12-05 16:24:27','2021-12-05 16:24:27');


CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO services (id, title, details, photo, created_at, updated_at) VALUES ('31','Secure Online Payment','We posess SSL / Secure Certificate','162196474904.png','2025-12-21 03:03:10','2025-12-21 03:36:10');

INSERT INTO services (id, title, details, photo, created_at, updated_at) VALUES ('32','24/7 Customer Support','Friendly 24/7 customer support','162196471103.png','2025-12-21 03:01:10','2025-12-21 03:43:10');

INSERT INTO services (id, title, details, photo, created_at, updated_at) VALUES ('33','Money Back Guarantee','We return money within 30 days','162196467602.png','2025-12-21 03:13:10','2025-12-21 03:50:10');

INSERT INTO services (id, title, details, photo, created_at, updated_at) VALUES ('34','Free Worldwide Shipping','Free shipping for all orders over $100 Contrary to popular belie','162196463701.png','2025-12-21 03:54:10','2025-12-21 03:50:10');


CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `loader` varchar(255) DEFAULT NULL,
  `is_loader` tinyint(4) DEFAULT 1,
  `feature_image` varchar(255) DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `smtp_check` tinyint(4) DEFAULT 0,
  `email_host` varchar(255) DEFAULT NULL,
  `email_port` varchar(255) DEFAULT NULL,
  `email_encryption` varchar(255) DEFAULT NULL,
  `email_user` varchar(255) DEFAULT NULL,
  `email_pass` varchar(255) DEFAULT NULL,
  `email_from` varchar(255) DEFAULT NULL,
  `email_from_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `overlay` text DEFAULT NULL,
  `google_analytics_id` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` varchar(250) DEFAULT NULL,
  `is_shop` tinyint(4) DEFAULT 1,
  `is_blog` tinyint(4) DEFAULT 1,
  `is_faq` tinyint(4) DEFAULT 1,
  `is_contact` tinyint(4) DEFAULT 1,
  `facebook_check` tinyint(4) DEFAULT 1,
  `facebook_client_id` varchar(255) DEFAULT NULL,
  `facebook_client_secret` varchar(255) DEFAULT NULL,
  `facebook_redirect` varchar(255) DEFAULT NULL,
  `google_check` tinyint(4) DEFAULT 1,
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_client_secret` varchar(255) DEFAULT NULL,
  `google_redirect` varchar(255) DEFAULT NULL,
  `min_price` double DEFAULT 0,
  `max_price` double DEFAULT 100000,
  `footer_phone` varchar(255) DEFAULT NULL,
  `footer_address` text DEFAULT NULL,
  `footer_email` varchar(255) DEFAULT NULL,
  `footer_gateway_img` varchar(255) DEFAULT NULL,
  `social_link` text DEFAULT NULL,
  `friday_start` varchar(255) DEFAULT NULL,
  `friday_end` varchar(255) DEFAULT NULL,
  `satureday_start` varchar(255) DEFAULT NULL,
  `satureday_end` varchar(255) DEFAULT NULL,
  `copy_right` varchar(255) DEFAULT NULL,
  `is_slider` tinyint(4) DEFAULT 1,
  `is_category` tinyint(4) DEFAULT 1,
  `is_product` tinyint(4) DEFAULT 1,
  `is_top_banner` tinyint(4) DEFAULT 1,
  `is_recent` tinyint(4) DEFAULT 1,
  `is_top` tinyint(4) DEFAULT 1,
  `is_best` tinyint(4) DEFAULT 1,
  `is_flash` tinyint(4) DEFAULT 1,
  `is_brand` tinyint(4) DEFAULT 1,
  `is_blogs` tinyint(4) DEFAULT 1,
  `is_campaign` tinyint(4) DEFAULT 1,
  `is_brands` tinyint(4) DEFAULT 1,
  `is_bottom_banner` tinyint(4) DEFAULT 1,
  `is_service` tinyint(4) DEFAULT 1,
  `campaign_title` varchar(255) DEFAULT NULL,
  `campaign_end_date` varchar(255) DEFAULT NULL,
  `campaign_status` tinyint(4) DEFAULT 1,
  `twilio_sid` varchar(255) DEFAULT NULL,
  `twilio_token` varchar(255) DEFAULT NULL,
  `twilio_form_number` varchar(255) DEFAULT NULL,
  `twilio_country_code` varchar(255) DEFAULT NULL,
  `is_announcement` tinyint(4) DEFAULT 1,
  `announcement` varchar(255) DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT 0.00,
  `is_maintainance` tinyint(4) DEFAULT 1,
  `maintainance_image` varchar(255) DEFAULT NULL,
  `maintainance_text` text DEFAULT NULL,
  `is_twilio` tinyint(4) DEFAULT 0,
  `twilio_section` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_three_c_b_first` tinyint(4) NOT NULL DEFAULT 1,
  `is_popular_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_three_c_b_second` tinyint(4) NOT NULL DEFAULT 1,
  `is_highlighted` tinyint(4) NOT NULL DEFAULT 1,
  `is_two_column_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_popular_brand` tinyint(4) NOT NULL DEFAULT 1,
  `is_featured_category` tinyint(4) NOT NULL DEFAULT 1,
  `is_two_c_b` tinyint(4) NOT NULL DEFAULT 1,
  `theme` varchar(255) DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `recaptcha` tinyint(4) DEFAULT 0,
  `currency_direction` tinyint(4) DEFAULT 1,
  `google_analytics` text DEFAULT NULL,
  `google_adsense` text DEFAULT NULL,
  `facebook_pixel` text DEFAULT NULL,
  `facebook_messenger` text DEFAULT NULL,
  `is_google_analytics` tinyint(4) DEFAULT 0,
  `is_google_adsense` tinyint(4) DEFAULT 0,
  `is_facebook_pixel` tinyint(4) DEFAULT 0,
  `is_facebook_messenger` tinyint(4) DEFAULT 0,
  `announcement_link` text DEFAULT NULL,
  `is_attribute_search` tinyint(4) DEFAULT 1,
  `is_range_search` tinyint(4) DEFAULT 1,
  `view_product` int(11) DEFAULT 12,
  `home_page_title` varchar(255) DEFAULT 'Home',
  `is_privacy_trams` tinyint(4) DEFAULT 1,
  `policy_link` varchar(255) DEFAULT '''#''',
  `terms_link` varchar(255) DEFAULT '''#''',
  `is_guest_checkout` tinyint(4) DEFAULT 1,
  `custom_css` text DEFAULT NULL,
  `announcement_title` varchar(255) DEFAULT NULL,
  `announcement_type` varchar(255) DEFAULT 'banner',
  `is_cookie` tinyint(4) DEFAULT 1,
  `cookie_text` varchar(255) DEFAULT NULL,
  `announcement_details` text DEFAULT NULL,
  `decimal_separator` varchar(255) DEFAULT '.',
  `thousand_separator` varchar(255) DEFAULT ',',
  `disqus` text DEFAULT NULL,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 0,
  `is_decimal` tinyint(4) DEFAULT 1,
  `order_mail` tinyint(4) NOT NULL DEFAULT 0,
  `ticket_mail` tinyint(4) NOT NULL DEFAULT 0,
  `is_show_category` varchar(255) NOT NULL DEFAULT '1',
  `is_queue_enabled` tinyint(4) NOT NULL DEFAULT 0,
  `working_days_from_to` varchar(255) NOT NULL DEFAULT 'Saturday-Sunday :',
  `attribute_type` varchar(255) NOT NULL DEFAULT 'selectbox',
  `is_mail_verify` tinyint(4) NOT NULL DEFAULT 0,
  `is_single_checkout` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO settings (id, title, logo, favicon, loader, is_loader, feature_image, primary_color, smtp_check, email_host, email_port, email_encryption, email_user, email_pass, email_from, email_from_name, contact_email, version, overlay, google_analytics_id, meta_keywords, meta_description, meta_image, is_shop, is_blog, is_faq, is_contact, facebook_check, facebook_client_id, facebook_client_secret, facebook_redirect, google_check, google_client_id, google_client_secret, google_redirect, min_price, max_price, footer_phone, footer_address, footer_email, footer_gateway_img, social_link, friday_start, friday_end, satureday_start, satureday_end, copy_right, is_slider, is_category, is_product, is_top_banner, is_recent, is_top, is_best, is_flash, is_brand, is_blogs, is_campaign, is_brands, is_bottom_banner, is_service, campaign_title, campaign_end_date, campaign_status, twilio_sid, twilio_token, twilio_form_number, twilio_country_code, is_announcement, announcement, announcement_delay, is_maintainance, maintainance_image, maintainance_text, is_twilio, twilio_section, created_at, updated_at, is_three_c_b_first, is_popular_category, is_three_c_b_second, is_highlighted, is_two_column_category, is_popular_brand, is_featured_category, is_two_c_b, theme, google_recaptcha_site_key, google_recaptcha_secret_key, recaptcha, currency_direction, google_analytics, google_adsense, facebook_pixel, facebook_messenger, is_google_analytics, is_google_adsense, is_facebook_pixel, is_facebook_messenger, announcement_link, is_attribute_search, is_range_search, view_product, home_page_title, is_privacy_trams, policy_link, terms_link, is_guest_checkout, custom_css, announcement_title, announcement_type, is_cookie, cookie_text, announcement_details, decimal_separator, thousand_separator, disqus, is_disqus, is_decimal, order_mail, ticket_mail, is_show_category, is_queue_enabled, working_days_from_to, attribute_type, is_mail_verify, is_single_checkout) VALUES ('1','OmniMart','OM_17662890906dZewLiL.jpg','1629651232pre.png','16388581681_D-ZiKd0B00tdifaB2X3tKQ.gif','1','1600622296topic.jpg','#FF6A00','1','smtp.gmail.com','465','ssl','1backpackwebsite@gmail.com','znbl xuvv zkiw xoni','1backpackwebsite@gmail.com','Omnimart','techorbitit3@gmail.com','6.2','','UA-106757798-1','Lorem,ipsum,dolor,amet','Omnimart - Multipurpose eCommerce  Shopping Platform Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over .','OM_1742724577mrX18QWY.png','1','1','1','1','1','643929170080071','038b2100dff9a2a684c85959c0accf66','https://localhost/my/omnimart/auth/facebook/callback','1','915191002660-6hjno4cgnbcm5p1kb3t692trh7pc6ngh.apps.googleusercontent.com','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','http://localhost/my/omnimart/auth/google/callback','0','10000','453876234','514 S. Magnolia St. Orlando, FL 32806, USA','demoemail123@gmail.com','16305963101621960148credit-cards-footer.png','{"icons":["fab fa-facebook-f","fab fa-twitter","fab fa-youtube","fab fa-linkedin-in"],"links":["https:\/\/www.facebook.com","https:\/\/www.twitter.com","https:\/\/www.youtube.com","https:\/\/www.linkedin.com"]}','9:27 PM','9:27 PM','9:27 PM','9:27 PM','OmniMart © All rights reserved.','1','0','0','0','0','0','0','0','0','1','1','1','0','1','Deals Of The Week','10/10/2022','1','DB5bduVJ5IqvTiFm12t3x1F355A3IPzbnH9wAL8f','300d787df0c398ae46b84b74ea86f59c','+8801857751705','+880','1','1638791990Untitled-1.jpg','1.00','0','16323327831619241714761747856.jpg','We are upgrading our site.  We will come back soon.  
Please stay with us. 
Thank you.','1','{"\'purchase\'":"Your Order Purchase Successfully. your order number is {order_number}","\'order_status\'":"Your Order status update. Order number is {order_number}"}','2025-12-21 03:37:10','2025-12-21 03:54:10','1','1','1','1','1','1','1','1','theme1','6LejARYrAAAAAHVYNV5gcNI7QyHdla5_Aqijhx_x','6LejARYrAAAAAL5jTUsP14RDmIh5tSFARVDWANjC','1','1','','','','<!-- Messenger Chat Plugin Code -->
    <div id="fb-root"></div>

    <!-- Your Chat Plugin code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById(\'fb-customer-chat\');
      chatbox.setAttribute("page_id", "858401617860382");
      chatbox.setAttribute("attribution", "biz_inbox");
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : \'v11.0\'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, \'script\', \'facebook-jssdk\'));
    </script>','0','0','0','0','#','1','1','16','Ecommerce Shopping Platform','1','http://localhost/my/omnimart3/privacy-policy','http://localhost/my/omnimart3/terms-and-service','1','','Get 50% Discount.','newletter','1','Your experience on this site will be improved by allowing cookies.','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?','.',',','<div id="disqus_thread"></div>
<script>
    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
    /*
    var disqus_config = function () {
    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable
    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable
    };
    */
    (function() { // DON\'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement(\'script\');
    s.src = \'https://omnimart.disqus.com/embed.js\';
    s.setAttribute(\'data-timestamp\', +new Date());
    (d.head || d.body).appendChild(s);
    })();
</script>','1','1','1','0','1','1','Saturday-Sunday :','selectbox','1','1');


CREATE TABLE `shipping_services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `minimum_price` double NOT NULL DEFAULT 0,
  `is_condition` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO shipping_services (id, title, price, minimum_price, is_condition, status, created_at, updated_at) VALUES ('1','Free Delevery','0','5000','1','1','2025-12-21 03:17:10','2025-12-21 03:46:10');

INSERT INTO shipping_services (id, title, price, minimum_price, is_condition, status, created_at, updated_at) VALUES ('2','Out Of Dhaka Delivery','130','0','0','1','2025-12-21 03:34:10','2025-12-21 03:53:10');

INSERT INTO shipping_services (id, title, price, minimum_price, is_condition, status, created_at, updated_at) VALUES ('3','Inside Dhaka Delivery','70','0','0','1','2025-12-21 03:18:10','2025-12-21 03:42:10');


CREATE TABLE `sitemaps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sitemap_url` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO sitemaps (id, sitemap_url, filename, created_at, updated_at) VALUES ('1','http://localhost/omnimart30/','sitemap6166b213a58e4.xml','2025-12-21 03:16:10','2025-12-21 03:51:10');

INSERT INTO sitemaps (id, sitemap_url, filename, created_at, updated_at) VALUES ('4','http://localhost/omnimart30/catalog','sitemap6166b378db752.xml','2025-12-21 03:31:10','2025-12-21 03:34:10');


CREATE TABLE `sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page` varchar(255) DEFAULT 'theme1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO sliders (id, photo, title, link, logo, details, created_at, updated_at, home_page) VALUES ('7','1634222159h3s.jpg','40% OFF','#','1634222445Untitled-2.png','SANROCK U52 Drone with 1080P HD Camera','2025-12-21 03:50:10','2025-12-21 03:53:10','theme3');

INSERT INTO sliders (id, photo, title, link, logo, details, created_at, updated_at, home_page) VALUES ('8','1634222112h3s.jpg','40% OFF','#','1634222436Untitled-1.png','Smart Watch New healthy life sleep heart  monitor','2025-12-21 03:45:10','2025-12-21 03:20:10','theme3');

INSERT INTO sliders (id, photo, title, link, logo, details, created_at, updated_at, home_page) VALUES ('10','1636898335s1.jpg','65% OFF','#','','It is a long established fact that a reader will be distracted by the readable content','2025-12-21 03:02:10','2025-12-21 03:25:10','theme2');

INSERT INTO sliders (id, photo, title, link, logo, details, created_at, updated_at, home_page) VALUES ('11','1636897593s2.jpg','theme 4','#','','theme4','2025-12-21 03:54:10','2025-12-21 03:00:10','theme4');

INSERT INTO sliders (id, photo, title, link, logo, details, created_at, updated_at, home_page) VALUES ('13','1636897586s1.jpg','theme 4','#','16342200802.jpg','theme4','2025-12-21 03:51:10','2025-12-21 03:33:10','theme4');

INSERT INTO sliders (id, photo, title, link, logo, details, created_at, updated_at, home_page) VALUES ('16','16343905891630493728s2.jpg','50% OFF','#','','Sleeve Party Dress','2025-12-21 03:13:10','2025-12-21 03:39:10','theme1');

INSERT INTO sliders (id, photo, title, link, logo, details, created_at, updated_at, home_page) VALUES ('17','16343906281630493865s3.jpg','70% OFF','#','','Women Clothing','2025-12-21 03:03:10','2025-12-21 03:24:10','theme1');

INSERT INTO sliders (id, photo, title, link, logo, details, created_at, updated_at, home_page) VALUES ('18','1636898373s2.jpg','40% OFF','#','','It is a long established fact that a reader will be distracted by the readable content','2025-12-21 03:34:10','2025-12-21 03:11:10','theme2');


CREATE TABLE `socials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO socials (id, link, icon, created_at, updated_at) VALUES ('1','https://www.facebook.com/','fab fa-facebook-square','2025-12-21 03:18:10','2025-12-21 03:24:10');

INSERT INTO socials (id, link, icon, created_at, updated_at) VALUES ('2','https://twitter.com/','fab fa-twitter-square','2025-12-21 03:47:10','2025-12-21 03:04:10');

INSERT INTO socials (id, link, icon, created_at, updated_at) VALUES ('3','https://www.instagram.com/','fab fa-instagram','2025-12-21 03:37:10','2025-12-21 03:18:10');

INSERT INTO socials (id, link, icon, created_at, updated_at) VALUES ('10','https://www.pinterest.com/','fab fa-pinterest-square','2025-12-21 03:01:10','2025-12-21 03:14:10');


CREATE TABLE `states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO states (id, name, price, status, type) VALUES ('6','Sylhet','1','1','percentage');

INSERT INTO states (id, name, price, status, type) VALUES ('7','Khulna','0','1','percentage');

INSERT INTO states (id, name, price, status, type) VALUES ('8','Rajshahi','0','1','percentage');

INSERT INTO states (id, name, price, status, type) VALUES ('9','Chittagong','0','1','percentage');

INSERT INTO states (id, name, price, status, type) VALUES ('10','Dhaka','0','1','percentage');

INSERT INTO states (id, name, price, status, type) VALUES ('11','Barishal','0','1','percentage');

INSERT INTO states (id, name, price, status, type) VALUES ('12','Rangpur','0','1','percentage');

INSERT INTO states (id, name, price, status, type) VALUES ('13','Mymensingh','0','1','percentage');


CREATE TABLE `subcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('6','Women\'s Underwear','Womens-Underwear','18','1','2025-12-21 03:23:10','2025-12-21 03:44:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('7','Weddings & Events','Weddings--Events','18','1','2025-12-21 03:46:10','2025-12-21 03:14:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('8','Bottoms','Bottoms','18','1','2025-12-21 03:27:10','2025-12-21 03:12:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('9','Outerwear & Jackets','Outerwear--Jackets','19','1','2025-12-21 03:46:10','2025-12-21 03:21:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('10','Bottoms','Bottoms','19','1','2025-12-21 03:08:10','2025-12-21 03:18:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('12','Mobile Phones','Mobile-Phones','21','1','2025-12-21 03:11:10','2025-12-21 03:48:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('13','Mobile Phone Accessories','Mobile-Phone-Accessories','21','1','2025-12-21 03:14:10','2025-12-21 03:29:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('15','Women\'s Fashion','Womens-Fashion','18','1','2025-12-21 03:53:10','2025-12-21 03:52:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('16','Accessories','Accessories','18','1','2025-12-21 03:53:10','2025-12-21 03:11:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('17','Underwear','Underwear','19','1','2025-12-21 03:28:10','2025-12-21 03:07:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('18','Accessories','Accessories','19','1','2025-12-21 03:37:10','2025-12-21 03:19:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('19','Laptop','Laptop','21','1','2025-12-21 03:52:10','2025-12-21 03:37:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('20','Computer','Computer','21','1','2025-12-21 03:30:10','2025-12-21 03:33:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('21','Featured Accessories','Featured-Accessories','21','1','2025-12-21 03:39:10','2025-12-21 03:10:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('22','DSLR','DSLR','21','1','2025-12-21 03:00:10','2025-12-21 03:17:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('23','Hair Weaves','Hair-Weaves','22','1','2025-12-21 03:07:10','2025-12-21 03:13:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('24','Makeup','Makeup','22','1','2025-12-21 03:17:10','2025-12-21 03:22:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('25','Nail Art & Tools','Nail-Art--Tools','22','1','2025-12-21 03:28:10','2025-12-21 03:34:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('26','Skin Care','Skin-Care','22','1','2025-12-21 03:30:10','2025-12-21 03:34:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('27','Personal Care','Personal-Care','22','1','2025-12-21 03:23:10','2025-12-21 03:21:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('28','Bike','Bike','23','1','2025-12-21 03:42:10','2025-12-21 03:18:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('29','Car','Car','23','1','2025-12-21 03:37:10','2025-12-21 03:33:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('30','WordPress Themes','WordPress-Themes','27','1','2025-12-21 03:10:10','2025-12-21 03:37:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('31','Laravel CMS','Laravel-CMS','27','1','2025-12-21 03:44:10','2025-12-21 03:16:10');

INSERT INTO subcategories (id, name, slug, category_id, status, created_at, updated_at) VALUES ('32','HTML Templates','HTML-Templates','27','1','2025-12-21 03:13:10','2025-12-21 03:10:10');


CREATE TABLE `subscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO subscribers (id, email, created_at, updated_at) VALUES ('1','user@gmail.com','2025-12-21 03:40:10','2025-12-21 03:39:10');

INSERT INTO subscribers (id, email, created_at, updated_at) VALUES ('2','shawonomar05@gmail.com','2025-12-21 03:50:10','2025-12-21 03:27:10');


CREATE TABLE `taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` double DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO taxes (id, name, value, status, created_at, updated_at) VALUES ('1','High Tax','4','1','2025-12-21 03:24:10','2025-12-21 03:37:10');

INSERT INTO taxes (id, name, value, status, created_at, updated_at) VALUES ('2','Low Tax','1','1','2025-12-21 03:00:10','2025-12-21 03:30:10');

INSERT INTO taxes (id, name, value, status, created_at, updated_at) VALUES ('3','No Tax','0','1','2025-12-21 03:17:10','2025-12-21 03:53:10');


CREATE TABLE `tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO tickets (id, subject, message, file, user_id, status, created_at, updated_at) VALUES ('1','I need help','I need help','','1','','2021-12-03 12:32:39','2021-12-03 12:32:39');


CREATE TABLE `track_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('176','318','Pending','2021-09-12 12:07:09','2021-09-12 12:07:09');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('177','1','Pending','2021-09-13 13:11:25','2021-09-13 13:11:25');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('178','22','Pending','2021-09-13 15:13:48','2021-09-13 15:13:48');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('179','22','Pending','2021-09-13 15:14:34','2021-09-13 15:14:34');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('180','23','Pending','2021-09-13 15:15:09','2021-09-13 15:15:09');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('182','25','Pending','2021-09-13 15:22:56','2021-09-13 15:22:56');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('187','30','Pending','2021-09-18 14:44:06','2021-09-18 14:44:06');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('300','122','Pending','2022-01-16 15:37:45','2022-01-16 15:37:45');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('301','123','Pending','2022-01-16 16:00:15','2022-01-16 16:00:15');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('302','124','Pending','2022-01-16 16:03:35','2022-01-16 16:03:35');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('303','125','Pending','2022-01-16 16:08:36','2022-01-16 16:08:36');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('304','126','Pending','2022-01-16 17:31:41','2022-01-16 17:31:41');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('305','127','Pending','2022-01-16 17:33:57','2022-01-16 17:33:57');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('306','128','Pending','2022-01-16 17:36:51','2022-01-16 17:36:51');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('307','129','Pending','2022-01-16 17:40:48','2022-01-16 17:40:48');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('308','129','In Progress','2022-01-17 09:59:09','2022-01-17 09:59:09');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('309','129','Delivered','2022-01-17 09:59:09','2022-01-17 09:59:09');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('310','128','In Progress','2022-01-17 09:59:15','2022-01-17 09:59:15');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('311','128','Delivered','2022-01-17 09:59:15','2022-01-17 09:59:15');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('312','127','In Progress','2022-01-17 09:59:21','2022-01-17 09:59:21');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('313','127','Delivered','2022-01-17 09:59:21','2022-01-17 09:59:21');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('314','126','In Progress','2022-01-17 09:59:27','2022-01-17 09:59:27');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('315','126','Delivered','2022-01-17 09:59:27','2022-01-17 09:59:27');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('316','125','In Progress','2022-02-28 14:24:36','2022-02-28 14:24:36');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('317','130','Pending','2022-03-01 16:10:39','2022-03-01 16:10:39');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('318','131','Pending','2022-03-02 08:15:49','2022-03-02 08:15:49');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('319','132','Pending','2022-03-02 08:18:08','2022-03-02 08:18:08');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('320','133','Pending','2025-04-13 21:53:01','2025-04-13 21:53:01');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('321','134','Pending','2025-04-27 20:05:39','2025-04-27 20:05:39');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('322','135','Pending','2025-04-27 20:06:24','2025-04-27 20:06:24');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('323','135','In Progress','2025-12-15 10:26:41','2025-12-15 10:26:41');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('324','136','Pending','2025-12-17 06:57:16','2025-12-17 06:57:16');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('325','137','Pending','2025-12-17 08:32:43','2025-12-17 08:32:43');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('326','137','In Progress','2025-12-17 09:59:33','2025-12-17 09:59:33');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('327','137','Delivered','2025-12-17 09:59:47','2025-12-17 09:59:47');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('328','138','Pending','2025-12-18 06:08:22','2025-12-18 06:08:22');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('329','139','Pending','2025-12-18 06:11:01','2025-12-18 06:11:01');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('330','140','Pending','2025-12-18 09:31:47','2025-12-18 09:31:47');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('331','141','Pending','2025-12-18 10:28:54','2025-12-18 10:28:54');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('332','142','Pending','2025-12-18 11:02:51','2025-12-18 11:02:51');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('333','143','Pending','2025-12-18 11:12:20','2025-12-18 11:12:20');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('334','144','Pending','2025-12-20 04:11:51','2025-12-20 04:11:51');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('335','145','Pending','2025-12-20 04:19:11','2025-12-20 04:19:11');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('336','146','Pending','2025-12-20 04:20:06','2025-12-20 04:20:06');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('337','147','Pending','2025-12-20 04:22:58','2025-12-20 04:22:58');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('338','148','Pending','2025-12-20 04:23:55','2025-12-20 04:23:55');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('339','149','Pending','2025-12-20 04:24:22','2025-12-20 04:24:22');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('340','150','Pending','2025-12-20 04:25:00','2025-12-20 04:25:00');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('341','151','Pending','2025-12-20 04:25:54','2025-12-20 04:25:54');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('342','152','Pending','2025-12-20 04:26:31','2025-12-20 04:26:31');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('343','153','Pending','2025-12-20 04:27:05','2025-12-20 04:27:05');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('344','154','Pending','2025-12-20 04:33:13','2025-12-20 04:33:13');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('345','155','Pending','2025-12-20 04:37:17','2025-12-20 04:37:17');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('346','156','Pending','2025-12-20 04:40:20','2025-12-20 04:40:20');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('347','157','Pending','2025-12-20 04:40:41','2025-12-20 04:40:41');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('348','158','Pending','2025-12-20 04:40:57','2025-12-20 04:40:57');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('349','159','Pending','2025-12-20 04:42:24','2025-12-20 04:42:24');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('350','160','Pending','2025-12-20 04:42:50','2025-12-20 04:42:50');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('351','161','Pending','2025-12-20 04:43:51','2025-12-20 04:43:51');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('352','162','Pending','2025-12-20 04:44:33','2025-12-20 04:44:33');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('353','163','Pending','2025-12-20 04:44:55','2025-12-20 04:44:55');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('354','164','Pending','2025-12-20 04:45:31','2025-12-20 04:45:31');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('355','165','Pending','2025-12-20 04:46:36','2025-12-20 04:46:36');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('356','166','Pending','2025-12-20 04:48:32','2025-12-20 04:48:32');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('357','167','Pending','2025-12-20 05:01:57','2025-12-20 05:01:57');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('358','166','In Progress','2025-12-21 03:38:32','2025-12-21 03:38:32');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('359','166','Delivered','2025-12-21 03:38:32','2025-12-21 03:38:32');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('360','167','In Progress','2025-12-21 03:38:35','2025-12-21 03:38:35');

INSERT INTO track_orders (id, order_id, title, created_at, updated_at) VALUES ('361','167','Delivered','2025-12-21 03:38:35','2025-12-21 03:38:35');


CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `user_email` varchar(255) DEFAULT NULL,
  `currency_sign` varchar(255) DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('90','122','zNF5gDbPnM','161','teacher@gmail.com','$','1','2022-01-16 15:37:45','2022-01-16 15:37:45');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('91','123','ZN6ve2FsBf','383','user@gmail.com','$','1','2022-01-16 16:00:15','2022-01-16 16:00:15');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('92','124','GPt4RZ0RCq','77','user@gmail.com','$','1','2022-01-16 16:03:35','2022-01-16 16:03:35');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('93','125','0HGakDhxlW','97','user@gmail.com','$','1','2022-01-16 16:08:36','2022-01-16 16:08:36');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('94','126','Ffr4zOVXnf','791','user@gmail.com','$','1','2022-01-16 17:31:41','2022-01-16 17:31:41');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('95','127','rTgJph3cv8','408','user@gmail.com','$','1','2022-01-16 17:33:57','2022-01-16 17:33:57');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('96','128','JrV7oupswB','176','user@gmail.com','$','1','2022-01-16 17:36:51','2022-01-16 17:36:51');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('97','129','HhgjzEg09z','1513','user@gmail.com','$','1','2022-01-16 17:40:48','2022-01-16 17:40:48');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('98','130','j0W5sAeolz','172','user@gmail.com','$','1','2022-03-01 16:10:39','2022-03-01 16:10:39');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('99','131','TyExwhsbeS','1725','user@gmail.com','$','1','2022-03-02 08:15:49','2022-03-02 08:15:49');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('100','132','w10xGWiN80','55','user@gmail.com','$','1','2022-03-02 08:18:08','2022-03-02 08:18:08');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('101','133','ORD-20250413-133','1458.11','user@gmail.com','$','1','2025-04-13 21:53:01','2025-04-13 21:53:01');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('102','134','ORD-20250427-134','655.75','mamunurrashid6424@gmail.com','$','1','2025-04-27 20:05:39','2025-04-27 20:05:39');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('103','135','ORD-20250427-135','655.75','user@gmail.com','$','1','2025-04-27 20:06:24','2025-04-27 20:06:24');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('104','136','ORD-20251217-136','283.42','sdf@gmal.com','৳','1','2025-12-17 06:57:16','2025-12-17 06:57:16');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('105','137','ORD-20251217-137','247.24','da@gmail.com','৳','1','2025-12-17 08:32:43','2025-12-17 08:32:43');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('106','138','ORD-20251218-138','1574.48','shawonomar05@gmail.com','৳','1','2025-12-18 06:08:22','2025-12-18 06:08:22');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('107','139','ORD-20251218-139','1574.48','sahad@gmail.com','৳','1','2025-12-18 06:11:01','2025-12-18 06:11:01');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('108','140','ORD-20251218-140','3018.46','shawonomar05@gmail.com','৳','1','2025-12-18 09:31:47','2025-12-18 09:31:47');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('109','141','ORD-20251218-141','1574.48','shawonomar05@gmail.com','৳','1','2025-12-18 10:28:54','2025-12-18 10:28:54');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('110','142','ORD-20251218-142','1871.03','shawonomar05@gmail.com','৳','1','2025-12-18 11:02:51','2025-12-18 11:02:51');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('111','143','ORD-20251218-143','1574.48','shawonomar05@gmail.com','৳','1','2025-12-18 11:12:20','2025-12-18 11:12:20');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('112','144','ORD-20251220-144','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:11:51','2025-12-20 04:11:51');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('113','145','ORD-20251220-145','1727.9','shawonomar05@gmail.com','৳','1','2025-12-20 04:19:11','2025-12-20 04:19:11');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('114','146','ORD-20251220-146','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:20:06','2025-12-20 04:20:06');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('115','147','ORD-20251220-147','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:22:58','2025-12-20 04:22:58');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('116','148','ORD-20251220-148','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:23:55','2025-12-20 04:23:55');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('117','149','ORD-20251220-149','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:24:22','2025-12-20 04:24:22');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('118','150','ORD-20251220-150','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:25:00','2025-12-20 04:25:00');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('119','151','ORD-20251220-151','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:25:54','2025-12-20 04:25:54');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('120','152','ORD-20251220-152','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:26:31','2025-12-20 04:26:31');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('121','153','ORD-20251220-153','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:27:05','2025-12-20 04:27:05');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('122','154','ORD-20251220-154','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:33:13','2025-12-20 04:33:13');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('123','155','ORD-20251220-155','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:37:17','2025-12-20 04:37:17');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('124','156','ORD-20251220-156','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:40:20','2025-12-20 04:40:20');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('125','157','ORD-20251220-157','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:40:41','2025-12-20 04:40:41');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('126','158','ORD-20251220-158','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:40:57','2025-12-20 04:40:57');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('127','159','ORD-20251220-159','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:42:24','2025-12-20 04:42:24');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('128','160','ORD-20251220-160','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:42:50','2025-12-20 04:42:50');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('129','161','ORD-20251220-161','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:43:51','2025-12-20 04:43:51');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('130','162','ORD-20251220-162','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:44:33','2025-12-20 04:44:33');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('131','163','ORD-20251220-163','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:44:55','2025-12-20 04:44:55');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('132','164','ORD-20251220-164','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:45:31','2025-12-20 04:45:31');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('133','165','ORD-20251220-165','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:46:36','2025-12-20 04:46:36');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('134','166','ORD-20251220-166','283.42','shawonomar05@gmail.com','৳','1','2025-12-20 04:48:32','2025-12-20 04:48:32');

INSERT INTO transactions (id, order_id, txn_id, amount, user_email, currency_sign, currency_value, created_at, updated_at) VALUES ('135','167','ORD-20251220-167','1574.48','shawonomar05@gmail.com','৳','1','2025-12-20 05:01:57','2025-12-20 05:01:57');


CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email_token` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ship_address1` varchar(255) DEFAULT NULL,
  `ship_address2` varchar(255) DEFAULT NULL,
  `ship_zip` varchar(255) DEFAULT NULL,
  `ship_city` varchar(255) DEFAULT NULL,
  `ship_country` varchar(255) DEFAULT NULL,
  `ship_company` varchar(255) DEFAULT NULL,
  `bill_address1` varchar(255) DEFAULT NULL,
  `bill_address2` varchar(255) DEFAULT NULL,
  `bill_zip` varchar(255) DEFAULT NULL,
  `bill_city` varchar(255) DEFAULT NULL,
  `bill_country` varchar(255) DEFAULT NULL,
  `bill_company` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `email_verify` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('1','Alex','Smith','01728332009','user@gmail.com','16385217454444.jpg','','$2y$10$o2LxRwxTmciQqlKzRhy9O./KERxB8Ht3K8.OHw3WGJu3oDuNQ/xXm','472 Clark Street,  Bay Shore, New York','','3444','New York','United States','','472 Clark Street,  Bay Shore, New York','','3444','New York','United States','','2021-09-13 13:08:04','2025-04-13 21:25:57','10','0');

INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('8','Omar Faruk Shawon','Hasan','01857751705','shawonomar06@gmail.com','','ckKvuX','$2y$10$NeprsJWf5kaaejvE7MRR/uzVjodvw6Sy.UvID8oH.dc/quJ5uwuMu','','','','','','','','','','','','','2022-03-19 16:10:00','2025-12-18 09:30:37','','0');

INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('9','Mamunur','Rashid','01795846424','mamunurrashid6424@gmail.com','','762208','$2y$10$H6yB.Vx7auhkEOiIMMZw6O0in5l4GsMCMetXJRIDoWUEV/e8NUUAK','','','','','','','','','','','','','2025-04-12 17:58:21','2025-04-12 17:58:21','','0');

INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('10','Mamunur','Rashid','01795846424','mamunurrashid6424@gmail.com','','696087','$2y$10$EKvnwgmYH6WVQFaHSYWNmOWHkFPzqyKinJq62YXR7DA//C1AqKFIq','','','','','','','','','','','','','2025-04-12 18:02:04','2025-04-12 18:02:04','','0');

INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('11','Omar','Shawon','01857751705','shawonomar0@gmail.com','','547229','$2y$10$FbaWt60/nnMA9ZApaahj6ua1Xs.I/pdzhOBh3TK514xlmvXiX2jme','','','','','','','','','','','','','2025-12-18 09:40:48','2025-12-18 09:40:48','','0');

INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('15','Omar','Shawon','01857751705','shawonomar05@gmail.com','','','$2y$10$qOVb0PeBamhit9zHYaTOm..V5q0SSuDnGjiiP2Ro.10CFVvAwZA66','','','','','','','','','','','','','2025-12-18 09:52:35','2025-12-18 10:27:24','','1');

INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('16','Omar','Shawon','01857751705','shawonomar05@gmail.com','','909348','$2y$10$qgbO4fMHlpGyqFZAMBbI8.X6NKiRty4cjy/HqyAAlpbAzkW3U1.0m','','','','','','','','','','','','','2025-12-18 09:53:18','2025-12-18 09:53:18','','0');

INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('17','Omar','Shawon','01857751705','shawonomar05@gmail.com','','643217','$2y$10$2vkEL2Bm.9DOCJP4pOOFEeaa7.ZC9e..YX2jsJAwd6rWu4qnCdxIe','','','','','','','','','','','','','2025-12-18 09:54:05','2025-12-18 09:54:05','','0');

INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('18','Omar','Shawon','01857751705','shawonomar05@gmail.com','','360435','$2y$10$PP/UEWXKnXd7uSqSfXOtIeYPiiDjprrkxe1s0vraI4Drye.BKXTLi','','','','','','','','','','','','','2025-12-18 09:54:29','2025-12-18 09:54:29','','0');

INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('19','Omar','Shawon','01857751705','shawonomar05@gmail.com','','530730','$2y$10$RJI/M50OjRyERgfE2ae4huAYbzUcFgDYxaWVATxHniZ27poiDtpHm','','','','','','','','','','','','','2025-12-18 09:55:47','2025-12-18 09:55:47','','0');

INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('20','Omar','Shawon','01857751705','shawonomar05@gmail.com','','463055','$2y$10$MnBwr924Qdc8pDugjPvwBOEfq9mvrrdfiXkwNYiXGBnhrhukk/DEu','','','','','','','','','','','','','2025-12-18 09:56:24','2025-12-18 09:56:24','','0');

INSERT INTO users (id, first_name, last_name, phone, email, photo, email_token, password, ship_address1, ship_address2, ship_zip, ship_city, ship_country, ship_company, bill_address1, bill_address2, bill_zip, bill_city, bill_country, bill_company, created_at, updated_at, state_id, email_verify) VALUES ('21','Omar','Shawon','01857751705','shawonomar05@gmail.com','','765572','$2y$10$QoLGf/tq9IKbpuOSWIsTtuCe66HccCgRz1YjhIDfFEjSifusYbnYG','','','','','','','','','','','','','2025-12-18 09:56:42','2025-12-18 09:56:42','','0');


CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO wishlists (id, user_id, item_id, created_at, updated_at) VALUES ('1','1','587','2025-12-21 03:23:10','2025-12-21 03:08:10');

INSERT INTO wishlists (id, user_id, item_id, created_at, updated_at) VALUES ('2','1','525','2025-12-21 03:34:10','2025-12-21 03:17:10');

INSERT INTO wishlists (id, user_id, item_id, created_at, updated_at) VALUES ('3','1','540','2025-12-21 03:15:10','2025-12-21 03:38:10');
