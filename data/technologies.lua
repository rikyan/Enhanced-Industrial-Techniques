data:extend({
  {
    type = "technology",
    name = "water-hydrolysis",
    icon_size = 128,
    icon = "__base__/graphics/technology/oil-processing.png",
    --effects =
    --{
    --  {
    --    type = "unlock-recipe",
    --    recipe = "water-hydrolysis"
    --  }
    --},
    prerequisites = {"oil-processing"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "coal-chemical-processing",
    icon_size = 128,
    icon = "__base__/graphics/technology/oil-processing.png",
    prerequisites = {"oil-processing"},
    unit =
    {
      count = 100,
      time = 30,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "coal-chemical-processing"
      }
    }
  },
  {
    type = "technology",
    name = "tnt-chemical-process",
    icon_size = 128,
    icon = "__base__/graphics/technology/oil-processing.png",
    prerequisites = {"coal-chemical-processing", "water-hydrolysis"},
    unit =
    {
      count = 100,
      time = 30,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}}
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ammonia-oxidation"
      },
      {
        type = "unlock-recipe",
        recipe = "nitrogen-dioxide-absorption"
      },
      {
        type = "unlock-recipe",
        recipe = "tar-distillation"
      },
      {
        type = "unlock-recipe",
        recipe = "tnt"
      }
    }
  }
})
