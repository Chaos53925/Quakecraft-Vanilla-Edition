tellraw @s {"translate":"shop.shpa.inactive"}

tag @s remove p1
tag @s remove p2
tag @s remove p3
tag @s remove p4
tag @s remove p6
tag @s add p5
execute as @s run function custom:shop/shpa/initshpa
