#define objective mult.temp
#define tag rngcloud
scoreboard objectives add mult.temp dummy

# Summon new rng source
summon area_effect_cloud ~ ~ ~ {Tags:["rngcloud"]}
#define tag rngcloud

# Gets and stores UUIDMost from the effect cloud with a dampener (the 0.00... at the end)
execute store result score $rng mult.temp run data get entity @e[type=area_effect_cloud,tag=rngcloud,limit=1] UUID[0]
# $rng = score | mult.temp = objective

# Removes used rng source
kill @e[type=area_effect_cloud,tag=rngcloud]

# ---------------------------------------- #

# Set max once
scoreboard players set % mult.temp 800001
# % = score | mult.temp = objective

# Limit the stored rng to the max
scoreboard players operation $rng mult.temp %= % mult.temp
# $rng = score | % = score | mult.temp = objective

# Correction
# Ex: Before: Max = 2, S={0,1} | After: Max = 2, S={1,2}
scoreboard players remove $rng mult.temp 400000