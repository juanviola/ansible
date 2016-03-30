CREATE TABLE `users` (
	`id` int(11) NOT NULL,
	`username` varchar(254) default NULL,
	`password` varchar(100) default NULL,
	`date_modified` datetime default NULL,
	`date_creation` datetime default NULL,
	PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;