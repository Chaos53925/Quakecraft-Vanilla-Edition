
tellraw @s [{"translate":"pay.send.1","color":"yellow"},{"text":" "},{"selector":"@p[tag=pay.target]","color":"green"},{"text":" "},{"score":{"name":"@s","objective":"pay"},"color":"red"},{"text":" "},{"translate":"pay.send.2","color":"yellow"}]
tellraw @p[tag=pay.target] [{"translate":"pay.get.1","color":"yellow"},{"text":" "},{"score":{"name":"@s","objective":"pay"},"color":"red"},{"text":" "},{"translate":"pay.get.2","color":"yellow"},{"text":" "},{"selector":"@s","color":"gold"},{"text":" "},{"translate":"pay.get.3","color":"yellow"}]

scoreboard players operation @p[tag=pay.target] Coins += @s pay
scoreboard players operation @s Coins -= @s pay

scoreboard players reset @s pay
scoreboard players reset @s pid