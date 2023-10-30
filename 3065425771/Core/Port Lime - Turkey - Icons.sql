-- Port Lime - Turkey - Icons
-- Author: Lime
-- DateCreated: 6/12/2023 9:09:16 PM
--------------------------------------------------------------

INSERT INTO IconTextureAtlases	
		(Name,											IconSize,	IconsPerRow,	IconsPerColumn,		Filename)
VALUES  ('ICON_ATLAS_LIME_TURKEY',						256,	 	1,				1,					'Lime_TurkeyEmblem256.dds'),
		('ICON_ATLAS_LIME_TURKEY',						80,	 		1,				1,					'Lime_TurkeyEmblem80.dds'),
		('ICON_ATLAS_LIME_TURKEY',						64,	 		1,				1,					'Lime_TurkeyEmblem64.dds'),
		('ICON_ATLAS_LIME_TURKEY',						50,	 		1,				1,					'Lime_TurkeyEmblem50.dds'),
		('ICON_ATLAS_LIME_TURKEY',						48,	 		1,				1,					'Lime_TurkeyEmblem48.dds'),
		('ICON_ATLAS_LIME_TURKEY',						45,			1,				1,					'Lime_TurkeyEmblem45.dds'),
		('ICON_ATLAS_LIME_TURKEY',						44,	 		1,				1,					'Lime_TurkeyEmblem44.dds'),
		('ICON_ATLAS_LIME_TURKEY',						36,	 		1,				1,					'Lime_TurkeyEmblem36.dds'),
		('ICON_ATLAS_LIME_TURKEY',						30,	 		1,				1,					'Lime_TurkeyEmblem30.dds'),
		('ICON_ATLAS_LIME_TURKEY',						22,	 		1,				1,					'Lime_TurkeyEmblem22.dds'),
		
		('ICON_ATLAS_LIME_LOKANTA',						256,	 	1,				1,					'Lime_Lokanta256.dds'),
		('ICON_ATLAS_LIME_LOKANTA',						128,	 	1,				1,					'Lime_Lokanta128.dds'),
		('ICON_ATLAS_LIME_LOKANTA',						80,	 		1,				1,					'Lime_Lokanta80.dds'),
		('ICON_ATLAS_LIME_LOKANTA',						50,	 		1,				1,					'Lime_Lokanta50.dds'),
		('ICON_ATLAS_LIME_LOKANTA',						38,	 		1,				1,					'Lime_Lokanta38.dds'),
		('ICON_ATLAS_LIME_LOKANTA',						32,	 		1,				1,					'Lime_Lokanta32.dds'),
		
		('ICON_ATLAS_LIME_DUZENLI',						256,	 	1,				1,					'Lime_DuzenliFlag256.dds'),
		('ICON_ATLAS_LIME_DUZENLI',						80,	 		1,				1,					'Lime_DuzenliFlag80.dds'),
		('ICON_ATLAS_LIME_DUZENLI',						50,	 		1,				1,					'Lime_DuzenliFlag50.dds'),
		('ICON_ATLAS_LIME_DUZENLI',						38,	 		1,				1,					'Lime_DuzenliFlag38.dds'),
		('ICON_ATLAS_LIME_DUZENLI',						32,	 		1,				1,					'Lime_DuzenliFlag32.dds'),
		('ICON_ATLAS_LIME_DUZENLI',						22,	 		1,				1,					'Lime_DuzenliFlag22.dds'),
		
		('ICON_ATLAS_LIME_TURKEY_DUZENLI_PORTRAIT',		256,	 	1,				1,					'Lime_DuzenliPortrait256'),
		('ICON_ATLAS_LIME_TURKEY_DUZENLI_PORTRAIT',		200,	 	1,				1,					'Lime_DuzenliPortrait200'),
		('ICON_ATLAS_LIME_TURKEY_DUZENLI_PORTRAIT',		95,	 		1,				1,					'Lime_DuzenliPortrait95'),
		('ICON_ATLAS_LIME_TURKEY_DUZENLI_PORTRAIT',		70,	 		1,				1,					'Lime_DuzenliPortrait70'),
		('ICON_ATLAS_LIME_TURKEY_DUZENLI_PORTRAIT',		50,	 		1,				1,					'Lime_DuzenliPortrait50'),
		('ICON_ATLAS_LIME_TURKEY_DUZENLI_PORTRAIT',		38,	 		1,				1,					'Lime_DuzenliPortrait38');
--------------------------------------------------------------------------------------------------------------------------
-- IconDefinitions
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO IconDefinitions	
		(Name,															Atlas, 												'Index')
VALUES  ('ICON_CIVILIZATION_LIME_TURKEY',								'ICON_ATLAS_LIME_TURKEY',							0),
		
		('ICON_BUILDING_LIME_TURKEY_LOKANTA',							'ICON_ATLAS_LIME_LOKANTA',							0),

		('ICON_UNIT_LIME_TURKEY_DUZENLI',								'ICON_ATLAS_LIME_DUZENLI',							0),
		('ICON_UNIT_LIME_TURKEY_DUZENLI_BLACK',							'ICON_ATLAS_LIME_DUZENLI',							0),
		('ICON_UNIT_LIME_TURKEY_DUZENLI_WHITE',							'ICON_ATLAS_LIME_DUZENLI',							0),
		
		('ICON_UNIT_LIME_TURKEY_DUZENLI_PORTRAIT',						'ICON_ATLAS_LIME_TURKEY_DUZENLI_PORTRAIT',			0),
		('ICON_ETHNICITY_AFRICAN_UNIT_LIME_TURKEY_DUZENLI_PORTRAIT',	'ICON_ATLAS_LIME_TURKEY_DUZENLI_PORTRAIT',			0),
		('ICON_ETHNICITY_SOUTHAM_UNIT_LIME_TURKEY_DUZENLI_PORTRAIT',	'ICON_ATLAS_LIME_TURKEY_DUZENLI_PORTRAIT',			0),
		('ICON_ETHNICITY_MEDIT_UNIT_LIME_TURKEY_DUZENLI_PORTRAIT',		'ICON_ATLAS_LIME_TURKEY_DUZENLI_PORTRAIT',			0),
		('ICON_ETHNICITY_ASIAN_UNIT_LIME_TURKEY_DUZENLI_PORTRAIT',		'ICON_ATLAS_LIME_TURKEY_DUZENLI_PORTRAIT',			0);
--==========================================================================================================================
--==========================================================================================================================