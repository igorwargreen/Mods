--=============================================================================================================
-- RELIGION EXPANDED: PANTHEONS (XP2)
--=============================================================================================================
-- Restore Oral Tradition (Culture) and buff it to the same level as Goddess of Festivals (Food).
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types 
		(Type,							Kind)
VALUES	('BELIEF_P0K_ORAL_TRADITION',	'KIND_BELIEF');
---------------------------------------------------------------------------------------------------------------
-- Beliefs
---------------------------------------------------------------------------------------------------------------
INSERT INTO Beliefs		
		(BeliefType,					Name,									Description,									BeliefClassType) 
VALUES	('BELIEF_P0K_ORAL_TRADITION',	'LOC_BELIEF_P0K_ORAL_TRADITION_NAME',	'LOC_BELIEF_P0K_ORAL_TRADITION_DESCRIPTION',	'BELIEF_CLASS_PANTHEON');
---------------------------------------------------------------------------------------------------------------
-- BeliefModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM BeliefModifiers WHERE BeliefType = 'BELIEF_GODDESS_OF_FESTIVALS';

INSERT INTO BeliefModifiers 
		(BeliefType,					ModifierId) 
VALUES	('BELIEF_GODDESS_OF_FESTIVALS',	'P0K_GODDESS_OF_FESTIVALS_PLANTATION_FOOD'),	
		('BELIEF_P0K_ORAL_TRADITION',	'GODDESS_OF_FESTIVALS_PLANTATION_CULTURE'); -- Let's just use the existing Modifier for efficiency. 
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers 
		(ModifierId,											ModifierType,									SubjectRequirementSetId) 
VALUES	('P0K_GODDESS_OF_FESTIVALS_PLANTATION_FOOD',			'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',			'CITY_FOLLOWS_PANTHEON_REQUIREMENTS'),
		('P0K_GODDESS_OF_FESTIVALS_PLANTATION_FOOD_MODIFIER',	'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',	'PLOT_HAS_PLANTATION_REQUIREMENTS');
---------------------------------------------------------------------------------------------------------------
--ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments 
		(ModifierId,											Name,			Value)
VALUES	('P0K_GODDESS_OF_FESTIVALS_PLANTATION_FOOD',			'ModifierId',	'P0K_GODDESS_OF_FESTIVALS_PLANTATION_FOOD_MODIFIER'),
		('P0K_GODDESS_OF_FESTIVALS_PLANTATION_FOOD_MODIFIER',	'YieldType',	'YIELD_FOOD'),
		('P0K_GODDESS_OF_FESTIVALS_PLANTATION_FOOD_MODIFIER',	'Amount',		1);