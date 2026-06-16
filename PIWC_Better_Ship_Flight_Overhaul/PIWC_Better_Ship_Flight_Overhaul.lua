NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "PIWC_Better_Ship_Flight_Overhaul.pak",
    ["MOD_AUTHOR"]      = "Parallel Infinite Worlds Company",
    ["LUA_AUTHOR"]      = "ChaosVrOne",
    ["NMS_VERSION"]     = "6.34",
    ["MOD_DESCRIPTION"] = "Super fast planet flight, strong ship handling, hover tweaks, easier landing, water landing changes, and pulse/warp visual tweaks.",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = [[GLOBALS\GCSPACESHIPGLOBALS.GLOBAL.MBIN]],
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- SPACE ENGINE: faster space flight too
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["PRECEDING_KEY_WORDS"] = {"SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "600"},
                                {"MaxSpeed",           "1500"},
                                {"MinSpeed",           "1"},
                                {"MinSpeedForce",      "100"},
                                {"BoostThrustForce",   "12000"},
                                {"BoostMaxSpeed",      "20000"},
                                {"BoostFalloff",       "0.1"},
                                {"BoostingTurnDamp",   "0.01"},
                                {"DirectionBrakeMin",  "0.1"},
                                {"DirectionBrake",     "5"},
                                {"ReverseBrake",       "3"},
                                {"OverspeedBrake",     "0.05"},
                                {"LowSpeedTurnDamper", "0.01"},
                                {"TurnStrength",       "5"},
                                {"RollAmount",         "4"},
                                {"RollForce",          "4"},
                                {"TurnBrakeMin",       "0.1"},
                                {"TurnBrakeMax",       "0.5"}
                            }
                        },

                        -- PLANET ENGINE: this is the main one for flying super fast on planets
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "1200"},
                                {"MaxSpeed",           "2500"},
                                {"MinSpeed",           "1"},
                                {"Falloff",            "0.05"},
                                {"MinSpeedForce",      "500"},
                                {"BoostThrustForce",   "25000"},
                                {"BoostMaxSpeed",      "6000"},
                                {"BoostFalloff",       "0.05"},
                                {"BoostingTurnDamp",   "0.005"},
                                {"DirectionBrakeMin",  "0.05"},
                                {"DirectionBrake",     "6"},
                                {"ReverseBrake",       "4"},
                                {"OverspeedBrake",     "0.01"},
                                {"LowSpeedTurnDamper", "0.005"},
                                {"TurnStrength",       "6"},
                                {"RollAmount",         "4.5"},
                                {"RollForce",          "5"},
                                {"TurnBrakeMin",       "0.05"},
                                {"TurnBrakeMax",       "0.25"}
                            }
                        },

                        -- COMBAT ENGINE: keep combat fast too
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["PRECEDING_KEY_WORDS"] = {"CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "800"},
                                {"MaxSpeed",           "1200"},
                                {"MinSpeed",           "1"},
                                {"Falloff",            "0.05"},
                                {"MinSpeedForce",      "300"},
                                {"BoostThrustForce",   "18000"},
                                {"BoostMaxSpeed",      "12000"},
                                {"BoostFalloff",       "0.05"},
                                {"BoostingTurnDamp",   "0.005"},
                                {"DirectionBrakeMin",  "0.05"},
                                {"DirectionBrake",     "6"},
                                {"ReverseBrake",       "4"},
                                {"OverspeedBrake",     "0.01"},
                                {"LowSpeedTurnDamper", "0.005"},
                                {"TurnStrength",       "6"},
                                {"RollAmount",         "4.5"},
                                {"RollForce",          "5"},
                                {"TurnBrakeMin",       "0.05"},
                                {"TurnBrakeMax",       "0.25"}
                            }
                        },

                        -- ATMOSPHERE COMBAT ENGINE: fast in atmosphere fights
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["PRECEDING_KEY_WORDS"] = {"AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThrustForce",        "1000"},
                                {"MaxSpeed",           "2000"},
                                {"MinSpeed",           "1"},
                                {"Falloff",            "0.05"},
                                {"MinSpeedForce",      "500"},
                                {"BoostThrustForce",   "20000"},
                                {"BoostMaxSpeed",      "5000"},
                                {"BoostFalloff",       "0.05"},
                                {"BoostingTurnDamp",   "0.005"},
                                {"DirectionBrakeMin",  "0.05"},
                                {"DirectionBrake",     "6"},
                                {"ReverseBrake",       "4"},
                                {"OverspeedBrake",     "0.01"},
                                {"LowSpeedTurnDamper", "0.005"},
                                {"TurnStrength",       "6"},
                                {"RollAmount",         "4.5"},
                                {"RollForce",          "5"},
                                {"TurnBrakeMin",       "0.05"},
                                {"TurnBrakeMax",       "0.25"}
                            }
                        },

                        -- GLOBAL PLANET SPEED LIMITER / LANDING / HOVER / WATER / WARP TWEAKS
                        -- No ship camera values are included.
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                -- Planet braking / low altitude limiters
                                {"ShipPlanetBrakeForce",                  "0"},
                                {"ShipPlanetBrakeMinSpeed",               "99999"},
                                {"ShipPlanetBrakeMaxSpeed",               "99999"},
                                {"ShipPlanetBrakeMinHeight",              "0"},
                                {"ShipPlanetBrakeMaxHeight",              "0"},
                                {"ShipPlanetBrakeAlignMinTime",           "0"},
                                {"ShipPlanetBrakeAlignMaxTime",           "0"},
                                {"MaxOverspeedBrake",                     "0.01"},
                                {"PostWarpSlowDownTime",                  "0.1"},

                                -- Pitch correction / auto leveling near planets
                                {"NearGroundPitchCorrectMinHeight",       "0"},
                                {"NearGroundPitchCorrectRange",           "0"},
                                {"NearGroundPitchCorrectMinHeightRemote", "0"},
                                {"NearGroundPitchCorrectRangeRemote",     "0"},
                                {"PitchCorrectDownSpeedMinSpeed",         "99999"},
                                {"PitchCorrectDownSpeedRange",            "0"},
                                {"PitchCorrectDownSpeedHeightMin",        "0"},
                                {"PitchCorrectDownSpeedHeightMax",        "0"},
                                {"PitchCorrectMaxDownAngle",              "90"},
                                {"PitchCorrectMaxDownAngleWater",         "90"},

                                -- Easier landing
                                {"LandingMaxSpeed",                       "50"},
                                {"LandingMaxAngle",                       "60"},
                                {"LandingMargin",                         "0.1"},
                                {"LandingObstacleMinHeight",              "3"},
                                {"LandingTooManyLowPointsFraction",       "95"},
                                {"LandingDirectionalSideOffsetFactor",    "0.5"},
                                {"LandingButtonMinTime",                  "0.05"},
                                {"LandingPushNoseUpFactor",               "0"},

                                -- Hover ship tweaks
                                {"HoverTakeoffHeight",                    "0.5"},
                                {"HoverTime",                             "0.1"},
                                {"HoverTimeAlt",                          "0.1"},
                                {"HoverAlignTime",                        "0"},
                                {"HoverAlignTimeAlt",                     "0"},
                                {"HoverSpeedFactor",                      "20"},
                                {"HoverHeightFactor",                     "5"},
                                {"HoverMinSpeed",                         "0"},
                                {"HoverLandReachedMinTime",               "0.05"},
                                {"HoverLandReachedDistance",              "0.25"},
                                {"HoverLandManeuvreBrake",                "1"},
                                {"HoverLandManeuvreTimeWaterMultiplier",  "0.1"},

                                -- Water landing / water hover
                                {"LandingWaterHoverOffset",               "0.2"},
                                {"LandingWaterHoverHeight",               "0.2"},
                                {"LandingWaterHoverHeightCorvette",       "0.2"},
                                {"AutoLevelWaterMargin",                  "2"},
                                {"AutoLevelWaterTorque",                  "5000"},
                                {"AutoLevelWaterAngle",                   "2"},
                                {"GroundHeightHardOverWater",             "0"},
                                {"GroundWaterSpeedFactor",                "200"},
                                {"WaterEffectScaler",                     "3"},
                                {"GroundNearEffectWaterLightFactor",      "25"},

                                -- Pulse / warp visual and timing tweaks
                                {"PulseDriveBoostDoubleTapTime",          "0.1"},
                                {"PostFreighterWarpTransitionTime",       "2"},
                                {"WarpInTime",                            "0.05"},
                                {"WarpInFlashTime",                       "0.05"},
                                {"WarpInRange",                           "0.2"},
                                {"WarpScale",                             "10000"},
                                {"WarpFadeInTime",                        "10"},
                                {"WarpOutRange",                          "20000"},
                                {"WarpOutTime",                           "500"},
                                {"WarpInTimeFreighter",                   "0.5"},
                                {"WarpInFlashTimeFreighter",              "2"},
                                {"WarpInTimeNexus",                       "0.4"},
                                {"WarpInFlashTimeNexus",                  "2"},

                                -- Visible engine feel
                                {"DefaultTrailInitialSpeed",              "500"},
                                {"DefaultTrailMinForwardSpeed",           "100"},
                                {"ContrailSpeedDamping",                  "2"},
                                {"EngineJetLightIntensityMultiplier",     "10"},
                                {"EngineEffectsThrustContribution",       "8000"}
                            }
                        }
                    }
                }
            }
        }
    }
}