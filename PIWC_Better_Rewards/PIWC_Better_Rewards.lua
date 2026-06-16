NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "PIWC_Better_Rewards.pak",
    ["MOD_AUTHOR"]      = "Parallel Infinite Worlds Company",
    ["LUA_AUTHOR"]      = "ChaosVrOne",
    ["NMS_VERSION"]     = "6.34",
    ["MOD_DESCRIPTION"] = "Better rewards for No Man's Sky. Boosts abandoned loot, sentinel loot, inventory tokens, reward chances, and procedural tech quality without changing every reward amount in the entire game.",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = [[METADATA\REALITY\TABLES\REWARDTABLE.MBIN]],
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- =========================================================
                        -- GLOBAL BETTER REWARD CHANCES
                        -- Makes reward entries much more likely to pay out.
                        -- This is broad, but safer than globally changing every
                        -- AmountMin / AmountMax in the entire reward table.
                        -- =========================================================
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "PercentageChance",          "100.000000" },

                                -- Force procedural upgrade rewards toward legendary/S-class.
                                { "WeightedChanceNormal",      "0" },
                                { "WeightedChanceRare",        "0" },
                                { "WeightedChanceEpic",        "0" },
                                { "WeightedChanceLegendary",   "100" }
                            }
                        },

                        -- =========================================================
                        -- WEAPON INVENTORY TOKEN REWARD
                        -- Original WEAP_TOKEN gives 1 weapon inventory token.
                        -- =========================================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WEAP_TOKEN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "AmountMin", "5" },
                                { "AmountMax", "10" }
                            }
                        },

                        -- =========================================================
                        -- ABANDONED / DERELICT STYLE LOOT
                        -- These are safer targeted boosts for reward IDs visible
                        -- in REWARDTABLE.MXML, instead of changing every amount.
                        -- =========================================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_ABAND_CRATE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "RewardChoice", "GiveAll" },
                                { "AmountMin",    "500" },
                                { "AmountMax",    "2500" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_ABAND_CASE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "RewardChoice", "GiveAll" },
                                { "AmountMin",    "500" },
                                { "AmountMax",    "2500" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_ABAND_LOCK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "RewardChoice", "GiveAll" },
                                { "AmountMin",    "500" },
                                { "AmountMax",    "2500" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_ABAND_CAPS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "RewardChoice", "GiveAll" },
                                { "AmountMin",    "250" },
                                { "AmountMax",    "1000" }
                            }
                        },

                        -- =========================================================
                        -- SENTINEL / DRONE LOOT
                        -- More nanites, more ammo, stronger shield restore,
                        -- and guaranteed sentinel loot because global chance is 100.
                        -- =========================================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONE_LOOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "RewardChoice", "GiveAll" },
                                { "AmountMin",    "250" },
                                { "AmountMax",    "1000" }
                            }
                        },

                        -- =========================================================
                        -- WILD PLANT HARVEST REWARDS
                        -- Targeted groups from the uploaded file: WILD_LUSH,
                        -- WILD_BARREN, WILD_RADIO, WILD_SNOW, WILD_SCORCHED,
                        -- WILD_TOXIC. Makes harvests pay much more.
                        -- =========================================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WILD_LUSH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "AmountMin", "100" },
                                { "AmountMax", "250" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WILD_BARREN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "AmountMin", "100" },
                                { "AmountMax", "250" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WILD_RADIO"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "AmountMin", "100" },
                                { "AmountMax", "250" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WILD_SNOW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "AmountMin", "100" },
                                { "AmountMax", "250" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WILD_SCORCHED"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "AmountMin", "100" },
                                { "AmountMax", "250" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WILD_TOXIC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "AmountMin", "100" },
                                { "AmountMax", "250" }
                            }
                        },

                        -- =========================================================
                        -- CARGO LOOT
                        -- Keeps cargo loot enabled and guaranteed.
                        -- =========================================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CARGO_LOOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "RewardChoice", "GiveAll" },
                                { "PercentageChance", "100.000000" }
                            }
                        }
                    }
                }
            }
        }
    }
}