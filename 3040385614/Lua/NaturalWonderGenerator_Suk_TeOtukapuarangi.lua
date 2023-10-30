-- NaturalWonderGenerator_Suk_TeOtukapuarangi
--------------------------------------------------------------
-- Te Otukapuarangi
--------------------------------------------------------------
g_CustomPlacements["PLACEMENT_SUK_TE_OTUKAPUARANGI"] = function(pPlot, eFeatureType, aPlots)

	local pWPlot  = Map.GetAdjacentPlot(pPlot:GetX(), pPlot:GetY(), DirectionTypes.DIRECTION_WEST)
	local pNEPlot = Map.GetAdjacentPlot(pPlot:GetX(), pPlot:GetY(), DirectionTypes.DIRECTION_NORTHEAST)
	local pSEPlot = Map.GetAdjacentPlot(pPlot:GetX(), pPlot:GetY(), DirectionTypes.DIRECTION_SOUTHEAST)

	if pWPlot and TerrainBuilder.CanHaveFeature(pWPlot, eFeatureType, true) then
		table.insert(aPlots, pWPlot:GetIndex())
		return true
	end
	if pNEPlot and TerrainBuilder.CanHaveFeature(pNEPlot, eFeatureType, true) then
		table.insert(aPlots, pNEPlot:GetIndex())
		return true
	end


	-- Disabled, the wonder is rotated wrong in this config.

	-- if pSEPlot and TerrainBuilder.CanHaveFeature(pSEPlot, eFeatureType, true) then
	-- 	table.insert(aPlots, pSEPlot:GetIndex())
	-- 	return true
	-- end

	return false
end
--------------------------------------------------------------
--------------------------------------------------------------