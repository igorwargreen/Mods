-- Port Lime - K Ataturk - AI
-- Author: Limer
-- DateCreated: 6/12/2023 8:46:58 PM
--------------------------------------------------------------
--==========================================================================================================================
-- LEADERS: AI
--==========================================================================================================================
-- Forced Traits:
-------------------
-- Forced Traits(tm) are how I call these weird internal traits some leaders have to focus their behaviour. They are a bit limited, but useful:
---- TRAIT_LEADER_PURSUE_DIPLOMATIC_VICTORY
---- TRAIT_LEADER_CULTURAL_MAJOR_CIV
---- TRAIT_LEADER_RELIGIOUS_MAJOR_CIV
---- TRAIT_LEADER_SCIENCE_MAJOR_CIV
---- TRAIT_LEADER_NONRELIGIOUS_MAJOR_CIV
---- TRAIT_LEADER_EXPANSIONIST
---- TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE
---- TRAIT_LEADER_LOW_CITY_STATE_PREFERENCE
---- TRAIT_LEADER_AGGRESSIVE_MILITARY
------------------
INSERT INTO LeaderTraits
		(LeaderType,						TraitType)
VALUES	('LEADER_LIME_TURKEY_K_ATATURK',	'TRAIT_LEADER_NONRELIGIOUS_MAJOR_CIV'),
		('LEADER_LIME_TURKEY_K_ATATURK',	'TRAIT_LEADER_SCIENCE_MAJOR_CIV');
		
-------------------------------------
-- AiListTypes
-------------------------------------
INSERT INTO AiListTypes	
		(ListType)
VALUES	('LIME_TURKEY_K_ATATURK_Victories'),
		('LIME_TURKEY_K_ATATURK_Settle'),
		('LIME_TURKEY_K_ATATURK_Diplo'),
		('LIME_TURKEY_K_ATATURK_PseudoYields'),
		('LIME_TURKEY_K_ATATURK_Districts'),
		('LIME_TURKEY_K_ATATURK_Improvements'),
		('LIME_TURKEY_K_ATATURK_Yields'),
		('LIME_TURKEY_K_ATATURK_Builds'),
		('LIME_TURKEY_K_ATATURK_Operations'),
		('LIME_TURKEY_K_ATATURK_Exploration'),
		('LIME_TURKEY_K_ATATURK_Alliances'),
		('LIME_TURKEY_K_ATATURK_Discussions'),
		('LIME_TURKEY_K_ATATURK_Resolutions'),
		('LIME_TURKEY_K_ATATURK_UnitPromoClasses');

-------------------------------------
-- AiLists
-------------------------------------
	
INSERT INTO AiLists	
		(ListType,									LeaderType,								System)
