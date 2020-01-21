#randomize the motions
function mult:rng
scoreboard players operation mult mult.xm = @s mult.xm
scoreboard players operation mult mult.xm += $rng mult.temp

#don't randomize y motion
#function mult:rng
scoreboard players operation mult mult.ym = @s mult.ym
#scoreboard players operation mult mult.ym += $rng mult.temp

function mult:rng
scoreboard players operation mult mult.zm = @s mult.zm
scoreboard players operation mult mult.zm += $rng mult.temp

#summon the firework_rocket
execute at @p positioned ~ ~1.1 ~ run summon minecraft:firework_rocket ^ ^ ^0.2 {Tags:["mult.summonedFirework"],ShotAtAngle:1b}
#define tag mult.summonedFirework
data modify entity @e[tag=mult.summonedFirework,limit=1] LifeTime set from entity @e[tag=mult.source,limit=1] LifeTime
data modify entity @e[tag=mult.summonedFirework,limit=1] FireworksItem set from entity @e[tag=mult.source,limit=1] FireworksItem

#set the motions
execute as @e[tag=mult.summonedFirework] store result entity @s Motion[0] double .000001 run scoreboard players get mult mult.xm
execute as @e[tag=mult.summonedFirework] store result entity @s Motion[1] double .000001 run scoreboard players get mult mult.ym
execute as @e[tag=mult.summonedFirework] store result entity @s Motion[2] double .000001 run scoreboard players get mult mult.zm

#end of the loop
tag @e[tag=mult.summonedFirework] remove mult.summonedFirework
scoreboard players remove @s mult.multishot 1

execute if score @s mult.multishot matches 1.. run function mult:firework_shot