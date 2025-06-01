-- Adminer 5.3.1-dev MariaDB 11.7.2-MariaDB dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;

SET NAMES utf8mb4;

CREATE TABLE `abbr_entry` (
  `abbr_key` varchar(256) DEFAULT NULL,
  `abbr_id` varchar(256) DEFAULT NULL,
  `abbr_en` varchar(256) DEFAULT NULL,
  `abbr_idx` varchar(256) DEFAULT NULL,
  `abbr_type` varchar(256) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `notes` varchar(256) DEFAULT NULL,
  `redirect_to` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `definition` (
  `def_uid` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(255) NOT NULL,
  `def_num` int(11) NOT NULL DEFAULT 1,
  `lex_class` varchar(16) DEFAULT NULL,
  `discipline` varchar(16) DEFAULT NULL,
  `def_text` varchar(4000) NOT NULL,
  `sample` varchar(4000) DEFAULT NULL,
  `see` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`def_uid`),
  KEY `phrase` (`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `discipline` (
  `discipline` varchar(16) NOT NULL,
  `discipline_name` varchar(255) NOT NULL,
  `glossary_count` int(11) NOT NULL DEFAULT 0,
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`discipline`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `external_ref` (
  `ext_uid` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ext_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `glossary` (
  `glo_uid` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL,
  `discipline` varchar(16) DEFAULT NULL,
  `lang` varchar(16) NOT NULL DEFAULT 'en',
  `ref_source` varchar(16) DEFAULT NULL,
  `wpid` varchar(255) DEFAULT NULL,
  `wpen` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  `wikipedia_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`glo_uid`),
  KEY `phrase` (`phrase`),
  KEY `original_phrase` (`original`),
  KEY `discipline` (`discipline`),
  KEY `ref_source` (`ref_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `kbbi` (
  `lemma` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`lemma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `language` (
  `lang` varchar(16) NOT NULL,
  `lang_name` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `lexical_class` (
  `lex_class` varchar(16) NOT NULL,
  `lex_class_name` varchar(255) NOT NULL,
  `lex_class_ref` varchar(255) DEFAULT NULL COMMENT 'Referensi ke nama kelas',
  `sort_order` int(11) NOT NULL DEFAULT 1,
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`lex_class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `new_lemma` (
  `new_lemma` varchar(255) NOT NULL,
  `glossary_count` int(11) NOT NULL DEFAULT 0,
  `is_exists` tinyint(4) NOT NULL DEFAULT 0,
  `is_valid` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`new_lemma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `phrase` (
  `phrase` varchar(255) NOT NULL,
  `phrase_type` varchar(16) NOT NULL DEFAULT 'r' COMMENT 'r=root; f=affix; c=compond',
  `lex_class` varchar(16) NOT NULL,
  `roget_class` varchar(16) DEFAULT NULL,
  `pronounciation` varchar(4000) DEFAULT NULL,
  `etymology` varchar(4000) DEFAULT NULL,
  `ref_source` varchar(16) DEFAULT NULL,
  `def_count` int(11) NOT NULL DEFAULT 0,
  `actual_phrase` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL COMMENT 'Additional information',
  `notes` varchar(4000) DEFAULT NULL COMMENT 'Additional notes',
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `creator` varchar(32) DEFAULT NULL,
  `proverb_updated` datetime DEFAULT NULL,
  `wikipedia_updated` datetime DEFAULT NULL,
  `kbbi_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `phrase_type` (
  `phrase_type` varchar(16) NOT NULL COMMENT 'r=root; f=affix; c=compond',
  `phrase_type_name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 1,
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`phrase_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `proverb` (
  `prv_uid` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(255) NOT NULL,
  `proverb` varchar(4000) NOT NULL,
  `meaning` varchar(4000) DEFAULT NULL,
  `prv_type` int(11) DEFAULT 0 COMMENT '0=wrong; 1=proverb; 2=kiasan',
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`prv_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `ref_source` (
  `ref_source` varchar(16) NOT NULL,
  `ref_source_name` varchar(255) NOT NULL,
  `dictionary` tinyint(4) DEFAULT 0,
  `glossary` tinyint(4) DEFAULT 0,
  `translation` tinyint(4) DEFAULT 0,
  `glossary_count` int(11) NOT NULL DEFAULT 0,
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ref_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci COMMENT='Reference source';


CREATE TABLE `relation` (
  `rel_uid` int(11) NOT NULL AUTO_INCREMENT,
  `root_phrase` varchar(255) NOT NULL,
  `related_phrase` varchar(255) NOT NULL,
  `rel_type` varchar(16) NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rel_uid`),
  UNIQUE KEY `relation_unique` (`root_phrase`,`related_phrase`,`rel_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `relation_type` (
  `rel_type` varchar(16) NOT NULL COMMENT 's=synonym, a=antonym, o=other',
  `rel_type_name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 1,
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`rel_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `roget_class` (
  `roget_class` varchar(16) NOT NULL,
  `number` varchar(16) DEFAULT NULL,
  `suffix` varchar(16) DEFAULT NULL,
  `roget_name` varchar(255) DEFAULT NULL,
  `english_name` varchar(255) DEFAULT NULL,
  `asterix` varchar(16) DEFAULT NULL,
  `caret` varchar(16) DEFAULT NULL,
  `class_num` int(11) DEFAULT NULL,
  `division_num` int(11) DEFAULT NULL,
  `section_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`roget_class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `searched_phrase` (
  `phrase` varchar(255) NOT NULL,
  `phrase_type` varchar(16) NOT NULL COMMENT 'r=root; f=affix; c=compond',
  `search_count` int(11) NOT NULL DEFAULT 0,
  `last_searched` datetime NOT NULL,
  PRIMARY KEY (`phrase`,`phrase_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `sys_abbrev` (
  `abbrev` varchar(16) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL COMMENT 'lang, discipline, usage',
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`abbrev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `sys_action` (
  `ses_id` varchar(32) NOT NULL,
  `action_time` datetime NOT NULL,
  `action_type` varchar(16) DEFAULT NULL,
  `module` varchar(16) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`action_time`,`ses_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `sys_cache` (
  `cache_uid` int(11) NOT NULL AUTO_INCREMENT,
  `cache_type` varchar(16) NOT NULL COMMENT 'kbbi',
  `updated` datetime NOT NULL,
  `phrase` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`cache_uid`),
  KEY `phrase_ak` (`cache_type`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `sys_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `ses_id` varchar(32) DEFAULT NULL,
  `sender_name` varchar(255) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=hidden; 1=show',
  `sent_date` datetime NOT NULL,
  `comment_text` varchar(4000) DEFAULT NULL,
  `response` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `sys_session` (
  `ses_id` varchar(32) NOT NULL,
  `ip_address` varchar(16) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `started` datetime DEFAULT NULL,
  `ended` datetime DEFAULT NULL,
  `last` datetime DEFAULT NULL,
  `page_view` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `sys_user` (
  `user_id` varchar(32) NOT NULL,
  `pass_key` varchar(32) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updater` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


CREATE TABLE `translation` (
  `lemma` varchar(255) NOT NULL,
  `ref_source` varchar(16) NOT NULL,
  `translation` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`lemma`,`ref_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


-- 2025-06-01 18:34:35 UTC