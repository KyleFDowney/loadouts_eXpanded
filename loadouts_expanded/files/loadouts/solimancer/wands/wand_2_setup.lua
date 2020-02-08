dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )
--SetRandomSeed( x, y )

local ability_comp = EntityGetFirstComponent( entity_id, "AbilityComponent" )

local wand = { }

wand.deck_capacity = 5
wand.actions_per_round = 1
wand.reload_time = 34
wand.shuffle_deck_when_empty = 1
wand.fire_rate_wait = 14
wand.spread_degrees = 5
wand.speed_multiplier = 1
wand.mana_charge_speed = 32
wand.mana_max = 180

-- Apply Wand Properties

ComponentObjectSetValue( ability_comp, "gun_config", "reload_time", wand.reload_time )
ComponentObjectSetValue( ability_comp, "gunaction_config", "fire_rate_wait", wand.fire_rate_wait )
ComponentSetValue( ability_comp, "mana_charge_speed", wand.mana_charge_speed )
ComponentObjectSetValue( ability_comp, "gun_config", "actions_per_round", wand.actions_per_round )
ComponentObjectSetValue( ability_comp, "gun_config", "deck_capacity", wand.deck_capacity )
ComponentObjectSetValue( ability_comp, "gun_config", "shuffle_deck_when_empty", wand.shuffle_deck_when_empty )
ComponentObjectSetValue( ability_comp, "gunaction_config", "spread_degrees", wand.spread_degrees )
ComponentObjectSetValue( ability_comp, "gunaction_config", "speed_multiplier", wand.speed_multiplier )
ComponentSetValue( ability_comp, "mana_max", wand.mana_max )
ComponentSetValue( ability_comp, "mana", wand.mana_max )


-- Add Wand Actions
AddGunAction( entity_id, "ROCKET" )
AddGunAction( entity_id, "ROCKET" )