tellraw @a[team=desert] [{"selector":"@a[tag=d1,team=desert]","color":"green"},{"translate":"map.end.haswon","color":"green"}]
tellraw @a[tag=!d1,team=desert] [{"translate":"map.end.teilnehmer","color":"blue"},{"text":" 50 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"blue"}]
tellraw @a[tag=d1,team=desert] [{"translate":"map.end.winner","color":"blue"},{"text":" 75 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"blue"}]

tag @a[tag=d1] add win
tag @a[team=desert] add end
execute as @a[team=desert] run function maps:rewards
tag @a[tag=d1] remove win
execute as @a[team=desert] run tellraw @s [{"translate":"map.end.insgesammt","color":"yellow"},{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"},{"text":".","color":"blue"},{"text":".","color":"yellow"}]

scoreboard players operation #temp desertplace = @p[tag=d1] DesertKills
function maps:desert/place/2
scoreboard players operation #temp desertplace = @p[tag=d1] DesertKills
function maps:desert/place/3
scoreboard players operation #temp desertplace = @p[tag=d1] DesertKills
function maps:desert/place/4
scoreboard players operation #temp desertplace = @p[tag=d1] DesertKills
function maps:desert/place/5
scoreboard players operation #temp desertplace = @p[tag=d1] DesertKills
function maps:desert/place/6
scoreboard players operation #temp desertplace = @p[tag=d1] DesertKills
function maps:desert/place/7
scoreboard players operation #temp desertplace = @p[tag=d1] DesertKills
function maps:desert/place/8
scoreboard players operation #temp desertplace = @p[tag=d1] DesertKills
function maps:desert/place/9
scoreboard players operation #temp desertplace = @p[tag=d1] DesertKills
function maps:desert/place/10

execute if entity @p[tag=d1] run tellraw @a[team=desert] [{"text":"1. ","color":"red"},{"selector":"@p[tag=d1]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=d1]","objective":"DesertKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=d2] run tellraw @a[team=desert] [{"text":"2. ","color":"red"},{"selector":"@p[tag=d2]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=d2]","objective":"DesertKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=d3] run tellraw @a[team=desert] [{"text":"3. ","color":"red"},{"selector":"@p[tag=d3]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=d3]","objective":"DesertKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=d4] run tellraw @a[team=desert] [{"text":"4. ","color":"red"},{"selector":"@p[tag=d4]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=d4]","objective":"DesertKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=d5] run tellraw @a[team=desert] [{"text":"5. ","color":"red"},{"selector":"@p[tag=d5]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=d5]","objective":"DesertKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=d6] run tellraw @a[team=desert] [{"text":"6. ","color":"red"},{"selector":"@p[tag=d6]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=d6]","objective":"DesertKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=d7] run tellraw @a[team=desert] [{"text":"7. ","color":"red"},{"selector":"@p[tag=d7]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=d7]","objective":"DesertKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=d8] run tellraw @a[team=desert] [{"text":"8. ","color":"red"},{"selector":"@p[tag=d8]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=d8]","objective":"DesertKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=d9] run tellraw @a[team=desert] [{"text":"9. ","color":"red"},{"selector":"@p[tag=d9]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=d9]","objective":"DesertKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=d10] run tellraw @a[team=desert] [{"text":"10. ","color":"red"},{"selector":"@p[tag=d10]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=d10]","objective":"DesertKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]

tag @a[team=desert] remove d1
tag @a[team=desert] remove d2
tag @a[team=desert] remove d3
tag @a[team=desert] remove d4
tag @a[team=desert] remove d5
tag @a[team=desert] remove d6
tag @a[team=desert] remove d7
tag @a[team=desert] remove d8
tag @a[team=desert] remove d9
tag @a[team=desert] remove d10

scoreboard players set #desert desertvote 0

execute as @a[team=desert,tag=!soundsoff] at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.5 1 0

scoreboard players set #desertquick game 0
scoreboard players set @a[team=desert] Coin 0
scoreboard players set @a[team=desert] kstreak 0
scoreboard players reset * DesertKills
scoreboard players reset @a[team=desert] uID
scoreboard players reset @a[team=desert] DesertTode
tag @a[team=desert] remove desertvote
clear @a[team=desert]
tag @a[team=desert] remove play
tag @a[team=desert] remove brst
tag @a[team=desert] add alwaysShoot
scoreboard players set #desertgame game 3
bossbar set minecraft:desertprogress players
