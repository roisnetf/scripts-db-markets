-- TODO : Clean headers
-- TODO : Translate (FR->EN)
-- TODO : Describe table + fields
-- TODO : Modify ID type (INT->UUID)

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;

START TRANSACTION;


CREATE TABLE `cotations_forex` (
  `id`                int(10) UNSIGNED       NOT NULL,
  `source`            varchar(50)            NOT NULL,
  `timeframe`         varchar(3)             NOT NULL,
  `code_devise_base`  varchar(3)             NOT NULL,
  `code_devise_cote`  varchar(3)             NOT NULL,
  `date_heure_fr`     datetime               NOT NULL,
  `prix_open`         decimal(8,5) UNSIGNED  NOT NULL,
  `prix_high`         decimal(8,5) UNSIGNED  NOT NULL,
  `prix_low`          decimal(8,5) UNSIGNED  NOT NULL,
  `prix_close`        decimal(8,5) UNSIGNED  NOT NULL,
  `date_creation`     timestamp              NOT NULL DEFAULT current_timestamp(),
  `date_maj`          timestamp              NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `cotations_forex`
  ADD PRIMARY KEY (`source`,`timeframe`,`code_devise_base`,`code_devise_cote`,`date_heure_fr`),
  ADD UNIQUE KEY `ID_TECHNIQUE` (`id`) USING BTREE COMMENT 'Identifiant technique unique';


ALTER TABLE `cotations_forex`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;


COMMIT;
