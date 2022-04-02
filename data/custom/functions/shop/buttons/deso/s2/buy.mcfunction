tellraw @s {"translate":"shop.deso.buy"}

tag @s add s2b
scoreboard players remove @s Coins 5000
tag @s remove s1
tag @s remove s3
tag @s remove s4
tag @s remove s5
tag @s remove s6
tag @s add s2
execute as @s run function custom:shop/deso/initdeso
execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2
