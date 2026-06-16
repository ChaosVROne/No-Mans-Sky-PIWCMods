NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "PIWC_Terrain_Mines_Catalyst_Resources.pak",
    ["MOD_AUTHOR"]      = "Parallel Infinite Worlds Company",
    ["LUA_AUTHOR"]      = "ChaosVrOne",
    ["NMS_VERSION"]     = "6.34",
    ["MOD_DESCRIPTION"] = "Safe version: changes biome terrain mining resources to CATALYST1 only. Does not touch array headers.",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = [[GLOBALS\GCTERRAINGLOBALS.GLOBAL.MBIN]],
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MiningSubstanceBiome"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",        "CATALYST1"},
                                {"Toxic",       "CATALYST1"},
                                {"Scorched",    "CATALYST1"},
                                {"Radioactive", "CATALYST1"},
                                {"Frozen",      "CATALYST1"},
                                {"Barren",      "CATALYST1"},
                                {"Dead",        "CATALYST1"},
                                {"Weird",       "CATALYST1"},
                                {"Red",         "CATALYST1"},
                                {"Green",       "CATALYST1"},
                                {"Blue",        "CATALYST1"},
                                {"Test",        "CATALYST1"},
                                {"Swamp",       "CATALYST1"},
                                {"Lava",        "CATALYST1"},
                                {"Waterworld",  "CATALYST1"},
                                {"GasGiant",    "CATALYST1"},
                                {"All",         "CATALYST1"}
                            }
                        }
                    }
                }
            }
        }
    }
}