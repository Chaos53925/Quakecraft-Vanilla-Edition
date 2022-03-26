tellraw @s {"translate":"shop.faeh.inactive"}

tag @s remove ar1
tag @s remove ar2
tag @s remove ar4
tag @s remove ar5
tag @s remove ar6
tag @s remove ar7
tag @s remove br1
tag @s remove mn1

tag @s add ar3
execute as @s run function custom:shop/faeh/initfaeh
