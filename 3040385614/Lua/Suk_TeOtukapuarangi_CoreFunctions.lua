-- Suk_TeOtukapuarangi_CoreFunctions
-- Author: Sukrit
-- DateCreated: 8/29/2017 12:08:51 AM
--===========================================================================
-- Cache Te Otukapuarangi and its adjacent tiles
--===========================================================================
	local m_TeOtukapuarangiIndex = GameInfo.Features.FEATURE_SUK_TE_OTUKAPUARANGI.Index

	local m_NotificationType = GameInfo.Notifications.NOTIFICATION_TE_OTUKAPUARANGI.Index
	local m_NotifTitle	= Locale.Lookup("LOC_RANDOM_EVENT_SUK_TE_OTUKAPUARANGI_NAME")
	local m_NotifCult	= Locale.Lookup("LOC_RANDOM_EVENT_SUK_TE_OTUKAPUARANGI_SCIENCE")
	local m_NotifSci	= Locale.Lookup("LOC_RANDOM_EVENT_SUK_TE_OTUKAPUARANGI_CULTURE")

	g_TeOtukapuarangiTurns = 20
	g_GameSpeedMod = (GameInfo.GameSpeeds[GameConfiguration.GetGameSpeedType()].CostMultiplier)/100
--===========================================================================
-- Modular Functions
--===========================================================================
	function GetRandomTurns(iBase, iVariation)

		-- Saturate iVariation
		iVariation = math.max(0, iVariation)
		iVariation = math.min(1, iVariation)

		-- Get RandomNumber
		local iRand = (Game.GetRandNum(101, "Suk_TeOtukapuarangi")/50) - 1
		iVariation = iVariation * iRand * iBase

		return math.floor((iBase + iVariation) * g_GameSpeedMod + 0.5)
	end

	-- 1 is Science
	-- 0 is Culture + Food
	function ToggleWonderMode(tPlots)
		local iNewMode = -1

		for iPlot,_ in pairs(tPlots) do
			local pPlot	= Map.GetPlotByIndex(iPlot)
			local iMode = pPlot:GetProperty("Suk_TeOtukapuarangi_Mode")
			iMode = (iMode == 1 and 0 or 1) -- flip the current value
			iNewMode = iMode

			pPlot:SetProperty("Suk_TeOtukapuarangi_Mode", iMode)
		end

		return iNewMode
	end

	local eEcstatic = GameInfo.Happinesses.HAPPINESS_ECSTATIC.Index
	function CheckEcstatic(tPlots)
		local tEcstatic = {}
		local tCities = {}

		-- This is set at the City Level
		-- So let's cache the cities we need to check!
		for iPlot,_ in pairs(tPlots) do
			local pCity = Cities.GetPlotWorkingCity(iPlot)
			if pCity then
				tCities[pCity] = true
			end
		end

		for pCity,_ in pairs(tCities) do
			local iHappiness = GetHappinessLevel(pCity)
			local iEcstatic = (iHappiness == eEcstatic) and 1 or 0

			local pPlot = pCity:GetPlot()
			pPlot:SetProperty("Suk_TeOtukapuarangi_Ecstatic", iEcstatic)
		end
	end

	-- pPlot - (Optional) plot object for location associated with notification.
	-- pProperties - (Optional) Additional property table data to be stored in the notification.
	function SendNotification_PlotExtra(eNotificationType, sTitle, sBody, pPlot, iNotifyPlayer, tProperties)
		local tNotificationData = tProperties or {}
		tNotificationData[ParameterTypes.MESSAGE] = sTitle
		tNotificationData[ParameterTypes.SUMMARY] = sBody

		if(pPlot ~= nil) then
			tNotificationData[ParameterTypes.LOCATION] = {x = pPlot:GetX(), y = pPlot:GetY()}
		end

		if(iNotifyPlayer ~= nil) then
			NotificationManager.SendNotification(iNotifyPlayer, eNotificationType, tNotificationData)
		else
			local pAllPlayerIDs = PlayerManager.GetAliveIDs()
			for k, iPlayerID in ipairs(pAllPlayerIDs) do
				NotificationManager.SendNotification(iPlayerID, eNotificationType, tNotificationData)
			end
		end
		return true
	end
--===========================================================================
-- Cache Te Otukapuarangi and its adjacent tiles
--===========================================================================
	local m_MAP_WIDTH, m_MAP_HEIGHT = Map.GetGridSize()

	local tTeOtukapuarangi			= Game:GetProperty("Suk_TeOtukapuarangiPlots") or {}
	if not tTeOtukapuarangi then return end -- This map has been processed and there was not Te Otukapuarangi
	--------------------------------------
	-- If there are fewer than 1 rows then we haven't processed the map.
	--------------------------------------
	if #tTeOtukapuarangi < 1 then
		for iY = 0, m_MAP_HEIGHT - 1 do
			for iX = 0, m_MAP_WIDTH - 1 do

				local iPlot			= iY * m_MAP_WIDTH + iX
				local pPlot			= Map.GetPlotByIndex(iPlot)

				--------------------------------------
				-- This Plot is Te Otukapuarangi
				--------------------------------------
				if pPlot:GetFeatureType() == m_TeOtukapuarangiIndex then
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
							if(pOtherPlot and pOtherPlot:GetFeatureType() ~= m_TeOtukapuarangiIndex) then
								table.insert(tRow.AdjacentPlots, pOtherPlot:GetIndex())
							end
						end
					end
					--------------------------------------
					--------------------------------------
					table.insert(tTeOtukapuarangi, tRow)
				end
				--------------------------------------
				--------------------------------------
			end
		end

		if #tTeOtukapuarangi < 1 then
			Game:SetProperty("Suk_TeOtukapuarangiPlots", false)
			return
		else
			Game:SetProperty("Suk_TeOtukapuarangiPlots", tTeOtukapuarangi)
		end
	end
