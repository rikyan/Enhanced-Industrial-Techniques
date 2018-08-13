data:extend({
  {
    type = "technology",
    name = "water-hydrolysis",
    icon = "__Enhanced-industrial-techniques__/graphics/technology/water-hydrolysis.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "water-hydrolysis"
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
  }
})
