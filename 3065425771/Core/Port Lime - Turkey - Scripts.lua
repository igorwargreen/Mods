-- Port Lime - Turkey - UA Functions
-- Author: Lime
-- DateCreated: 10/24/2023 6:41:18 PM
--------------------------------------------------------------
function C15_GetValidTraitPlayersNew(sTrait)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.LeaderTraits() do
            if trait.LeaderType == leaderType and trait.TraitType == sTrait then 
                tValid[v] = true 
            end;
        end
        if not tValid[v] then
            local civType = PlayerConfigurations[v]:GetCivilizationTypeName()
            for trait in GameInfo.CivilizationTraits() do
                if trait.CivilizationType == civType and trait.TraitType == sTrait then 
                    tValid[v] = true 
                end;
            end
        end
    end
    return tValid
end

--	UA: The People's Homes
--		Completing an Encampment, Campus, or Theatre Square project grants +2 Production, Science, 
--		or Culture respectively to adjacent farms. Farms may be affected by each of these once, and
--		one additional time for every building the district has.

local tValidPlayersUA = C15_GetValidTraitPlayersNew("TRAIT_CIVILIZATION_LIME_TURKEY_HALK_EVLER")
local tFarm = GameInfo.Improvements["IMPROVEMENT_FARM"].Index

local iEncampment = GameInfo.Districts["DISTRICT_ENCAMPMENT"].Index
local iCampus = GameInfo.Districts["DISTRICT_CAMPUS"].Index
local iTheatre = GameInfo.Districts["DISTRICT_THEATER"].Index

local iBarracks	  = GameInfo.Buildings["BUILDING_BARRACKS"].Index
local iStable	  = GameInfo.Buildings["BUILDING_STABLE"].Index
local iArmory	  = GameInfo.Buildings["BUILDING_ARMORY"].Index
local iAcademy	  = GameInfo.Buildings["BUILDING_MILITARY_ACADEMY"].Index

local iLibrary	  = GameInfo.Buildings["BUILDING_LIBRARY"].Index
local iUniversity = GameInfo.Buildings["BUILDING_UNIVERSITY"].Index
local iLab		  = GameInfo.Buildings["BUILDING_RESEARCH_LAB"].Index

local iAmphi	  = GameInfo.Buildings["BUILDING_AMPHITHEATER"].Index
local iMuseumArt  = GameInfo.Buildings["BUILDING_MUSEUM_ART"].Index
local iMuseumArti = GameInfo.Buildings["BUILDING_MUSEUM_ARTIFACT"].Index
local iRadio	  = GameInfo.Buildings["BUILDING_BROADCAST_CENTER"].Index

local sEncampmentProject = "PROJECT_ENHANCE_DISTRICT_ENCAMPMENT"
local sCampusProject = "PROJECT_ENHANCE_DISTRICT_CAMPUS"
local sTheatreProject = "PROJECT_ENHANCE_DISTRICT_THEATER"

local iEncampmentProject = GameInfo.Projects[sEncampmentProject].Index
local iCampusProject = GameInfo.Projects[sCampusProject].Index
local iTheatreProject = GameInfo.Projects[sTheatreProject].Index

local sProjectProperty = "Lime_Turkey_ProjectLive"
local nBurst = 20
local nMod = GameInfo.GameSpeeds[GameConfiguration.GetGameSpeedType()].CostMultiplier/100

function LimeTurkey_BuildingBurst(playerID, cityID, buildingID, plotID, isOriginalConstruction)
	if not isOriginalConstruction then return end
	if not tValidPlayersUA[playerID] then return end
--	print("Player has the Turkish UA")

	local turkPlayer = Players[playerID]
	local city = turkPlayer:GetCities():FindID(cityID)

	if not city then return end

	if buildingID == (iBarracks or iStable or iArmory or iAcademy) then
		local disPlot = city:GetDistricts():GetDistrict(iEncampment)
	--	print("was an encampment building!")
		if disPlot then
			local disPlotX = disPlot:GetX()
			local disPlotY = disPlot:GetY()
			local farmCounter = 0
			for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES-1, 1 do
				local pAdjPlot = Map.GetAdjacentPlot(disPlotX, disPlotY, direction)
		--		print("plotFound")
				if pAdjPlot then
			--		print("Plot exists!")
					if pAdjPlot:GetImprovementType() == tFarm then
						farmCounter = farmCounter + 1
					end
				end
			end
