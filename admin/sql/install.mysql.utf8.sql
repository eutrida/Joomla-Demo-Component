CREATE TABLE IF NOT EXISTS `#__demo_look` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`asset_id` INT(255) UNSIGNED NOT NULL DEFAULT '0',
	`acronym` CHAR(64) NOT NULL DEFAULT '',
	`add` TINYINT(1) NOT NULL DEFAULT '0',
	`alias` CHAR(64) NOT NULL DEFAULT '',
	`description` TEXT NOT NULL DEFAULT '',
	`female` TEXT NOT NULL DEFAULT '',
	`male` TEXT NOT NULL DEFAULT '',
	`name` VARCHAR(255) NOT NULL DEFAULT '',
	`not_required` INT(1) NOT NULL DEFAULT '0',
	`website` VARCHAR(255) NOT NULL DEFAULT '',
	`params` TEXT NOT NULL DEFAULT '',
	`published` tinyint(1) NOT NULL DEFAULT '1',
	`created_by` int(11) NOT NULL DEFAULT '0',
	`modified_by` int(11) NOT NULL DEFAULT '0',
	`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`checked_out` int(11) NOT NULL,
	`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`version` int(11) NOT NULL DEFAULT '1',
	`hits` int(11) NOT NULL DEFAULT '0',
	`access` int(11) DEFAULT NULL,
	`ordering` int(11) NOT NULL DEFAULT '0',
	`metakey` TEXT NOT NULL DEFAULT '',
	`metadesc` TEXT NOT NULL DEFAULT '',
	`metadata` TEXT NOT NULL DEFAULT '',
	PRIMARY KEY  (`id`),
	UNIQUE KEY `idx_acronym` (`acronym`),
	KEY `idx_access` (`access`),
	KEY `idx_checkout` (`checked_out`),
	KEY `idx_createdby` (`created_by`),
	KEY `idx_modifiedby` (`modified_by`),
	KEY `idx_state` (`published`),
	KEY `idx_name` (`name`),
	KEY `idx_add` (`add`),
	KEY `idx_alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `#__demo_help_document` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`asset_id` INT(255) UNSIGNED NOT NULL DEFAULT '0',
	`admin_view` CHAR(255) NOT NULL DEFAULT '',
	`alias` CHAR(64) NOT NULL DEFAULT '',
	`article` TINYINT(1) NOT NULL DEFAULT '0',
	`content` TEXT NOT NULL DEFAULT '',
	`groups` TEXT NOT NULL DEFAULT '',
	`location` TINYINT(1) NOT NULL DEFAULT '0',
	`not_required` INT(1) NOT NULL DEFAULT '0',
	`site_view` CHAR(255) NOT NULL DEFAULT '',
	`target` TINYINT(1) NOT NULL DEFAULT '0',
	`title` CHAR(64) NOT NULL DEFAULT '',
	`type` TINYINT(1) NOT NULL DEFAULT '0',
	`url` VARCHAR(255) NOT NULL DEFAULT '',
	`params` TEXT NOT NULL DEFAULT '',
	`published` tinyint(1) NOT NULL DEFAULT '1',
	`created_by` int(11) NOT NULL DEFAULT '0',
	`modified_by` int(11) NOT NULL DEFAULT '0',
	`created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`checked_out` int(11) NOT NULL,
	`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
	`version` int(11) NOT NULL DEFAULT '1',
	`hits` int(11) NOT NULL DEFAULT '0',
	`access` int(11) DEFAULT NULL,
	`ordering` int(11) NOT NULL DEFAULT '0',
	`metakey` TEXT NOT NULL DEFAULT '',
	`metadesc` TEXT NOT NULL DEFAULT '',
	`metadata` TEXT NOT NULL DEFAULT '',
	PRIMARY KEY  (`id`),
	KEY `idx_access` (`access`),
	KEY `idx_checkout` (`checked_out`),
	KEY `idx_createdby` (`created_by`),
	KEY `idx_modifiedby` (`modified_by`),
	KEY `idx_state` (`published`),
	KEY `idx_title` (`title`),
	KEY `idx_type` (`type`),
	KEY `idx_location` (`location`),
	KEY `idx_target` (`target`),
	KEY `idx_alias` (`alias`),
	KEY `idx_article` (`article`)
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;



--
-- Always insure this column is large enough for all the access control values.
--
ALTER TABLE `#__assets` CHANGE `rules` `rules` MEDIUMTEXT NOT NULL COMMENT 'JSON encoded access control.';
