modGuid = "9b150d4f-ba25-4793-8bf5-773846f4289f"
subClassGuid = "1d7bb4b2-396d-11ee-be56-0242ac120002"

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    FluffyCelestial = {
      modGuid = modGuid,
      subClassGuid = subClassGuid,
      class = "warlock",
      subClassName = "SpeedForcePatron"
    }
  }

  local function OnStatsLoaded()
    Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
  end

  Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
end

