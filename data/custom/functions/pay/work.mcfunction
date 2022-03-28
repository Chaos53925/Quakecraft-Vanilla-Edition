
execute as @s[scores={pay=0}] unless score @s pid matches 0.. run function custom:pay/help
execute as @s[scores={pay=0,pid=1..}] run function custom:pay/reset
execute as @s[scores={pay=1..}] unless score @s pid matches 0.. run function custom:pay/player
execute as @s[scores={pay=1..,pid=1..}] run function custom:pay/calc