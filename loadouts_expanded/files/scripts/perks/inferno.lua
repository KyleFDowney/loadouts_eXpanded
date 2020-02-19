dofile_once("data/scripts/lib/utilities.lua")

local entity_id    = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform( entity_id )


shoot_projectile( entity_id, "mods/loadouts_expanded/files/projectiles/inferno_flames.xml", pos_x, pos_y, 0, 0 )

local damageComp = EntityGetFirstComponent(player, "DamageModelComponent")
local is_on_fire = ComponentGetValue( damageComp, "mIsOnFire")

if (is_on_fire == 0) then
	shoot_projectile( entity_id, "data/entities/misc/projectiles/bomb.xml", pos_x, pos_y, 0, 0 )
end


