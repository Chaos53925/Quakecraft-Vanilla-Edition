tellraw @s {"translate":"shop.kipa.buy"}

tag @s add e6b
scoreboard players remove @s Coins 1500
tag @s remove e1
tag @s remove e2
tag @s remove e3
tag @s remove e4
tag @s remove e5
tag @s add e6
execute as @s run function custom:shop/kipa/initkipa

playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2