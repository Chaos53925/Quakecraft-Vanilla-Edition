tellraw @s {"translate":"shop.deso.inactive"}

execute as @s run function custom:shop/deso/initdeso
tag @s remove s2
tag @s remove s3
tag @s remove s4
tag @s remove s5
tag @s remove s6
tag @s add s1
playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2