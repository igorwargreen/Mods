-- Port Lime - K Ataturk - DiploText
-- Author: Lime
-- DateCreated: 6/12/2023 9:10:18 PM
--------------------------------------------------------------
--==========================================================================================================================
--	AGENDA	================================================================================================================
--==========================================================================================================================
--	Agenda: Dictates of Truth
--		Likes Civilizations that focus on Culture or Science instead of Faith. Hates 
--		anyone trying to spread their Religion into his nation.
--
-- https://www.allaboutturkey.com/ataturk-quotes.html
-- https://en.m.wikiquote.org/wiki/Mustafa_Kemal_Atat%C3%BCrk
-- https://m.imdb.com/name/nm1130855/quotes/ 
--
----------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
		(Language, Tag,	Text)
VALUES	("en_US", 
		"LOC_AGENDA_LIME_TURKEY_K_ATATURK_DICTATES_NAME",					
		"Six Arrows"),
		("en_US", 
		"LOC_AGENDA_LIME_TURKEY_K_ATATURK_DICTATES_DESC",					
		"Likes Civilizations that focus on Science and Culture instead of Faith. Dislikes Civilizations trying to spread their Religion to his nation."),
		
		-- Kudos
		("en_US", 
		"LOC_DIPLO_MODIFIER_EXIT_LEADER_LIME_TURKEY_K_ATATURK_AGENDA_POS",					
		"Kemal Atatürk likes those who see the triumph of reason over tradition."),
		("en_US", 
		"LOC_DIPLO_KUDO_EXIT_LEADER_LIME_TURKEY_K_ATATURK_ANY",
		"Your moral heritage is science and reason. What I have done and intend to do for the Turkish nation matches what you have done with yours."),
		("en_US", 
		"LOC_DIPLO_MODIFIER_LEADER_LIME_TURKEY_K_ATATURK_ANY",
		"(You are advanced in Science or Culture, not allowing primitive belief to hold you back.)"),

		-- Warnings
		("en_US", 
		"LOC_DIPLO_MODIFIER_EXIT_LEADER_LIME_TURKEY_K_ATATURK_AGENDA_NEG",					
		"Kemal Atatürk dislikes those trying to spread their dogma to his enlightened people."),
		("en_US", 
		"LOC_DIPLO_WARNING_EXIT_LEADER_LIME_TURKEY_K_ATATURK_ANY",
		"One is a weak ruler who needs religion to uphold his government; it is as if you would catch your own people in a trap."),
		("en_US", 
		"LOC_DIPLO_MODIFIER_LEADER_LIME_TURKEY_K_ATATURK_MOD_ANY",
		"(You have converted his cities.)");

--------------------------------------------------------------------
-- Random Agendas
--------------------------------------------------------------------
INSERT OR REPLACE INTO LocalizedText
		(Language, Tag,	Text)
