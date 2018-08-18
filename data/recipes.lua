data:extend({
  {
    type = "recipe",
    name = "coal-chemical-processing",
    category = "oil-processing",
    subgroup = "fluid-recipes",
    icon = "__base__/graphics/icons/fluid/coal-liquefaction.png",
    icon_size = 32,
    normal =
    {
      energy_required = 5,
      ingredients = {{"coal", 10}},
      results =
      {
        {type = "fluid", name = "ammonia", amount = 20},
        {type = "fluid", name = "tar", amount = 40},
        {type = "fluid", name = "city-gas", amount = 10}
      }
    },
    expensive =
    {
      energy_required = 5,
      ingredients = {{"coal", 20}},
      results =
      {
        {type = "fluid", name = "ammonia", amount = 20},
        {type = "fluid", name = "tar", amount = 40},
        {type = "fluid", name = "city-gas", amount = 10}
      }
    },
    emissions_multiplier = 1.5,
    enabled = false,
    order = "a[oil.processing]-d"
  },
  {
    type = "recipe",
    name = "ammonia-oxidation",
    category = "chemistry",
    subgroup = "fluid-recipes",
    icon = "__Enhanced-industrial-techniques__/graphics/items/no2.png",
    icon_size = 32,
    ingredients =
    {
      {type = "fluid", name = "ammonia", amount = 10},
      {type = "fluid", name = "oxygen", amount = 10}
    },
    results =
    {
      {type = "fluid", name = "nitrogen-dioxide", amount = 10},
      {type = "fluid", name = "hydrogen", amount = 15}
    },
    energy_required = 5,
    enabled = false,
    main_product = "nitrogen-dioxide",
    crafting_machine_tint =
    {
      primary = {r = 0, g = 0.3, b = 0.05},
      secondary = {r = 0.4, g = 0.25, b = 0},
      tertiary = {r = 0.2, g = 0.3, b = 0.05}
    }
  },
  {
    type = "recipe",
    name = "nitrogen-dioxide-absorption",
    category = "chemistry",
    subgroup = "fluid-recipes",
    icon = "__Enhanced-industrial-techniques__/graphics/items/hno3.png",
    icon_size = 32,
    energy_required = 3,
    ingredients =
    {
      {type = "fluid", name = "nitrogen-dioxide", amount = 10},
      {type = "fluid", name = "water", amount = 20}
    },
    results =
    {
      {type = "fluid", name = "nitric-acid", amount = 10}
    },
    emissions_multiplier = 0.5,
    enabled = false,
    main_product = "nitric-acid",
    crafting_machine_tint =
    {
      primary = {r = 0.8, g = 0.5, b = 0},
      secondary = {r = 0.8, g = 0.7, b = 0},
      tertiary = {r = 0.8, g = 0.6, b = 0}
    }
  },
  {
    type = "recipe",
    name = "tar-distillation",
    category = "chemistry",
    subgroup = "fluid-recipes",
    icon = "__Enhanced-industrial-techniques__/graphics/items/benzene.png",
    icon_size = 32,
    energy_required = 8,
    ingredients =
    {
      {type = "fluid", name = "tar", amount = 20}
    },
    results =
    {
      {type = "fluid", name = "benzene", amount = 10},
      {type = "fluid", name = "toluene", amount = 10}
    },
    enabled = false,
    crafting_machine_tint =
    {
      primary = {r = 0.2, g = 0.2, b = 0.2},
      secondary = {r = 0.2, g = 0.2, b = 0.6},
      tertiary = {r = 0.2, g = 0.2, b = 0.4}
    }
  },
  {
    type = "recipe",
    name = "tnt",
    category = "chemistry",
    subgroup = "fluid-recipes",
    icon = "__Enhanced-industrial-techniques__/graphics/items/tnt.png",
    icon_size = 32,
    energy_required = 8,
    ingredients =
    {
      {type = "fluid", name = "nitric-acid", amount = 5},
      {type = "fluid", name = "toluene", amount = 10}
    },
    results =
    {
      {type = "item", name = "tnt", amount = 2}
    },
    enabled = false,
    main_product = "tnt",
    crafting_machine_tint =
    {
      primary = {r = 0.8, g = 0.5, b = 0},
      secondary = {r = 0.8, g = 0.7, b = 0},
      tertiary = {r = 0.8, g = 0.6, b = 0}
    }
  },
  {
    type = "recipe",
    name = "water-electrolysis",
    category = "chemistry",
    subgroup = "fluid-recipes",
    icon = "__Enhanced-industrial-techniques__/graphics/recipes/water-hydrolysis-recipe.png",
    icon_size = 32,
    crafting_machine_tint = { primary = {r=0, g=0.34, b=0.6}, secondary = {r=0.756, g=0.33, b=0.38}, tertiary = {r=0.81, g=0.9, b=0.9}},
    energy_required = 3,
    ingredients =
    {
      {type = "fluid", name = "water", amount = 10}
    },
    results =
    {
      {type = "fluid", name = "oxygen", amount = 10},
      {type = "fluid", name = "hydrogen", amount = 20}
    },
    enabled = false,
  }
})
