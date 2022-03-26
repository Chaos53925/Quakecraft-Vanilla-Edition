tellraw @s[scores={da=30..49}] [{"text":"Snipeshot: ","color":"aqua"},{"text":"+","color":"yellow"},{"text":" 5 ","color":"red"},{"text":"Coins","color":"gold"}]
tellraw @s[scores={da=50..}] [{"text":"Super-Snipeshot: ","color":"dark_purple"},{"text":"+","color":"yellow"},{"text":" 25 ","color":"red"},{"text":"Coins","color":"gold"}]
tellraw @s [{"score":{"name":"@s","objective":"da"},"color":"green"},{"text":",","color":"green"},{"score":{"name":"@s","objective":"dd"},"color":"green"},{"text":"m","color":"green"},{"text":"\n+","color":"yellow"},{"text":" 5 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"yellow"}]
scoreboard players add @s[scores={da=30..49}] Coins 5
scoreboard players add @s[scores={da=30..49}] Coin 5
scoreboard players add @s[scores={da=30..49}] snipe 1
scoreboard players add @s[scores={da=50..}] Coins 25
scoreboard players add @s[scores={da=50..}] Coin 25
scoreboard players add @s[scores={da=50..}] supersnipe 1
