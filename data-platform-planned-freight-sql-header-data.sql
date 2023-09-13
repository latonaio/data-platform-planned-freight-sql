CREATE TABLE `data_platform_planned_freight_header_data`
(
	`PlannedFreight`                            int(16) NOT NULL,
	`PlannedFreightType`                        varchar(4) DEFAULT NULL,
    `FreightAgreement`                          int(16) NOT NULL,
    `FreightAgreementItem`                      int(6) NOT NULL,
    `FreightAgreementItemAvailableFreight`      int(4) NOT NULL,
    `FreightType`                               varchar(6) NOT NULL,
    `FreightSpec`                               varchar(6) NOT NULL,
    `FreightCalendar`                           varchar(6) NOT NULL,
    `PlannedFreightDepartureDate`               date NOT NULL,
    `PlannedFreightDepartureTime`               date NOT NULL,
    `PlannedFreightArrivalDate`                 date NOT NULL,
    `PlannedFreightArrivalTime`                 date NOT NULL,
    `LogisticsPartner`                          int(12) NOT NULL,
    `DeliverToParty`                            int(12) NOT NULL,
    `DeliverToPlant`                            varchar(4) NOT NULL,
    `DeliverFromParty`                          int(12) NOT NULL,
    `DeliverFromPlant`                          varchar(4) NOT NULL,
    `FRPArea`                                   varchar(10) DEFAULT NULL,
	`FRPController`                             varchar(3) DEFAULT NULL,
    `FreightCapacityWeight`                     float(15) DEFAULT NULL,
    `FreightCapacityWeightUnit`                 varchar(3) DEFAULT NULL,
    `CreationDate`                              date NOT NULL,
    `CreationTime`                              date NOT NULL,
    `LastChangeDate`                            date NOT NULL,
    `LastChangeTime`                            date NOT NULL,
	`PlannedFreightLongText`                    varchar(1000) DEFAULT NULL,
	`PlannedFreightIsFixed`                     tinyint(1) DEFAULT NULL,
	`PlannedFreightIsReleased`                  tinyint(1) DEFAULT NULL,
	`IsMarkedForDeletion`                       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`PlannedFreight`),
	
    CONSTRAINT `DPFMPlannedFreightHeaderDataFreightAgreementItem_fk` FOREIGN KEY (`FreightAgreement`, `FreightAgreementItem`) REFERENCES `data_platform_freight_agreement_item_data` (`FreightAgreement`, `FreightAgreementItem`),
    CONSTRAINT `DPFMPlannedFreightHeaderDataFreightFreightCapacityWeightUnit_fk` FOREIGN KEY (`FreightCapacityWeightUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)


) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
