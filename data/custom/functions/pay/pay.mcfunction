#neu
tellraw @s [{"translate":"pay.send","color":"yellow","with":[{"selector":"@p[tag=pay.target]","color":"green"},{"score":{"name":"@s","objective":"pay"},"color":"red"}]}]
tellraw @p[tag=pay.target] [{"translate":"pay.get","color":"yellow","with":[{"score":{"name":"@s","objective":"pay"},"color":"red"},{"selector":"@s","color":"gold"}]}]

scoreboard players operation @p[tag=pay.target] Coins += @s pay
scoreboard players operation @s Coins -= @s pay

scoreboard players set @s pay -1
scoreboard players set @s pid 0

execute at @s run execute at @s run playsound minecraft:entity.arrow.hit master @s[tag=!soundsoff] ~ ~ ~ 0.5 1 0.5
execute as @p[tag=pay.target] at @s run execute at @s run playsound minecraft:entity.arrow.hit master @s[tag=!soundsoff] ~ ~ ~ 0.5 1 0.5
