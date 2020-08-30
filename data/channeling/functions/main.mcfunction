
#set the tag for the trident that has been thrown
execute as @a[scores={channeling.shot=1..,channeling.level=1..}] at @s if entity @e[type=trident,distance=..2] run function channeling:set_trident_tag
scoreboard players set @a[scores={channeling.shot=1..}] channeling.shot 0

#check level
execute as @a store result score @s channeling.level run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:channeling"}].lvl
scoreboard players remove @a channeling.level 1


scoreboard players add @e[tag=channeling.summoner] channeling.timer 1
execute as @e[tag=channeling.summoner,scores={channeling.timer=5..}] at @s run summon lightning_bolt
scoreboard players remove @e[tag=channeling.summoner,scores={channeling.timer=5..}] channeling.level 1
scoreboard players set @e[tag=channeling.summoner,scores={channeling.timer=5..}] channeling.timer 0
kill @e[tag=channeling.summoner,scores={channeling.level=..0}]