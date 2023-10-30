--==========================================================================================================================
-- IconTextureAtlases
--==========================================================================================================================
INSERT INTO IconTextureAtlases
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,		Filename)
VALUES  ('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		256,		1,				1,					'Icon_Suk_TeOtukapuarangi_256'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		200,		1,				1,					'Icon_Suk_TeOtukapuarangi_200'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		128,		1,				1,					'Icon_Suk_TeOtukapuarangi_128'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		95,			1,				1,					'Icon_Suk_TeOtukapuarangi_95'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		80,			1,				1,					'Icon_Suk_TeOtukapuarangi_80'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		70,			1,				1,					'Icon_Suk_TeOtukapuarangi_70'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		64,			1,				1,					'Icon_Suk_TeOtukapuarangi_64'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		55,			1,				1,					'Icon_Suk_TeOtukapuarangi_55'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		50,			1,				1,					'Icon_Suk_TeOtukapuarangi_50'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		48,			1,				1,					'Icon_Suk_TeOtukapuarangi_48'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		45,			1,				1,					'Icon_Suk_TeOtukapuarangi_45'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		44,			1,				1,					'Icon_Suk_TeOtukapuarangi_44'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		40,			1,				1,					'Icon_Suk_TeOtukapuarangi_40'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		38,			1,				1,					'Icon_Suk_TeOtukapuarangi_38'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		36,			1,				1,					'Icon_Suk_TeOtukapuarangi_36'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		32,			1,				1,					'Icon_Suk_TeOtukapuarangi_32'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		30,			1,				1,					'Icon_Suk_TeOtukapuarangi_30'),
		('ICON_ATLAS_SUK_TE_OTUKAPUARANGI',		22,			1,				1,					'Icon_Suk_TeOtukapuarangi_22');
--==========================================================================================================================
-- IconDefinitions
--==========================================================================================================================
INSERT INTO IconDefinitions
			(Name, 										Atlas, 										'Index')
VALUES		('ICON_FEATURE_SUK_TE_OTUKAPUARANGI', 		'ICON_ATLAS_SUK_TE_OTUKAPUARANGI',			0);

INSERT INTO IconDefinitions
					(Name, 										Atlas, 							'Index')
SELECT DISTINCT		'ICON_NOTIFICATION_TE_OTUKAPUARANGI',		IconTextureAtlases.Name,		0
FROM IconTextureAtlases WHERE IconTextureAtlases.Name = 'ICON_ATLAS_EXPANSION2_NOTIFICATIONS';
--==========================================================================================================================
--==========================================================================================================================
