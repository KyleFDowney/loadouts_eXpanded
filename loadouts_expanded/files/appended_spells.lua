table.insert( actions,{
	id          = "RADIOACTIVE_TRAIL",
	name 		= "Toxic Trail",
	description = "Projectiles leave a trail of toxic sludge.",
		sprite 		= "mods/loadouts_expanded/files/gui/spells/toxic_trail.png",
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
		sprite 		= "mods/loadouts_expanded/files/gui/spells/slime_trail.png",
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
	id          = "CHARCOAL_TRAIL",
	name 		= "Charcoal Trail",
	description = "Projectiles leave a trail of burning coals.",
		sprite 		= "mods/loadouts_expanded/files/gui/spells/charcoal_trail.png",
		type 		= ACTION_TYPE_MODIFIER,
		spawn_level                       = "0,1,2,3,4,5,6,7,8,9,10,11",
		spawn_probability                        = "1,1,1,1,1,1,1,1,1,1,1,1",
		mana = 15,
		custom_xml_file = "data/entities/misc/custom_cards/water_trail.xml",
		action 		= function()
			c.trail_material = c.trail_material .. "coal,"
			c.trail_material = c.trail_material .. "fire,"
			c.trail_material_amount = c.trail_material_amount + 5


		end,
})
table.insert( actions,{
		id          = "HITFX_CRITICAL_TOXIC",
		name 		= "Critical on Toxic",
		description = "Adds 100% critical hit chance to projectiles on toxified enemies.",
		sprite 		= "mods/loadouts_expanded/files/gui/spells/critical_toxic.png",
		type 		= ACTION_TYPE_MODIFIER,
		spawn_level                       = "1,3,4,5", 
		spawn_probability                 = "1,1,1,1", 
		price = 70,
		mana = 10,
		action 		= function()
			c.extra_entities = c.extra_entities .. "mods/loadouts_expanded/files/spells/hitfx_critical_toxic.xml,"
			draw_actions( 1, true )
		end,
})
table.insert( actions,{
		id          = "HITFX_CRITICAL_SLIME",
		name 		= "Critical on Slimey",
		description = "Adds 100% critical hit chance to projectiles on slimey enemies.",
		sprite 		= "mods/loadouts_expanded/files/gui/spells/critical_slime.png",
		type 		= ACTION_TYPE_MODIFIER,
		spawn_level                       = "1,3,4,5", 
		spawn_probability                 = "1,1,1,1", 
		price = 70,
		mana = 10,
		action 		= function()
			c.extra_entities = c.extra_entities .. "mods/loadouts_expanded/files/spells/hitfx_critical_slime.xml,"
			draw_actions( 1, true )
		end,
})
table.insert(actions,{
		id          = "SPIDER",
		name 		= "Bursting Spider",
		description = "Throw a spider that bursts into poison.",
		sprite 		= "mods/loadouts_expanded/files/gui/spells/spider.png",
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "0,2,4",
		spawn_probability                 = "1,1,1",
		price = 80,
		mana = 25,
		action 		= function()
			add_projectile("mods/loadouts_expanded/files/projectiles/spider.xml")
			-- damage 0.8 = 20
			c.fire_rate_wait = c.fire_rate_wait + 10
			c.spread_degrees = c.spread_degrees + 5
		end,
})
table.insert(actions,{
		id          = "BATS",
		name 		= "Bats",
		description = "Summon three bats that attack nearby enemies.",
		sprite 		= "mods/loadouts_expanded/files/gui/spells/bats.png",
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "0,2,4",
		spawn_probability                 = "1,1,1",
		price = 100,
		mana = 30,
		action 		= function()
		c.extra_entities = c.extra_entities .. "mods/loadouts_expanded/files/entities/misc/avoiding_arc_minor.xml,"
			add_projectile("mods/loadouts_expanded/files/projectiles/bat.xml")
			add_projectile("mods/loadouts_expanded/files/projectiles/bat.xml")
			add_projectile("mods/loadouts_expanded/files/projectiles/bat.xml")
			c.fire_rate_wait = c.fire_rate_wait + 15
			c.spread_degrees = c.spread_degrees + 15
		end,
})

table.insert(actions,{
		id          = "HITFX_EXPLOSION_BLOOD_ON_BLOOD",
		name 		= "Bloody Explosion",
		description = "Explodes on bloody enemies, creating even more blood.",
		sprite 		= "mods/loadouts_expanded/files/gui/spells/explode_blood_on_blood.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/freeze_unidentified.png",
		type 		= ACTION_TYPE_MODIFIER,
		spawn_level                       = "1,3,4,5", -- HITFX_BURNING_CRITICAL_HIT
		spawn_probability                 = "1,1,1,1", -- HITFX_BURNING_CRITICAL_HIT
		price = 100,
		mana = 20,
		--max_uses = 50,
		action 		= function()
			c.extra_entities = c.extra_entities .. "mods/loadouts_expanded/files/entities/misc/hitfx_explode_blood_blood.xml,"
			draw_actions( 1, true )
		end,
})