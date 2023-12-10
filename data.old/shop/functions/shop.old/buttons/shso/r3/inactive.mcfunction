
tellraw @s {"translate":"shop.shso.inactive"}
tag @s remove r1
tag @s remove r2
tag @s remove r4
tag @s remove r5
tag @s remove r6
tag @s add r3
execute as @s run function shop:shso/initshso

execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2