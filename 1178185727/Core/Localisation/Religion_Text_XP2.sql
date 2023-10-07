--=============================================================================================================
-- RELIGION EXPANDED: RELIGION TEXT (XP2)
--=============================================================================================================
INSERT OR REPLACE INTO LocalizedText
		(Language,	Tag,	Text)
VALUES
---------------------------------------------------------------------------------------------------------------
-- Pantheons
---------------------------------------------------------------------------------------------------------------
		('en_US',	'LOC_BELIEF_P0K_ORAL_TRADITION_NAME',
		'Oral Tradition'),
		('en_US',	'LOC_BELIEF_P0K_ORAL_TRADITION_DESCRIPTION',
		'+1 [ICON_Culture] Culture from Plantations.'),
---------------------------------------------------------------------------------------------------------------
-- Follower Beliefs
---------------------------------------------------------------------------------------------------------------
		('en_US',	'LOC_BELIEF_P0K_FRUITS_OF_LABOR_NAME',
		'Fruits of Labor'),
		('en_US',	'LOC_BELIEF_P0K_FRUITS_OF_LABOR_DESCRIPTION',
		'+1% [ICON_Production] Production for each [ICON_Citizen] Citizen following this [ICON_Religion] Religion.'),
---------------------------------------------------------------------------------------------------------------
-- Founder Beliefs
---------------------------------------------------------------------------------------------------------------	
		('en_US',	'LOC_BELIEF_P0K_CHURCH_PROPERTY_NAME',
		'Church Property'),
		('en_US',	'LOC_BELIEF_P0K_CHURCH_PROPERTY_DESCRIPTION',
		'+3 [ICON_Gold] Gold for each city following this [ICON_Religion] Religion.'),
		('en_US',	'LOC_BELIEF_P0K_SCHOLARLY_TRADITION_NAME',
		'Scholarly Tradition'),
		('en_US',	'LOC_BELIEF_P0K_SCHOLARLY_TRADITION_DESCRIPTION',
		'Upon using a [ICON_Religion] Religious unit to convert a city''s [ICON_Religion] Religion for the first time, receive +20 [ICON_Science] Science for each [ICON_Citizen] Citizen in that city.'),
		('en_US',	'LOC_BELIEF_P0K_RELIGIOUS_SYNCRETISM_NAME',
		'Religious Syncretism'),
		('en_US',	'LOC_BELIEF_P0K_RELIGIOUS_SYNCRETISM_DESCRIPTION',
		'Upon using a [ICON_Religion] Religious unit to convert a city''s [ICON_Religion] Religion for the first time, receive +20 [ICON_Culture] Culture for each [ICON_Citizen] Citizen in that city.'),
		('en_US',	'LOC_BELIEF_P0K_CHARITABLE_MISSIONS_NAME',
		'Charitable Missions'),
		('en_US',	'LOC_BELIEF_P0K_CHARITABLE_MISSIONS_DESCRIPTION',
		'Upon using a [ICON_Religion] Religious unit to convert a city''s [ICON_Religion] Religion for the first time, receive +50 [ICON_Gold] Gold for each [ICON_Citizen] Citizen in that city.');