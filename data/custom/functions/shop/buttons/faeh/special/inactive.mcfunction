tellraw @s[tag=special] {"translate":"shop.faeh.special"}
tellraw @s[tag=!special] {"translate":"shop.faeh.special.fail"}
tag @s[tag=special] remove ar1
tag @s[tag=special] remove ar2
tag @s[tag=special] remove ar3
tag @s[tag=special] remove ar4
tag @s[tag=special] remove ar5
tag @s[tag=special] remove ar6
tag @s[tag=special] remove ar7
tag @s[tag=special,tag=brownie] add br1
tag @s[tag=special,tag=brownie] remove mn1
tag @s[tag=special,tag=minen] remove br1
tag @s[tag=special,tag=minen] add mn1
execute as @s run function custom:shop/faeh/initfaeh

playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2