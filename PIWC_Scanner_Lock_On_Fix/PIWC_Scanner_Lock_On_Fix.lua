NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "PIWC_Scanner_Lock_On_Fix.pak",
    ["MOD_AUTHOR"]      = "Parallel Infinite Worlds Company",
    ["LUA_AUTHOR"]      = "ChaosVrOne",
    ["NMS_VERSION"]     = "6.34",
    ["MOD_DESCRIPTION"] = "Helps scanner/interaction lock-on work easier by increasing player scan range and making creature focus/scan interaction faster.",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = [[GLOBALS\GCPLAYERGLOBALS.GLOBAL.MBIN]],
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                -- More distance for scan/interaction targeting
                                { "PlayerViewTargetRange",              "500.000000" },
                                { "InteractionScanRange",               "500.000000" },
                                { "InteractionButtonRange",             "50.000000" },
                                { "InteractionButtonRangeVehicle",      "80.000000" },
                                { "InteractionSubstanceRange",          "100.000000" },

                                -- Faster lock-on / focus, especially for creatures
                                { "InteractionFocusIncrease",           "10.000000" },
                                { "InteractionFocusIncreaseCreature",   "100.000000" },
                                { "InteractionFocusIncreasePet",        "100.000000" },
                                { "InteractionFocusTime",               "0.050000" },
                                { "InteractionFocusTimeCreature",       "0.050000" },
                                { "InteractionFocusTimePet",            "0.050000" },
                                { "InteractionFocusTimeShootable",      "0.050000" },

                                -- Faster object scan timing
                                { "ObjectScanTime",                     "0.250000" },

                                -- Cleaner scan visuals
                                { "ScanLabelTime",                      "0.500000" },
                                { "ScanFadeInTime",                     "0.100000" },
                                { "ScanFadeOutTime",                    "0.100000" },
                                { "ScanBeamWidth",                      "1.000000" },
                                { "ScanBeamMainWidth",                  "5.000000" }
                            }
                        }
                    }
                }
            }
        }
    }
}