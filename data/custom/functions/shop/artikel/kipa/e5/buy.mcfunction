tellraw @s {"translate":"shop.kipa.buy"}

tag @s add e5b
scoreboard players remove @s Coins 1500
tag @s remove e1
tag @s remove e2
tag @s remove e3
tag @s remove e4
tag @s remove e6
tag @s add e5
execute as @s run function custom:shop/kipa/initkipa
