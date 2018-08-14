eit.scripts.recipes.replace_ingredient("science-pack-1", "copper-plate", {type = "item", name = "copper-cable", amount = 2 })

eit.scripts.technologies.removeRecipeUnlock("military-2", "grenade")
eit.scripts.technologies.removeRecipeUnlock("military-2", "military-science-pack")

eit.scripts.technologies.addRecipeUnlock("explosives", "grenade")
eit.scripts.technologies.addRecipeUnlock("explosives", "military-science-pack")
eit.scripts.technologies.addPrerequisite("explosives", "military-2")
eit.scripts.technologies.changeIngredients("explosives", {{"science-pack-1", 1}, {"science-pack-2", 1}})
eit.scripts.technologies.addPrerequisite("explosives", "tnt-chemical-process")

eit.scripts.recipes.replace_ingredient("grenade", "coal", {type = "item", name = "explosives", amount = 4})
eit.scripts.recipes.remove_ingredient("explosives", "sulfur")
eit.scripts.recipes.remove_ingredient("explosives", "coal")
eit.scripts.recipes.remove_ingredient("explosives", "water")
eit.scripts.recipes.add_ingredient("explosives", {type = "item", name = "tnt", amount = 1})
eit.scripts.recipes.add_ingredient("explosives", {type = "item", name = "plastic-bar", amount = 1})
eit.scripts.recipes.add_expensive_ingredient("explosives", {type = "item", name = "tnt", amount = 2})
eit.scripts.recipes.add_expensive_ingredient("explosives", {type = "item", name = "plastic-bar", amount = 2})
