#if the treated enchant is not in the exising enchant list, append it

data modify storage infench enchsave prepend from entity @s Item.tag.Enchantments[0]
data remove entity @s Item.tag.Enchantments[0]
data modify storage infench ench set from storage infench enchsave
data modify storage infench enchsave set value []