
tag @s remove channeling.trident

#define tag channeling.summoner
summon area_effect_cloud ~ ~ ~ {Tags:["channeling.summoner"],Duration:2000}
scoreboard players operation @e[tag=channeling.summoner,distance=..0.1] channeling.level = @s channeling.level