--===========================================================================
-- Set Plot Properties on tiles adjacent to Te Otukapuarangi
-- Initialise Global Game Properties for Te Otukapuarangi
--===========================================================================
	if not Game:GetProperty("Suk_TeOtukapuarangi_Initialised") then
		-- Calculate how many adjacent Te Otukapuarangis each plot has
		local tPlots = {}
		for _, tRow in pairs(tTeOtukapuarangi) do
			for _,iPlot in pairs(tRow.AdjacentPlots) do
				tPlots[iPlot] = tPlots[iPlot] or 0
				tPlots[iPlot] = tPlots[iPlot] + 1
			end
		end

		local iMode = Game.GetRandNum(2, "Suk_TeOtukapuarangi")
		local iTurns = GetRandomTurns(g_TeOtukapuarangiTurns, 0.25)

		-- Store those values on the plot
		for iPlot, iValue in pairs(tPlots) do
			local pPlot	= Map.GetPlotByIndex(iPlot)
			pPlot:SetProperty("Suk_TeOtukapuarangi",		iValue)
			pPlot:SetProperty("Suk_TeOtukapuarangi_Mode",	iMode)
		end

		Game:SetProperty("Suk_TeOtukapuarangi_Turns", iTurns)
		Game:SetProperty("Suk_TeOtukapuarangi_AdjacentPlots", tPlots)
		Game:SetProperty("Suk_TeOtukapuarangi_Initialised", true)
	end
--===========================================================================
-- Amenity Functions
-- Formulas from here:
	-- https://civilization.fandom.com/wiki/Amenities_(Civ6)#Amenities_Mechanics
--===========================================================================
	function GetAmenitiesNeeded(pCity)
		local iPop	= pCity:GetPopulation()
		return math.ceil(iPop/2)
	end

	function GetHappinessLevel(pCity)
		local iAmenities = pCity:GetGrowth():GetAmenities()
		local iNeeded = GetAmenitiesNeeded(pCity)

		local iDifference = iAmenities - iNeeded

		for tHappiness,_ in GameInfo.Happinesses() do
			local iMin = tHappiness.MinimumAmenityScore or -math.huge
			local iMax = tHappiness.MaximumAmenityScore or math.huge

			if (iDifference >= iMin) and (iDifference <= iMax) then
				return tHappiness.Index
			end
		end

		return -1
	end
--===========================================================================
-- Hook Up Events
--===========================================================================
	function OnCityTileOwnershipChanged(iOwner, iCity, iX, iY)

		local tPlots = Game:GetProperty("Suk_TeOtukapuarangi_AdjacentPlots")
		if not tPlots then
			print("ERROR: There are no Te Otukapuarangi plots???")
			return
		end

		local pPlot = Map.GetPlot(iX, iY)
		local iPlot = pPlot:GetIndex()

		if not tPlots[iPlot] then return end
		CheckEcstatic({[iPlot] = true})
	end

	Events.CityTileOwnershipChanged.Add(OnCityTileOwnershipChanged)

	function OnGameTurnStarted()

		local tPlots = Game:GetProperty("Suk_TeOtukapuarangi_AdjacentPlots")
		if not tPlots then
			print("ERROR: There are no Te Otukapuarangi plots???")
			return
		end

		-- Decrement Turns
		local iTurns = Game:GetProperty("Suk_TeOtukapuarangi_Turns")
		iTurns = iTurns - 1

		local iNewMode = -1

		if iTurns < 0 then
			iNewMode = ToggleWonderMode(tPlots)
			iTurns = GetRandomTurns(g_TeOtukapuarangiTurns, 0.25)
		end
		Game:SetProperty("Suk_TeOtukapuarangi_Turns", iTurns)

		if (iNewMode == 0) or (iNewMode == 1) then
			local iPlot = tTeOtukapuarangi[1].PlotID
			local pPlot = Map.GetPlotByIndex(iPlot)

			local tPlayersToNotify = {}
			for iLoopPlot,_ in pairs(tPlots) do
				local pCity = Cities.GetPlotWorkingCity(iLoopPlot)
				if pCity then
					tPlayersToNotify[pCity:GetOwner()] = true
				end
			end

			for iPlayer, _ in pairs(tPlayersToNotify) do
				SendNotification_PlotExtra(
					m_NotificationType,
					m_NotifTitle,
					(iNewMode == 0) and m_NotifSci or m_NotifCult,
					pPlot,
					iPlayer
				)
			end
		end


		-- Check if the City is Ecstatic
		CheckEcstatic(tPlots)
	end
	GameEvents.OnGameTurnStarted.Add(OnGameTurnStarted);
--===========================================================================
--===========================================================================