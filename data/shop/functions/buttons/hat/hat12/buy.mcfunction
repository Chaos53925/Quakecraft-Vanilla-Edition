tellraw @s {"translate":"shop.hat.buy"}

tag @s add hat12b
scoreboard players remove @s Coins 1000
tag @s remove hat0
tag @s remove hat2
tag @s remove hat3
tag @s remove hat4
tag @s remove hat5
tag @s remove hat6
tag @s remove hat7
tag @s remove hat8
tag @s remove hat9
tag @s remove hat10
tag @s remove hat11
tag @s remove hat1
tag @s add hat12
execute as @s run function shop:hat/inithat

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2