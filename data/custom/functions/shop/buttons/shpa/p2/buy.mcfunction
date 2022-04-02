tellraw @s {"translate":"shop.shpa.buy"}

tag @s add p2b
scoreboard players remove @s Coins 5000
tag @s remove p1
tag @s remove p3
tag @s remove p4
tag @s remove p5
tag @s remove p6
tag @s add p2
execute as @s run function custom:shop/shpa/initshpa

playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2