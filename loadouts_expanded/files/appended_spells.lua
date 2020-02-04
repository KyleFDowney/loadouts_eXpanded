table.insert( actions,{
	id          = "RADIOACTIVE_TRAIL",
	name 		= "Toxic Trail",
	description = "Projectiles leave a trail of toxic sludge.",
		sprite 		= "mods/loadouts_expanded/files/gui/toxic_trail.png",
		type 		= ACTION_TYPE_MODIFIER,
		spawn_level                       = "0,1,2,3,4,5,6,7,8,9,10,11",
		spawn_probability                        = "1,1,1,1,1,1,1,1,1,1,1,1",
		mana = 15,
		custom_xml_file = "data/entities/misc/custom_cards/acid_trail.xml",
		action 		= function()
			c.trail_material = c.trail_material .. "radioactive_liquid,"
			c.trail_material_amount = c.trail_material_amount + 5
		end,
})
table.insert( actions,{
	id          = "SLIME_TRAIL",
	name 		= "Slime Trail",
	description = "Projectiles leave a trail of slime.",
		sprite 		= "mods/loadouts_expanded/files/gui/slime_trail.png",
		type 		= ACTION_TYPE_MODIFIER,
		spawn_level                       = "0,1,2,3,4,5,6,7,8,9,10,11",
		spawn_probability                        = "1,1,1,1,1,1,1,1,1,1,1,1",
		mana = 15,
		custom_xml_file = "data/entities/misc/custom_cards/water_trail.xml",
		action 		= function()
			c.trail_material = c.trail_material .. "slime,"
			c.trail_material_amount = c.trail_material_amount + 5
		end,
})
table.insert( actions,{
		id          = "HITFX_CRITICAL_TOXIC",
		name 		= "Critical on Toxic",
		description = "Adds 100% critical hit chance to projectiles on toxified enemies.",
		sprite 		= "mods/loadouts_expanded/files/gui/critical_toxic.png",
		type 		= ACTION_TYPE_MODIFIER,
		spawn_level                       = "1,3,4,5", 
		spawn_probability                 = "1,1,1,1", 
		price = 70,
		mana = 10,
		--max_uses = 50,
		action 		= function()
			c.extra_entities = c.extra_entities .. "mods/loadouts_expanded/files/spells/hitfx_critical_toxic.xml,"
			draw_actions( 1, true )
		end,
})
table.insert( actions,{
		id          = "HITFX_CRITICAL_SLIME",
		name 		= "Critical on Slimey",
		description = "Adds 100% critical hit chance to projectiles on slimey enemies.",
		sprite 		= "mods/loadouts_expanded/files/gui/critical_slime.png",
		type 		= ACTION_TYPE_MODIFIER,
		spawn_level                       = "1,3,4,5", 
		spawn_probability                 = "1,1,1,1", 
		price = 70,
		mana = 10,
		--max_uses = 50,
		action 		= function()
			c.extra_entities = c.extra_entities .. "mods/loadouts_expanded/files/spells/hitfx_critical_slime.xml,"
			draw_actions( 1, true )
		end,
})