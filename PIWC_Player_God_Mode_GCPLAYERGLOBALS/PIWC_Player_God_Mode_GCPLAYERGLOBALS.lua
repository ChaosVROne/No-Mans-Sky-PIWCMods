NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "PIWC_Player_God_Mode_GCPLAYERGLOBALS.pak",
    ["MOD_AUTHOR"]      = "Parallel Infinite Worlds Company",
    ["LUA_AUTHOR"]      = "ChaosVrOne",
    ["NMS_VERSION"]     = "6.34",
    ["MOD_DESCRIPTION"] = "Fast run, unlimited stamina, powerful jetpack, stronger rocket boots, high health, strong shield, no drains, fast mining, far scanner ranges, no melee cooldowns, fewer pirates, and near-zero wanted escalation.",

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GLOBALS\GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                -- =====================================================
                                -- PLAYER MOVEMENT: fast walking/running
                                -- =====================================================
                                { "GroundWalkForceMultiplier",              "35.000000" },
                                { "GroundWalkBrake",                        "20.000000" },
                                { "GroundWalkBrakeWhileMoving",             "12.000000" },
                                { "GroundWalkSpeedSlow",                    "4.000000" },
                                { "GroundWalkSpeed",                        "8.000000" },
                                { "GroundWalkSpeedTeleportHmd",             "8.000000" },
                                { "GroundRunSpeed",                         "20.000000" },
                                { "GroundWalkSpeedLowG",                    "8.000000" },
                                { "GroundRunSpeedLowG",                     "20.000000" },
                                { "GroundWalkRecoverySpeedDamper",          "1.000000" },

                                -- =====================================================
                                -- UNLIMITED RUN / STAMINA
                                -- =====================================================
                                { "StaminaRate",                            "0.000000" },
                                { "StaminaRecoveryRate",                    "10.000000" },
                                { "StaminaRecoveredFactor",                 "1.000000" },
                                { "AbandonedFreighterStaminaRecoveryMod",   "10.000000" },
                                { "AbandonedFreighterStaminaRate",          "0.000000" },

                                -- =====================================================
                                -- JETPACK: no drain, fast refill, high power/speed
                                -- =====================================================
                                { "FreeJetpackRange",                       "9999.000000" },
                                { "FreeJetpackRangePrime",                  "9999.000000" },
                                { "FreeJetpackRangeNonTerrain",             "9999.000000" },
                                { "JetpackDrainHorizontalFactor",           "0.000000" },
                                { "JetpackForce",                           "90.000000" },
                                { "JetpackBrake",                           "8.000000" },
                                { "JetpackMinLevel",                        "0.000000" },
                                { "JetpackMaxSpeed",                        "25.000000" },
                                { "JetpackMaxUpSpeed",                      "80.000000" },
                                { "JetpackUpForce",                         "90.000000" },
                                { "JetpackIgnitionForce",                   "150.000000" },
                                { "JetpackIgnitionTime",                    "0.050000" },
                                { "JetpackMinIgnitionTime",                 "0.000000" },
                                { "JetpackFillRate",                        "50.000000" },
                                { "JetpackFillRateMidair",                  "50.000000" },
                                { "JetpackFillRateSpaceStationMultiplier",  "50.000000" },
                                { "JetpackFillRateFleetMultiplier",         "50.000000" },
                                { "JetpackFillRateNexusMultiplier",         "50.000000" },
                                { "JetpackUnderwaterDrainRate",             "0.000000" },
                                { "JetpackUnderwaterFillRate",              "50.000000" },
                                { "JetpackUpForceDeadPlanetExtra",          "90.000000" },
                                { "JetpackForceDeadPlanetExtra",            "90.000000" },
                                { "JetpackIgnitionForceDeadPlanetExtra",    "150.000000" },

                                -- Space jetpack / floating in space
                                { "SpaceJetpackForce",                      "90.000000" },
                                { "SpaceJetpackUpForce",                    "90.000000" },
                                { "SpaceJetpackIgnitionForce",              "90.000000" },
                                { "SpaceJetpackMaxSpeed",                   "50.000000" },
                                { "SpaceJetpackDrainRate",                  "0.000000" },

                                -- =====================================================
                                -- ROCKET BOOTS: stronger boost, no tank drain
                                -- =====================================================
                                { "RocketBootsEnabled",                     "true" },
                                { "RocketBootsActivationWindow",            "0.500000" },
                                { "RocketBootsDoubleTapTime",               "0.500000" },
                                { "RocketBootsImpulse",                     "10.000000" },
                                { "RocketBootsBoostForce",                  "150.000000" },
                                { "RocketBootsDriftForce",                  "80.000000" },
                                { "RocketBootsForceStartTime",              "0.000000" },
                                { "RocketBootsForceDuration",               "1.000000" },
                                { "RocketBootsMinDesiredHeight",            "2.000000" },
                                { "RocketBootsMaxDesiredHeight",            "15.000000" },
                                { "RocketBootsHeightAdjustTime",            "0.050000" },
                                { "RocketBootsHeightAdjustUpStrength",      "1.000000" },
                                { "RocketBootsHeightAdjustDownStrength",    "0.100000" },
                                { "RocketBootsJetpackMinLevel",             "0.000000" },
                                { "RocketBootsBoostTankDrainSpeed",         "0.000000" },
                                { "RocketBootsDriftTankDrainSpeed",         "0.000000" },
                                { "RocketBootsBoostOnTime",                 "0.050000" },
                                { "RocketBootsBoostOffTime",                "0.050000" },
                                { "RocketBootsMaxSpeed",                    "50.000000" },
                                { "RocketBootsDriftEndTime",                "5.000000" },
                                { "RocketBootsWindUpBraking",               "0.100000" },
                                { "RocketBootsDriftBraking",                "0.100000" },
                                { "RocketBootsDriftDownwardForce",          "0.000000" },

                                -- =====================================================
                                -- HEALTH: very high health and instant recharge
                                -- =====================================================
                                { "DefaultHitPoints",                       "9999" },
                                { "DefaultHealthPips",                      "99" },
                                { "MaxHealthPips",                          "99" },
                                { "HealthRechargeMinTimeSinceDamage",       "0.000000" },
                                { "HealthPipRechargeRate",                  "9999.000000" },
                                { "WoundTimeMinimum",                       "0.000000" },
                                { "WoundDamageLimit",                       "999999.000000" },
                                { "WoundDamageLimitShip",                   "999999.000000" },
                                { "WoundDamageDecayTime",                   "0.000000" },
                                { "DeathDamageDrainChargeFactor",           "0.000000" },
                                { "DeathDamageTechBrokenPercent",           "0" },

                                -- =====================================================
                                -- SHIELD: very high shield and instant restore
                                -- =====================================================
                                { "ShieldRechargeMinTimeSinceDamage",       "0.000000" },
                                { "ShieldRechargeRate",                     "9999.000000" },
                                { "ShieldMaximum",                          "9999" },
                                { "ShieldRestoreSpeed",                     "9999.000000" },
                                { "ShieldRestoreDelay",                     "0.000000" },
                                { "FrontShieldEnabled",                     "true" },
                                { "FrontShieldSpeedSlowdown",               "1.000000" },

                                -- =====================================================
                                -- NOTHING SHOULD DRAIN / SURVIVAL EASIER
                                -- =====================================================
                                { "UseEnergy",                              "false" },
                                { "UseHazardProtection",                    "false" },
                                { "HideHazardPanel",                        "true" },
                                { "InventoryDamage",                        "false" },
                                { "NeverPreyedOn",                          "true" },
                                { "EnergyDamageMinTime",                    "999999.000000" },
                                { "HazardDamageMinTime",                    "999999.000000" },
                                { "EnergyDischargeRateLow",                 "0.000000" },
                                { "EnergyDischargeRateMedium",              "0.000000" },
                                { "EnergyDischargeRateHigh",                "0.000000" },
                                { "EnergyDischargeRateFloatingInSpace",     "0.000000" },
                                { "EnergyDischargeRateDeepWater",           "0.000000" },
                                { "EnergyPainRate",                         "0.000000" },
                                { "SolarRegenFactor",                       "9999.000000" },
                                { "NormalModeHazardTimeMultiplier",         "9999.000000" },
                                { "NormalModeHazardDamageRateMultiplier",   "0.000000" },
                                { "NormalModeHazardDamageWoundRateMultiplier", "0.000000" },
                                { "NormalModeHazardRechargeUnderground",    "9999.000000" },
                                { "HardModeHazardTimeMultiplier",           "9999.000000" },
                                { "HardModeHazardDamageRateMultiplier",     "0.000000" },
                                { "HardModeHazardDamageWoundRateMultiplier", "0.000000" },
                                { "HardModeHazardRechargeUnderground",      "9999.000000" },
                                { "VehicleHazardDampingModifier",           "9999.000000" },
                                { "StealthDrainRate",                       "0.000000" },
                                { "StealthRechargeRate",                    "9999.000000" },
                                { "StealthBaseCharge",                      "9999" },

                                -- =====================================================
                                -- MINING / WEAPON RANGES: fast mining and long ranges
                                -- =====================================================
                                { "LaserMiningDamageMultiplier",            "100.000000" },
                                { "UtilityWeaponRange",                     "1000.000000" },
                                { "LaserWeaponRange",                       "1000.000000" },
                                { "LaserShipRange",                         "10000.000000" },
                                { "TerrainLaserRange",                      "1000.000000" },
                                { "GravityLaserRange",                      "1000.000000" },
                                { "VehicleLaserRange",                      "1000.000000" },
                                { "LaserPlayerOffset",                      "2.000000" },
                                { "ResourceBlobFinalScaleDistance",         "5.000000" },

                                -- =====================================================
                                -- SCANNER / BINOCULAR / INTERACTION RANGES
                                -- =====================================================
                                { "BinocularRangePlanet",                   "100000.000000" },
                                { "BinocularRangeSpace",                    "1000000.000000" },
                                { "MinBinocActiveTime",                     "0.010000" },
                                { "BinocularCreatureCastSphereSize",        "20.000000" },
                                { "ObjectScanTime",                         "0.010000" },
                                { "DroneProbeScanTime",                     "0.010000" },
                                { "FreighterProbeScanTime",                 "0.010000" },
                                { "PlayerViewTargetRange",                  "100000.000000" },
                                { "InteractionScanRange",                   "100000.000000" },
                                { "InteractionButtonRange",                 "1000.000000" },
                                { "InteractionButtonRangeVehicle",          "1000.000000" },
                                { "InteractionFocusIncrease",               "9999.000000" },
                                { "InteractionFocusIncreaseCreature",       "9999.000000" },
                                { "InteractionFocusIncreasePet",            "9999.000000" },
                                { "InteractionFocusTimeShootable",          "0.010000" },
                                { "InteractionFocusTime",                   "0.010000" },
                                { "InteractionFocusTimeCreature",           "0.010000" },
                                { "InteractionFocusTimePet",                "0.010000" },
                                { "InteractionSubstanceRange",              "100000.000000" },
                                { "HandHoldInteractDistanceRate",           "100.000000" },

                                -- =====================================================
                                -- NO MELEE COOLDOWNS / HIGH MELEE RANGE
                                -- =====================================================
                                { "MeleeCooldown",                          "0.000000" },
                                { "ChargeMeleeCooldown",                    "0.000000" },
                                { "MeleeDistance",                          "20.000000" },
                                { "MeleeDistance3P",                        "20.000000" },
                                { "MeleeRadius",                            "10.000000" },
                                { "MeleeHitTime",                           "0.010000" },
                                { "MeleeSpeedBoost",                        "5.000000" },
                                { "MeleeSpeedDamageBoost",                  "10.000000" },
                                { "MeleeSpeedBoostRangeMultiplier",         "10.000000" },
                                { "MeleeStaminaDrain",                      "0.000000" },
                                { "MeleeCooldownAlt",                       "0.000000" },
                                { "MeleeDamageScale",                       "50.000000" },
                                { "MeleeRadiusAlt",                         "10.000000" },
                                { "MeleeDistanceAlt",                       "20.000000" },

                                -- =====================================================
                                -- WEAPON / RELOAD COOLDOWN-STYLE VALUES
                                -- =====================================================
                                { "FullClipReloadSpeedMultiplier",          "9999.000000" },
                                { "ReloadTapButtonSpeedIncrease",           "9999.000000" },
                                { "GrenadeBounceDamping",                   "0.000000" },
                                { "GrenadeBounceMaxSpeed",                  "100.000000" },
                                { "GrenadeStopExplodeTime",                 "0.010000" },
                                { "WeaponShotgunSlowdown",                  "1.000000" },
                                { "WeaponZoomRecoilMultiplier",             "0.000000" },
                                { "GunRecoil",                              "0.000000" },
                                { "LaserRecoil",                            "0.000000" },
                                { "BeamRecoil",                             "0.000000" },
                                { "GrenadeRecoil",                          "0.000000" },

                                -- =====================================================
                                -- FEWER PIRATE ATTACKS
                                -- =====================================================
                                { "PirateHailPercent",                      "0" },
                                { "PirateBountyInitTime",                   "999999.000000" },
                                { "PirateBountyTimeoutTime",                "0.100000" },
                                { "PirateProbeInitTime",                    "999999.000000" },
                                { "PirateProbeAttackWaitTime",              "999999.000000" },
                                { "PirateProbeAttackWarnTime",              "999999.000000" },
                                { "PirateProbeScanTime",                    "999999.000000" },
                                { "PirateProbeScanTotalTime",               "999999.000000" },
                                { "PirateFlybyAttackProbability",           "0.000000" },
                                { "PirateFlybyAttackProbabilityForced",     "0.000000" },
                                { "PirateFlybyAttackMinTime",               "999999.000000" },
                                { "PirateFlybyAttackMaxTime",               "999999.000000" },
                                { "PirateFlybyAttackTimeForced",            "999999.000000" },
                                { "PirateRaidMinTime",                      "999999.000000" },
                                { "PirateRaidMaxTime",                      "999999.000000" },
                                { "PirateBattleWarnTime",                   "999999.000000" },
                                { "PirateBattleMarkerTime",                 "999999.000000" },
                                { "PirateBattleMaxTime",                    "0.100000" },
                                { "ExperiencePirateCloseAttackPercentage",  "0" },
                                { "ExperiencePirateTimeMin",                "999999.000000" },
                                { "ExperiencePirateTimeMax",                "999999.000000" },
                                { "ExperiencePiratesDifficultyVariance",    "0.000000" },
                                { "ExperienceHardPiratesDamageMaxOdds",     "0.000000" },
                                { "ExperienceMediumPiratesDamageMaxOdds",   "0.000000" },

                                -- =====================================================
                                -- WANTED LEVEL: near nothing / no escalation
                                -- =====================================================
                                { "MultiplayerShareWanted",                 "false" },
                                { "WantedLevelPlayerRange",                 "0.000000" },
                                { "WantedLevelPlayerRangeSpace",            "0.000000" },
                                { "WantedDroneEventRadius",                 "0.000000" },
                                { "WantedMinSpaceTime",                     "999999.000000" },
                                { "WantedMinPlanetTime",                    "999999.000000" },
                                { "WantedLevelDelay",                       "999999.000000" },
                                { "WantedWitnessTimer",                     "999999.000000" },
                                { "WantedWitnessFuzzyTime",                 "999999.000000" },
                                { "WantedMinorCrimeAmount",                 "0.000000" },
                                { "WantedTimeoutAggressive",                "0.100000" },
                                { "WantedTimeout",                          "0.100000" },
                                { "WantedEscalateTime",                     "-1.000000" },
                                { "WantedExtremeEscalateTime",              "-1.000000" },
                                { "CombatSpawnMinWantedTime",               "999999.000000" },
                                { "CombatEscalateTime",                     "999999.000000" },
                                { "CombatEscapeRadius",                     "1.000000" },
                                { "CombatEscapeTime",                       "0.100000" },
                                { "WalkerAlertRange",                       "0.000000" },
                                { "WalkerSightRange",                       "0.000000" },
                                { "WitnessSenseEnhancementTime",            "0.000000" },
                                { "WitnessSenseEnhancement",                "0.000000" },
                                { "MultiplayerMinWanteEscalationTime",      "999999.000000" },
                                { "WitnessAIDamageDistance",                "0.000000" },
                                { "WitnessAIDamageAngle",                   "0.000000" },
                            }
                        }
                    }
                }
            }
        }
    }
}