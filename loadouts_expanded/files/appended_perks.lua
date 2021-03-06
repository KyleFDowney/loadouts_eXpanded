table.insert( perk_list, 
    {
		id = "REVENGE_BATS",
		ui_name = "Revenge Bats",
		ui_description = "Bats fly to your defense.",
		ui_icon = "mods/loadouts_expanded/files/gfx/gui/perks/revenge_bats.png",
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
		ui_icon = "mods/loadouts_expanded/files/gfx/gui/perks/revenge_bats.png",
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
]]--


table.insert( perk_list,
	{
		id = "INFERNO",
		ui_name = "Inferno",
		ui_description = "You are boiling hot & immune to fire.\n You also burst into flames when taking damage.",
		ui_icon = "mods/loadouts_expanded/files/gfx/gui/perks/inferno.png",
		perk_icon = "mods/loadouts_expanded/files/gfx/perks/inferno.png",
		game_effect = "PROTECTION_FIRE",
		usable_by_enemies = true,
		func = function( entity_perk_item, entity_who_picked, item_name )
		
			local x,y = EntityGetTransform( entity_who_picked )
			local child_id = EntityLoad( "mods/loadouts_expanded/files/entities/misc/perks/inferno.xml", x, y )
			EntityAddChild( entity_who_picked, child_id )
			EntityAddComponent( entity_who_picked, "LuaComponent", 
			{ 
				script_damage_received = "mods/loadouts_expanded/files/scripts/perks/inferno.lua",
				execute_every_n_frame = "-1",
			} )
				
		end,
})
table.insert( perk_list,
	{
		id = "MIDAS_CIRCLE",
		ui_name = "Midas Circle",
		ui_description = "You convert nearby earth minerals into gold.\nIncludes: Brass, Copper, Silver, & Diamond.",
		ui_icon = "mods/loadouts_expanded/files/gfx/gui/perks/midas.png",
		perk_icon = "mods/loadouts_expanded/files/gfx/perks/midas.png",
		usable_by_enemies = true,
		func = function( entity_perk_item, entity_who_picked, item_name )
		
			local x,y = EntityGetTransform( entity_who_picked )
			local child_id = EntityLoad( "mods/loadouts_expanded/files/entities/misc/perks/midas_circle.xml", x, y )
			EntityAddChild( entity_who_picked, child_id )
				
		end,
})
