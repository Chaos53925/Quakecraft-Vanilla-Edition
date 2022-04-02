tag @s add pay.sender
execute as @a if score @s id = @a[tag=pay.sender,limit=1] pay run tag @s add pay.target
execute at @s unless entity @a[tag=pay.target] run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
execute unless entity @a[tag=pay.target] run tellraw @s {"translate":"pay.noid","color":"yellow"}
execute at @s if entity @s[tag=pay.target] run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
execute if entity @s[tag=pay.target] run tellraw @s {"translate":"pay.self","color":"red"}
execute as @a[tag=!pay.sender,tag=pay.target] run function custom:pay/playerok
tag @s remove pay.sender
tag @a remove pay.target
scoreboard players set @s pay -1