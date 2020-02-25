dofile_once("data/scripts/lib/utilities.lua")

function damage_received( damage, desc, entity_who_caused, is_fatal )
	local entity_id    = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )
	
	if ( entity_who_caused == entity_id ) or ( ( EntityGetParent( entity_id ) ~= NULL_ENTITY ) and ( entity_who_caused == EntityGetParent( entity_id ) ) ) then return end
	
	shoot_projectile( entity_id, "mods/loadouts_expanded/files/projectiles/inferno_flames.xml", x, y, 0, 0 )
end
