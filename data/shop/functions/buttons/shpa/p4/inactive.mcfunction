tellraw @s {"translate":"shop.shpa.inactive"}

tag @s remove p1
tag @s remove p2
tag @s remove p3
tag @s remove p5
tag @s remove p6
tag @s add p4
execute as @s run function shop:shpa/initshpa

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2