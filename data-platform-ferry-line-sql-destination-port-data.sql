CREATE TABLE `data_platform_ferry_line_destination_port_data`
(
  `FerryLine`                    int(16) NOT NULL,
  `ExpressType`                  varchar(4) NOT NULL,
  `DestinationPort`              int(16) NOT NULL,
  `FerryLinePortID`              int(4) NOT NULL,
  `ValidityStartDate`            date NOT NULL,
  `ValidityEndDate`              date NOT NULL,
  `CreationDate`                 date NOT NULL,
  `CreationTime`                 time NOT NULL,
  `LastChangeDate`               date NOT NULL,
  `LastChangeTime`               time NOT NULL,
  `CreateUser`                   int(12) NOT NULL,
  `LastChangeUser`               int(12) NOT NULL,
  `IsReleased`                   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`FerryLine`, `ExpressType`, `DestinationPort`),

    CONSTRAINT `DPFMFerryLineDestinationPortData_fk` FOREIGN KEY (`FerryLine`) REFERENCES `data_platform_ferry_line_header_data` (`FerryLine`),
    CONSTRAINT `DPFMFerryLineDestinationPortDataExpressType_fk` FOREIGN KEY (`FerryLine`, `ExpressType`) REFERENCES `data_platform_ferry_line_express_type_data` (`FerryLine`, `ExpressType`),
    CONSTRAINT `DPFMFerryLineDestinationPortDataDstPort_fk` FOREIGN KEY (`FerryLine`, `FerryLinePortID`, `DestinationPort`) REFERENCES `data_platform_ferry_line_stop_port_data` (`FerryLine`, `FerryLinePortID`, `StopPort`),
    CONSTRAINT `DPFMFerryLineDestinationPortDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMFerryLineDestinationPortDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
