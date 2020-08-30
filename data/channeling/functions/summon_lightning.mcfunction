
#detect the trident that hit
#define tag channeling.this
#define tag channeling.my_trident
tag @s add channeling.this
execute as @e[type=trident,tag=channeling.trident,nbt={DealtDamage:1b}] run function channeling:check_trident

#summon the area_effect_cloud
#define tag channeling.summoner
execute at @e[tag=channeling.my_trident] run summon area_effect_cloud ~ ~ ~ {Tags:["channeling.summoner"],Duration:2000}
execute as @e[tag=channeling.my_trident] at @s run scoreboard players operation @e[tag=channeling.summoner,distance=..0.1] channeling.level = @s channeling.level


#remove tags
tag @s remove channeling.this
tag @e[tag=channeling.my_trident] remove channeling.trident
tag @e[tag=channeling.my_trident] remove channeling.my_trident

#revoke advancement trigger
advancement revoke @s only channeling:hit_mob