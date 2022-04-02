tellraw @s {"text":"shop.shso.buy"}

tag @s add r3b
scoreboard players remove @s Coins 5000
tag @s remove r1
tag @s remove r2
tag @s remove r4
tag @s remove r5
tag @s remove r6
tag @s add r3
execute as @s run function custom:shop/shso/initshso

playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2