VALUES	--1. AGENDA_AIRPOWER: Tries to build up air power. Admires civilizations with greater air power. Dislikes civilizations with weaker air power.
		--TRAIT_AGENDA_PREFER_AIRPOWER
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_AIRPOWER",
		"The future is in the skies."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_LOW_AIRPOWER",
		"In the future everything will be done from the sky. All wars and civilizations will be in the skies above. That's why you must give great importance to an air force. "),
		
		--2. AGENDA_CITY_STATE_ALLY: Likes civilizations that aren't competing for the same city-state allegiance. Dislikes civilizations that are directly competing for city-state allegiance.
		--TRAIT_AGENDA_CITY_STATE_ALLY
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_AGENDA_MODIFIER_NOT_COMPETING_MINORS",
		"Turkey thanks you for respecting the sovereignty of other nations, no matter how small."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_MODIFIER_COMPETING_MINORS",
		"Your attempts to influence even the smallest polities show your true intent: tyranny and injustice."),
		
		--3. AGENDA_CITY_STATE_PROTECTOR: Emphasizes protectorate wars. Admires civilizations that start protectorate wars. Dislikes civilizations that attack city-states.
		--TRAIT_AGENDA_PREFER_CITY_STATE_PROTECTOR
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_PROTECT_CITY_STATES",
		"Mankind is a single body and each nation, no matter how small, a part of that body. You have done an admirable job preserving the health of our global civilization."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_ATTACK_CITY_STATES",
		"Unless your nation faces peril, war is murder."),
		
		--4. AGENDA_CIVILIZED: Hates barbarians. Likes civilizations that clear out barbarian outposts. Does not like civilizations that ignore barbarian outposts.
		--TRAIT_AGENDA_PREFER_CLEAR_BANDIT_CAMPS
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_CLEARS_BARBARIAN_CAMPS",
		"You have fought and won the biggest battle: that against ignorance and savagery."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_IGNORES_BARBARIAN_CAMPS",
		"The truest, most real order is the order of civilization. But you have permitted the disease of barbarism to fester."),
		
		--5. AGENDA_CULTURED: Tries to build up Culture, and likes civilizations that also focus on Culture.
		--TRAIT_AGENDA_PREFER_CULTURE
		/*("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_CULTURE",
		""),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_LOW_CULTURE",
		""),*/
		
		--6. AGENDA_DARWINIST: Believes in survival of the fittest. Likes civilizations that are at war.
		--TRAIT_AGENDA_ENJOYS_WAR
		("en_US",  --?
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_DARWINIST",
		"Your army is filled with proven soldiers, and for it your people are safe from all threat."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_DARWINIST",
		"Sovereignty and kingship are never decided by academic debate. They are seized by force."),
		
		--7. AGENDA_DEMAGOGUE: Wants to be the civilization earning the most Diplomatic Favor, dislikes those who compete in Diplomatic Favor.
		--TRAIT_AGENDA_PREFER_NOFAVOR
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_FAVOR",
		"Turkey thanks you for respecting the sovereignty of our nation and others."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_LOW_FAVOR",
		"Your government is flawed, and results in a lack of freedom for your people. Turkey will not tolerate your efforts for political domination."),
		
		--8. AGENDA_DESTINATION_CIV: Wants to be the civilization with the most Tourism Tourism, dislikes those who compete in Tourism Tourism.
		--TRAIT_AGENDA_PREFER_NOTOURISM
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_TOURISM",
		"Your people are welcomed guests in Anatolian resorts. We hope to see them continue to visit."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_LOW_TOURISM",
		"Cultural imperialism will not be tolerated any more than military imperialism."),
		
		--9. AGENDA_DEVOUT: Tries to build up Faith, and likes civilizations that also focus on Faith.
		--TRAIT_AGENDA_PREFER_FAITH
		/*("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_FAITH",
		""),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_LOW_FAITH",
		""),*/
		
		--10. AGENDA_ENVIRONMENTALIST: Builds National Parks, doesn't clear features, plants forests. Likes civilizations that plant forests or found National Parks. Dislikes civilizations that clear features.
		--TRAIT_AGENDA_PREFER_ENVIRONMENT
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_ENVIRONMENT",
		"The people deserve an environment, unblemished and unmarred. Thank you for contributing in the preservation of this treasure for all peoples."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_ENVIRONMENT",
		"Your nation, in its efforts to industrialize, have polluted the biosphere for all others."),
		
		--11. AGENDA_EXPANSIONIST: Tries to include as much territory as possible in their empire. Does not like civilizations who control little territory.
		--TRAIT_AGENDA_EXPANSIONIST
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_EXPANSIONIST",
		"Your nation has blossomed thanks to the triumph of your strong leadership. "),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_EXPANSIONIST",
		"If you do not intend to fight for your people, to get them all that they need to flourish, then you have truly failed as a leader."), 
		
		--12. AGENDA_EXPLOITATIVE: Clears all features and improves all possible tiles. Likes civilizations with a high percentage of improved tiles. Dislikes civilizations with low percentage of improved tiles or that found National Parks.
		--TRAIT_AGENDA_PREFER_EXPLOITATION
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_EXPLOITATIVE",
		"The people of your nation have seized the opportunity that has been given to them - Turkey will not stand in their way."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_EXPLOITATIVE",
		"I shall make it possible for the Turkish nation to acquire the necessary resources and means for her to live in nation-wide prosperity. There is no room for your sentimentality in this goal."),
		
		--13. AGENDA_EXPLORER: Tries to explore the map, and likes civilizations that have explored less of the map than itself and dislikes civilizations that have explored more of the map than itself.
		--TRAIT_AGENDA_EXPLORATION_OBSESSED
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_LOW_EXPLORATION",
		"You have understood the true triumph: the exploration and the enrichment of the minds of a people, not unliving tracts of land."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_EXPLORATION",
		"You are a foolish leader; you have rushed to the edge of the map, while your people remain there in the middle."),
		
		--14. AGENDA_FLAT_EARTHER: Wants to block humankind from circumnavigating the globe or going into space.
		--TRAIT_AGENDA_FLAT_EARTHER
		/*("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_FLAT_EARTHER",
		""),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_FLAT_EARTHER",
		""),*/
		
		--15. AGENDA_FUN_LOVING: Tries to make the citizens in each city as happy as possible. Likes civilizations that also develop in this fashion.
		--TRAIT_AGENDA_PREFER_HAPPINESS
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_FUN_LOVING",
		"Our great shared ideal is to raise our nations to the highest standard of civilization and prosperity."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_FUN_LOVING",
		"The people of your nation live in squalor, and have been mistreated under your rule."),
		
		--16. AGENDA_GOSSIP: Wants to know everything about everyone.
		--TRAIT_AGENDA_GOSSIP
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_GOSSIP_POSITIVE",
		"You have built a respectable intelligence apparatus. I intend to build one in Turkey in its image."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_GOSSIP_NEGATIVE",
		"In neglecting your corps of intelligencers, you have left your army blind to threats inside and abroad."),
		
		--17. AGENDA_GREAT_PERSON_ADVOCATE: Likes civilizations who are not competing for Great People, and will recruit Great People whenever possible. Dislikes losing a Great Person to another civilization.
		--TRAIT_AGENDA_GREAT_PERSON_ADVOCATE
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_MODIFIER_GREAT_PERSON_ADVOCATE_LAG",
		"In Turkey, I have built an army of teachers, statesmen, economists, and artists. They shall fight against ignorance, not only in Turkey but against the ignorance of the world."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_MODIFIER_GREAT_PERSON_ADVOCATE_LEAD",
		"This continued plundering of Turkish intellect will not be tolerated."),
		
		--18. AGENDA_GREAT_WHITE_FLEET: Builds a strong navy and respects civilizations who follow their lead. Does not like civilizations with a weak navy.
		--TRAIT_AGENDA_GREAT_WHITE_FLEET
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_GREAT_WHITE_FLEET",
		"The Turkish navy is the model of any armed force - any except for yours, which stands proud in its own right."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_GREAT_WHITE_FLEET",
		"A heroic and well-provisioned navy is vital for the preservation of a people. You must do better for them."),

		--19. AGENDA_IDEOLOGUE: Favors civilizations with the same type of government, dislikes civilizations that have different governments, and really dislikes civilizations with different governments of the same era as its own.
		--TRAIT_AGENDA_PREFER_SAME_GOVERNMENT
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_SAME_GOVERNMENT",
		"Ours are fully democratic governments. In our language, we call them the people's governments."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_DIFFERENT_GOVERNMENT",
		"The form of government you have chosen is despotic - it is fundamentally flawed. Any logic will make this evident."),
		
		--20. AGENDA_INDUSTRIALIST: Tries to build up industry, and likes civilizations that also focus on Production.
		--TRAIT_AGENDA_PREFER_INDUSTRY
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_INDUSTRY",
		"The Turkish people admire the industries you have built in your nation."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_LOW_INDUSTRY",
		"Your nation lacks any industrious quality to speak of. Therefore, you must work to cultivate it."), 
		
		--21. AGENDA_INTOLERANT: Likes civilizations who follow the same Religion, and wants their cities to all follow the same Religion. Hates anyone trying to spread their Religion into their empire.
		--TRAIT_AGENDA_INTOLERANT
		/*("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_INTOLERANT_SAME_RELIGION",
		""),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_INTOLERANT_ENCROACHING_RELIGIONT",
		"Those who use religion for their own benefit are detestable. It is against just such people, people like you, that we will always fight."),*/
		
		--22. AGENDA_LIBERTARIAN: Dislikes any civilization who makes a strong attempt to win a Diplomatic Victory.
		--TRAIT_AGENDA_PREFER_NODIPLOVP
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_DIPLOVP",
		"I am happy to see that your nation has not interfered with the sane reason or liberty of its fellow nations."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_LOW_DIPLOVP",
		"I have been able to teach many things to the Turkish nation, but I will never teach how to your lackeys."),
		
		--23. AGENDA_MONEY_GRUBBER: Tries to have the highest possible Gold per turn income. Respects other high income civilizations.
		--TRAIT_AGENDA_PREFER_INCOME
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_MONEY_GRUBBER",
		"You have attached the highest importance to the national economy, for the benefit of your nation."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_MONEY_GRUBBER",
		"You must put your full energies towards your economy in order to raise your nation to a worthy level."),
		
		--24. AGENDA_NUKE_LOVER: Has no hesitation to use nuclear weapons. Respects other civilizations that project strength with nuclear weapons.
		--TRAIT_AGENDA_PREFER_NUKES
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_NUKE_LOVE",
		"A true leader must make use of every resource for the sake of preserving their nation. I am happy to see that another true leader lives at the same time as I."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_LOW_NUKE_LOVE",
		"Weakness will not allow your people to endure, it must be quashed with resolve and a willingness to do whatever is necessary."),
		
		--25. AGENDA_PARANOID: Likes civilizations who pose no threat. Dislikes civilizations with strong militaries or ones with nearby cities.
		--TRAIT_AGENDA_PARANOID
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_PARANOID",
		"Your army exists, as it should, only as a guardian of your people's ideals and to safeguard against instability. It will never participate in imperial follies."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_PARANOID",
		"Know this: my nation will always make the final sacrifice for life and freedom. It will never be beaten. It will always be free."),
		
		--26. AGENDA_PILLAGER: Tries to pillage as many tiles as possible. Respects other civilizations who pillage.
		--TRAIT_AGENDA_PREFER_PILLAGE
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_PILLAGE",
		"War is truly hellish. This is a reality."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_LOW_PILLAGE",
		"In war, a leader must be willing to walk and jump over corpses, and do whatever it takes to preserve their people. You must build your discipline, for the sake of your nation."),
		
		--27. AGENDA_POPULOUS: Tries to have the highest overall population. Respects other high population civilizations.
		--TRAIT_AGENDA_PREFER_POPULATION
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_POPULOUS",
		"Your people is vast in number, and strong in spirit, morals, and ideals."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_POPULOUS",
		"The growth of a nation is a fundamental responsibility of leadership. You must do better."),
		
		--28. AGENDA_STANDING_ARMY: Always tries to keep a large standing army. Respects other civilizations with large armies.
		--TRAIT_AGENDA_PREFER_STANDING_ARMY
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_STANDING_ARMY",
		"You have given much deserved attention to developing a disciplined army for the defense of your sacred lands. Rightfully so."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_LOW_STANDING_ARMY",
		"It is necessary to develop a strong army in order to safeguard your country and give happiness to your people."),
		
		--29. AGENDA_SYCOPHANT: Impressed by any civilization that earns a Golden Age.
		--TRAIT_AGENDA_SYCOPHANT
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_SYCOPHANT_GOLDEN_AGE",
		"The torch of science and culture that you hold will surely light this age for your civilization."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_SYCOPHANT_DARK_AGE",
		"You have succumbed to a plague of backwardsness and superstition. We Turks will never approve."),
		
		--30. AGENDA_SYMPATHIZER: Likes civilizations who pose no threat. Dislikes civilizations with strong militaries or ones with nearby cities.
		--TRAIT_AGENDA_SYMPATHIZER
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_SYMPATHIZER_DARK_AGE",
		"Your nation will overcome the hardship that it faces - I can see it, in the national unity and togetherness you have created."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_SYMPATHIZER_GOLDEN_AGE",
		"The age you have built rests upon an ideological foundation that has not been maintained. I can only hope that its collapse will be mitigated."),
		
		--31. AGENDA_TECHNOPHILE: Favors Science development. Dislikes civs who are behind technologically.
		--TRAIT_AGENDA_PREFER_SCIENCE
		/*("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_HIGH_SCIENCE",
		""),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_TECHNOPHILE",
		""),*/

		--32. AGENDA_TURTLER: Wants to stay safe from conquest. Dislike those who have conquered other players' original capitals.
		--TRAIT_AGENDA_TURTLER
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_TURTLER",
		"You have respected the rights and independence of nations the world over. Turkey thanks you."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_TURTLER",
		"Every nation as the right to demand proper treatment and no country should violate the territory of any other country."),

		--33. AGENDA_WONDER_ADVOCATE: Likes civilizations not competing for wonders, and builds wonders whenever possible. Dislikes losing a wonder to another civilization.
		--TRAIT_AGENDA_WONDER_ADVOCATE
		("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_WONDER_ADVOCATE",
		"The many wonders of the Turkish nation represent our spirit, our ideals, and our character. You must come and see them, one day."),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_WONDER_ADVOCATE",
		"Why do you labor to build monuments? Those efforts could have been used to build an army of teachers and artists.");

		--34. AGENDA_ZEALOT: Tries to gain a Religious Victory. Likes those civs who have already adopted their religion.
		--TRAIT_AGENDA_ZEALOT
		/*("en_US", 
		"LOC_DIPLO_KUDO_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_ZEALOT",
		""),
		("en_US", 
		"LOC_DIPLO_WARNING_LEADER_LIME_TURKEY_K_ATATURK_REASON_AGENDA_ZEALOT",
		"");*/

