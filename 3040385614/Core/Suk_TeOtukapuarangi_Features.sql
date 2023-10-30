--==========================================================================================================================
-- Features
--==========================================================================================================================
	-- Types
	-------------------------------------
		INSERT INTO Types
				(Type,								Kind)
		VALUES	('FEATURE_SUK_TE_OTUKAPUARANGI',	'KIND_FEATURE');
	-------------------------------------
	-- Features
	-------------------------------------
		INSERT INTO Features
				(
					FeatureType,
					Name,
					Description,
					Quote,

					NaturalWonder,
					Appeal,
					Tiles,
					AddsFreshWater,

					SightThroughModifier,
					Impassable,

					NoRiver,
					NoCoast,
					Settlement,

					FollowRulesInWB,
					MinDistanceNW
				)
		VALUES	(
					'FEATURE_SUK_TE_OTUKAPUARANGI',
					'LOC_FEATURE_SUK_TE_OTUKAPUARANGI_NAME',
					'LOC_FEATURE_SUK_TE_OTUKAPUARANGI_DESCRIPTION',
					'LOC_FEATURE_SUK_TE_OTUKAPUARANGI_QUOTE',

					1,
					2,
					2,
					1,

					1,
					1,

					1,
					1,
					0,

					0,
					8
				);
	-------------------------------------
	-- Feature_ValidTerrains
	-------------------------------------
		INSERT INTO Feature_ValidTerrains
				(FeatureType,						TerrainType)
		VALUES	('FEATURE_SUK_TE_OTUKAPUARANGI',	'TERRAIN_GRASS_HILLS'),
				('FEATURE_SUK_TE_OTUKAPUARANGI',	'TERRAIN_GRASS'),
				('FEATURE_SUK_TE_OTUKAPUARANGI',	'TERRAIN_PLAINS_HILLS'),
				('FEATURE_SUK_TE_OTUKAPUARANGI',	'TERRAIN_PLAINS');
	-------------------------------------
	-- Feature_NotAdjacentTerrains
	-------------------------------------
		INSERT INTO Feature_NotAdjacentTerrains
				(FeatureType,						TerrainType)
		VALUES	('FEATURE_SUK_TE_OTUKAPUARANGI',	'TERRAIN_COAST'),
				('FEATURE_SUK_TE_OTUKAPUARANGI',	'TERRAIN_OCEAN');
	-------------------------------------
	-- Feature_AdjacentYields
	-------------------------------------
		INSERT INTO Feature_AdjacentYields
				(FeatureType,						YieldType,			YieldChange)
		VALUES	('FEATURE_SUK_TE_OTUKAPUARANGI',	'YIELD_CULTURE',	1),
				('FEATURE_SUK_TE_OTUKAPUARANGI',	'YIELD_FOOD',		1);
	-------------------------------------
	-- MomentIllustrations
	-------------------------------------
		INSERT INTO MomentIllustrations
			(
				MomentIllustrationType,
				MomentDataType,
				GameDataType,
				Texture
			)
		VALUES
			(
				'MOMENT_ILLUSTRATION_NATURAL_WONDER',
				'MOMENT_DATA_FEATURE',
				'FEATURE_SUK_TE_OTUKAPUARANGI',
				'Moment_Suk_Te_Otukapuarangi'
			);
	----------------------------------------------------------
	-- Notifications
	----------------------------------------------------------
		-- Types
		-------------------------------------
			INSERT INTO Types
					(Type,									Kind)
			VALUES	('NOTIFICATION_TE_OTUKAPUARANGI',		'KIND_NOTIFICATION');
		-------------------------------------
		-- Types
		-------------------------------------
			INSERT INTO Notifications
					(NotificationType,						SeverityType,	ExpiresEndOfTurn,	AutoNotify, AutoActivate)
			VALUES	('NOTIFICATION_TE_OTUKAPUARANGI',		'MID',			1,					0,			0);
