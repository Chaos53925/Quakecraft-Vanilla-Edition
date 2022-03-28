tag @s add pay.sender
execute as @a if entity @a[tag=pay.target] if score @s id = @a[tag=pay.sender,limit=1] pid run tag @s add pay.target
execute as @s if entity @a[tag=pay.target] if score @s Coins >= @s pay run function custom:pay/pay
execute as @s if entity @a[tag=pay.target] if score @s Coins > @s pay run function custom:pay/nocoins
execute unless entity @a[tag=pay.target] run function custom:pay/nopay
tag @s remove pay.sender
tag @a remove pay.target
