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

#summon the arrow
execute at @p positioned ~ ~1.1 ~ run summon arrow ^ ^ ^0.2 {Tags:["mult.summonedArrow","mult.ongroundkill"],crit:1b,player:1b,pickup:0b,ShotFromCrossbow:1b}
#define tag mult.summonedArrow
#define tag mult.ongroundkill
data modify entity @e[tag=mult.summonedArrow,limit=1] Potion set from entity @e[tag=mult.source,limit=1] Potion
data modify entity @e[tag=mult.summonedArrow,limit=1] PierceLevel set from entity @e[tag=mult.source,limit=1] PierceLevel

#set owner
data modify entity @e[tag=mult.summonedArrow,limit=1] Owner set from entity @s UUID

#set the motions
execute as @e[tag=mult.summonedArrow] store result entity @s Motion[0] double .000001 run scoreboard players get mult mult.xm
execute as @e[tag=mult.summonedArrow] store result entity @s Motion[1] double .000001 run scoreboard players get mult mult.ym
execute as @e[tag=mult.summonedArrow] store result entity @s Motion[2] double .000001 run scoreboard players get mult mult.zm

#end of the loop
tag @e[tag=mult.summonedArrow] remove mult.summonedArrow
scoreboard players remove @s mult.multishot 1

execute if score @s mult.multishot matches 1.. run function mult:arrow_shot