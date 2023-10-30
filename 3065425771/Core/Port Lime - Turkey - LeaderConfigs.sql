-- Port Lime - Turkey - LeaderConfigs
-- Author: Lime
-- DateCreated: 6/12/2023 9:11:05 PM
--------------------------------------------------------------

INSERT OR REPLACE INTO Players
		(Domain,						CivilizationType,				LeaderType,						LeaderName,									LeaderIcon,								CivilizationName,						CivilizationIcon,					LeaderAbilityName,									LeaderAbilityDescription,							LeaderAbilityIcon,						CivilizationAbilityName,								CivilizationAbilityDescription,							CivilizationAbilityIcon,			Portrait,								PortraitBackground)
VALUES	('Players:Expansion2_Players',	'CIVILIZATION_LIME_TURKEY',		'LEADER_LIME_TURKEY_K_ATATURK',	'LOC_LEADER_LIME_TURKEY_K_ATATURK_NAME',	'ICON_LEADER_LIME_TURKEY_K_ATATURK',	'LOC_CIVILIZATION_LIME_TURKEY_NAME',	'ICON_CIVILIZATION_LIME_TURKEY',	'LOC_TRAIT_LEADER_LIME_TURKEY_K_ATATURK_HERO_NAME',	'LOC_TRAIT_LEADER_LIME_TURKEY_K_ATATURK_HERO_DESC',	'ICON_LEADER_LIME_TURKEY_K_ATATURK',	'LOC_TRAIT_CIVILIZATION_LIME_TURKEY_HALK_EVLER_NAME',	'LOC_TRAIT_CIVILIZATION_LIME_TURKEY_HALK_EVLER_DESC',	'ICON_CIVILIZATION_LIME_TURKEY',	'LEADER_LIME_TURKEY_K_ATATURK_NEUTRAL',	'LEADER_KUPE_BACKGROUND');

INSERT OR REPLACE INTO PlayerItems
		(CivilizationType,				Domain,							LeaderType,						Type,										Icon,									Name,													Description,											SortIndex)
VALUES	('CIVILIZATION_LIME_TURKEY',	'Players:Expansion2_Players',	'LEADER_LIME_TURKEY_K_ATATURK',	'UNIT_LIME_TURKEY_DUZENLI',					'ICON_UNIT_LIME_TURKEY_DUZENLI',		'LOC_UNIT_LIME_TURKEY_DUZENLI_NAME',					'LOC_UNIT_LIME_TURKEY_DUZENLI_DESC',					10),
		('CIVILIZATION_LIME_TURKEY',	'Players:Expansion2_Players',	'LEADER_LIME_TURKEY_K_ATATURK',	'BUILDING_LIME_TURKEY_LOKANTA',				'ICON_BUILDING_LIME_TURKEY_LOKANTA',	'LOC_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA_NAME',	'LOC_CIVILIZATION_BUILDING_LIME_TURKEY_LOKANTA_DESC',	20);