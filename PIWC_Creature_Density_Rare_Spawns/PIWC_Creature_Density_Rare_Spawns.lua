NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "PIWC_Creature_Density_Rare_Spawns.pak",
    ["MOD_AUTHOR"]      = "Parallel Infinite Worlds Company",
    ["LUA_AUTHOR"]      = "ChaosVrOne",
    ["NMS_VERSION"]     = "6.34",
    ["MOD_DESCRIPTION"] = "Raises creature density, makes rare and super rare creatures much more common, boosts full-life worlds, increases paradise/giant/busy creatures, and reduces empty/dangerous creature archetypes.",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = [[METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN]],
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- =========================================================
                        -- FORCE LIFE TO FAVOR FULL CREATURE POPULATION
                        -- =========================================================
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LifeChance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Dead", "0.000000" },
                                { "Low",  "0.000000" },
                                { "Mid",  "0.000000" },
                                { "Full", "1.000000" }
                            }
                        },

                        -- =========================================================
                        -- MAKE CREATURE GROUPS MUCH DENSER
                        -- These do not set exact player spawn distance, but they
                        -- increase creature groups per kilometer so animals should
                        -- appear much more often around the player.
                        -- =========================================================
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GroundGroupsPerKm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Sparse",    "100.000000" },
                                { "Normal",    "200.000000" },
                                { "Dense",     "350.000000" },
                                { "VeryDense", "500.000000" }
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterGroupsPerKm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Sparse",    "100.000000" },
                                { "Normal",    "200.000000" },
                                { "Dense",     "350.000000" },
                                { "VeryDense", "500.000000" }
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AirGroupsPerKm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Sparse",    "75.000000" },
                                { "Normal",    "150.000000" },
                                { "Dense",     "250.000000" },
                                { "VeryDense", "350.000000" }
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CaveGroupsPerKm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Sparse",    "100.000000" },
                                { "Normal",    "200.000000" },
                                { "Dense",     "350.000000" },
                                { "VeryDense", "500.000000" }
                            }
                        },

                        -- =========================================================
                        -- STRONG DENSITY MODIFIERS
                        -- Raises all density levels so even sparse planets should
                        -- feel more alive.
                        -- =========================================================
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DensityModifiers"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Sparse",    "1.000000" },
                                { "Normal",    "2.000000" },
                                { "Dense",     "4.000000" },
                                { "VeryDense", "8.000000" }
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LifeLevelDensityModifiers"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Dead", "0.250000" },
                                { "Low",  "1.000000" },
                                { "Mid",  "2.000000" },
                                { "Full", "4.000000" }
                            }
                        },

                        -- =========================================================
                        -- MAKE COMMON / UNCOMMON / RARE / SUPER RARE ALL SPAWN OFTEN
                        -- Original: Common 10, Uncommon 3, Rare 1.2, SuperRare 0.9
                        -- New: Rare and SuperRare heavily boosted.
                        -- =========================================================
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RarityFrequencyModifiers"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Common",    "10.000000" },
                                { "Uncommon",  "10.000000" },
                                { "Rare",      "15.000000" },
                                { "SuperRare", "20.000000" }
                            }
                        },

                        -- =========================================================
                        -- MAKE HIGH-FREQUENCY CREATURE ROLES SPAWN MORE
                        -- =========================================================
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RoleFrequencyModifiers"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Never",  "0.000000" },
                                { "Low",    "1.000000" },
                                { "Normal", "3.000000" },
                                { "High",   "10.000000" }
                            }
                        },

                        -- =========================================================
                        -- GENERIC GROUND ARCHETYPE TUNING
                        -- Make nice / interesting creatures more common and reduce
                        -- empty / dangerous archetypes.
                        -- =========================================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Archetype", "PARADISE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Weight ", "10.000000" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Archetype", "GIANT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Weight ", "8.000000" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Archetype", "BUSY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Weight ", "8.000000" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Archetype", "HERD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Weight ", "6.000000" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Archetype", "ALIEN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Weight ", "6.000000" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Archetype", "DANGEROUS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Weight ", "0.100000" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Archetype", "EMPTY"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Weight ", "0.100000" }
                            }
                        },

                        -- =========================================================
                        -- MORE WATER CREATURE VARIETY
                        -- =========================================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Archetype", "CRABS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Weight ", "3.000000" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Archetype", "WATERWORLD"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Weight ", "5.000000" }
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Archetype", "WATERGLOW"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Weight ", "5.000000" }
                            }
                        },

                        -- =========================================================
                        -- MAKE EMPTY SYSTEM ROBOTS MORE COMMON
                        -- =========================================================
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EmptySystemSpecific"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Probability", "0.500000" }
                            }
                        },

                        -- =========================================================
                        -- OPTIONAL: REDUCE HERD PENALTY SO HERDS CAN BE BIGGER
                        -- =========================================================
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "HerdCreaturePenalty", "0.100000" }
                            }
                        }
                    }
                }
            }
        }
    }
}