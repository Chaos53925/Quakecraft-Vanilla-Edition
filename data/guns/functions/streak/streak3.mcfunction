tellraw @a[distance=..300] {"text":"Tripple Kill!","color":"red","bold":true,"extra":[{"text":" -> ","color":"yellow"},{"selector":"@s","color":"green"}]}
tellraw @s [{"text":"+ ","color":"yellow"},{"text":"15 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"yellow"}]
scoreboard players add @s tkills 1
scoreboard players add @s Coins 15
scoreboard players add @s Coin 15
