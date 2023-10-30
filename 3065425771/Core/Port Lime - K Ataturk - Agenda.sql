-- Port Lime - K Ataturk - Agenda
-- Author: Lime
-- DateCreated: 5/26/2023 8:54:39 AM
--------------------------------------------------------------
--	Agenda: Dictates of Truth
--		Likes Civilizations that focus on Culture or Science instead of Faith. Hates 
--		anyone trying to spread their Religion into his nation.

INSERT INTO Types
		(Type,											Kind)
VALUES	('TRAIT_AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',	'KIND_TRAIT');

INSERT INTO Traits
		(TraitType,										Name,						Description)
VALUES	('TRAIT_AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',	'LOC_PLACEHOLDER',			'LOC_PLACEHOLDER');

INSERT INTO HistoricalAgendas
		(LeaderType,									AgendaType)
VALUES	('LEADER_LIME_TURKEY_K_ATATURK',				'AGENDA_LIME_TURKEY_K_ATATURK_DICTATES');

INSERT INTO Agendas
		(AgendaType,									Name,												Description)
VALUES	('AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',		'LOC_AGENDA_LIME_TURKEY_K_ATATURK_DICTATES_NAME',	'LOC_AGENDA_LIME_TURKEY_K_ATATURK_DICTATES_DESC');

INSERT INTO AgendaTraits
		(AgendaType,									TraitType)
VALUES	('AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',		'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK_DICTATES');

INSERT INTO AgendaPreferredLeaders
		(AgendaType,									LeaderType,						PercentageChance)
VALUES	('AGENDA_AIRPOWER',								'LEADER_LIME_TURKEY_K_ATATURK',	15),	
		('AGENDA_IDEOLOGUE',							'LEADER_LIME_TURKEY_K_ATATURK',	10),
		('AGENDA_STANDING_ARMY',						'LEADER_LIME_TURKEY_K_ATATURK',	5);

INSERT INTO ExclusiveAgendas
		(AgendaOne,										AgendaTwo)
VALUES	('AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',		'AGENDA_CULTURED'),	-- AGENDA_HIGH_CULTURE
		('AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',		'AGENDA_DEVOUT'),	
		('AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',		'AGENDA_FLAT_EARTHER'), -- just no.
		('AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',		'AGENDA_INTOLERANT'), -- AGENDA_INTOLERANT_ENCROACHING_RELIGION
		('AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',		'AGENDA_TECHNOPHILE'), -- Pull positives from this
		('AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',		'AGENDA_ZEALOT');	-- Pull negatives from this

INSERT INTO TraitModifiers
		(TraitType,										ModifierId)
VALUES	('TRAIT_AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',	'MODIFIER_LIME_K_ATATURK_LIKES'),
		('TRAIT_AGENDA_LIME_TURKEY_K_ATATURK_DICTATES',	'MODIFIER_LIME_K_ATATURK_HATES');

INSERT INTO Modifiers
		(ModifierId,									ModifierType,									SubjectRequirementSetId)
