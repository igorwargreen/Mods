-- Port Lime - K Ataturk - Colours
-- Author: Yesil Limon
-- DateCreated: 6/11/2023 3:52:37 PM
--------------------------------------------------------------
--======================================================================
--	COLORS
--======================================================================
--	Colors
-------------------------------------
INSERT OR REPLACE INTO Colors
		(Type,										Color)
VALUES	('COLOR_STANDARD_INDIGO_DK',				'0,60,86,255'),
		('COLOR_PLAYER_LIME_TURKEY_K_ATATURK_1',	'75,4,30,255');	--#4B041E
-------------------------------------
--	PlayerColors
-------------------------------------
INSERT OR REPLACE INTO PlayerColors
		(Type,										Usage,
		PrimaryColor,								SecondaryColor,
		Alt1PrimaryColor,							Alt1SecondaryColor,
		Alt2PrimaryColor,							Alt2SecondaryColor,
		Alt3PrimaryColor,							Alt3SecondaryColor)
VALUES	('LEADER_LIME_TURKEY_K_ATATURK',			'Unique',
		'COLOR_PLAYER_LIME_TURKEY_K_ATATURK_1',		'COLOR_STANDARD_YELLOW_LT',
		'COLOR_STANDARD_RED_MD',					'COLOR_STANDARD_WHITE_LT',
		'COLOR_STANDARD_YELLOW_LT',					'COLOR_STANDARD_RED_DK',
		'COLOR_STANDARD_INDIGO_DK',					'COLOR_STANDARD_WHITE_LT');
--======================================================================
--======================================================================
