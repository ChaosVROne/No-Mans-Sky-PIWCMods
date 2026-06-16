NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "PIWC_Extreme_Huge_Terrain_Manipulator_Brush.pak",
    ["MOD_AUTHOR"]      = "Parallel Infinite Worlds Company",
    ["LUA_AUTHOR"]      = "ChaosVrOne",
    ["NMS_VERSION"]     = "6.34",
    ["MOD_DESCRIPTION"] = "Extreme huge terrain manipulator brush sizes. Brush size only, no range changes.",
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
                            ["REPLACE_TYPE"] = "ALL",
                            ["PRECEDING_KEY_WORDS"] = {"TerrainEditing", "EditSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EditSizes", "35"}
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["PRECEDING_KEY_WORDS"] = {"TerrainEditing", "SubtractSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SubtractSizes", "45"}
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["PRECEDING_KEY_WORDS"] = {"TerrainEditing", "BaseEditSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BaseEditSizes", "60"}
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["PRECEDING_KEY_WORDS"] = {"TerrainEditing", "UndoEditSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UndoEditSizes", "60"}
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["PRECEDING_KEY_WORDS"] = {"TerrainEditing", "FlatteningSizes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatteningSizes", "50"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TerrainEditing"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TerrainEditBeamAddInterpolationStepFactor",      "5"},
                                {"TerrainEditBeamSubtractInterpolationStepFactor", "5"},
                                {"TerrainBlocksSearchRadiusMultiplier",           "10"},
                                {"RegionMapSearchRadiusMultiplier",               "10"},
                                {"RegionEditAreaMultiplier",                      "20"},
                                {"DensityBlendDistanceMultiplier",                "5"},
                                {"TerrainEditBaseDistanceTolerance",              "5"},
                                {"UndoEditToleranceFactor",                       "10"},
                                {"UndoBaseEditEffectiveScale",                    "5"},
                                {"EditEffectScale",                               "20"}
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TerrainBeamDefaultRadius", "25"},
                                {"SubtractEditFrequency",   "0.02"}
                            }
                        }
                    }
                }
            }
        }
    }
}