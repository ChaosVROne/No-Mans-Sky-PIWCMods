NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "PIWC_FriendlyDrone_To_SwarmDrone_Model.pak",
    ["MOD_AUTHOR"]      = "Parallel Infinite Worlds Company",
    ["LUA_AUTHOR"]      = "ChaosVrOne",
    ["NMS_VERSION"]     = "6.34",
    ["MOD_DESCRIPTION"] = "Replaces the Friendly Drone scene with the Swarm Drone planet scene. Anything that normally loads MODELS/COMMON/ROBOTS/FRIENDLYDRONE.SCENE.MBIN should visually load as MODELS/COMMON/ROBOTS/SWARMDRONE_PLANET.SCENE.MBIN instead.",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    -- Copy the swarm drone planet scene over the friendly drone scene path.
                    -- This is a full scene replacement test.
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            [[MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET.SCENE.MBIN]],
                            [[MODELS\COMMON\ROBOTS\FRIENDLYDRONE.SCENE.MBIN]],
                            "REMOVE"
                        }
                    }
                }
            }
        }
    }
}