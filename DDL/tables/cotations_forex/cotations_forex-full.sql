SET AUTOCOMMIT = 0;
START TRANSACTION;


CREATE TABLE `cotations_forex` (
  `uuid`                varchar(36)            NOT NULL,
  `provider`            varchar(50)            NOT NULL,
  `timeframe`           varchar(3)             NOT NULL,
  `currency_base`       varchar(3)             NOT NULL,
  `currency_quote`      varchar(3)             NOT NULL,
  `datetime_fr`         datetime               NOT NULL,
  `price_open`          decimal(8,5) UNSIGNED  NOT NULL,
  `price_high`          decimal(8,5) UNSIGNED  NOT NULL,
  `price_low`           decimal(8,5) UNSIGNED  NOT NULL,
  `price_close`         decimal(8,5) UNSIGNED  NOT NULL,
  `timestamp_creation`  timestamp              NOT NULL DEFAULT current_timestamp(),
  `timestamp_update`    timestamp              NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `cotations_forex`
  ADD PRIMARY KEY (`provider`,`timeframe`,`currency_base`,`currency_quote`,`datetime_fr`),
  ADD UNIQUE KEY `UNIQUE_ID` (`uuid`) USING BTREE;


COMMIT;
