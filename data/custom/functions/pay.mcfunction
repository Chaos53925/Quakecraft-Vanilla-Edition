scoreboard players operation @p[distance=0.1..] Coins += @s pay
scoreboard players operation @s Coins -= @s pay
tellraw @s [{"translate":"pay.send.1","color":"yellow"},{"text":" "},{"selector":"@p[distance=0.1..]","color":"green"},{"text":" "},{"score":{"name":"@s","objective":"pay"},"color":"red"},{"text":" "},{"translate":"pay.send.2","color":"yellow"}]
tellraw @p[distance=0.1..] [{"translate":"pay.get.1","color":"yellow"},{"score":{"name":"@s","objective":"pay"},"color":"red"},{"text":" "},{"translate":"pay.get.2","color":"yellow"},{"text":" "},{"selector":"@s","color":"gold"},{"text":" "},{"translate":"pay.get.3","color":"yellow"}]
scoreboard players reset @s pay
