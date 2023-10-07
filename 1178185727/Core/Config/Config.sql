--=============================================================================================================
-- RELIGION EXPANDED: CONFIGURATION
--=============================================================================================================
-- Parameters
---------------------------------------------------------------------------------------------------------------
INSERT INTO Parameters
		(Key1,		Key2,					ParameterId,		Name,						Description,							Domain,					DefaultValue,	ConfigurationGroup,	ConfigurationId,	GroupId,			SortIndex)
VALUES	('Ruleset',	'RULESET_STANDARD',		'p0kReligions',		'LOC_P0K_RELIGIONS_NAME',	'LOC_P0K_RELIGIONS_DESCRIPTION',		'p0kReligionsRange',	12,				'Game',				'P0K_RELIGIONS',	'BasicGameOptions',	90),
		('Ruleset',	'RULESET_EXPANSION_1',	'p0kReligions_XP1',	'LOC_P0K_RELIGIONS_NAME',	'LOC_P0K_RELIGIONS_DESCRIPTION',		'p0kReligionsRange',	12,				'Game',				'P0K_RELIGIONS',	'BasicGameOptions',	90),
		('Ruleset',	'RULESET_EXPANSION_2',	'p0kReligions_XP2',	'LOC_P0K_RELIGIONS_NAME',	'LOC_P0K_RELIGIONS_XP2_DESCRIPTION',	'p0kReligionsXP2Range',	16,				'Game',				'P0K_RELIGIONS',	'BasicGameOptions',	90);
---------------------------------------------------------------------------------------------------------------
-- DomainRanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO DomainRanges
		(Domain,					MinimumValue,	MaximumValue)
VALUES	('p0kReligionsRange',		0,				12),
		('p0kReligionsXP2Range',	0,				16);