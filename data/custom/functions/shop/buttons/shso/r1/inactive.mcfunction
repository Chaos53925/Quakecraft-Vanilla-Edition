
tellraw @s {"translate":"shop.shso.inactive"}
execute as @s run function custom:shop/shso/initshso
tag @s remove r2
tag @s remove r3
tag @s remove r4
tag @s remove r5
tag @s remove r6
tag @s add r1

playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2