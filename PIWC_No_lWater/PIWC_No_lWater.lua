-- LowerAllWater.lua
-- Drastically lowers *all* planetary sea/river/ocean levels and suppresses high-water regions.
-- Targets: GLOBALS/GCTERRAINGLOBALS.GLOBAL.MBIN

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = "PIWC_No_lWater.pak",
  MOD_AUTHOR      = "ChaosVrOne",
  MOD_DESCRIPTION = "Sets global sea levels near zero and minimizes water ratios",
  NMS_VERSION     = "7.06",
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = {{
      MBIN_FILE_SOURCE = "GCTERRAINGLOBALS.GLOBAL.MBIN",
      MXML_CHANGE_TABLE = {{
        PRECEDING_KEY_WORDS = {},
        VALUE_CHANGE_TABLE = {
          -- Sea surface height baselines (units ~ metres above planet datum)
          {"SeaLevelStandard",     "0"},     -- was 120
          {"SeaLevelHigh",         "0"},     -- was 450
          {"SeaLevelWaterWorld",   "0"},     -- was 1500 (dries waterworlds too)
          {"SeaLevelMoon",         "0"},     -- was 10
          {"SeaLevelGasGiant",     "0"},     -- (doesn't really matter for gas giants)

          -- “High water” feature band (disable by pinning low)
          {"MinHighWaterLevel",    "0"},     -- was 150
          {"MaxHighWaterLevel",    "0"},     -- was 200
          {"MinHighWaterRegionRatio","0"},   -- was 0.7
          {"MinHighWaterRatio",    "0"},     -- was 0.3
          {"MaxHighWaterRatio",    "0"},     -- was 0.5

          -- Global water coverage (percent of tiles eligible to be water)
          {"MinWaterRatio",        "0"},     -- was 0.01
          {"MaxWaterRatio",        "0"},     -- was 0.03

          -- Make sure purple systems don’t force high water
          {"ForcePurpleSystemHighWater","False"},
          {"PurpleSystemMaxHighWaterChance","0"},
        }
      }}
    }}
  }}
}