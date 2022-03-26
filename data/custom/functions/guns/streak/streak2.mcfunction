tellraw @a[distance=..300] {"text":"Double Kill!","color":"red","bold":true,"extra":[{"text":" -> ","color":"yellow"},{"selector":"@s","color":"green"}]}
tellraw @s [{"text":"+ ","color":"yellow"},{"text":"10 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"yellow"}]
scoreboard players add @s dkills 1
scoreboard players add @s Coins 10
scoreboard players add @s Coin 10