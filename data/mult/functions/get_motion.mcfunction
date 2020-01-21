
execute as @a at @s if score @s mult.c_shot matches 1 if score @s mult.projectile matches 1..2 store result score @s mult.xm as @e[type=arrow,limit=1,sort=nearest] run data get entity @s Motion[0] 1000000
execute as @a at @s if score @s mult.c_shot matches 1 if score @s mult.projectile matches 1..2 store result score @s mult.ym as @e[type=arrow,limit=1,sort=nearest] run data get entity @s Motion[1] 1000000
execute as @a at @s if score @s mult.c_shot matches 1 if score @s mult.projectile matches 1..2 store result score @s mult.zm as @e[type=arrow,limit=1,sort=nearest] run data get entity @s Motion[2] 1000000

execute as @a at @s if score @s mult.c_shot matches 1 if score @s mult.projectile matches 3 store result score @s mult.xm as @e[type=spectral_arrow,limit=1,sort=nearest] run data get entity @s Motion[0] 1000000
execute as @a at @s if score @s mult.c_shot matches 1 if score @s mult.projectile matches 3 store result score @s mult.ym as @e[type=spectral_arrow,limit=1,sort=nearest] run data get entity @s Motion[1] 1000000
execute as @a at @s if score @s mult.c_shot matches 1 if score @s mult.projectile matches 3 store result score @s mult.zm as @e[type=spectral_arrow,limit=1,sort=nearest] run data get entity @s Motion[2] 1000000

execute as @a at @s if score @s mult.c_shot matches 1 if score @s mult.projectile matches 4 store result score @s mult.xm as @e[type=firework_rocket,limit=1,sort=nearest] run data get entity @s Motion[0] 1000000
execute as @a at @s if score @s mult.c_shot matches 1 if score @s mult.projectile matches 4 store result score @s mult.ym as @e[type=firework_rocket,limit=1,sort=nearest] run data get entity @s Motion[1] 1000000
execute as @a at @s if score @s mult.c_shot matches 1 if score @s mult.projectile matches 4 store result score @s mult.zm as @e[type=firework_rocket,limit=1,sort=nearest] run data get entity @s Motion[2] 1000000

