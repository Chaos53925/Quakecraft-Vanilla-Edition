tellraw @a[distance=..300] {"text":"Multi Kill!","color":"red","bold":true,"extra":[{"text":" -> ","color":"yellow"},{"selector":"@s","color":"green"}]}
tellraw @s [{"text":"+ ","color":"yellow"},{"text":"25 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"yellow"}]
scoreboard players add @s mkills 1
scoreboard players add @s Coins 25
scoreboard players add @s Coin 25