--==========================================================================================================================
-- Yield Bonuses
--==========================================================================================================================
	-- MODIFIERS
	----------------------------------------------------------------------------------------------------------------------------
		-- Modifiers
		-------------------------------------
			INSERT INTO Modifiers
					(
						ModifierId,
						ModifierType,
						OwnerRequirementSetId,
						SubjectRequirementSetId
					)
			VALUES
					(
						'SUK_TE_OTUKAPUARANGI_CULTURE_1_ECSTATIC',
						'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',
						'SUK_TE_OTUKAPUARANGI_ECSTATIC',
						'SUK_TE_OTUKAPUARANGI_1_CULTURE'
					),
					(
						'SUK_TE_OTUKAPUARANGI_CULTURE_2_ECSTATIC',
						'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',
						'SUK_TE_OTUKAPUARANGI_ECSTATIC',
						'SUK_TE_OTUKAPUARANGI_2_CULTURE'
					),

					(
						'SUK_TE_OTUKAPUARANGI_SCIENCE_1',
						'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',
						NULL,
						'SUK_TE_OTUKAPUARANGI_1_SCIENCE'
					),
					(
						'SUK_TE_OTUKAPUARANGI_SCIENCE_2',
						'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',
						NULL,
						'SUK_TE_OTUKAPUARANGI_2_SCIENCE'
					),
					(
						'SUK_TE_OTUKAPUARANGI_SCIENCE_1_ECSTATIC',
						'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',
						'SUK_TE_OTUKAPUARANGI_ECSTATIC',
						'SUK_TE_OTUKAPUARANGI_1_SCIENCE'
					),
					(
						'SUK_TE_OTUKAPUARANGI_SCIENCE_2_ECSTATIC',
						'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',
						'SUK_TE_OTUKAPUARANGI_ECSTATIC',
						'SUK_TE_OTUKAPUARANGI_2_SCIENCE'
					);
		-------------------------------------
		-- ModifierArguments
		-------------------------------------
			INSERT INTO ModifierArguments
				(
					ModifierId,
					Name,
					Value
				)
			VALUES
				(
					'SUK_TE_OTUKAPUARANGI_CULTURE_1_ECSTATIC',
					'YieldType',
					'YIELD_CULTURE, YIELD_FOOD'
				),
				(
					'SUK_TE_OTUKAPUARANGI_CULTURE_1_ECSTATIC',
					'Amount',
					'1, 1'
				),
				(
					'SUK_TE_OTUKAPUARANGI_CULTURE_2_ECSTATIC',
					'YieldType',
					'YIELD_CULTURE, YIELD_FOOD'
				),
				(
					'SUK_TE_OTUKAPUARANGI_CULTURE_2_ECSTATIC',
					'Amount',
					'1, 1'
				),

				(
					'SUK_TE_OTUKAPUARANGI_SCIENCE_1',
					'YieldType',
					'YIELD_CULTURE, YIELD_FOOD, YIELD_SCIENCE'
				),
				(
					'SUK_TE_OTUKAPUARANGI_SCIENCE_1',
					'Amount',
					'-1, -1, 1'
				),
				(
					'SUK_TE_OTUKAPUARANGI_SCIENCE_2',
					'YieldType',
					'YIELD_CULTURE, YIELD_FOOD, YIELD_SCIENCE'
				),
				(
					'SUK_TE_OTUKAPUARANGI_SCIENCE_2',
					'Amount',
					'-1, -1, 1'
				),
				(
					'SUK_TE_OTUKAPUARANGI_SCIENCE_1_ECSTATIC',
					'YieldType',
					'YIELD_SCIENCE'
				),
				(
					'SUK_TE_OTUKAPUARANGI_SCIENCE_1_ECSTATIC',
					'Amount',
					'1'
				),
				(
					'SUK_TE_OTUKAPUARANGI_SCIENCE_2_ECSTATIC',
					'YieldType',
					'YIELD_SCIENCE'
				),
				(
					'SUK_TE_OTUKAPUARANGI_SCIENCE_2_ECSTATIC',
					'Amount',
					'1'
				);
	----------------------------------------------------------------------------------------------------------------------------
	-- GAME MODIFIERS
	----------------------------------------------------------------------------------------------------------------------------
		-- GameModifiers
		-------------------------------------
			INSERT INTO GameModifiers
					(ModifierId)
			SELECT	(Modifiers.ModifierId || '_MODIFIER')
			FROM Modifiers WHERE Modifiers.ModifierId IN (
				'SUK_TE_OTUKAPUARANGI_CULTURE_1_ECSTATIC',
				'SUK_TE_OTUKAPUARANGI_CULTURE_2_ECSTATIC',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_1',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_2',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_1_ECSTATIC',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_2',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_2_ECSTATIC'
			);
		-------------------------------------
		-- Modifiers
		-------------------------------------
			INSERT INTO Modifiers
					(
						ModifierId,
						ModifierType,
						OwnerRequirementSetId
					)
			SELECT
						(Modifiers.ModifierId || '_MODIFIER'),
						'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',
						'SUK_TE_OTUKAPUARANGI_EXISTS'
			FROM Modifiers WHERE Modifiers.ModifierId IN (
				'SUK_TE_OTUKAPUARANGI_CULTURE_1_ECSTATIC',
				'SUK_TE_OTUKAPUARANGI_CULTURE_2_ECSTATIC',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_1',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_2',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_1_ECSTATIC',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_2',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_2_ECSTATIC'
			);
		-------------------------------------
		-- ModifierArguments
		-------------------------------------
			INSERT INTO ModifierArguments
					(
						ModifierId,
						Name,
						Value
					)
			SELECT
						(Modifiers.ModifierId || '_MODIFIER'),
						'ModifierId',
						ModifierId
			FROM Modifiers WHERE Modifiers.ModifierId IN (
				'SUK_TE_OTUKAPUARANGI_CULTURE_1_ECSTATIC',
				'SUK_TE_OTUKAPUARANGI_CULTURE_2_ECSTATIC',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_1',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_2',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_1_ECSTATIC',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_2',
				'SUK_TE_OTUKAPUARANGI_SCIENCE_2_ECSTATIC'
			);
	----------------------------------------------------------------------------------------------------------------------------
	-- REQUIREMENTS
	----------------------------------------------------------------------------------------------------------------------------
		-- RequirementSets
		-------------------------------------
			INSERT INTO RequirementSets
					(RequirementSetId,							RequirementSetType)
			VALUES	('SUK_TE_OTUKAPUARANGI_EXISTS',				'REQUIREMENTSET_TEST_ALL'),
					('SUK_TE_OTUKAPUARANGI_ECSTATIC',			'REQUIREMENTSET_TEST_ALL'),

					('SUK_TE_OTUKAPUARANGI_1_CULTURE',			'REQUIREMENTSET_TEST_ALL'),
					('SUK_TE_OTUKAPUARANGI_2_CULTURE',			'REQUIREMENTSET_TEST_ALL'),

					('SUK_TE_OTUKAPUARANGI_1_SCIENCE',			'REQUIREMENTSET_TEST_ALL'),
					('SUK_TE_OTUKAPUARANGI_2_SCIENCE',			'REQUIREMENTSET_TEST_ALL');
		-------------------------------------
		-- RequirementSetRequirements
		-------------------------------------
			INSERT INTO RequirementSetRequirements
					(RequirementSetId,						RequirementId)
			VALUES	('SUK_TE_OTUKAPUARANGI_EXISTS',			'REQUIRES_MAP_HAS_SUK_TE_OTUKAPUARANGI'),
					('SUK_TE_OTUKAPUARANGI_ECSTATIC',		'REQUIRES_SUK_TE_OTUKAPUARANGI_ECSTATIC'),

					('SUK_TE_OTUKAPUARANGI_1_CULTURE',		'REQUIRES_SUK_TE_OTUKAPUARANGI_1'),
					('SUK_TE_OTUKAPUARANGI_1_CULTURE',		'REQUIRES_SUK_TE_OTUKAPUARANGI_CULTURE'),
					('SUK_TE_OTUKAPUARANGI_2_CULTURE',		'REQUIRES_SUK_TE_OTUKAPUARANGI_2'),
					('SUK_TE_OTUKAPUARANGI_2_CULTURE',		'REQUIRES_SUK_TE_OTUKAPUARANGI_CULTURE'),

					('SUK_TE_OTUKAPUARANGI_1_SCIENCE',		'REQUIRES_SUK_TE_OTUKAPUARANGI_1'),
					('SUK_TE_OTUKAPUARANGI_1_SCIENCE',		'REQUIRES_SUK_TE_OTUKAPUARANGI_SCIENCE'),
					('SUK_TE_OTUKAPUARANGI_2_SCIENCE',		'REQUIRES_SUK_TE_OTUKAPUARANGI_2'),
					('SUK_TE_OTUKAPUARANGI_2_SCIENCE',		'REQUIRES_SUK_TE_OTUKAPUARANGI_SCIENCE');
		-------------------------------------
		-- Requirements
		-------------------------------------
			INSERT INTO Requirements
					(RequirementId, 							RequirementType,						Inverse)
			VALUES	('REQUIRES_MAP_HAS_SUK_TE_OTUKAPUARANGI',	'REQUIREMENT_MAP_HAS_FEATURE',			0),
					('REQUIRES_SUK_TE_OTUKAPUARANGI_ECSTATIC',	'REQUIREMENT_PLOT_PROPERTY_MATCHES',	0),

					('REQUIRES_SUK_TE_OTUKAPUARANGI_1',			'REQUIREMENT_PLOT_PROPERTY_MATCHES',	0),
					('REQUIRES_SUK_TE_OTUKAPUARANGI_2',			'REQUIREMENT_PLOT_PROPERTY_MATCHES',	0),
					('REQUIRES_SUK_TE_OTUKAPUARANGI_CULTURE',	'REQUIREMENT_PLOT_PROPERTY_MATCHES',	1),
					('REQUIRES_SUK_TE_OTUKAPUARANGI_SCIENCE',	'REQUIREMENT_PLOT_PROPERTY_MATCHES',	0);
		-------------------------------------
		-- RequirementArguments
		-------------------------------------
			INSERT INTO RequirementArguments
					(RequirementId, 							Name,				Value)
			VALUES	('REQUIRES_MAP_HAS_SUK_TE_OTUKAPUARANGI', 	'FeatureType',		'FEATURE_SUK_TE_OTUKAPUARANGI'),

					('REQUIRES_SUK_TE_OTUKAPUARANGI_ECSTATIC', 	'PropertyName',		'Suk_TeOtukapuarangi_Ecstatic'),
					('REQUIRES_SUK_TE_OTUKAPUARANGI_ECSTATIC', 	'PropertyMinimum',	1),

					('REQUIRES_SUK_TE_OTUKAPUARANGI_1', 		'PropertyName',		'Suk_TeOtukapuarangi'),
					('REQUIRES_SUK_TE_OTUKAPUARANGI_1', 		'PropertyMinimum',	1),
					('REQUIRES_SUK_TE_OTUKAPUARANGI_2', 		'PropertyName',		'Suk_TeOtukapuarangi'),
					('REQUIRES_SUK_TE_OTUKAPUARANGI_2', 		'PropertyMinimum',	2),

					('REQUIRES_SUK_TE_OTUKAPUARANGI_CULTURE', 	'PropertyName',		'Suk_TeOtukapuarangi_Mode'),
					('REQUIRES_SUK_TE_OTUKAPUARANGI_CULTURE', 	'PropertyMinimum',	1),
					('REQUIRES_SUK_TE_OTUKAPUARANGI_SCIENCE', 	'PropertyName',		'Suk_TeOtukapuarangi_Mode'),
					('REQUIRES_SUK_TE_OTUKAPUARANGI_SCIENCE', 	'PropertyMinimum',	1);
--==========================================================================================================================
--==========================================================================================================================