--			print("count = " .. farmCounter)
			
			if farmCounter == 0 then return end
			
			local nBonus = math.floor(0.7 * farmCounter * nMod * nBurst)
			
			turkPlayer:GetTechs():ChangeCurrentResearchProgress(nBonus)
			Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_SCIENCE]+" .. nBonus .. " [ICON_SCIENCE][ENDCOLOR]"), disPlotX, disPlotY)
			turkPlayer:GetCulture():ChangeCurrentCulturalProgress(nBonus)
			Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_CULTURE]+" .. nBonus .. " [ICON_CULTURE][ENDCOLOR]"), disPlotX, disPlotY)
		end
	end

	if buildingID == (iLibrary or iUniversity or iLab) then
		local disPlot = city:GetDistricts():GetDistrict(iCampus)
	--	print("was a campus building!")
		if disPlot then
			local disPlotX = disPlot:GetX()
			local disPlotY = disPlot:GetY()
			local farmCounter = 0
			for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES-1, 1 do
				local pAdjPlot = Map.GetAdjacentPlot(disPlotX, disPlotY, direction)
		--		print("plotFound")
				if pAdjPlot then
			--		print("Plot exists!")
					if pAdjPlot:GetImprovementType() == tFarm then
						farmCounter = farmCounter + 1
					end
				end
			end
--			print("count = " .. farmCounter)
			
			if farmCounter == 0 then return end

			local nBonus = math.floor(1.0 * farmCounter * nMod * nBurst)
			
			turkPlayer:GetTechs():ChangeCurrentResearchProgress(nBonus)
			Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_SCIENCE]+" .. nBonus .. " [ICON_SCIENCE][ENDCOLOR]"), disPlotX, disPlotY)
		end
	end

	if buildingID == (iAmphi or iMuseumArt or iMuseumArti or iRadio) then
		local disPlot = city:GetDistricts():GetDistrict(iTheatre)
	--	print("was a theatre building!")
		if disPlot then
			local disPlotX = disPlot:GetX()
			local disPlotY = disPlot:GetY()
			local farmCounter = 0
			for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES-1, 1 do
				local pAdjPlot = Map.GetAdjacentPlot(disPlotX, disPlotY, direction)
		--		print("plotFound")
				if pAdjPlot then
			--		print("Plot exists!")
					if pAdjPlot:GetImprovementType() == tFarm then
						farmCounter = farmCounter + 1
					end
				end
			end
--			print("count = " .. farmCounter)

			if farmCounter == 0 then return end

			local nBonus = math.floor(1.0 * farmCounter * nMod * nBurst)
			
			turkPlayer:GetCulture():ChangeCurrentCulturalProgress(nBonus)
			Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_CULTURE]+" .. nBonus .. " [ICON_CULTURE][ENDCOLOR]"), disPlotX, disPlotY)
		end
	end
end
GameEvents.BuildingConstructed.Add(LimeTurkey_BuildingBurst)

function LimeTurkey_ProjectBurst(playerID, cityID, projectID, buildingIndex, x, y, isCancelled)
	if isCancelled then return end
	if not tValidPlayersUA[playerID] then return end
--	print("Player has the Turkish UA")

	local turkPlayer = Players[playerID]
	local city = turkPlayer:GetCities():FindID(cityID)

	if not city then return end
	
	if projectID == iEncampmentProject then
		local disPlot = city:GetDistricts():GetDistrict(iEncampment)
	--	print("was an encampment project!")
		if disPlot then
			local disPlotX = disPlot:GetX()
			local disPlotY = disPlot:GetY()
			local farmCounter = 0
			for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES-1, 1 do
				local pAdjPlot = Map.GetAdjacentPlot(disPlotX, disPlotY, direction)
		--		print("plotFound")
				if pAdjPlot then
			--		print("Plot exists!")
					if pAdjPlot:GetImprovementType() == tFarm then
						farmCounter = farmCounter + 1
					end
				end
			end
			--print("count = " .. farmCounter)

			if farmCounter == 0 then return end

			local nBonus = math.floor(0.7 * farmCounter * iMod * nBurst)
			
			turkPlayer:GetTechs():ChangeCurrentResearchProgress(nBonus)
			Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_SCIENCE]+" .. nBonus .. " [ICON_SCIENCE][ENDCOLOR]"), disPlotX, disPlotY)
			turkPlayer:GetCulture():ChangeCurrentCulturalProgress(nBonus)
			Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_CULTURE]+" .. nBonus .. " [ICON_CULTURE][ENDCOLOR]"), disPlotX, disPlotY)
		end
	end

	if projectID == iCampusProject then
		local disPlot = city:GetDistricts():GetDistrict(iCampus)
