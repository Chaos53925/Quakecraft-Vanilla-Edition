tellraw @s {"translate":"shop.shpa.inactive"}

tag @s remove p1
tag @s remove p2
tag @s remove p4
tag @s remove p5
tag @s remove p6
tag @s add p3
execute as @s run function custom:shop/shpa/initshpa

playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2