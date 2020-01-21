#take a random item to test
#define tag infench.testing
tag @e[tag=infench.toTest,limit=1] add infench.testing

#test if the selected item is the same as the first one
data modify storage infench savedItem set from entity @e[tag=infench.testing,limit=1] Item.id
execute store success score @s infench.temp run data modify entity @e[tag=infench.testing,limit=1] Item.id set from entity @s Item.id
data modify entity @e[tag=infench.testing,limit=1] Item.id set from storage infench savedItem

#define tag infench.same
execute if score @s infench.temp matches 0 run tag @e[tag=infench.testing] add infench.same


#remove the random item from the list
tag @e[tag=infench.testing] remove infench.toTest
tag @e[tag=infench.testing] remove infench.testing
execute if entity @e[tag=infench.toTest] run function infench:tests/same_items