table.insert( perk_list, 
    {
		id = "REVENGE_BATS",
		ui_name = "Revenge Bats",
		ui_description = "Bats fly to your defense.",
		ui_icon = "mods/loadouts_expanded/files/gui/perks/revenge_bats.png",
		perk_icon = "mods/loadouts_expanded/files/gfx/perks/revenge_bats.png",
		usable_by_enemies = true,
		func = function( entity_perk_item, entity_who_picked, item_name )
		
			EntityAddComponent( entity_who_picked, "LuaComponent", 
			{ 
				script_damage_received = "mods/loadouts_expanded/files/scripts/perks/revenge_bats.lua",
				execute_every_n_frame = "-1",
			} )
			
		end
})

--[[
table.insert( perk_list, 
    {
		id = "PSYCHEDELIC",
		ui_name = "Volatile Psychedelics",
		ui_description = "While under the effects of psychedlics, you take 50% less damage.\nWhen taking damage, you emit explosive glitter that can\ndamage yourself, potentially causing a chain reaction.",
		ui_icon = "mods/loadouts_expanded/files/gui/perks/revenge_bats.png",
		perk_icon = "mods/loadouts_expanded/files/gfx/perks/revenge_bats.png",
		usable_by_enemies = true,
		func = function( entity_perk_item, entity_who_picked, item_name )
		
			EntityAddComponent( entity_who_picked, "LuaComponent", 
			{ 
				script_damage_received = "mods/loadouts_expanded/files/scripts/perks/psychedelic.lua",
				execute_every_n_frame = "-1",
			} )
			
		end
})


table.insert( perk_list,
	{
		id = "INFERNO",
		ui_name = "Inferno",
		ui_description = "You are hot as hellfire.",
		ui_icon = "data/ui_gfx/perk_icons/protection_fire.png",
		perk_icon = "data/items_gfx/perks/protection_fire.png",
		game_effect = "PROTECTION_FIRE",
		usable_by_enemies = true,
		func = function( entity_perk_item, entity_who_picked, item_name )
		
			local x,y = EntityGetTransform( entity_who_picked )
			local child_id = EntityLoad( "mods/loadouts_expanded/files/entities/misc/perks/inferno.xml", x, y )
			EntityAddChild( entity_who_picked, child_id )
				
		end,
	})
]]--

