tellraw @s {"translate":"shop.kipa.buy"}

tag @s add e2b
scoreboard players remove @s Coins 500
tag @s remove e1
tag @s remove e3
tag @s remove e4
tag @s remove e5
tag @s remove e6
tag @s add e2
execute as @s run function custom:shop/kipa/initkipa
