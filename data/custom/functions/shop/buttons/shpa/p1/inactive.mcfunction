tellraw @s {"translate":"shop.shpa.inactive"}

execute as @s run function custom:shop/shpa/initshpa
tag @s remove p2
tag @s remove p3
tag @s remove p4
tag @s remove p5
tag @s remove p6
tag @s add p1