VALUES	('MODIFIER_LIME_K_ATATURK_LIKES',				'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_LIME_K_ATATURK_SCIENCE_AND_CULTURE'),	--PLAYER_HAS_HIGH_CULTURE, PLAYER_HAS_HIGH_SCIENCE
		('MODIFIER_LIME_K_ATATURK_HATES',				'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'REQSET_LIME_K_ATATURK_ENCROACHING_RELIGION');		--PLAYER_ENCROACHING_RELIGION

INSERT INTO ModifierArguments
		(ModifierId,									Name,								Value)
VALUES	('MODIFIER_LIME_K_ATATURK_LIKES',				'InitialValue',						12),
		('MODIFIER_LIME_K_ATATURK_LIKES',				'StatementKey',						'LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_ANY'),
		('MODIFIER_LIME_K_ATATURK_LIKES',				'SimpleModifierDescription',		'LOC_DIPLO_MODIFIER_AGENDA_LIME_K_ATATURK_SCIENCE_AND_CULTURE'),
		('MODIFIER_LIME_K_ATATURK_LIKES',				'HiddenAgenda',						0),

		('MODIFIER_LIME_K_ATATURK_HATES',				'InitialValue',						-20),
		('MODIFIER_LIME_K_ATATURK_HATES',				'StatementKey',						'LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_ANY'),
		('MODIFIER_LIME_K_ATATURK_HATES',				'SimpleModifierDescription',		'LOC_DIPLO_MODIFIER_AGENDA_LIME_K_ATATURK_ENCROACHING_RELIGION'),
		('MODIFIER_LIME_K_ATATURK_HATES',				'HiddenAgenda',						0);

INSERT INTO ModifierStrings
		(ModifierId,									Context,				Text)
VALUES	('MODIFIER_LIME_K_ATATURK_LIKES',				'Sample',				'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('MODIFIER_LIME_K_ATATURK_HATES',				'Sample',				'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('REQSET_LIME_K_ATATURK_SCIENCE_AND_CULTURE',	'REQUIREMENTSET_TEST_ANY'),
			('REQSET_LIME_K_ATATURK_SCIENCE_NO_FAITH',	'REQUIREMENTSET_TEST_ALL'),
			('REQSET_LIME_K_ATATURK_CULTURE_NO_FAITH',	'REQUIREMENTSET_TEST_ALL'),
		('REQSET_LIME_K_ATATURK_ENCROACHING_RELIGION',	'REQUIREMENTSET_TEST_ALL'),
		('REQSET_LIME_K_ATATURK_STANDARD_LIMITERS',		'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('REQSET_LIME_K_ATATURK_SCIENCE_AND_CULTURE',	'REQ_LIME_K_ATATURK_SCIENCE_NO_FAITH'),
		('REQSET_LIME_K_ATATURK_SCIENCE_AND_CULTURE',	'REQ_LIME_K_ATATURK_CULTURE_NO_FAITH'),

		('REQSET_LIME_K_ATATURK_SCIENCE_NO_FAITH',		'REQUIRES_HAS_LOW_FAITH'),
		('REQSET_LIME_K_ATATURK_SCIENCE_NO_FAITH',		'REQUIRES_HAS_HIGH_SCIENCE'),
		('REQSET_LIME_K_ATATURK_SCIENCE_NO_FAITH',		'REQ_LIME_K_ATATURK_STANDARD_LIMITERS'),

		('REQSET_LIME_K_ATATURK_CULTURE_NO_FAITH',		'REQUIRES_HAS_LOW_FAITH'),
		('REQSET_LIME_K_ATATURK_CULTURE_NO_FAITH',		'REQUIRES_HAS_HIGH_CULTURE'),
		('REQSET_LIME_K_ATATURK_CULTURE_NO_FAITH',		'REQ_LIME_K_ATATURK_STANDARD_LIMITERS'),

		('REQSET_LIME_K_ATATURK_ENCROACHING_RELIGION',	'REQUIRES_PLAYER_CITY_CONVERTED'),
		('REQSET_LIME_K_ATATURK_ENCROACHING_RELIGION',	'REQ_LIME_K_ATATURK_STANDARD_LIMITERS'),

		('REQSET_LIME_K_ATATURK_STANDARD_LIMITERS',		'REQUIRES_MET_30_TURNS_AGO'),
		('REQSET_LIME_K_ATATURK_STANDARD_LIMITERS',		'REQUIRES_MAJOR_CIV_OPPONENT');

INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('REQ_LIME_K_ATATURK_SCIENCE_NO_FAITH',			'REQUIREMENT_REQUIREMENTSET_IS_MET'),
		('REQ_LIME_K_ATATURK_CULTURE_NO_FAITH',			'REQUIREMENT_REQUIREMENTSET_IS_MET'),
		('REQ_LIME_K_ATATURK_STANDARD_LIMITERS',		'REQUIREMENT_REQUIREMENTSET_IS_MET');

INSERT INTO RequirementArguments
		(RequirementId,									Name,				Value)
VALUES	('REQ_LIME_K_ATATURK_SCIENCE_NO_FAITH',			'RequirementSetId',	'REQSET_LIME_K_ATATURK_SCIENCE_NO_FAITH'),	
		('REQ_LIME_K_ATATURK_CULTURE_NO_FAITH',			'RequirementSetId',	'REQSET_LIME_K_ATATURK_CULTURE_NO_FAITH'),	
		('REQ_LIME_K_ATATURK_STANDARD_LIMITERS',		'RequirementSetId',	'REQSET_LIME_K_ATATURK_STANDARD_LIMITERS');