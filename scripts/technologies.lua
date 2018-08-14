if not eit.scripts.technologies then eit.scripts.technologies = {} end

-- @param technology the technology to modify
-- @param prerequisite the name of the technology that needs to be unlocked
function eit.scripts.technologies.addPrerequisite(technology, prerequisite)
  if data.raw.technology[technology] then
    if data.raw.technology[prerequisite] then
      if not data.raw.technology[technology].prerequisites then
        data.raw.technology[technology].prerequisites = {}
      end
      table.insert(data.raw.technology[technology].prerequisites, prerequisite)

    else
      log("Warning! Add prerequisite has failed! Prerequisite " .. prerequisite .. " does not exist")
    end
  else
    log("Warning! Add prerequisite has failed! Technology " .. technology .. " does not exist")
  end
end

-- @param technology the technology to modify
-- @param the name of the recipe to add
-- Requires: the recipe is not alredy present in the technology
function eit.scripts.technologies.addRecipeUnlock(technology, r)
  if data.raw.technology[technology] then
    if data.raw.recipe[r] then
      if not data.raw.technology[technology].effects then
        data.raw.technology[technology].effects = {}
      end
      table.insert(data.raw.technology[technology].effects, {
        type = "unlock-recipe",
        recipe = r
      })

    else
      log("Warning! Add recipe unlock has failed! Recipe " .. r .. " does not exist")
    end
  else
    log("Warning! Add recipe unlock has failed! Technology " .. technology .. " does not exist")
  end
end

-- @param technology the technology to modify
-- @param the name of the recipe to remove
function eit.scripts.technologies.removeRecipeUnlock(technology, r)
  local removed = false
  if data.raw.technology[technology] then
    if data.raw.recipe[r] then
      if data.raw.technology[technology].effects then
        for i, effect in pairs(data.raw.technology[technology].effects) do
          if effect.recipe == r then
            removed = true
            table.remove(data.raw.technology[technology].effects, i)
          end
        end
      end

    else
      log("Warning! Remove recipe unlock has failed! Recipe " .. r .. " does not exist")
    end
  else
    log("Warning! Remove recipe unlock has failed! Technology " .. technology .. " does not exist")
  end
  if not removed then
    log("Warning! Remove recipe unlock has failed! Could not find recipe " .. r .. " inside  technology " .. technology)
  end
end

-- @param technology the technology to modify
-- @param ingredients, the new ingredients for the technology
function eit.scripts.technologies.changeIngredients(technology, ingredients)
  if data.raw.technology[technology] then
    if ingredients then
      if data.raw.technology[technology].unit then
        data.raw.technology[technology].unit.ingredients = ingredients

      else
        log("Warning! Change technology ingredients has failed! Technology ".. technology .." is not well defined")
      end
    else
      log("Warning! Change technology ingredients has failed! There are any ingredients!")
    end
  else
    log("Warning! Change technology ingredients has failed! Technology " .. technology .. " does not exist")
  end
end

-- @param technology the technology to modify
-- @param newAmount, the new amount of science packs
function eit.scripts.technologies.changeIngredientCount(technology, newAmount)
  if data.raw.technology[technology] then
    if newAmount then
      if data.raw.technology[technology].unit then
        data.raw.technology[technology].unit.count = newAmount

      else
        log("Warning! Change technology ingredient count has failed! Technology ".. technology .." is not well defined")
      end
    else
      log("Warning! Change technology ingredient count has failed! The input is incorrect!")
    end
  else
    log("Warning! Change technology ingredient count has failed! Technology " .. technology .. " does not exist")
  end
end
