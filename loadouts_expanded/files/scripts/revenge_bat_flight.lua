--NOTE: This code is completely copied from the `snark_dash.lua` included in the Spellbound Bundle. All credit for the function of this spell belongs to the Spellbound Bundle.

dofile( "data/scripts/lib/utilities.lua" )

local ourEntity = GetUpdatedEntityID()

local player = get_players()[1]

local controlsComponent = EntityGetFirstComponent(player, "ControlsComponent")

local x, y = EntityGetTransform(ourEntity)

entity = EntityGetClosestWithTag( x, y, "homing_target" )

local entityX, entityY = EntityGetTransform( entity )
local headingX = entityX - x
local headingY = (entityY-5) - y

local len = math.sqrt((headingX*headingX) + (headingY*headingY))

local directionX = headingX / len
local directionY = headingY / len		

local didHit, hitX, hitY = Raytrace( x, y, entityX, entityY )


local headingHitX = entityX - hitX
local headingHitY = entityY - hitY

local hitDistance = math.sqrt((headingHitX*headingHitX) + (headingHitY*headingHitY))

local Speed = 22

local ourVelocityComponent = EntityGetComponent(ourEntity, "VelocityComponent")
local ourProjectileComponent = EntityGetComponent(ourEntity, "ProjectileComponent")[1]

if(ourVelocityComponent ~= nil and didHit == true and hitDistance < 120)then
	
	edit_component( ourEntity, "VelocityComponent", function(comp,vars)
		local velocityX, velocityY = ComponentGetValueVector2( comp, "mVelocity")

		local vel_x = directionX

		local vel_y = directionY
		
		local len = math.sqrt((vel_x*vel_x) + (vel_y*vel_y))

		local dir_x = vel_x / len
		local dir_y = vel_y / len

		local force_x = velocityX + (dir_x * Speed)
		local force_y = velocityY + (dir_y * Speed)
		
		ComponentSetValueVector2( comp, "mVelocity", force_x, force_y )

	end)	

else
	if script_wait_frames( entity_id, 1000 ) then  return  end
	edit_component( ourEntity, "VelocityComponent", function(comp,vars)
		ComponentSetValueVector2( comp, "mVelocity", math.rad(Random(-2000,2000)), math.rad(Random(-2000,2000)) )
	end)

end
