CREATE DATABASE `tcc_red` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE tcc_red;
CREATE TABLE `RED_RED_PACKET_ACCOUNT` (
  `RED_PACKET_ACCOUNT_ID` int(11) NOT NULL,
  `BALANCE_AMOUNT` decimal(10,0) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RED_PACKET_ACCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `TCC_TRANSACTION` (
  `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GLOBAL_TX_ID` varbinary(32) NOT NULL,
  `BRANCH_QUALIFIER` varbinary(32) NOT NULL,
  `CONTENT` varbinary(8000) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `TRANSACTION_TYPE` int(11) DEFAULT NULL,
  `RETRIED_COUNT` int(11) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`TRANSACTION_ID`),
  UNIQUE KEY `UX_TX_BQ` (`GLOBAL_TX_ID`,`BRANCH_QUALIFIER`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


INSERT INTO `RED_RED_PACKET_ACCOUNT` (`RED_PACKET_ACCOUNT_ID`,`BALANCE_AMOUNT`,`USER_ID`) VALUES (1,950,1000);
INSERT INTO `RED_RED_PACKET_ACCOUNT` (`RED_PACKET_ACCOUNT_ID`,`BALANCE_AMOUNT`,`USER_ID`) VALUES (2,50,2000);
