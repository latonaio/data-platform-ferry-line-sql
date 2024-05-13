CREATE TABLE `data_platform_ferry_line_stop_port_data`
(
  `FerryLine`                    int(16) NOT NULL,
  `FerryLinePortID`              int(4) NOT NULL,
  `StopPort`                     int(16) NOT NULL,
  `OrderNumberOnOutboundLine`    int(4) NOT NULL,
  `ValidityStartDate`            date NOT NULL,
  `ValidityEndDate`              date NOT NULL,
  `Description`                  varchar(60) NOT NULL,
  `LongText`                     varchar(1000) NOT NULL,
  `Introduction`                 varchar(200) DEFAULT NULL,
  `Project`                      int(16) DEFAULT NULL,
  `WBSElement`                   int(8) DEFAULT NULL,
  `Tag1`                         varchar(40) DEFAULT NULL,
  `Tag2`                         varchar(40) DEFAULT NULL,
  `Tag3`                         varchar(40) DEFAULT NULL,
  `Tag4`                         varchar(40) DEFAULT NULL,
  `CreationDate`                 date NOT NULL,
  `CreationTime`                 time NOT NULL,
  `LastChangeDate`               date NOT NULL,
  `LastChangeTime`               time NOT NULL,
  `CreateUser`                   int(12) NOT NULL,
  `LastChangeUser`               int(12) NOT NULL,
  `IsReleased`                   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`FerryLine`, `FerryLinePortID`, `StopPort`),

    CONSTRAINT `DPFMFerryLineStopPortData_fk` FOREIGN KEY (`FerryLine`) REFERENCES `data_platform_ferry_line_header_data` (`FerryLine`),
    CONSTRAINT `DPFMFerryLineStopPortDataStopPort_fk` FOREIGN KEY (`StopPort`) REFERENCES `data_platform_port_header_data` (`Port`),
    CONSTRAINT `DPFMFerryLineStopPortDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMFerryLineStopPortDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`),
    CONSTRAINT `DPFMFerryLineStopPortDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMFerryLineStopPortDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
