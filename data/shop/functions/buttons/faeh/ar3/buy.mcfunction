tellraw @s {"translate":"shop.faeh.buy"}
tag @s add ar3b
scoreboard players remove @s Coins 20000
tag @s remove ar1
tag @s remove ar2
tag @s remove ar4
tag @s remove ar5
tag @s remove ar6
tag @s remove br1
tag @s remove mn1
tag @s remove kr1

tag @s add ar3
execute as @s run function shop:faeh/initfaeh

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2