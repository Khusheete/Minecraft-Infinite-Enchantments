## Imports
kill @e[nbt={inGround:1b},tag=mult.ongroundkill]
#define objective mult.multishot
#define objective mult.c_shot
#define objective mult.xm
#define objective mult.ym
#define objective mult.zm
#define objective mult.projectile
scoreboard objectives add mult.multishot dummy
scoreboard objectives add mult.c_shot minecraft.used:minecraft.crossbow
scoreboard objectives add mult.xm dummy
scoreboard objectives add mult.ym dummy
scoreboard objectives add mult.zm dummy
scoreboard objectives add mult.projectile dummy

#define tag mult.source

##### MAIN #####
## Check lvl
execute as @a[scores={mult.c_shot=1..}] store result score @s mult.multishot run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:multishot"}].lvl
scoreboard players remove @a mult.multishot 1

## Check motion
execute as @a[scores={mult.c_shot=1..}] at @s run function mult:get_motion

## summon projectiles
execute as @a[scores={mult.c_shot=1..,mult.projectile=1..2,mult.multishot=1..}] at @s run tag @e[type=arrow,limit=1,sort=nearest] add mult.source
execute as @a[scores={mult.c_shot=1..,mult.projectile=1..2,mult.multishot=1..}] at @s run function mult:arrow_shot

execute as @a[scores={mult.c_shot=1..,mult.projectile=3,mult.multishot=1..}] at @s run function mult:spectral_arrow_shot

execute as @a[scores={mult.c_shot=1..,mult.projectile=4,mult.multishot=1..}] at @s run tag @e[type=firework_rocket,limit=1,sort=nearest] add mult.source
execute as @a[scores={mult.c_shot=1..,mult.projectile=4,mult.multishot=1..}] at @s run function mult:firework_shot

## Reset
scoreboard players reset @a[scores={mult.c_shot=1..}] mult.c_shot
tag @e[tag=mult.source] remove mult.source


#detect crossbow projectile
scoreboard players set @a mult.projectile 0
execute as @a if data entity @s SelectedItem.tag.ChargedProjectiles[{id:"minecraft:arrow"}] run scoreboard players set @s mult.projectile 1
execute as @a if data entity @s SelectedItem.tag.ChargedProjectiles[{id:"minecraft:tipped_arrow"}] run scoreboard players set @s mult.projectile 2
execute as @a if data entity @s SelectedItem.tag.ChargedProjectiles[{id:"minecraft:spectral_arrow"}] run scoreboard players set @s mult.projectile 3
execute as @a if data entity @s SelectedItem.tag.ChargedProjectiles[{id:"minecraft:firework_rocket"}] run scoreboard players set @s mult.projectile 4
