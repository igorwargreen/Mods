-- Suk_MonumentValley_CoreFunctions
-- Author: Sukrit
-- DateCreated: 8/29/2017 12:08:51 AM
--===========================================================================
-- Cache Monument Valley and its adjacent tiles
--===========================================================================
	local m_MonumentValleyIndex = GameInfo.Features.FEATURE_SUK_MONUMENTVALLEY.Index
	local m_MAP_WIDTH, m_MAP_HEIGHT = Map.GetGridSize()

	local tMonumentValley = Game:GetProperty("Suk_MonumentValleyPlots") or {}
	if not tMonumentValley then return end -- This map has been processed and there was not Monument Valley

	--------------------------------------
	-- If there are fewer than 1 rows then we haven't processed the map.
	--------------------------------------
	if #tMonumentValley < 1 then
		for iY = 0, m_MAP_HEIGHT - 1 do
			for iX = 0, m_MAP_WIDTH - 1 do

				local iPlot			= iY * m_MAP_WIDTH + iX
				local pPlot			= Map.GetPlotByIndex(iPlot)

				--------------------------------------
				-- This Plot is Monument Valley
				--------------------------------------
				if pPlot:GetFeatureType() == m_MonumentValleyIndex then
					--------------------------------------
					-- Initialise a new row
					--------------------------------------
					local tRow = {
						PlotID			= iPlot,
						AdjacentPlots	= {},
					}
					--------------------------------------
					-- Get Adjacent Tiles
					--------------------------------------
					for dx = -1, 1, 1 do
						for dy = -1, 1, 1 do
							local pOtherPlot = Map.GetPlotXYWithRangeCheck(iX, iY, dx, dy, 1);
							if(pOtherPlot and pOtherPlot:GetFeatureType() ~= m_MonumentValleyIndex) then
								table.insert(tRow.AdjacentPlots, pOtherPlot:GetIndex())
							end
						end
					end
					--------------------------------------
					--------------------------------------
					table.insert(tMonumentValley, tRow)
				end
				--------------------------------------
				--------------------------------------
			end
		end

		if #tMonumentValley < 1 then
			Game:SetProperty("Suk_MonumentValleyPlots", false)
			return
		else
			Game:SetProperty("Suk_MonumentValleyPlots", tMonumentValley)
		end
	end
--===========================================================================
-- Mark Adjacent Plot when incorporated into a national park
--===========================================================================
	function UpdateAdjacentPlots()

		local tPlots = {}

		for _, tRow in pairs(tMonumentValley) do
			local iPlot = tRow.PlotID
			local pPlot	= Map.GetPlotByIndex(iPlot)
			local bIsNationalPark = pPlot:IsNationalPark()

			for _,iLoopPlots in pairs(tRow.AdjacentPlots) do
				tPlots[iLoopPlots] = tPlots[iLoopPlots] or 0
				if bIsNationalPark then
					tPlots[iLoopPlots] = tPlots[iLoopPlots] + 1
				end
			end
		end

		for iPlot, iValue in pairs(tPlots) do
			local pPlot	= Map.GetPlotByIndex(iPlot)
			pPlot:SetProperty("Suk_Next_To_MonumentValley_Park", iValue)
		end
	end

	Events.NationalParkAdded.Add(UpdateAdjacentPlots);
	Events.NationalParkRemoved.Add(UpdateAdjacentPlots);
--===========================================================================
-- Mark Players who own a Momument Valley Tile that is also a national park
--===========================================================================
	function UpdatePlayers()

		local tPlayers = {}

		for _, tRow in pairs(tMonumentValley) do
			local iPlot = tRow.PlotID
			local pPlot	= Map.GetPlotByIndex(iPlot)
			local bIsNationalPark = pPlot:IsNationalPark()

			if bIsNationalPark then
				local iOwner = pPlot:GetOwner()
				tPlayers[iOwner] = tPlayers[iOwner] or 0
				if bIsNationalPark then
					tPlayers[iOwner] = tPlayers[iOwner] + 1
				end
			end
		end

		local tMajorPlayers = PlayerManager.GetAliveMajors();
		for _, pPlayer in ipairs(tMajorPlayers) do
			local iPlayer = pPlayer:GetID()
			local pCaptial = pPlayer:GetCities():GetCapitalCity()

			if pCaptial then
				local iValue = tPlayers[iPlayer] or 0
				pCaptial:GetPlot():SetProperty("Suk_Owns_MonumentValley_Park", iValue)
			end
		end
	end

	GameEvents.CityBuilt.Add(UpdatePlayers)
	Events.CityRemovedFromMap.Add(UpdatePlayers)
	Events.NationalParkAdded.Add(UpdatePlayers)
	Events.NationalParkRemoved.Add(UpdatePlayers)
--===========================================================================
--===========================================================================