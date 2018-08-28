data:extend({
  {
    type = "technology",
    name = "water-electrolysis",
    icon = "__Enhanced-industrial-techniques__/graphics/technology/water-hydrolysis.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "water-electrolysis"
      }
    },
    prerequisites = {"oil-processing"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "d-d"
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
    prerequisites = {"coal-chemical-processing", "water-electrolysis"},
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
