--==========================================================================================================================
-- PORT LIME ===============================================================================================================
-- REPUBLIC OF TURKEY ======================================================================================================
--==========================================================================================================================
-- Author: Lime
-- DateCreated: 5/26/2023 8:53:17 AM
----------------------------------------------------------------------------------------------------------------------------
--	UA: The People's Homes
--		Completing projects in Encampments, Campuses, and Theatre Squares grants +1 Production, Science, and Culture 
--		respectively to adjacent farms for each building in those districts. 
--	
--	UU: Maroon Beret
--		Replaces the Spec Ops unit. +15 Combat Strength when within 3 tiles of a City-state. +15 Combat Strength during 
--		Emergencies.
--
--	UB: Esnaf Lokanta
--		Neighborhood Building. Unlocks at Economics. +1 Food from adjacent farms. Additional +1 Food from adjacent farms 
--		if powered. Grants +1 Amenity to adjacent Specialty Districts. +50% production towards Projects in this city.
--
----------------------------------------------------------------------------------------------------------------------------
--	Notes:
--		Farms will get tourism after flight
--
----------------------------------------------------------------------------------------------------------------------------
-- Types
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('CIVILIZATION_LIME_TURKEY',	'KIND_CIVILIZATION');
----------------------------------------------------------------------------------------------------------------------------
-- Civilizations
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Civilizations	
		(CivilizationType,				Name,									Description,							Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity)
