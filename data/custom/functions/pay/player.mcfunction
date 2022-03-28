tag @s add pay.sender
execute as @a if score @s id = @a[tag=pay.sender,limit=1] pid run tag @s add pay.target
execute unless entity @a[tag=pay.target] run tellraw @s {"text":"text.noid.player"}
execute if entity @s[tag=pay.target] run tellraw @s {"text":"text.player.select"}
execute as @s if entity @a[tag=!pay.sender,tag=pay.taget] run scoreboard players operation @s pid = @s pay
execute as @s if entity @a[tag=!pay.sender,tag=pay.taget] run scoreboard players reset @s pay
tag @s remove pay.sender
tag @a remove pay.target
