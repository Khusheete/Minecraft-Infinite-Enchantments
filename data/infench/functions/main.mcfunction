#test for every items if it is enchanted
#define tag infench.enchanted
#define tag infench.not_enchanted
execute as @e[type=item,tag=!infench.enchanted,tag=!infench.not_enchanted] if data entity @s Item.tag.Enchantments run tag @s add infench.enchanted
tag @e[type=item,tag=!infench.enchanted] add infench.not_enchanted

#combine the enchants
execute as @e[type=item,nbt={OnGround:1b},tag=infench.enchanted] at @s if block ~ ~-1 ~ #minecraft:anvil run function infench:tests/multiple_items
tag @e[type=item,nbt={OnGround:1b}] remove infench.checked

