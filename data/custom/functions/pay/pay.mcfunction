
tellraw @s [{"translate":"pay.send.1","color":"yellow"},{"text":" "},{"selector":"@p[tag=pay.target]","color":"green"},{"text":" "},{"score":{"name":"@s","objective":"pay"},"color":"red"},{"text":" "},{"translate":"pay.send.2","color":"yellow"}]
tellraw @p[tag=pay.target] [{"translate":"pay.get.1","color":"yellow"},{"text":" "},{"score":{"name":"@s","objective":"pay"},"color":"red"},{"text":" "},{"translate":"pay.get.2","color":"yellow"},{"text":" "},{"selector":"@s","color":"gold"},{"text":" "},{"translate":"pay.get.3","color":"yellow"}]

scoreboard players operation @p[tag=pay.target] Coins += @s pay
scoreboard players operation @s Coins -= @s pay

scoreboard players set @s pay -1
scoreboard players set @s pid 0

execute at @s run execute at @s run playsound minecraft:entity.arrow.hit master @s[tag=!soundsoff] ~ ~ ~ 0.5 1 0.5
execute as @p[tag=pay.target] at @s run execute at @s run playsound minecraft:entity.arrow.hit master @s[tag=!soundsoff] ~ ~ ~ 0.5 1 0.5