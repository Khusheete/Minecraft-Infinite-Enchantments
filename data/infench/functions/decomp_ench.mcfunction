#for a selected item, adds the enchantments to infench:ench storage

data modify storage infench enchsave prepend from storage infench ench[0]
execute store success score @s infench.temp run data modify storage infench ench[0].id set from entity @s Item.tag.Enchantments[0].id

execute if score @s infench.temp matches 1 run data remove storage infench ench[0]
execute if score @s infench.temp matches 0 run function infench:set_ench_lvl

execute unless data storage infench ench[0] run function infench:append_enchant


#data modify storage infench ench set from storage infench enchsave

#test if there is more enchants on the item, if there is more, rerun this function
execute if data entity @s Item.tag.Enchantments[0] run function infench:decomp_ench