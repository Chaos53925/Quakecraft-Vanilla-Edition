tellraw @s {"translate":"shop.kipa.inactive"}

tag @s remove e1
tag @s remove e2
tag @s remove e4
tag @s remove e5
tag @s remove e6
tag @s add e3
execute as @s run function custom:shop/kipa/initkipa