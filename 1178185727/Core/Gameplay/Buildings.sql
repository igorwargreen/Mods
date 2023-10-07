--=============================================================================================================
-- RELIGION EXPANDED: BUILDINGS
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types 
		(Type,						Kind)
VALUES	('BUILDING_P0K_BASILICA',	'KIND_BUILDING'),
		('BUILDING_P0K_BETH_MANDA',	'KIND_BUILDING'),
		('BUILDING_P0K_KHALWAT',	'KIND_BUILDING'),
		('BUILDING_P0K_BUTTO',		'KIND_BUILDING'),
		('BUILDING_P0K_DERASAR',	'KIND_BUILDING'),
		('BUILDING_P0K_CANDI',		'KIND_BUILDING'),
		('BUILDING_P0K_SERAPEUM',	'KIND_BUILDING');
---------------------------------------------------------------------------------------------------------------
-- Buildings
---------------------------------------------------------------------------------------------------------------
INSERT INTO Buildings
		(BuildingType,				Name,								Description,	Cost,	PrereqDistrict,			EnabledByReligion,	PurchaseYield,	Maintenance,	CitizenSlots)
VALUES	('BUILDING_P0K_BASILICA',	'LOC_BUILDING_P0K_BASILICA_NAME',	NULL,			190,	'DISTRICT_HOLY_SITE',	1,					'YIELD_FAITH',	0,				1),
		('BUILDING_P0K_BETH_MANDA',	'LOC_BUILDING_P0K_BETH_MANDA_NAME',	NULL,			190,	'DISTRICT_HOLY_SITE',	1,					'YIELD_FAITH',	0,				1),
		('BUILDING_P0K_KHALWAT',	'LOC_BUILDING_P0K_KHALWAT_NAME',	NULL,			190,	'DISTRICT_HOLY_SITE',	1,					'YIELD_FAITH',	0,				1),
		('BUILDING_P0K_BUTTO',		'LOC_BUILDING_P0K_BUTTO_NAME',		NULL,			190,	'DISTRICT_HOLY_SITE',	1,					'YIELD_FAITH',	0,				1),
		('BUILDING_P0K_DERASAR',	'LOC_BUILDING_P0K_DERASAR_NAME',	NULL,			190,	'DISTRICT_HOLY_SITE',	1,					'YIELD_FAITH',	0,				1),
		('BUILDING_P0K_CANDI',		'LOC_BUILDING_P0K_CANDI_NAME',		NULL,			190,	'DISTRICT_HOLY_SITE',	1,					'YIELD_FAITH',	0,				1),
		('BUILDING_P0K_SERAPEUM',	'LOC_BUILDING_P0K_SERAPEUM_NAME',	NULL,			190,	'DISTRICT_HOLY_SITE',	1,					'YIELD_FAITH',	0,				1);
---------------------------------------------------------------------------------------------------------------
-- BuildingPrereqs
---------------------------------------------------------------------------------------------------------------
INSERT INTO BuildingPrereqs
		(Building,					PrereqBuilding)
VALUES	('BUILDING_P0K_BASILICA',	'BUILDING_TEMPLE'),
		('BUILDING_P0K_BETH_MANDA',	'BUILDING_TEMPLE'),
		('BUILDING_P0K_KHALWAT',	'BUILDING_TEMPLE'),
		('BUILDING_P0K_BUTTO',		'BUILDING_TEMPLE'),
		('BUILDING_P0K_DERASAR',	'BUILDING_TEMPLE'),
		('BUILDING_P0K_CANDI',		'BUILDING_TEMPLE'),
		('BUILDING_P0K_SERAPEUM',	'BUILDING_TEMPLE');
---------------------------------------------------------------------------------------------------------------
-- Building_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_YieldChanges 
		(BuildingType,				YieldType,			YieldChange)
VALUES	('BUILDING_P0K_BASILICA',	'YIELD_FAITH',		3),

		('BUILDING_P0K_BETH_MANDA',	'YIELD_FAITH',		3),
		('BUILDING_P0K_BETH_MANDA',	'YIELD_GOLD',		2),
		('BUILDING_P0K_BETH_MANDA',	'YIELD_PRODUCTION',	1),
		
		('BUILDING_P0K_KHALWAT',	'YIELD_FAITH',		3),
		('BUILDING_P0K_KHALWAT',	'YIELD_CULTURE',	2),

		('BUILDING_P0K_BUTTO',		'YIELD_FAITH',		3),
		('BUILDING_P0K_BUTTO',		'YIELD_GOLD',		4),

		('BUILDING_P0K_DERASAR',	'YIELD_FAITH',		3),
		('BUILDING_P0K_DERASAR',	'YIELD_FOOD',		1),
		('BUILDING_P0K_DERASAR',	'YIELD_PRODUCTION',	1),

		('BUILDING_P0K_CANDI',		'YIELD_FAITH',		3),
		('BUILDING_P0K_CANDI',		'YIELD_CULTURE',	1),
		('BUILDING_P0K_CANDI',		'YIELD_PRODUCTION',	1),

		('BUILDING_P0K_SERAPEUM',	'YIELD_FAITH',		3),
		('BUILDING_P0K_SERAPEUM',	'YIELD_SCIENCE',	1),
		('BUILDING_P0K_SERAPEUM',	'YIELD_PRODUCTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Building_CitizenYieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_CitizenYieldChanges
		(BuildingType,				YieldType,			YieldChange)
VALUES	('BUILDING_P0K_BASILICA',	'YIELD_FAITH',		1),
		('BUILDING_P0K_BETH_MANDA',	'YIELD_FAITH',		1),
		('BUILDING_P0K_KHALWAT',	'YIELD_FAITH',		1),
		('BUILDING_P0K_BUTTO',		'YIELD_FAITH',		1),
		('BUILDING_P0K_DERASAR',	'YIELD_FAITH',		1),
		('BUILDING_P0K_CANDI',		'YIELD_FAITH',		1),
		('BUILDING_P0K_SERAPEUM',	'YIELD_FAITH',		1);
---------------------------------------------------------------------------------------------------------------
-- Building_GreatWorks
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_GreatWorks
		(BuildingType,				GreatWorkSlotType,		NumSlots)
VALUES	('BUILDING_P0K_BASILICA',	'GREATWORKSLOT_RELIC',	1);
