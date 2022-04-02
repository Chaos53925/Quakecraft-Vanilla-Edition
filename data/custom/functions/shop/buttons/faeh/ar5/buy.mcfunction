tellraw @s {"translate":"shop.faeh.buy"}

tag @s add ar5b
scoreboard players remove @s Coins 10000
tag @s remove ar1
tag @s remove ar2
tag @s remove ar3
tag @s remove ar4
tag @s remove ar6
tag @s remove br1
tag @s remove mn1

tag @s add ar5
execute as @s run function custom:shop/faeh/initfaeh

playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2