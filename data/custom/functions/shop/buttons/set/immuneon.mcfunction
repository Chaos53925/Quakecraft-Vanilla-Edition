tag @s remove man
clear @s redstone
execute as @s run function custom:shop/set/initset
execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2