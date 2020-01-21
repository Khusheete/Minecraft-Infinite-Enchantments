#get the enchantment level
execute store result score @s infench.nb0 run data get storage infench ench[0].lvl 1
execute store result score @s infench.nb1 run data get entity @s Item.tag.Enchantments[0].lvl 1

#if the enchantments have the same level add one to the level
execute if score @s infench.nb0 = @s infench.nb1 run scoreboard players add @s infench.nb0 1
#otherwise, take the greatest
execute if score @s infench.nb0 < @s infench.nb1 run scoreboard players operation @s infench.nb0 = @s infench.nb1

execute store result storage infench enchsave[0].lvl short 1 run scoreboard players get @s infench.nb0

data remove storage infench ench[0]

function infench:merge_enchants
data remove entity @s Item.tag.Enchantments[0]