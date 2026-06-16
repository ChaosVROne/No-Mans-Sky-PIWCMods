NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "PIWC_Very_Long_Range_Terrain_Manipulator.pak",
    ["MOD_AUTHOR"]      = "Parallel Infinite Worlds Company",
    ["LUA_AUTHOR"]      = "ChaosVrOne",
    ["NMS_VERSION"]     = "6.34",
    ["MOD_DESCRIPTION"] = "Very long range terrain manipulator beam. Range only, no brush-size changes.",
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
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TerrainEditBeamMaxRange",        "9999"},
                                {"TerrainBeamUndoRangeFromLastAdd","9999"},
                                {"TerrainEditBeamSpherecastRadius", "1.0"},
                                {"SubtractEditLength",             "9999"},
                                {"TerrainUndoCubesRange",          "9999"}
                            }
                        }
                    }
                }
            }
        }
    }
}