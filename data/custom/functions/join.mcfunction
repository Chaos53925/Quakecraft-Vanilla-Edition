execute as @s[team=!Lobby,tag=play] run scoreboard players operation @s Coins -= @s Coin
scoreboard players set @s jointimer 0
tag @s[tag=!end,tag=!start,team=!Lobby] add midgame
tag @s[tag=end,tag=!start,team=!Lobby] add endgame
tag @s[tag=!end,tag=start,team=!Lobby] add startgame
tag @s remove apexvote
tag @s remove desertvote
tag @s remove candyvote
tag @s remove lostcityvote
tag @s remove nethervote
tag @s remove endvote

bossbar set minecraft:apexbar players
bossbar set minecraft:candybar players
bossbar set minecraft:desertbar players
bossbar set minecraft:lostcitybar players
bossbar set minecraft:playerbar players

bossbar set minecraft:apexprogress players
bossbar set minecraft:candyprogress players
bossbar set minecraft:desertprogress players
bossbar set minecraft:lostcityprogress players

scoreboard players set @s Coin 0
scoreboard players reset @s ApexKills
scoreboard players reset @s uID
scoreboard players reset @s ApexTode
scoreboard players reset @s CandyKills
scoreboard players reset @s CandyTode
scoreboard players reset @s DesertKills
scoreboard players reset @s DesertTode
scoreboard players reset @s LostcityKills
scoreboard players reset @s LostcityTode
scoreboard players reset @s NetherKills
scoreboard players reset @s NetherTode
scoreboard players reset @s EndKills
scoreboard players reset @s EndTode
clear @s
tp @s 10 17 146 -90 0
tag @s remove play
tag @s remove game
execute as @s run function shop:main/initmain
team join Lobby @s


tag @s remove start
tag @s remove end
