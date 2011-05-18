Use ro;
ALTER TABLE `ragsrvinfo` DROP `motd`;
ALTER TABLE `login` ADD `birthdate` DATE NOT NULL DEFAULT '0000-00-00';

Use ros;
ALTER TABLE `char` ADD `rename` SMALLINT( 3 ) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `guild` MODIFY COLUMN `exp` bigint(20) unsigned NOT NULL default '0';
DELETE FROM `global_reg_value` WHERE `str` = 'killedrid' OR `str` = 'killerrid';
ALTER TABLE `char` ADD `delete_date` INT(11) UNSIGNED NOT NULL DEFAULT '0';

ALTER TABLE `cart_inventory` MODIFY COLUMN `card0` SMALLINT(11) NOT NULL DEFAULT '0';
ALTER TABLE `cart_inventory` MODIFY COLUMN `card1` SMALLINT(11) NOT NULL DEFAULT '0';
ALTER TABLE `cart_inventory` MODIFY COLUMN `card2` SMALLINT(11) NOT NULL DEFAULT '0';
ALTER TABLE `cart_inventory` MODIFY COLUMN `card3` SMALLINT(11) NOT NULL DEFAULT '0';

ALTER TABLE `char` MODIFY `weapon` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `char` ADD `robe` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0' AFTER `head_bottom`;

Use logs;
-- Adds 'B' to `type` in `picklog` and `zenylog`
ALTER TABLE `picklog` MODIFY `type` ENUM('M','P','L','T','V','S','N','C','A','R','G','E','B') NOT NULL DEFAULT 'P';
ALTER TABLE `zenylog` MODIFY `type` ENUM('M','T','V','S','N','A','E','B') NOT NULL DEFAULT 'S';
