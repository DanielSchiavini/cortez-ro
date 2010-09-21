CREATE TABLE IF NOT EXISTS `mercenary` (
  `mer_id` int(11) unsigned NOT NULL auto_increment,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL default '0',
  `hp` int(12) NOT NULL default '1',
  `sp` int(12) NOT NULL default '1',
  `kill_counter` int(11) NOT NULL,
  `life_time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`mer_id`)
);


CREATE TABLE IF NOT EXISTS `mercenary_owner` (
  `char_id` int(11) NOT NULL,
  `merc_id` int(11) NOT NULL default '0',
  `arch_calls` int(11) NOT NULL default '0',
  `arch_faith` int(11) NOT NULL default '0',
  `spear_calls` int(11) NOT NULL default '0',
  `spear_faith` int(11) NOT NULL default '0',
  `sword_calls` int(11) NOT NULL default '0',
  `sword_faith` int(11) NOT NULL default '0',
  PRIMARY KEY  (`char_id`)
);

Alter Table `cart_inventory` Add `expire_time` int(11) unsigned NOT NULL default '0';

ALTER TABLE `char` CHANGE `status_point` `status_point` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `char` CHANGE `skill_point` `skill_point` INT( 11 ) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `char` CHANGE `manner` `manner` SMALLINT ( 6 ) NOT NULL DEFAULT '0';
Alter Table `char` Add `rename` SMALLINT(3) unsigned NOT NULL default '0' After fame;
ALTER TABLE `char` ADD COLUMN `mer_id` INTEGER UNSIGNED NOT NULL DEFAULT '0' AFTER `homun_id`;

ALTER TABLE `guild` MODIFY COLUMN `exp` bigint(20) unsigned NOT NULL default '0';

Alter Table `inventory` Add `expire_time` int(11) unsigned NOT NULL default '0';

Alter Table `quest` Change Column `state` `state` enum('0','1','2') NOT NULL default '0';
Alter Table `quest` Add `time` int(11) unsigned NOT NULL default '0';
Alter Table `quest` Add `count1` mediumint(8) unsigned NOT NULL default '0';
Alter Table `quest` Add `count2` mediumint(8) unsigned NOT NULL default '0';
Alter Table `quest` Add `count3` mediumint(8) unsigned NOT NULL default '0';

Alter Table `storage` Add `expire_time` int(11) unsigned NOT NULL default '0';

DELETE FROM `global_reg_value` WHERE `str`='COOKING_ATTEMPT' OR str='question$' OR str='question2$' OR str='question3$';

DROP TABLE `quest_objective`;

Update `char` Set save_x=266, save_y=105, save_map='brasilis';
Update `char` Set last_x=266, last_y=105, last_map='brasilis' Where last_map = 'schg_cas03';


--- Login DB

Alter Table `login` Change Column `connect_until` `expiration_time` int(11) unsigned NOT NULL default '0';
Alter Table `login` Change Column `ban_until` `unban_time` int(11) unsigned NOT NULL default '0';
-- Delete `memo`, `error_message`