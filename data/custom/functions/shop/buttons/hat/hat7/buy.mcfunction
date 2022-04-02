tellraw @s {"translate":"shop.hat.buy"}

tag @s add hat7b
scoreboard players remove @s Coins 10000
tag @s remove hat0
tag @s remove hat2
tag @s remove hat3
tag @s remove hat4
tag @s remove hat5
tag @s remove hat6
tag @s remove hat1
tag @s remove hat8
tag @s remove hat9
tag @s remove hat10
tag @s remove hat11
tag @s remove hat12
tag @s add hat7
execute as @s run function custom:shop/hat/inithat

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2