import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;


// Remove unwanted recipies
craftingTable.removeByName("rotomphonecobblemon:recipe_rotom_phone");
<recipetype:mekanism:crushing>.removeByName("mekanism:processing/netherite/ancient_debris_to_dirty_scrap");
<recipetype:mekanism:enriching>.removeByName("mekanism:processing/netherite/dirty_scrap_to_scrap");


// Adding rotom phone recipe
craftingTable.addShaped("recipe_rotom_phone", <item:rotomphonecobblemon:rotom_phone>, [
    [<item:minecraft:copper_ingot>, <item:minecraft:glass_pane>, <item:minecraft:copper_ingot>],
    [<item:minecraft:copper_ingot>, <item:sophisticatedstorage:basic_to_diamond_tier_upgrade>, <item:minecraft:copper_ingot>],
    [<item:minecraft:copper_ingot>, <item:cobblemon:max_revive>, <item:minecraft:copper_ingot>]
]);


// Adding TR recipes
<recipetype:create:sequenced_assembly>.addJsonRecipe("recipe_tr_1", {
  "type": "create:sequenced_assembly",
  "ingredient": {
    "item": "mekanism:hdpe_sheet"
  },
  "loops": 1,
  "results": [
    {
      "item": "simpletms:tr_blank"
    }
  ],
  "sequence": [
	{
	"type": "create_new_age:energising",
	"energy_needed": 500000,
	"ingredients": [
	{
		"item": "create:incomplete_precision_mechanism"
	}
	],
	"results": [
	{
		"item": "create:incomplete_precision_mechanism"
	}
	]
	},
	{
      "type": "create:pressing",
      "ingredients": [
        {
          "item": "create:incomplete_precision_mechanism"
        }
      ],
      "results": [
        {
          "item": "create:incomplete_precision_mechanism"
        }
        ]
	},
	{
        "type": "create:deploying",
        "ingredients": [
        	{
			"item": "create:incomplete_precision_mechanism"
		},
		{
			"item": "create:precision_mechanism"
		}],
		"results": [{
				"item": "create:incomplete_precision_mechanism"
		}]
	},
	{
	"type": "create:filling",
	"ingredients": [
		{
			"item": "create:incomplete_precision_mechanism"
		},
		{
			"amount": 1000,
			"fluid": "create_enchantment_industry:experience",
			"nbt": {}
		}
        ],
	"results": [{
		"item":"create:incomplete_precision_mechanism"
	}]
	}
	
  ],
  "transitionalItem": {
    "item": "create:incomplete_precision_mechanism"
  }
}
);

<recipetype:create:sequenced_assembly>.addJsonRecipe("recipe_tr_2", {
  "type": "create:sequenced_assembly",
  "ingredient": {
    "tag": "minecraft:music_discs"
  },
  "loops": 1,
  "results": [
    {
      "item": "simpletms:tr_blank"
    }
  ],
  "sequence": [
	{
	"type": "create_new_age:energising",
	"energy_needed": 500000,
	"ingredients": [
	{
		"item": "create:incomplete_precision_mechanism"
	}
	],
	"results": [
	{
		"item": "create:incomplete_precision_mechanism"
	}
	]
	},
	{
      "type": "create:pressing",
      "ingredients": [
        {
          "item": "create:incomplete_precision_mechanism"
        }
      ],
      "results": [
        {
          "item": "create:incomplete_precision_mechanism"
        }
        ]
	},
	{
        "type": "create:deploying",
        "ingredients": [
        	{
			"item": "create:incomplete_precision_mechanism"
		},
		{
			"item": "create:precision_mechanism"
		}],
		"results": [{
				"item": "create:incomplete_precision_mechanism"
		}]
	},
	{
	"type": "create:filling",
	"ingredients": [
		{
			"item": "create:incomplete_precision_mechanism"
		},
		{
			"amount": 1000,
			"fluid": "create_enchantment_industry:experience",
			"nbt": {}
		}
        ],
	"results": [{
		"item":"create:incomplete_precision_mechanism"
	}]
	}
	
  ],
  "transitionalItem": {
    "item": "create:incomplete_precision_mechanism"
  }
}
);

//Adding TM recipe
<recipetype:create:compacting>.addJsonRecipe("recipe_tm", {
  "type": "create:compacting",
  "ingredients": [
     {
      "amount": 1000,
      "fluid": "create_enchantment_industry:hyper_experience",
      "nbt": {}
     },
     {
	"item": "simpletms:tr_blank"
     },
     {
	"item": "extradisks:withering_processor"
     },
     {
	"item": "quark:dragon_scale"
     },
     {
	"item": "unimplemented_items:bottle_cap_gold"
     }
  ],
  "results": [
    {
      "item": "simpletms:tm_blank"
    }
  ]
});
