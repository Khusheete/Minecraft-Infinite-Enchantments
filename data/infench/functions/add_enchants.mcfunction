#this function will add all the enchants from all the items with the tag infench.same
#define tag infench.selected
tag @e[tag=infench.same,limit=1] add infench.selected

execute as @e[tag=infench.selected] run function infench:decomp_ench

kill @e[tag=infench.selected]
execute if entity @e[tag=infench.same] run function infench:add_enchants