tellraw @s {"translate":"shop.deso.buy"}

tag @s add s5b
scoreboard players remove @s Coins 5000
tag @s remove s1
tag @s remove s2
tag @s remove s3
tag @s remove s4
tag @s remove s6
tag @s add s5
execute as @s run function custom:shop/deso/initdeso