--		print("was a campus project!")
		if disPlot then
			local disPlotX = disPlot:GetX()
			local disPlotY = disPlot:GetY()
			local farmCounter = 0
			for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES-1, 1 do
				local pAdjPlot = Map.GetAdjacentPlot(disPlotX, disPlotY, direction)
	--			print("plotFound")
				if pAdjPlot then
		--			print("Plot exists!")
					if pAdjPlot:GetImprovementType() == tFarm then
						farmCounter = farmCounter + 1
					end
				end
			end
			--print("count = " .. farmCounter)

			if farmCounter == 0 then return end

			local nBonus = math.floor(1.0 * farmCounter * iMod * nBurst)
			
			turkPlayer:GetTechs():ChangeCurrentResearchProgress(nBonus)
			Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_SCIENCE]+" .. nBonus .. " [ICON_SCIENCE][ENDCOLOR]"), disPlotX, disPlotY)
		end
	end

	if projectID == iTheatreProject then
		local disPlot = city:GetDistricts():GetDistrict(iTheatre)
--		print("was a theatre project!")
		if disPlot then
			local disPlotX = disPlot:GetX()
			local disPlotY = disPlot:GetY()
			local farmCounter = 0
			for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES-1, 1 do
				local pAdjPlot = Map.GetAdjacentPlot(disPlotX, disPlotY, direction)
	--			print("plotFound")
				if pAdjPlot then
		--			print("Plot exists!")
					if pAdjPlot:GetImprovementType() == tFarm then
						farmCounter = farmCounter + 1
					end
				end
			end
	--		print("count = " .. farmCounter)
			
			if farmCounter == 0 then return end

			local nBonus = math.floor(1.0 * farmCounter * iMod * nBurst)
			
			turkPlayer:GetCulture():ChangeCurrentCulturalProgress(nBonus)
			Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_CULTURE]+" .. nBonus .. " [ICON_CULTURE][ENDCOLOR]"), disPlotX, disPlotY)
		end
	end	
end
Events.CityProjectCompleted.Add(LimeTurkey_ProjectBurst)

function ProjectProduction_DummyBuilding(playerID)
	--print("Someone is building something or starting a turn")
	local player = Players[playerID]
	local playerConfig = PlayerConfigurations[playerID]
	--TRAIT CHECK
	if not tValidPlayersUA[playerID] then return end
	-- Cities Check
	local playerCities = player:GetCities()
	for _, pCity in playerCities:Members() do
		if pCity ~= nil then
			local pCityBuildings = pCity:GetBuildings();
			local pCurrentBuild = pCity:GetBuildQueue():CurrentlyBuilding()
			--print (pCurrentBuild .. " is being built")
			if pCurrentBuild == ( sEncampmentProject or sCampusProject or sTheatreProject ) then
				--print("A city from the traited player is building a Project")
				local iCityPlot = Map.GetPlot(pCity:GetX(), pCity:GetY());
				iCityPlot:SetProperty(sProjectProperty, 1)
				--print("Property Added to City")
				
			else
				local iCityPlot = Map.GetPlot(pCity:GetX(), pCity:GetY());
				--print("Property Removed from City")
				iCityPlot:SetProperty(sProjectProperty, 0)
			end
		end
	end
end
			
Events.PlayerTurnActivated.Add(ProjectProduction_DummyBuilding);
Events.CityProductionChanged.Add(ProjectProduction_DummyBuilding);
Events.CityProductionCompleted.Add(ProjectProduction_DummyBuilding);

print("Load Successful")