--=============================================================================================================
-- RELIGION EXPANDED: ABILITIES
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types 
		(Type,								Kind)
VALUES	('ABILITY_P0K_FERVENT_SPIRIT',		'KIND_ABILITY'),
		('ABILITY_P0K_MILITARISTIC_SECT',	'KIND_ABILITY'),
		('ABILITY_P0K_BY_THE_SWORD',		'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- Tags
---------------------------------------------------------------------------------------------------------------
INSERT INTO Tags
		(Tag,							Vocabulary)
VALUES	('CLASS_P0K_FERVENT_SPIRIT',	'ABILITY_CLASS');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,								Tag)
VALUES	('UNIT_BUILDER',					'CLASS_P0K_FERVENT_SPIRIT'),
		('UNIT_SETTLER',					'CLASS_P0K_FERVENT_SPIRIT'),
		('ABILITY_P0K_FERVENT_SPIRIT',		'CLASS_P0K_FERVENT_SPIRIT'),
		('ABILITY_P0K_MILITARISTIC_SECT',	'CLASS_RELIGIOUS_ALL'),
		('ABILITY_P0K_BY_THE_SWORD',		'CLASS_ALL_COMBAT_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,					Name,										Description,										Inactive,	ShowFloatTextWhenEarned,	Permanent)
VALUES	('ABILITY_P0K_FERVENT_SPIRIT',		'LOC_ABILITY_P0K_FERVENT_SPIRIT_NAME',		'LOC_ABILITY_P0K_FERVENT_SPIRIT_DESCRIPTION',		1,			0,							1),
		('ABILITY_P0K_MILITARISTIC_SECT',	'LOC_ABILITY_P0K_MILITARISTIC_SECT_NAME',	'LOC_ABILITY_P0K_MILITARISTIC_SECT_DESCRIPTION',	1,			0,							1),
		('ABILITY_P0K_BY_THE_SWORD',		'LOC_ABILITY_P0K_BY_THE_SWORD_NAME',		'LOC_ABILITY_P0K_BY_THE_SWORD_DESCRIPTION',			1,			0,							1);
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,					ModifierId)
VALUES	('ABILITY_P0K_FERVENT_SPIRIT',		'P0K_FERVENT_SPIRIT_MOVEMENT_BONUS'),
		('ABILITY_P0K_MILITARISTIC_SECT',	'P0K_MILITARISTIC_SECT_COMBAT_BONUS'),
		('ABILITY_P0K_BY_THE_SWORD',		'P0K_BY_THE_SWORD_CITY_RELIGION_COMBAT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers 
		(ModifierId,								ModifierType)
VALUES	('P0K_FERVENT_SPIRIT_MOVEMENT_BONUS',		'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT'),				
		('P0K_MILITARISTIC_SECT_COMBAT_BONUS',		'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH'),
		('P0K_BY_THE_SWORD_CITY_RELIGION_COMBAT',	'MODIFIER_PLAYER_UNIT_ADJUST_CITY_ON_CAPTURE');				
---------------------------------------------------------------------------------------------------------------
--ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments 
		(ModifierId,								Name,		Value)
VALUES	('P0K_FERVENT_SPIRIT_MOVEMENT_BONUS',		'Amount',	1),
		('P0K_MILITARISTIC_SECT_COMBAT_BONUS',		'Amount',	5),
		('P0K_BY_THE_SWORD_CITY_RELIGION_COMBAT',	'Enable',	1);