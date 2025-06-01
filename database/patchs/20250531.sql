
/*
	ini kok gak ada
*/

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
