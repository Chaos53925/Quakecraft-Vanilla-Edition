tellraw @s {"translate":"shop.faeh.inactive"}

execute as @s run function custom:shop/faeh/initfaeh
tag @s remove ar2
tag @s remove ar3
tag @s remove ar4
tag @s remove ar5
tag @s remove ar6
tag @s remove ar7
tag @s remove br1
tag @s remove mn1

tag @s add ar1

playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2