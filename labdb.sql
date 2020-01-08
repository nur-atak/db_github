DROP TABLE IF EXISTS `trainings`;
create table `trainings` (
	`name` varchar (45),	
	`subject` varchar(45) NOT NULL,
	`duration` FLOAT NOT NULL,
	PRIMARY KEY (`name`)
);

INSERT INTO `trainings` VALUES ('ngs','next-generation-seq','8'),
('PCR', 'polymerase-chain-reaction', '5'),
('maldi-tof', 'matrix-assisted-laser-desorption-ionization', '4');

DROP TABLE IF EXISTS `members`;
create table `members`(
	`name` varchar(45) NOT NULL,
	`lastname` varchar(45) NOT NULL,
	`birth_date` date NOT NULL,
	`training` varchar(55),
	PRIMARY KEY (`name`)
);

INSERT INTO `members` VALUES ('Nick', 'Waller','1991-05-30','ngs'),
('Raj', 'Black', '1981-09-03','maldi-tof'),
('Jess', 'Woolley', '1997-01-15','PCR');

DROP TABLE IF EXISTS `equipment`;
create table `equipment`(
	`name` varchar(45),
	`manufacturer` varchar (45) NOT NULL,
	`purchase_date` date NOT NULL,
	PRIMARY KEY (`name`)
);

INSERT INTO `equipment` VALUES ('malditof', 'shimadzu', '2015-06-10'),
('cell-culture-flask', 'Fisher', '2019-11-29'),
('PCR-kits', 'kogene-biotech', '2019-12-01');

DROP TABLE IF EXISTS `experiment`;
create table `experiment`(
	`name` varchar(45),
	`performed_by` varchar(45),
	`equipment_used` varchar(45),
	`date` date NOT NULL,
	PRIMARY KEY (`name`)
);

INSERT INTO `experiment` VALUES ('PCR', 'Raj', 'PCR-kits', '2019-12-3'),
('maldi-tof','Nick','cell-culture-flask','2019-11-28'),
('ngs','Jess','malditof','2018-02-19');

DROP TABLE IF EXISTS `results`;
create table `results` (
	`name` varchar(45),
	`directory` varchar(45),
	`experiment` varchar(45),
	`status` enum('done', 'not_done'),
	PRIMARY KEY (`name`)	
);

INSERT INTO `results` VALUES ('exp_pcr','dir_pcr','PCR','done'),
('exp_ngs','dir_ngs','NGS','not_done'),
('exp_mt','dir_mt','maldi-tof','done');
 

