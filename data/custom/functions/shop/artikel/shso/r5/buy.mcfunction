tellraw @s {"text":"shop.shso.buy"}

tag @s add r5b
scoreboard players remove @s Coins 5000
tag @s remove r1
tag @s remove r2
tag @s remove r3
tag @s remove r4
tag @s remove r6
tag @s add r5
execute as @s run function custom:shop/shso/initshso
