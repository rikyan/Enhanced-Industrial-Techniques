if not eit.scripts.recipes then eit.scripts.recipes = {} end

function eit.scripts.recipes.hasDifficulty(recipe)
  local hasDifficulty = false
  if data.raw.recipe[recipe] then
    if data.raw.recipe[recipe].expensive then
      hasDifficulty = true
    end
  else
    log("Recipe " .. recipe .. " does not exist.")
  end
  return hasDifficulty
end

-- Requires: ingredient is a valid ingredient
function eit.scripts.recipes.remove_ingredient(recipe, ingredient)
  local removed = false

  if data.raw.recipe[recipe] then
      if data.raw.recipe[recipe].ingredients then
        for i, ing in pairs(data.raw.recipe[recipe].ingredients) do
          if ing.name == ingredient or ing[1] == ingredient then
            removed = true
            table.remove(data.raw.recipe[recipe].ingredients, i)
          end
        end
      end

      if data.raw.recipe[recipe].normal and data.raw.recipe[recipe].normal.ingredients then
        for i, ing in pairs(data.raw.recipe[recipe].normal.ingredients) do
          if ing.name == ingredient or ing[1] == ingredient then
            removed = true
            table.remove(data.raw.recipe[recipe].normal.ingredients, i)
          end
        end
      end

      if data.raw.recipe[recipe].normal and data.raw.recipe[recipe].expensive.ingredients then
        for i, ing in pairs(data.raw.recipe[recipe].expensive.ingredients) do
          if ing.name == ingredient or ing[1] == ingredient then
            removed = true
            table.remove(data.raw.recipe[recipe].expensive.ingredients, i)
          end
        end
      end

      if not removed then
        log("Cannot remove ingredient! Recipe" .. recipe .. "does not contain this ingredient!")
      end
  else
    log("Recipe " .. recipe .. " does not exist, cannot remove ingredient.")
  end
  return removed
end

-- Requires: ingredient is a valid ingredient
--           recipe does not contain alredy the ingredient
function eit.scripts.recipes.add_ingredient(recipe, ingredient)
  if data.raw.recipe[recipe] then
    if not data.raw.recipe[recipe].ingredients and not data.raw.recipe[recipe].normal then
      data.raw.recipe[recipe].ingredients = {}
      log("Cannot find any ingredients in recipe" .. recipe)
      log("Creating them...")
    end

    if data.raw.recipe[recipe].ingredients then
      table.insert(data.raw.recipe[recipe].ingredients, ingredient)

    elseif data.raw.recipe[recipe].normal then
      if not data.raw.recipe[recipe].normal.ingredients then
        data.raw.recipe[recipe].normal.ingredients = {}
        log("Cannot find any ingredients in recipe" .. recipe .. "in normal mode")
        log("Creating them...")
      end
      table.insert(data.raw.recipe[recipe].normal.ingredients, ingredient)
    end

   else
     log("Cannot remove ingredient, recipe" .. recipe .. "does not exist")
   end
end

function eit.scripts.recipes.add_expensive_ingredient(recipe, ingredient)
  if data.raw.recipe[recipe] then
    if data.raw.recipe[recipe].expensive and data.raw.recipe[recipe].expensive.ingredients then
      table.insert(data.raw.recipe[recipe].expensive.ingredients, ingredient)

    else
      log("Cannot add expensive ingredient, recipe"..recipe.."doesn't have an expensive version!")
    end
  else
    log("Cannot remove ingredient, recipe" .. recipe .. "does not exist")
  end
end


function eit.scripts.recipes.replace_ingredient(recipe, old, new)
  if eit.scripts.recipes.remove_ingredient(recipe, old) then
    eit.scripts.recipes.add_ingredient(recipe, new)
  end
end
