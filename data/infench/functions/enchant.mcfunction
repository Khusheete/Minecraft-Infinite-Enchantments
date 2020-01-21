#creates the combined enchanted item with all the items having the tag infench.same

function infench:add_enchants

#then summon the item and set the enchants
#define tag infench.newitem
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["infench.newitem"]}
execute as @e[tag=infench.newitem] run data modify entity @s Item.id set from storage infench savedItem
execute as @e[tag=infench.newitem] run data modify entity @s Item.tag.Enchantments set from storage infench ench

tag @e[tag=infench.newitem] remove infench.newitem
kill @s