tellraw @s {"translate":"shop.kipa.inactive"}

tag @s remove e1
tag @s remove e2
tag @s remove e3
tag @s remove e4
tag @s remove e6
tag @s add e5
execute as @s run function shop:kipa/initkipa

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2