execute as @e[nbt={Trident:{tag:{Enchantments:[{id:"minecraft:loyalty"}]}}}] store result score @s loyalty.level run data get entity @s Trident.tag.Enchantments[{id:"minecraft:loyalty"}].lvl

execute as @e[type=trident,nbt={Trident:{tag:{Enchantments:[{id:"minecraft:loyalty"}]}}},scores={loyalty.level=3..}] at @s if entity @s[y=0,dy=-75] run data modify entity @s DealtDamage set value 1