--==================================================================
-- Early Meetings
--==================================================================
INSERT OR REPLACE INTO LocalizedText
		(Language, Tag,	Text)
VALUES	-- First AI Line
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"On behalf of the people of Turkey, I welcome you to her. I am President Kemal Atatürk, the protector and teacher of her people."),
		
		-- AI invitation to visit nearby City
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"You are cordially invited to see our nearby city."),
		
		-- AI accepts Human invitation
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"We accept."),
		
		-- AI invitation to exchange Capital Information
		("en_US", 
		"LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"The Grand National Assembly of Turkey invites you to an audience."),
		
		-- AI sends a Delegation
		("en_US", 
		"LOC_DIPLO_DELEGATION_FROM_AI_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Turkey has sent a customary offering - please, enjoy the Rak?."),
		
		-- AI accepts the Player's Delegation
		("en_US", 
		"LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"An embassy shall be opened for your people in Ankara."),
		
		-- AI rejects the Player's Delegation
		("en_US", 
		"LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Your envoys will not be permitted."),

--------------------------------------------------------------------
-- Open Borders
--------------------------------------------------------------------
		-- AI Proposes Open Borders
		("en_US", 
		"LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"It is in the national interest of cooperation that we open our borders."),
		-- AI Accepts Open Borders
		("en_US", 
		"LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"We must agree."),
		-- AI Rejects Open Borders
		("en_US", 
		"LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Turkey is the very embodiment of independence, and will not accept foreign armies upon her soil."), 

--------------------------------------------------------------------
-- Friendship
--------------------------------------------------------------------
		-- AI Proposes Friendship
		("en_US", 
		"LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"It is in the interests of Turkey that I must ask for a public declaration of friendship."),
		-- AI Accepts Friendship
		("en_US", 
		"LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"You have proven yourself a friend to the Turkish people."),
		-- AI Rejects Friendship
		("en_US", 
		"LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"No, it is not acceptable."),

--------------------------------------------------------------------
-- Denounce
--------------------------------------------------------------------
		-- AI Denounced by Human
		("en_US", 
		"LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Your opinions mean little - they are those of an imperialist and an oppressor."),
		-- AI Denounces
		("en_US", 
		"LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"You are a weak, irrational ruler. Neither the world nor your own people will suffer you for long. (Denounces You)"),
		
--------------------------------------------------------------------
-- Trade Agreement with England
--------------------------------------------------------------------
		-- AI Accepts Deal
		("en_US", 
		"LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"The Turkish people would benefit."),
		-- AI Rejects Deal
		("en_US", 
		"LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Turkey will accept no deal that infringes on its rights."),

--------------------------------------------------------------------
-- Other Diplo
--------------------------------------------------------------------
		-- AI Proposes Alliance
		("en_US", 
		"LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Mankind is a single body and each nation a part of that body. Therefore, an alliance is in order."),
		
		-- AI warns player for border troops
		("en_US", 
		"LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Your imperialist forces are infringing on the sovereignty of Turkey. Remove them, or suffer the consequences."),

--------------------------------------------------------------------
-- War and Peace
--------------------------------------------------------------------
		-- Human declares war to the AI
		("en_US", 
		"LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Not even an inch of the motherland may be abandoned without being soaked in the blood of her citizens. Liberty or death!"),
		
		-- AI declares war to Human
		("en_US", 
		"LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Turkey has never lived without freedom, cannot and never will. It is for this reason that her army shall defeat you now."),
		
		-- AI accepts peace from Human
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Peace at home, peace in the world."),
		-- AI rejects peace from Human
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"We will accept no treaty that infringes on the sovereignty of the Turkish people."),
		-- AI asks for peace
		("en_US", 
		"LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"We seek a lasting peace, to improve the lot of both our people."),
		
		-- AI defeats human (hotseat)
		("en_US", 
		"LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Victory is mine."),
		
		-- AI is defeated
		("en_US", 
		"LOC_DIPLO_DEFEAT_FROM_AI_LEADER_LIME_TURKEY_K_ATATURK_ANY",					
		"Though the fortresses of our beloved homeland are all captured, my teachings will live on. One day, a new generation of Turks will be free.");
