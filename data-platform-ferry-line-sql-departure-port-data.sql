CREATE TABLE `data_platform_ferry_line_departure_port_data`
(
  `FerryLine`                    int(16) NOT NULL,
  `ExpressType`                  varchar(4) NOT NULL,
  `DeparturePort`                int(16) NOT NULL,
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

    PRIMARY KEY (`FerryLine`, `ExpressType`, `DeparturePort`),

    CONSTRAINT `DPFMFerryLineDeparturePortData_fk` FOREIGN KEY (`FerryLine`) REFERENCES `data_platform_ferry_line_header_data` (`FerryLine`),
    CONSTRAINT `DPFMFerryLineDeparturePortDataExpressType_fk` FOREIGN KEY (`FerryLine`, `ExpressType`) REFERENCES `data_platform_ferry_line_express_type_data` (`FerryLine`, `ExpressType`),
    CONSTRAINT `DPFMFerryLineDeparturePortDataDptPort_fk` FOREIGN KEY (`FerryLine`, `FerryLinePortID`, `DeparturePort`) REFERENCES `data_platform_ferry_line_stop_port_data` (``FerryLine`, `FerryLinePortID`, `StopPort`),
    CONSTRAINT `DPFMFerryLineDeparturePortDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMFerryLineDeparturePortDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
