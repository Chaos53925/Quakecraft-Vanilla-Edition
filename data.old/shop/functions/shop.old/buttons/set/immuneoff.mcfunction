tag @s add man
clear @s slime_ball
execute as @s run function shop:set/initset
execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2