
tag @s add channeling.my_trident

#simple UUID test
execute store result score @s infench.nb0 run data get entity @s Owner[0]
execute store result score @s infench.nb1 run data get entity @e[type=player,limit=1,tag=channeling.this] UUID[0]
execute unless score @s infench.nb0 = @s infench.nb1 run tag @s remove channeling.my_trident
execute unless score @s infench.nb0 = @s infench.nb1 run say nop0

execute store result score @s infench.nb0 run data get entity @s Owner[1]
execute store result score @s infench.nb1 run data get entity @e[type=player,limit=1,tag=channeling.this] UUID[1]
execute unless score @s infench.nb0 = @s infench.nb1 run tag @s remove channeling.my_trident
execute unless score @s infench.nb0 = @s infench.nb1 run say nop1

execute store result score @s infench.nb0 run data get entity @s Owner[2]
execute store result score @s infench.nb1 run data get entity @e[type=player,limit=1,tag=channeling.this] UUID[2]
execute unless score @s infench.nb0 = @s infench.nb1 run tag @s remove channeling.my_trident
execute unless score @s infench.nb0 = @s infench.nb1 run say nop2

execute store result score @s infench.nb0 run data get entity @s Owner[3]
execute store result score @s infench.nb1 run data get entity @e[type=player,limit=1,tag=channeling.this] UUID[3]
execute unless score @s infench.nb0 = @s infench.nb1 run tag @s remove channeling.my_trident