VALUES	('LIME_TURKEY_K_ATATURK_Victories',			'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'Strategies'),
		('LIME_TURKEY_K_ATATURK_Settle',			'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'PlotEvaluations'),
		('LIME_TURKEY_K_ATATURK_Diplo',				'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'DiplomaticActions'),
		('LIME_TURKEY_K_ATATURK_PseudoYields',		'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'PseudoYields'),
		('LIME_TURKEY_K_ATATURK_Districts',			'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'Districts'),
		('LIME_TURKEY_K_ATATURK_Improvements',		'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'Improvements'),
		('LIME_TURKEY_K_ATATURK_Yields',			'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'Yields'),
		('LIME_TURKEY_K_ATATURK_Builds',			'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'AiBuildSpecializations'),
		('LIME_TURKEY_K_ATATURK_Operations',		'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'AiOperationTypes'),
		('LIME_TURKEY_K_ATATURK_Exploration',		'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'AiScoutUses'),
		('LIME_TURKEY_K_ATATURK_Alliances',			'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'Alliances'),
		('LIME_TURKEY_K_ATATURK_Discussions',		'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'Discussions'),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'Resolutions'),
		('LIME_TURKEY_K_ATATURK_UnitPromoClasses',	'TRAIT_AGENDA_LIME_TURKEY_K_ATATURK',		'UnitPromotionClasses');
		
-------------------------------------
-- AiFavoredItems
-- So from what I can see: 
---- Favored 1, Value -200 means the leader completely hates the thing
---- Favored 1, Value -100 means the leader hates the thing
---- Favored 0, Value 0 means the leader doesn't like the thing
---- Favored 1, Value 0 means the leader likes the thing
---- Favored 1, Value 20 means the leader really likes the thing
---- Favored 1, Value 50 means the leader loves the thing
--
---- On Victory Strategies it's all backwards:
------- Favored 1, Value -2 Means the Victory is Preferred
------- Favored 1, Value 5 Means the Victory is Forbidden
-------------------------------------
	
INSERT INTO AiFavoredItems		
		(ListType,							Item,									StringVal,					Favored,	Value)
		-- Preferred Victories and Strategies (From the Strategies table)
		---- VICTORY_STRATEGY_CULTURAL_VICTORY
		---- VICTORY_STRATEGY_MILITARY_VICTORY
		---- VICTORY_STRATEGY_RELIGIOUS_VICTORY
		---- VICTORY_STRATEGY_SCIENCE_VICTORY
		---- VICTORY_STRATEGY_DIPLOMATIC_VICTORY
		---- STRATEGY_EARLY_EXPLORATION
		---- STRATEGY_RAPID_EXPANSION
		---- STRATEGY_NAVAL
		---- STRATEGY_WONDER_OBSESSED
VALUES	('LIME_TURKEY_K_ATATURK_Victories',			'VICTORY_STRATEGY_SCIENCE_VICTORY',			null,						1,			-1),
		('LIME_TURKEY_K_ATATURK_Victories',			'VICTORY_STRATEGY_MILITARY_VICTORY',		null,						1,			-2),
		('LIME_TURKEY_K_ATATURK_Victories',			'VICTORY_STRATEGY_RELIGIOUS_VICTORY',		null,						1,			5),

		-- Preferred Settling (From the PlotEvaluations table)
		---- Coastal
		---- Cultural Pressure
		---- Foreign Continent
		---- Fresh Water
		---- Nearest Friendly City
		---- Nearest Enemy City
		---- New Resources
		---- Inner Ring Yield (StringVal:YIELD_TYPE)
		---- Total Yield      (StringVal:YIELD_TYPE)
		---- Resource Class   (StringVal:RESOURCECLASS_TYPE)
		---- SpecificResource (StringVal:RESOURCE_TYPE)
		---- Specific Feature (StringVal:FEATURE_TYPE)
	--	('LIME_TURKEY_K_ATATURK_Settle',		'Nearest Enemy City',						null,						1,			20),
		
		-- Preferred Build Specializations (better leave these ones out unless you want a very specific behaviour)
		---- BUILD_FOR_CULTURE
		---- BUILD_FOR_FAITH
		---- BUILD_FOR_FOOD
		---- BUILD_FOR_GOLD
		---- BUILD_FOR_PRODUCTION
		---- BUILD_FOR_SCIENCE
		---- BUILD_MILITARY_UNITS
		---- BUILD_TRADE_UNITS
		---- BUILD_CITY_DEFENSES
		('LIME_TURKEY_K_ATATURK_Builds',		'BUILD_MILITARY_UNITS',						null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Builds',		'BUILD_CITY_DEFENSES',						null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Builds',		'BUILD_FOR_PRODUCTION',						null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Builds',		'BUILD_FOR_FOOD',							null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Builds',		'BUILD_FOR_FAITH',							null,						1,			-100),
		
		-- Preferred Ai Operations (better leave these ones out unless you want a very specific behaviour)
		---- ATTACK_BARBARIANS
		---- CITY_ASSAULT
		---- NAVAL_SUPERIORITY
		---- OP_DEFENSE
		---- OP_NUCLEAR
		---- OP_SETTLE
		---- OP_ESCORT
		('LIME_TURKEY_K_ATATURK_Operations',		'OP_DEFENSE',					null,						1,			0),
				
		-- Preferred Ai Exploration (better leave these ones out unless you want a very specific behaviour)
		---- DEFAULT_LAND_SCOUTS
		---- DEFAULT_NAVAL_SCOUTS
		---- LAND_SCOUTS_PER_PRIMARY_REGION
		---- LAND_SCOUTS_PER_SECONDARY_REGION
		---- NAVAL_SCOUTS_FOR_WORLD_EXPLORATION
	--	('LIME_TURKEY_K_ATATURK_Exploration',		'LAND_SCOUTS_PER_PRIMARY_REGION',	null,						1,			0),
			
		-- Preferred Diplomatic Actions (From the DiplomaticActions table)
		('LIME_TURKEY_K_ATATURK_Diplo',				'DIPLOACTION_DIPLOMATIC_DELEGATION',							null,						1,			200),
		('LIME_TURKEY_K_ATATURK_Diplo',				'DIPLOACTION_RESIDENT_EMBASSY',									null,						1,			200),
		
		-- Preferred Pseudoyields (From the PseudoYields table)
		('LIME_TURKEY_K_ATATURK_PseudoYields',		'PSEUDOYIELD_GPP_GHENERAL',						null,						1,			100),
		('LIME_TURKEY_K_ATATURK_PseudoYields',		'PSEUDOYIELD_CITY_DEFENDING_UNITS',				null,						1,			20),
		('LIME_TURKEY_K_ATATURK_PseudoYields',		'PSEUDOYIELD_GOVERNOR',							null,						1,			20),
		('LIME_TURKEY_K_ATATURK_PseudoYields',		'PSEUDOYIELD_UNIT_ARCHAEOLOGIST',				null,						1,			0),

		('LIME_TURKEY_K_ATATURK_Districts',			'DISTRICT_CAMPUS',								null,						1,			10),
		('LIME_TURKEY_K_ATATURK_Districts',			'DISTRICT_THEATER',								null,						1,			10),
		('LIME_TURKEY_K_ATATURK_Districts',			'DISTRICT_ENCAMPMENT',							null,						1,			25),
		('LIME_TURKEY_K_ATATURK_Districts',			'DISTRICT_NEIGHBORHOOD',						null,						1,			10),

		('LIME_TURKEY_K_ATATURK_Improvements',		'IMPROVEMENT_FARM',								null,						1,			50),

		-- Preferred Yields (From the Yields table)
		('LIME_TURKEY_K_ATATURK_Yields',			'YIELD_SCIENCE',								null,						1,			50),

		-- Preferred Alliances (From the Alliances table)
--		('LIME_TURKEY_K_ATATURK_Alliances',			'ALLIANCE_MILITARY',							null,						1,			20),

		-- Preferred Unit Promotion Classes (From the UnitPromotionClasses table)
		('LIME_TURKEY_K_ATATURK_UnitPromoClasses',	'PROMOTION_CLASS_RECON',							null,						1,			50),
		('LIME_TURKEY_K_ATATURK_UnitPromoClasses',	'PROMOTION_CLASS_MELEE',							null,						1,			50),
		
		-- Preferred Discussions (Emergencies and Competitions... In this case I prefer putting a preference/dislike to all)
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_MILITARY',				null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_CITY_STATE',				null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_RELIGIOUS',				null,						0,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_NUCLEAR',					null,						0,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_BACKSTAB',				null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_REQUEST_AID',				null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_LITERATURE',	null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_PEACE',		null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',		null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_CLIMATE_ACCORDS',			null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_WORLD_GAMES',				null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_SPACE_STATION',			null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Discussions',		'WC_EMERGENCY_WORLD_FAIR',				null,						1,			0),

		-- Preferred Resolutions (In this case I also prefer putting a preference/dislike to all)
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_ARMS_CONTROL',					null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_BORDER_CONTROL',				null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_DEFORESTATION_TREATY',			null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_DIPLOVICTORY',					null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_ESPIONAGE_PACT',				null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_GLOBAL_ENERGY_TREATY',			null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_HERITAGE_ORG',					null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_LUXURY',						null,						0,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_MERCENARY_COMPANIES',			null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_MIGRATION_TREATY',				null,						0,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_MILITARY_ADVISORY',				null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_PATRONAGE',						null,						0,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_PUBLIC_RELATIONS',				null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_PUBLIC_WORKS',					null,						0,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_SOVEREIGNTY',					null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_TRADE_TREATY',					null,						0,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_URBAN_DEVELOPMENT',				null,						1,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_WORLD_IDEOLOGY',				null,						0,			0),
		('LIME_TURKEY_K_ATATURK_Resolutions',		'WC_RES_WORLD_RELIGION',				null,						1,			-200);
		
--==========================================================================================================================
--==========================================================================================================================