dofile_once("data/scripts/lib/utilities.lua")

function damage_received( damage, desc, entity_who_caused, is_fatal )
	local entity_id    = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )
	
	SetRandomSeed( GameGetFrameNum(), x + y + entity_id )
	
	if ( entity_who_caused == entity_id ) or ( ( EntityGetParent( entity_id ) ~= NULL_ENTITY ) and ( entity_who_caused == EntityGetParent( entity_id ) ) ) then return end

	-- check that we're only shooting every 10 frames
	if script_wait_frames( entity_id, 5 ) then  return  end
	
	local angle = math.rad( Random( 1, 360 ) )
	local angle_random = math.rad( Random( -5, 5 ) )
	local vel_x = 0
	local vel_y = 0
	
	if ( entity_who_caused ~= nil ) and ( entity_who_caused ~= NULL_ENTITY ) then
		local ex, ey = EntityGetTransform( entity_who_caused )
		
		if ( ex ~= nil ) and ( ey ~= nil ) then
			angle = 0 - math.atan2( ey - y, ex - x )
		end
	end
	
	vel_x = math.cos( angle + angle_random )
	vel_y = 0- math.sin( angle + angle_random )
	shoot_projectile( entity_id, "mods/loadouts_expanded/files/entities/misc/perks/revenge_bat.xml", x, y, vel_x, vel_y )
	shoot_projectile( entity_id, "mods/loadouts_expanded/files/entities/misc/perks/revenge_bat.xml", x, y, vel_x, vel_y )
	shoot_projectile( entity_id, "mods/loadouts_expanded/files/entities/misc/perks/revenge_bat.xml", x, y, vel_x, vel_y )
	shoot_projectile( entity_id, "mods/loadouts_expanded/files/entities/misc/perks/revenge_bat.xml", x, y, vel_x, vel_y )
	shoot_projectile( entity_id, "mods/loadouts_expanded/files/entities/misc/perks/revenge_bat.xml", x, y, vel_x, vel_y )
end
