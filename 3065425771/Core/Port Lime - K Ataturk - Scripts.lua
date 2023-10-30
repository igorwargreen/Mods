-- Port Lime - K Ataturk - Scripts
-- Author: Lime
-- DateCreated: 6/12/2023 9:09:36 PM
--------------------------------------------------------------
--	LUA: Hero of Anafartalar
--		Great Generals recruited during wars gain an extra charge. Gain a Governor title when a 
--		Great General is fully expended during peacetime. Has access to the Kuva-yi Milliye 
--		unique unit.

-- doing Governor Title during peacetime with Lua

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

local tValidPlayers = C15_GetValidTraitPlayersNew("TRAIT_LEADER_LIME_TURKEY_K_ATATURK_HERO")
local iGreatGeneral = GameInfo.Units["UNIT_GREAT_GENERAL"].Index

function LimeTurkey_GreatGeneralAddedToMap(playerId, unitId, unitX, unitY) -- stolen shamelessly from iran which itself was stolen shamelessly from Leugi
	local player = Players[playerId]
	if not tValidPlayers[playerID] then return end
	local unit = player:GetUnits():FindID(unitId);
	if unit then
	print(unit:GetType())
	if unit:GetType() ~= iGreatGeneral then return end
	print("it was a great general!")
	if unit:GetGreatPerson() then 
		individual = unit:GetGreatPerson():GetIndividual()
		Game:SetProperty(individual .. "X", unitX)
		--print(individual) -- this isn't printing for this....
		Game:SetProperty(individual .. "Y", unitY)
	end
	end
end
function LimeTurkey_GreatGeneralMoved(playerId, unitId, unitX, unitY, visible, stateChange) -- this too lol
	local player = Players[playerId]													-- even the above comment was shamelessly stolen
	if not tValidPlayers[playerID] then return end
	local unit = player:GetUnits():FindID(unitId);
	if unit then
	if unit:GetType() ~= iGreatGeneral then return end
	print("it was a great general!")
	if unit:GetGreatPerson() then 
		individual = unit:GetGreatPerson():GetIndividual()
		Game:SetProperty(individual .. "X", unitX)
		--print(individual)
		Game:SetProperty(individual .. "Y", unitY)
	end
	end
end
Events.UnitAddedToMap.Add(LimeTurkey_GreatGeneralAddedToMap);
Events.UnitMoved.Add(LimeTurkey_GreatGeneralMoved);

function LimeTurkey_Ataturk_GreatGeneralUsed(playerID, unitID, greatPersonClassID, greatPersonIndividualID)
	local pPlayer = Players[playerID]
	if not tValidPlayers[playerID] then return end
	print(greatPersonIndividualID)

	print("Turkey used a great person!")
	local pUnit = UnitManager.GetUnit(playerID, unitID)

	if pUnit:GetType() ~= iGreatGeneral then return end
	print("it was a great general!")

	if UnitManager.GetUnit(playerID, unitID):GetX() ~= Game:GetProperty(greatPersonIndividualID.."X") then 
		print("it was fully used up!")
		
		print("but is ataturk at war?")

		if IsAtWar(pPlayer) then return	end

		print("he is not!")

		pPlayer:GetGovernors():ChangeGovernorPoints(1)
	end
end
Events.UnitGreatPersonActivated.Add(LimeTurkey_Ataturk_GreatGeneralUsed)

print("Load Successful")

function IsAtWar(self) -- stolen with the help of frankish pirates :yarrsperm:
    local playerDiplo = self:GetDiplomacy()
    for _, playerID in ipairs(PlayerManager.GetWasEverAliveMajorIDs()) do
        if playerDiplo:IsAtWarWith( playerID ) then
            return true
        end
    end
    return false
end