VALUES	('CIVILIZATION_LIME_TURKEY',	'LOC_CIVILIZATION_LIME_TURKEY_NAME',	'LOC_CIVILIZATION_LIME_TURKEY_DESC',	'LOC_CIVILIZATION_LIME_TURKEY_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	10,						'ETHNICITY_MUGHAL');	
----------------------------------------------------------------------------------------------------------------------------			
-- CityNames			
----------------------------------------------------------------------------------------------------------------------------		
INSERT INTO CityNames	
		(CivilizationType,				CityName)	
VALUES	('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_ANKARA'),				--  1
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_ISTANBUL'),				--  2
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_IZMIR'),					--  3
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_BURSA'),					--  4
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_ADANA'),					--  5, DESTROYED BY EARTHQUAKES
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_GAZIANTEP'),	--  6, DESTROYED BY EARTHQUAKES
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_KONYA'),					--  7
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_ANTALYA'),	--  8
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_URFA'),					--  9, DESTROYED BY EARTHQUAKES
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_KONYA'), 				-- 10
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_ESKISEHIR'),				-- 11
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_VAN'),					-- 12
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_TRABZON'),				-- 13
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_MARAS'),					-- 14, DESTROYED BY EARTHQUAKES
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_EDIRNE'),				-- 15
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_AMASYA'),				-- 16
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_KARS'),		-- 17
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_KAYSERI'),				-- 18
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_MERSIN'),	-- 19
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_SAMSUN'),				-- 20
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_MALATYA'),	-- 21, DESTROYED BY EARTHQUAKES
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_ANTAKYA'),	-- 22, DESTROYED BY EARTHQUAKES
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_DIYARBEKIR'),			-- 23, DESTROYED BY EARTHQUAKES
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_DENIZLI'),	-- 24
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_IZMIT'),					-- 25
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_AFYON'),		-- 26
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_ERZURUM'),				-- 27
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_SIVAS'),					-- 28
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_CANAKKALE'),	-- 29
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_BATMAN'),				-- 30
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_ADAPAZARI'),	-- 31
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_AKSARAY'),				-- 32
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_ISKENDERUN'),			-- 33, DESTROYED BY EARTHQUAKES
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_BODRUM'),	-- 34
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_ADIYAMAN'),	-- 35, DESTROYED BY EARTHQUAKES
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_FETHIYE'),	-- 36
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_ELAZIG'),	-- 37
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_KUTAHYA'),	-- 38
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_BALIKESIR'),	-- 39
		('CIVILIZATION_LIME_TURKEY',	'LOC_CITY_NAME_LIME_TURKEY_MANISA');	-- 40

----------------------------------------------------------------------------------------------------------------------------
-- CivilizationCitizenNames
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationCitizenNames	
		(CivilizationType,				CitizenName,								Female,		Modern)
SELECT	'CIVILIZATION_LIME_TURKEY',		CitizenName,								Female,		Modern
FROM CivilizationCitizenNames WHERE CivilizationType = 'CIVILIZATION_OTTOMAN';
----------------------------------------------------------------------------------------------------------------------------			
-- CivilizationInfo			
----------------------------------------------------------------------------------------------------------------------------		
INSERT INTO CivilizationInfo	
		(CivilizationType,				Header,						Caption,								SortIndex)	
VALUES	('CIVILIZATION_LIME_TURKEY',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_LIME_TURKEY_LOCATION',		10),	
		('CIVILIZATION_LIME_TURKEY',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_LIME_TURKEY_SIZE',			20),	
		('CIVILIZATION_LIME_TURKEY',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_LIME_TURKEY_POPULATION',	30),	
		('CIVILIZATION_LIME_TURKEY',	'LOC_CIVINFO_CAPITAL', 		'LOC_CIVINFO_LIME_TURKEY_CAPITAL',		40);
----------------------------------------------------------------------------------------------------------------------------			
-- StartBiasResources			
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO StartBiasResources	
		(CivilizationType,				ResourceType,				Tier)
VALUES	('CIVILIZATION_LIME_TURKEY',	'RESOURCE_WHEAT',			1),
		('CIVILIZATION_LIME_TURKEY',	'RESOURCE_SHEEP',			1),
		('CIVILIZATION_LIME_TURKEY',	'RESOURCE_DYES',			2),
		('CIVILIZATION_LIME_TURKEY',	'RESOURCE_COTTON',			1),
		('CIVILIZATION_LIME_TURKEY',	'RESOURCE_HONEY',			2),
		('CIVILIZATION_LIME_TURKEY',	'RESOURCE_TEA',				2); -- This may seem like a lot but consider: https://en.wikipedia.org/wiki/List_of_countries_by_tea_consumption_per_capita
----------------------------------------------------------------------------------------------------------------------------			
-- StartBiasTerrains
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO StartBiasTerrains	
		(CivilizationType,				TerrainType,				Tier)
VALUES	('CIVILIZATION_LIME_TURKEY',	'TERRAIN_GRASS',			1),
		('CIVILIZATION_LIME_TURKEY',	'TERRAIN_PLAINS',			1),
		('CIVILIZATION_LIME_TURKEY',	'TERRAIN_DESERT',			3),
		('CIVILIZATION_LIME_TURKEY',	'TERRAIN_GRASS_HILLS',		1),
		('CIVILIZATION_LIME_TURKEY',	'TERRAIN_PLAINS_HILLS',		1),
		('CIVILIZATION_LIME_TURKEY',	'TERRAIN_DESERT_HILLS',		3),
		('CIVILIZATION_LIME_TURKEY',	'TERRAIN_GRASS_MOUNTAIN',	1),
		('CIVILIZATION_LIME_TURKEY',	'TERRAIN_PLAINS_MOUNTAIN',	1),
		('CIVILIZATION_LIME_TURKEY',	'TERRAIN_DESERT_MOUNTAIN',	3);

--==========================================================================================================================
-- CIVILIZATIONS NAMERY STUFF
--==========================================================================================================================
INSERT INTO NamedDesertCivilizations
		(NamedDesertType,	CivilizationType)
SELECT	NamedDesertType,	'CIVILIZATION_LIME_TURKEY'
FROM NamedDesertCivilizations WHERE CivilizationType = 'CIVILIZATION_OTTOMAN';

INSERT INTO NamedLakeCivilizations
		(NamedLakeType,	CivilizationType)
SELECT	NamedLakeType,	'CIVILIZATION_LIME_TURKEY'
FROM NamedLakeCivilizations WHERE CivilizationType = 'CIVILIZATION_OTTOMAN';

INSERT INTO NamedMountainCivilizations
		(NamedMountainType,	CivilizationType)
SELECT	NamedMountainType,	'CIVILIZATION_LIME_TURKEY'
FROM NamedMountainCivilizations WHERE CivilizationType = 'CIVILIZATION_OTTOMAN';

INSERT INTO NamedOceanCivilizations
		(NamedOceanType,	CivilizationType)
SELECT	NamedOceanType,		'CIVILIZATION_LIME_TURKEY'
FROM NamedOceanCivilizations WHERE CivilizationType = 'CIVILIZATION_OTTOMAN';

INSERT INTO NamedRiverCivilizations
		(NamedRiverType,	CivilizationType)
SELECT	NamedRiverType,	'CIVILIZATION_LIME_TURKEY'
FROM NamedRiverCivilizations WHERE CivilizationType = 'CIVILIZATION_OTTOMAN';

INSERT INTO NamedSeaCivilizations
		(NamedSeaType,	CivilizationType)
SELECT	NamedSeaType,	'CIVILIZATION_LIME_TURKEY'
FROM NamedSeaCivilizations WHERE CivilizationType = 'CIVILIZATION_OTTOMAN';

INSERT INTO NamedVolcanoCivilizations
		(NamedVolcanoType,	CivilizationType)
SELECT	NamedVolcanoType,	'CIVILIZATION_LIME_TURKEY'
FROM NamedVolcanoCivilizations WHERE CivilizationType = 'CIVILIZATION_OTTOMAN';
