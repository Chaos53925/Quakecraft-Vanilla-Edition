tellraw @s {"translate":"shop.kipa.buy"}

tag @s add e3b
scoreboard players remove @s Coins 500
tag @s remove e1
tag @s remove e2
tag @s remove e4
tag @s remove e5
tag @s remove e6
tag @s add e3
execute as @s run function custom:shop/kipa/initkipa

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2