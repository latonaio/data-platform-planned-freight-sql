CREATE TABLE `data_platform_planned_freight_header_doc_data`
(
  `PlannedFreight`                 int(16) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`PlannedFreight`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformPlannedFreightHeaderDocData_fk` FOREIGN KEY (`PlannedFreight`) REFERENCES `data_platform_planned_freight_header_data` (`PlannedFreight`),
    CONSTRAINT `DataPlatformPlannedFreightHeaderDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DataPlatformPlannedFreightHeaderDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
