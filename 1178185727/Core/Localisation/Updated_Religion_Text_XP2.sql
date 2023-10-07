--=============================================================================================================
-- RELIGION EXPANDED: UPDATED RELIGION TEXT (XP2)
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
		('en_US',	'LOC_BELIEF_DIVINE_SPARK_EXPANSION2_DESCRIPTION',
		'+1 [ICON_GreatPerson] Great Person Point from Holy Sites ([ICON_GreatProphet] Great Prophet), Libraries ([ICON_GreatScientist] Great Scientist), and Amphitheaters ([ICON_GreatWriter] Writer).'),
		('en_US',	'LOC_BELIEF_GODDESS_OF_FESTIVALS_EXPANSION2_DESCRIPTION',
		'+1 [ICON_Food] Food from Plantations.'),
		('en_US',	'LOC_BELIEF_FERTILITY_RITES_EXPANSION2_DESCRIPTION',
		'Receive a free Builder in the [ICON_Capital] Capital. City growth rate increases by 10%.'),
		('en_US',	'LOC_BELIEF_RELIGIOUS_SETTLEMENTS_EXPANSION2_DESCRIPTION',
		'Receive a free Settler in the [ICON_Capital] Capital. City border expansion rate increases by 15%.'),
		('en_US',	'LOC_BELIEF_RIVER_GODDESS_EXPANSION2_DESCRIPTION',
		'+2 [ICON_Amenities] Amenities and +2 [ICON_Housing] Housing from Holy Sites adjacent to a River.'),
		('en_US',	'LOC_BELIEF_INITIATION_RITES_EXPANSION2_DESCRIPTION',
		'Clearing a Barbarian Outpost grants +50 [ICON_Faith] Faith. The unit that cleared the Barbarian Outpost heals +100 HP.'), 
		('en_US',	'LOC_BELIEF_LADY_OF_THE_REEDS_AND_MARSHES_EXPANSION2_DESCRIPTION',
		'+2 [ICON_Production] Production from Marsh, Oases, and Desert Floodplains.'),
---------------------------------------------------------------------------------------------------------------
-- Follower Beliefs
--------------------------------------------------------------------------------------------------------------- 
		('en_US',	'LOC_BELIEF_RELIGIOUS_COMMUNITY_NAME',
		'Indulgences'),
		('en_US',	'LOC_BELIEF_RELIGIOUS_COMMUNITY_EXPANSION2_DESCRIPTION',
		'+1 [ICON_Gold] Gold to [ICON_TradeRoute] Trade Routes for each Holy Site district and Holy Site building in the origin city.'), 
		('en_US',	'LOC_BELIEF_FEED_THE_WORLD_EXPANSION2_DESCRIPTION',
		'+3 [ICON_Housing] Housing and +2 [ICON_Food] Food from Shrines and Temples.'),
		('en_US',	'LOC_BELIEF_WARRIOR_MONKS_EXPANSION2_DESCRIPTION',
		'Unlocks the Warrior Monk unit. Additionally, completing a Holy Site triggers a Culture Bomb.'),
		('en_US',	'LOC_BELIEF_WORK_ETHIC_EXPANSION2_DESCRIPTION',
		'Holy Sites provide [ICON_Production] Production equal to their [ICON_Faith] Faith adjacency bonus.'),
---------------------------------------------------------------------------------------------------------------
-- Worship Beliefs
---------------------------------------------------------------------------------------------------------------
		('en_US',	'LOC_BELIEF_PAGODA_EXPANSION2_DESCRIPTION',
		'Allows construction of Pagodas (+3 [ICON_Faith] Faith, +1 [ICON_Favor] Diplomatic Favor per turn).'),
---------------------------------------------------------------------------------------------------------------
-- Founder Beliefs
--------------------------------------------------------------------------------------------------------------- 
		('en_US',	'LOC_BELIEF_SACRED_PLACES_DESCRIPTION',
		'+2 [ICON_Science] Science, +2 [ICON_Culture] Culture, +2 [ICON_Faith] Faith, and +2 [ICON_Gold] Gold for each city following this [ICON_Religion] Religion that has a World Wonder.'),
		('en_US',	'LOC_BELIEF_CROSS_CULTURAL_DIALOGUE_EXPANSION2_DESCRIPTION',
		'+1 [ICON_Science] Science for every 4 followers of this [ICON_Religion] Religion.'),
		('en_US',	'LOC_BELIEF_LAY_MINISTRY_DESCRIPTION',
		'Each Holy Site or Theater Square in a city following this [ICON_Religion] Religion provides +1 [ICON_Faith] Faith or +1 [ICON_Culture] Culture, respectively.'),
		('en_US',	'LOC_BELIEF_PILGRIMAGE_EXPANSION2_DESCRIPTION',
		'+2 [ICON_Faith] Faith for each city following this [ICON_Religion] Religion.'),
		('en_US',	'LOC_BELIEF_STEWARDSHIP_DESCRIPTION',
		'Each Campus or Commercial Hub in a city following this [ICON_Religion] Religion provides +1 [ICON_Science] Science or +1 [ICON_Gold] Gold, respectively.'),
		('en_US',	'LOC_BELIEF_TITHE_EXPANSION2_DESCRIPTION',
		'+2 [ICON_Gold] Gold for every 4 followers of this [ICON_Religion] Religion.'),
		('en_US',	'LOC_BELIEF_WORLD_CHURCH_EXPANSION2_DESCRIPTION',
		'+1 [ICON_Culture] Culture for every 4 followers of this [ICON_Religion] Religion.'),
---------------------------------------------------------------------------------------------------------------
-- Enhancer Beliefs
--------------------------------------------------------------------------------------------------------------- 
		('en_US',	'LOC_BELIEF_HOLY_WATERS_DESCRIPTION',
		'[ICON_Religion] Religious units heal +10 HP in Holy Sites and adjacent tiles in cities following your majority [ICON_Religion] Religion.');