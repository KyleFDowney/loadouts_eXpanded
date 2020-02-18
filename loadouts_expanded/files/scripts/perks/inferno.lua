dofile_once("data/scripts/lib/utilities.lua")



dofile_once("data/scripts/lib/utilities.lua")

local entity_id    = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform( entity_id )


shoot_projectile( entity_id, "mods/loadouts_expanded/files/projectiles/inferno_flames.xml", pos_x, pos_y, 0, 0 )
