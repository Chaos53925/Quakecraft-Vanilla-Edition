tag @s add die
tellraw @a[distance=..150,team=!Lobby] [{"selector":"@s","color":"blue"},{"text":" >>> ","color":"gold"},{"selector":"@s","color":"dark_blue"}]
tellraw @a[distance=..150,team=!Lobby] [{"text":"Instant Karma:","color": "#FF6B00"},{"text": " -5 ","color": "red"},{"text": "Coins","color": "gold"}]
scoreboard players remove @s Coins 5
scoreboard players remove @s Coin 5
tellraw @p[tag=karma] [{"text":"Instant Karma:","color": "#FF6B00"},{"text": " +5 ","color": "red"},{"text": "Coins","color": "gold"}]
scoreboard players add @p[tag=karma] Coins 5
scoreboard players add @p[tag=karma] Coin 5
