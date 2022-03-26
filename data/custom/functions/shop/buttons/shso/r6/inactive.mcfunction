
tellraw @s {"translate":"shop.shso.inactive"}
tag @s remove r1
tag @s remove r2
tag @s remove r3
tag @s remove r4
tag @s remove r5
tag @s add r6
execute as @s run function custom:shop/shso/initshso
