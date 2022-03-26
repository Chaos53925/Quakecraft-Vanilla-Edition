tellraw @a[distance=..300] {"text":"God-like Kill!","color":"gold","bold":true,"extra":[{"text":" -> ","color":"yellow"},{"selector":"@s","color":"green"}]}
tellraw @s [{"text":"+ ","color":"yellow"},{"text":"100 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"yellow"}]
scoreboard players add @s gkills 1
scoreboard players add @s Coins 100
scoreboard players add @s Coin 100
