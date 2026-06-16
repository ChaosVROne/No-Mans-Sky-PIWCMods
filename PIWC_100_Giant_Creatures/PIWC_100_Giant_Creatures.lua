NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "PIWC_100_Giant_Creatures.pak",
    ["MOD_AUTHOR"]      = "Parallel Infinite Worlds Company",
    ["LUA_AUTHOR"]      = "ChaosVrOne",
    ["NMS_VERSION"]     = "6.34",
    ["MOD_DESCRIPTION"] = "Makes the giant ground creature role table available at 100 weight for all life levels.",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = [[METADATA\SIMULATION\ECOSYSTEM\CREATUREROLEDESCRIPTIONTABLE.MBIN]],
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"File", "METADATA/SIMULATION/ECOSYSTEM/ROLEDESCRIPTIONTABLES/GROUND/GROUNDTABLEGIANT.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Dead", "100.000000" },
                                { "Low", "100.000000" },
                                { "Mid", "100.000000" },
                                { "Full", "100.000000" }
                            }
                        }
                    }
                }
            }
        }
    }
}