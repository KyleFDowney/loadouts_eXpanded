dofile_once("data/scripts/lib/utilities.lua")

function ingested_material( material_name, count )
	local pos_x, pos_y = EntityGetTransform( entity_id )
	
	shoot_projectile( entity_id, "mods/loadouts_expanded/files/projectiles/glittershot.xml", pos_x, pos_y, 0, 0 )
end
