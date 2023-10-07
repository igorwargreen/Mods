--=============================================================================================================
-- RELIGION EXPANDED: UPDATED RELIGION TEXT
--=============================================================================================================
-- (The wording in some of the vanilla Beliefs is inconsistent or otherwise not to my taste. This file updates
-- for consistency with my wording for similar Beliefs, or updates if the vanilla Belief is changed by this mod).
--=============================================================================================================
INSERT OR REPLACE INTO LocalizedText
		(Language,	Tag,	Text)
VALUES
---------------------------------------------------------------------------------------------------------------
-- Pantheons
--------------------------------------------------------------------------------------------------------------- 
		('en_US',	'LOC_BELIEF_DANCE_OF_THE_AURORA_DESCRIPTION',
		'Holy Sites receive a standard [ICON_Faith] Faith adjacency bonus from Tundra and Tundra Hills.'),
		('en_US',	'LOC_BELIEF_DESERT_FOLKLORE_DESCRIPTION',
		'Holy Sites receive a standard [ICON_Faith] Faith adjacency bonus from Desert and Desert Hills.'),
		('en_US',	'LOC_BELIEF_SACRED_PATH_DESCRIPTION',
		'Holy Sites receive a standard [ICON_Faith] Faith adjacency bonus from Rainforest.'),
		('en_US',	'LOC_BELIEF_MONUMENT_TO_THE_GODS_DESCRIPTION',
		'+15% [ICON_Production] Production towards Ancient and Classical era World Wonders.'),
		('en_US',	'LOC_BELIEF_GOD_OF_HEALING_DESCRIPTION',
		'Your units heal +30 HP in your Holy Sites or adjacent tiles.'),
		('en_US',	'LOC_BELIEF_GOD_OF_WAR_DESCRIPTION',
		'Combat victories grant [ICON_Faith] Faith equal to 50% of the [ICON_Strength] Combat Strength of units defeated within 8 tiles of a Holy Site district.'),
		('en_US',	'LOC_BELIEF_RELIGIOUS_SETTLEMENTS_DESCRIPTION',
		'City border expansion rates increase by 15%.'),
---------------------------------------------------------------------------------------------------------------
-- Follower Beliefs
--------------------------------------------------------------------------------------------------------------- 
		('en_US',	'LOC_BELIEF_DIVINE_INSPIRATION_DESCRIPTION',
		'+4 [ICON_Faith] Faith from World Wonders.'),
		('en_US',	'LOC_BELIEF_JESUIT_EDUCATION_DESCRIPTION',
		'May purchase Campus and Theater Square buildings with [ICON_Faith] Faith.'),
		('en_US',	'LOC_BELIEF_RELIQUARIES_DESCRIPTION',
		'[ICON_Faith] Faith and [ICON_Tourism] Tourism from [ICON_GreatWork_Relic] Relics are tripled.'),
---------------------------------------------------------------------------------------------------------------
-- Worship Beliefs
---------------------------------------------------------------------------------------------------------------
		('en_US',	'LOC_BELIEF_CATHEDRAL_DESCRIPTION',
		'Allows construction of Cathedrals (+3 [ICON_Faith] Faith, 1 slot for [ICON_GreatWork_Religious] Religious art).'),
		('en_US',	'LOC_BELIEF_MOSQUE_DESCRIPTION',
		'Allows construction of Mosques (+3 [ICON_Faith] Faith). Missionaries and Apostles created in this city receive +1 Spread.'),
---------------------------------------------------------------------------------------------------------------
-- Founder Beliefs
--------------------------------------------------------------------------------------------------------------- 
		('en_US',	'LOC_BELIEF_RELIGIOUS_UNITY_DESCRIPTION',
		'Receive +1 [ICON_Envoy] Envoy at a City-State when it first adopts this [ICON_Religion] Religion (in addition to any [ICON_Envoy] Envoy gained from a City-State [ICON_CityStateQuest] Quest).'),
---------------------------------------------------------------------------------------------------------------
-- Enhancer Beliefs
--------------------------------------------------------------------------------------------------------------- 
		('en_US',	'LOC_BELIEF_DEFENDER_OF_FAITH_DESCRIPTION',
		'Military units receive +5 [ICON_Strength] Combat Strength when fighting within the borders of friendly cities that follow this [ICON_Religion] Religion.'),
		('en_US',	'LOC_BELIEF_HOLY_ORDER_DESCRIPTION',
		'The [ICON_Faith] Faith cost of purchasing Missionaries and Apostles is reduced by 30%.'),
		('en_US',	'LOC_BELIEF_ITINERANT_PREACHERS_DESCRIPTION',
		'[ICON_Religion] Religious pressure spreads 30% further.'),
		('en_US',	'LOC_BELIEF_JUST_WAR_DESCRIPTION',
		'Military units receive +10 [ICON_Strength] Combat Strength when fighting within the borders of foreign cities that follow this [ICON_Religion] Religion.'),
		('en_US',	'LOC_BELIEF_MISSIONARY_ZEAL_DESCRIPTION',
		'[ICON_Religion] Religious units ignore the [ICON_Movement] Movement penalties from terrain and features.'),
		('en_US',	'LOC_BELIEF_MONASTIC_ISOLATION_DESCRIPTION',
		'Pressure from this [ICON_Religion] Religion never drops due to losses in Theological Combat.'),
		('en_US',	'LOC_BELIEF_RELIGIOUS_COLONIZATION_DESCRIPTION',
		'Cities begin with this [ICON_Religion] Religion in place if founded by a civilization which has this as its majority [ICON_Religion] Religion.'),
		('en_US',	'LOC_BELIEF_SCRIPTURE_DESCRIPTION',
		'+25% [ICON_Religion] Religious pressure from adjacent cities, increasing to +50% after unlocking the Printing technology.');