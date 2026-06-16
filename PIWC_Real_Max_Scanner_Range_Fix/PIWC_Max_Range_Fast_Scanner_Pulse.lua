NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "PIWC_Real_Max_Scanner_Range_Fix.pak",
    ["MOD_AUTHOR"]      = "Parallel Infinite Worlds Company",
    ["LUA_AUTHOR"]      = "ChaosVrOne",
    ["NMS_VERSION"]     = "6.34",
    ["MOD_DESCRIPTION"] = "Stronger scanner range fix. Boosts scan pulse range in SCANDATATABLE and also boosts player visor/interaction scan range in GCPLAYERGLOBALS.",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                -- Scanner pulse / marker scan data
                {
                    ["MBIN_FILE_SOURCE"] = [[METADATA\SIMULATION\SCANNING\SCANDATATABLE.MBIN]],
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "PulseRange",           "1000000.000000" },
                                { "PulseTime",            "10.000000" },
                                { "AddMarkers",           "true" },
                                { "PlayAudioOnMarkers",   "true" },
                                { "ChargeTime",           "0.100000" },
                                { "ScanRevealDelay",      "0.000000" }
                            }
                        }
                    }
                },

                -- Player visor / lock-on / interact scan range
                {
                    ["MBIN_FILE_SOURCE"] = [[GLOBALS\GCPLAYERGLOBALS.GLOBAL.MBIN]],
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                -- These are the important ones if the pulse range mod made no visible difference
                                { "PlayerViewTargetRange",              "2000.000000" },
                                { "InteractionScanRange",               "2000.000000" },
                                { "InteractionButtonRange",             "100.000000" },
                                { "InteractionButtonRangeVehicle",      "200.000000" },
                                { "InteractionSubstanceRange",          "250.000000" },

                                -- Faster creature/object lock-on
                                { "InteractionFocusIncrease",           "25.000000" },
                                { "InteractionFocusIncreaseCreature",   "250.000000" },
                                { "InteractionFocusIncreasePet",        "250.000000" },
                                { "InteractionFocusTime",               "0.050000" },
                                { "InteractionFocusTimeCreature",       "0.050000" },
                                { "InteractionFocusTimePet",            "0.050000" },
                                { "InteractionFocusTimeShootable",      "0.050000" },

                                -- Faster object scan completion
                                { "ObjectScanTime",                     "0.250000" },
                                { "DroneProbeScanTime",                 "0.250000" },

                                -- Wider/easier scan beam visuals
                                { "ScanLabelTime",                      "0.750000" },
                                { "ScanFadeInTime",                     "0.050000" },
                                { "ScanFadeOutTime",                    "0.050000" },
                                { "ScanBeamWidth",                      "3.000000" },
                                { "ScanRotateBeamWdith",                "5.000000" },
                                { "ScanBeamMainWidth",                  "10.000000" }
                            }
                        }
                    }
                }
            }
        }
    }
}