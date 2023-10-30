--===============================================================================================
-- PORT LIME ====================================================================================
-- KEMAL ATATURK ================================================================================
--===============================================================================================
-- Author: Lime
-- DateCreated: 5/26/2023 8:54:52 AM
-------------------------------------------------------------------------------------------------
--	LUA: Hero of Anafartalar
--		Great Generals recruited during wars gain an extra charge. Gain a Governor title when a 
--		Great General is fully expended during peacetime. Has access to the Kuva-yi Milliye 
--		unique unit.
--	
--	LUU: Kuva-yi Milliye
--		Replaces the Ranger. Weaker, but much cheaper and gains tripled bonuses from Great 
--		Generals. Ignores enemy zone of control.
--	
--	Agenda: Dictates of Truth
--		Likes Civilizations that focus on Culture and Science. Dislikes Civilizations that focus 
--		on Faith.
--	
-------------------------------------------------------------------------------------------------
--	Notes:
--		Capital is Ankara (Of course)
--		Has a preference for the Airpower agenda
--
--===============================================================================================
INSERT INTO Types
		(Type,								Kind)
VALUES	('LEADER_LIME_TURKEY_K_ATATURK',	'KIND_LEADER');

INSERT INTO Leaders
		(LeaderType,						Name,										InheritFrom,		SceneLayers)
VALUES	('LEADER_LIME_TURKEY_K_ATATURK',	'LOC_LEADER_LIME_TURKEY_K_ATATURK_NAME',	'LEADER_DEFAULT',	4);

INSERT INTO LeaderQuotes
		(LeaderType,						Quote)
VALUES	('LEADER_LIME_TURKEY_K_ATATURK',	'LOC_PEDIA_LEADERS_PAGE_LEADER_LIME_TURKEY_K_ATATURK_QUOTE'); --

-- interesting question... do I even give Ataturk a historical religion?
INSERT INTO FavoredReligions
		(LeaderType,						ReligionType)
VALUES	('LEADER_LIME_TURKEY_K_ATATURK',	'RELIGION_ISLAM');

INSERT INTO LoadingInfo	
		(LeaderType,						BackgroundImage,							ForegroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_LIME_TURKEY_K_ATATURK',	'LEADER_LIME_TURKEY_ATATURK_BACKGROUND',	'LEADER_LIME_TURKEY_K_ATATURK_NEUTRAL',	0);

INSERT INTO CivilizationLeaders	
		(CivilizationType,					LeaderType,						CapitalName)
VALUES	('CIVILIZATION_LIME_TURKEY',		'LEADER_LIME_TURKEY_K_ATATURK',	'LOC_CITY_NAME_ANKARA');
