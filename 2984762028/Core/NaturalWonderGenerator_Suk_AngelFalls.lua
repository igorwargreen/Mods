-- NaturalWonderGenerator_Suk_AngelFalls
--------------------------------------------------------------
-- Angel Falls
--------------------------------------------------------------
g_CustomPlacements["PLACEMENT_SUK_ANGELFALLS"] = function(pPlot, eFeatureType, aPlots)

	if pPlot:IsRiver() then return end

	local pNEPlot	= Map.GetAdjacentPlot(pPlot:GetX(), pPlot:GetY(), DirectionTypes.DIRECTION_NORTHEAST)
	local pNWPlot	= Map.GetAdjacentPlot(pPlot:GetX(), pPlot:GetY(), DirectionTypes.DIRECTION_NORTHWEST)
	local pSWPlot	= Map.GetAdjacentPlot(pPlot:GetX(), pPlot:GetY(), DirectionTypes.DIRECTION_SOUTHWEST)
	local pSEPlot	= Map.GetAdjacentPlot(pPlot:GetX(), pPlot:GetY(), DirectionTypes.DIRECTION_SOUTHEAST)

	-- It can't spawn on the edge of the map
	if not(pNEPlot and pNWPlot and pSWPlot and pSEPlot) then return end

	-- Tiles to the north must be mountains without rivers
	-- Also no volcanoes if playing with Gathering Storm
	for _, pNorthPlot in pairs({pNEPlot, pNWPlot}) do
		if not pNorthPlot:IsMountain() then return end
		if pNorthPlot:IsRiver() then return end

		if MapFeatureManager.IsVolcano then
			if MapFeatureManager.IsVolcano(pNorthPlot) then return end
		end
	end

	-- Tiles to the south must not be water or mountains
	for _, pSouthPlot in pairs({pSWPlot, pSEPlot}) do
		if pSouthPlot:IsMountain() then return end
		if pSouthPlot:IsWater() then return end
	end

	return true
end
--------------------------------------------------------------
--------------------------------------------------------------
