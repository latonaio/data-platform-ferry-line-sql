CREATE TABLE `data_platform_ferry_line_dpt_dst_port_data`
(
  `FerryLine`                    int(16) NOT NULL,
  `ExpressType`                  varchar(4) NOT NULL,
  `DeparturePort`                int(16) NOT NULL,
  `DestinationPort`              int(16) NOT NULL,
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

    PRIMARY KEY (`FerryLine`, `ExpressType`, `DeparturePort`, `DestinationPort`),

    CONSTRAINT `DPFMFerryLineDptDstPortData_fk` FOREIGN KEY (`FerryLine`) REFERENCES `data_platform_ferry_line_header_data` (`FerryLine`),
    CONSTRAINT `DPFMFerryLineDptDstPortDataExpressType_fk` FOREIGN KEY (`FerryLine`, `ExpressType`) REFERENCES `data_platform_ferry_line_express_type_data` (`FerryLine`, `ExpressType`),
    CONSTRAINT `DPFMFerryLineDptDstPortDataDptPort_fk` FOREIGN KEY (`FerryLine`, `ExpressType`, `DeparturePort`) REFERENCES `data_platform_ferry_line_departure_port_data` (`FerryLine`, `ExpressType`, `DeparturePort`),
    CONSTRAINT `DPFMFerryLineDptDstPortDataDstPort_fk` FOREIGN KEY (`FerryLine`, `ExpressType`, `DestinationPort`) REFERENCES `data_platform_ferry_line_destination_port_data` (`FerryLine`, `ExpressType`, `DestinationPort`),
    CONSTRAINT `DPFMFerryLineDptDstPortDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMFerryLineDptDstPortDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
