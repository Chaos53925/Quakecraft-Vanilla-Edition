tag @s remove soundsoff
clear @s redstone
execute as @s run function custom:shop/set/initset
playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2