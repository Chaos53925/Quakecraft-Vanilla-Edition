tellraw @s {"translate":"shop.shpa.buy"}

tag @s add p5b
scoreboard players remove @s Coins 5000
tag @s remove p1
tag @s remove p2
tag @s remove p3
tag @s remove p4
tag @s remove p6
tag @s add p5
execute as @s run function shop:shpa/initshpa

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2