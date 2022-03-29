tag @s add pay.sender
execute as @a if score @s id = @a[tag=pay.sender,limit=1] pay run tag @s add pay.target
execute unless entity @a[tag=pay.target] run tellraw @s {"translate":"pay.noid"}
execute if entity @s[tag=pay.target] run tellraw @s {"translate":"pay.self"}
execute as @a[tag=!pay.sender,tag=pay.target] run function custom:pay/playerok
tag @s remove pay.sender
tag @a remove pay.target
scoreboard players set @s pay -1