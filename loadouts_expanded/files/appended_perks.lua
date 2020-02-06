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