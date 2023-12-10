tag @s remove soundsoff
clear @s redstone
execute as @s run function shop:set/initset
execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2