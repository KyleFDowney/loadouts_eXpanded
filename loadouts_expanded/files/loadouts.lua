loadout_list =
{
--[[
	{
		name = "the Noita",
		folder = "noita",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff8f6790,
		cape_color_edge = 0xff6d4e76,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/noita/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/noita/wands/wand_2.xml",
			"data/entities/items/pickup/potion_water.xml",
		},
		perks =
		{
			"EDIT_WANDS_EVERYWHERE",
		},
	},
	{
		name = "a Hydromancer",
		folder = "hydromancer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xffa9782c,
		cape_color_edge = 0xff544221,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/hydromancer/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/hydromancer/wands/wand_2.xml",
			{
			"data/entities/items/pickup/potion_water.xml",
			amount = 2,
			}
		},
		perks =
		{
			"BREATH_UNDERWATER",
			"SPEED_DIVER",
		},
	},
	{
		name = "a Pyromancer",
		folder = "pyromancer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff2b3cb0,
		cape_color_edge = 0xff1b3776,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/pyromancer/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/pyromancer/wands/wand_2.xml",
			"mods/loadouts_expanded/files/potions/potion_fire.xml",
		},
		perks =
		{
			"PROTECTION_FIRE",
			"PROTECTION_EXPLOSION",
		},
	},
	{
		name = "an Electromancer",
		folder = "electromancer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xffcecfb8,
		cape_color_edge = 0xffb6b492,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/electromancer/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/electromancer/wands/wand_2.xml",
			"data/entities/items/pickup/thunderstone.xml",
		},
		perks =
		{
			"PROTECTION_ELECTRICITY",
			"MOVEMENT_FASTER",
		},
	},
	{
		name = "a Geomancer",
		folder = "geomancer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff435a78,
		cape_color_edge = 0xff3d4857,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/geomancer/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/geomancer/wands/wand_2.xml",
			{
			"mods/loadouts_expanded/files/potions/potion_soil.xml",
			amount = 3,
			}
		},
		perks =
		{
			"REPELLING_CAPE",
			"STRONG_KICK",
		},
	},
	{
		name = "a Slimy Wizard",
		folder = "slime",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xffad5dc7,
		cape_color_edge = 0xff704180,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/slime/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/slime/wands/wand_2.xml",
			"mods/loadouts_expanded/files/potions/potion_slime.xml",

		},
		perks =
		{
			"BLEED_SLIME",
		},
	},
	{
		name = "an Aeromancer",
		folder = "aeromancer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff7cafb0,
		cape_color_edge = 0xff749798,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/aeromancer/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/aeromancer/wands/wand_2.xml",

		},
		perks =
		{
			"EXTRA_KNOCKBACK",
			"HOVER_BOOST",
		},
	},
	{
		name = "a Tempemancer",
		folder = "tempemancer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xffbfb48c,
		cape_color_edge = 0xffa19875,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/tempemancer/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/tempemancer/wands/wand_2.xml",
			{
			"mods/loadouts_expanded/files/potions/potion_steam.xml",
			amount = 3,
			}

		},
		perks =
		{
			"PROTECTION_ELECTRICITY",
			"PROTECTION_EXPLOSION",
		},
	},
	{
		name = "a Cryomancer",
		folder = "cryomancer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xffbfb48c,
		cape_color_edge = 0xffa19875,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/cryomancer/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/cryomancer/wands/wand_2.xml",
			{
			"mods/loadouts_expanded/files/potions/potion_freeze.xml",
			amount = 3,
			}

		},
		perks =
		{
			"FREEZE_FIELD",
		},
	},
	{
		name = "an Arachnomancer",
		folder = "arachnomancer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff622d4a,
		cape_color_edge = 0xff402333,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/arachnomancer/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/arachnomancer/wands/wand_2.xml",

		},
		perks =
		{
			"ATTACK_FOOT",
			"REPELLING_CAPE",
		},
	},
	{
		name = "an Anthracomancer",
		folder = "anthracomancer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff474446,
		cape_color_edge = 0xff292929,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/anthracomancer/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/anthracomancer/wands/wand_2.xml",

		},
		perks =
		{
			"PROTECTION_FIRE",
		},
	},	
	{
		name = "a Vampire",
		folder = "vampire",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff0707c3,
		cape_color_edge = 0xff070792,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/vampire/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/vampire/wands/wand_2.xml",
			"mods/loadouts_expanded/files/potions/potion_blood.xml",

		},
		perks =
		{
			"VAMPIRISM",
			"REVENGE_BATS",
		},
	},
 ]]--
	--IN PROGRESS
	--[[
	{
		name = "a Psychemancer",
		folder = "psychemancer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff1dfbf3,
		cape_color_edge = 0xff18cec7,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/psychemancer/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/psychemancer/wands/wand_2.xml",
			"mods/loadouts_expanded/files/potions/potion_blood_worm.xml",
			"mods/loadouts_expanded/files/potions/potion_fungi.xml",

		},
		perks =
		{
			"REMOVE_FOG_OF_WAR",
			"PSYCHEDELIC",
		},
	},
	]]--
	--IN PROGRESS

	{
		name = "a Solimancer",
		folder = "solimancer",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xff6bfcff,
		cape_color_edge = 0xffb9ffff,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/solimancer/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/solimancer/wands/wand_2.xml",

		},
		perks =
		{
			"REMOVE_FOG_OF_WAR",
			"INFERNO",
		},
	},

	--IN PROGRESS
	--[[
	{
		name = "an Alchemist",
		folder = "alchemist",
		-- NOTE: Usually the game uses ARGB format for colours, but the cape colour uses ABGR here instead
		cape_color = 0xfff766cd,
		cape_color_edge = 0xffe15fbb,
		items = 
		{
			"mods/loadouts_expanded/files/loadouts/alchemist/wands/wand_1.xml",
			"mods/loadouts_expanded/files/loadouts/alchemist/wands/wand_2.xml",
			"mods/loadouts_expanded/files/potions/potion_purifying.xml",
			{
			"mods/loadouts_expanded/files/potions/potion_empty.xml",
			amount=3,
			}


		},
		perks =
		{
			"MIDAS_CIRCLE",
		},
	},
	]]--
}