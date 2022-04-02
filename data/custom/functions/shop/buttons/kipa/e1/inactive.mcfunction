tellraw @s {"translate":"shop.kipa.inactive"}

execute as @s run function custom:shop/kipa/initkipa
tag @s remove e2
tag @s remove e3
tag @s remove e4
tag @s remove e5
tag @s remove e6
tag @s add e1

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2