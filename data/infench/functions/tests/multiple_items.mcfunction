#Tests if there is multiple of the same item in the same spot

#define tag infench.checked
tag @s add infench.checked
#define tag infench.toTest
execute as @e[type=item,distance=..1,tag=!infench.checked,tag=infench.enchanted] run tag @s add infench.toTest
execute if entity @e[tag=infench.toTest] run function infench:tests/same_items

#setup the data for the enchanting processing
#save what the item is
#define storage minecraft:infench
data modify storage minecraft:infench savedItem set from entity @s Item.id

#empty the two arrays for the enchantments
data modify storage infench ench set from entity @s Item.tag.Enchantments
data modify storage infench enchsave set value []

#call the function that will process the enchants
execute if entity @e[tag=infench.same] at @s run function infench:enchant