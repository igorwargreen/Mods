--=============================================================================================================
-- RELIGION EXPANDED: WORSHIP BELIEFS
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types 
		(Type,						Kind)
VALUES	('BELIEF_P0K_BASILICA',		'KIND_BELIEF'),
		('BELIEF_P0K_BETH_MANDA',	'KIND_BELIEF'),
		('BELIEF_P0K_KHALWAT',		'KIND_BELIEF'),
		('BELIEF_P0K_BUTTO',		'KIND_BELIEF'),
		('BELIEF_P0K_DERASAR',		'KIND_BELIEF'),
		('BELIEF_P0K_CANDI',		'KIND_BELIEF'),
		('BELIEF_P0K_SERAPEUM',		'KIND_BELIEF');	
---------------------------------------------------------------------------------------------------------------
-- Beliefs
---------------------------------------------------------------------------------------------------------------
INSERT INTO Beliefs		
		(BeliefType,				Name,								Description,								BeliefClassType) 
VALUES	('BELIEF_P0K_BASILICA',		'LOC_BELIEF_P0K_BASILICA_NAME',		'LOC_BELIEF_P0K_BASILICA_DESCRIPTION',		'BELIEF_CLASS_WORSHIP'),
		('BELIEF_P0K_BETH_MANDA',	'LOC_BELIEF_P0K_BETH_MANDA_NAME',	'LOC_BELIEF_P0K_BETH_MANDA_DESCRIPTION',	'BELIEF_CLASS_WORSHIP'),
		('BELIEF_P0K_KHALWAT',		'LOC_BELIEF_P0K_KHALWAT_NAME',		'LOC_BELIEF_P0K_KHALWAT_DESCRIPTION',		'BELIEF_CLASS_WORSHIP'),
		('BELIEF_P0K_BUTTO',		'LOC_BELIEF_P0K_BUTTO_NAME',		'LOC_BELIEF_P0K_BUTTO_DESCRIPTION',			'BELIEF_CLASS_WORSHIP'),
		('BELIEF_P0K_DERASAR',		'LOC_BELIEF_P0K_DERASAR_NAME',		'LOC_BELIEF_P0K_DERASAR_DESCRIPTION',		'BELIEF_CLASS_WORSHIP'),
		('BELIEF_P0K_CANDI',		'LOC_BELIEF_P0K_CANDI_NAME',		'LOC_BELIEF_P0K_CANDI_DESCRIPTION',			'BELIEF_CLASS_WORSHIP'),
		('BELIEF_P0K_SERAPEUM',		'LOC_BELIEF_P0K_SERAPEUM_NAME',		'LOC_BELIEF_P0K_SERAPEUM_DESCRIPTION',		'BELIEF_CLASS_WORSHIP');
---------------------------------------------------------------------------------------------------------------
-- BeliefModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO BeliefModifiers 
		(BeliefType,				ModifierId)
VALUES	('BELIEF_P0K_BASILICA',		'P0K_ALLOW_BASILICA'),
		('BELIEF_P0K_BETH_MANDA',	'P0K_ALLOW_BETH_MANDA'),
		('BELIEF_P0K_KHALWAT',		'P0K_ALLOW_KHALWAT'),
		('BELIEF_P0K_BUTTO',		'P0K_ALLOW_BUTTO'),
		('BELIEF_P0K_DERASAR',		'P0K_ALLOW_DERASAR'),
		('BELIEF_P0K_CANDI',		'P0K_ALLOW_CANDI'),
		('BELIEF_P0K_SERAPEUM',		'P0K_ALLOW_SERAPEUM');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers 
		(ModifierId,				ModifierType)
VALUES	('P0K_ALLOW_BASILICA',		'MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BUILDING'),
		('P0K_ALLOW_BETH_MANDA',	'MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BUILDING'),
		('P0K_ALLOW_KHALWAT',		'MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BUILDING'),
		('P0K_ALLOW_BUTTO',			'MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BUILDING'),
		('P0K_ALLOW_DERASAR',		'MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BUILDING'),
		('P0K_ALLOW_CANDI',			'MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BUILDING'),
		('P0K_ALLOW_SERAPEUM',		'MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BUILDING');
---------------------------------------------------------------------------------------------------------------
--ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments 
		(ModifierId,				Name,			Value)
VALUES	('P0K_ALLOW_BASILICA',		'BuildingType',	'BUILDING_P0K_BASILICA'),
		('P0K_ALLOW_BETH_MANDA',	'BuildingType',	'BUILDING_P0K_BETH_MANDA'),
		('P0K_ALLOW_KHALWAT',		'BuildingType',	'BUILDING_P0K_KHALWAT'),
		('P0K_ALLOW_BUTTO',			'BuildingType',	'BUILDING_P0K_BUTTO'),
		('P0K_ALLOW_DERASAR',		'BuildingType',	'BUILDING_P0K_DERASAR'),
		('P0K_ALLOW_CANDI',			'BuildingType',	'BUILDING_P0K_CANDI'),
		('P0K_ALLOW_SERAPEUM',		'BuildingType',	'BUILDING_P0K_SERAPEUM');
