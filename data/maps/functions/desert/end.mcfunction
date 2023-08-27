tellraw @a[team=desert] [{"translate":"map.end.haswon","color":"green","with":[{"selector":"@a[tag=d1,team=desert]","color":"green"}]}]
tellraw @a[tag=!d1,team=desert] [{"translate":"map.end.teilnehmer","color":"blue"},{"text":" 50 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"blue"}]
tellraw @a[tag=d1,team=desert] [{"translate":"map.end.winner","color":"blue","with":[{"text":"75","color":"red"},{"text":"Coins","color":"gold"}]}]

scoreboard players add @s[tag=!d1] lost 1
execute as @a[tag=d1] run function maps:winreward
tag @a[team=desert] add end
execute as @a[team=desert] run function maps:rewards
execute as @a[team=desert] run tellraw @s [{"translate":"map.end.insgesamt","color":"yellow","with":[{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"}]}]

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

execute if entity @p[tag=d1] run tellraw @a[team=desert] [{"translate":"map.end.place","color":"red","with":[{"text":"1. ","color":"red"},{"selector":"@p[tag=d1]","color":"gold"},{"score":{"name":"@p[tag=d1]","objective":"Desertkills"},"color":"green"}]}]
execute if entity @p[tag=d2] run tellraw @a[team=desert] [{"translate":"map.end.place","color":"red","with":[{"text":"2. ","color":"red"},{"selector":"@p[tag=d2]","color":"gold"},{"score":{"name":"@p[tag=d2]","objective":"Desertkills"},"color":"green"}]}]
execute if entity @p[tag=d3] run tellraw @a[team=desert] [{"translate":"map.end.place","color":"red","with":[{"text":"3. ","color":"red"},{"selector":"@p[tag=d3]","color":"gold"},{"score":{"name":"@p[tag=d3]","objective":"Desertkills"},"color":"green"}]}]
execute if entity @p[tag=d4] run tellraw @a[team=desert] [{"translate":"map.end.place","color":"red","with":[{"text":"4. ","color":"red"},{"selector":"@p[tag=d4]","color":"gold"},{"score":{"name":"@p[tag=d4]","objective":"Desertkills"},"color":"green"}]}]
execute if entity @p[tag=d5] run tellraw @a[team=desert] [{"translate":"map.end.place","color":"red","with":[{"text":"5. ","color":"red"},{"selector":"@p[tag=d5]","color":"gold"},{"score":{"name":"@p[tag=d5]","objective":"Desertkills"},"color":"green"}]}]
execute if entity @p[tag=d6] run tellraw @a[team=desert] [{"translate":"map.end.place","color":"red","with":[{"text":"6. ","color":"red"},{"selector":"@p[tag=d6]","color":"gold"},{"score":{"name":"@p[tag=d6]","objective":"Desertkills"},"color":"green"}]}]
execute if entity @p[tag=d7] run tellraw @a[team=desert] [{"translate":"map.end.place","color":"red","with":[{"text":"7. ","color":"red"},{"selector":"@p[tag=d7]","color":"gold"},{"score":{"name":"@p[tag=d7]","objective":"Desertkills"},"color":"green"}]}]
execute if entity @p[tag=d8] run tellraw @a[team=desert] [{"translate":"map.end.place","color":"red","with":[{"text":"8. ","color":"red"},{"selector":"@p[tag=d8]","color":"gold"},{"score":{"name":"@p[tag=d8]","objective":"Desertkills"},"color":"green"}]}]
execute if entity @p[tag=d9] run tellraw @a[team=desert] [{"translate":"map.end.place","color":"red","with":[{"text":"9. ","color":"red"},{"selector":"@p[tag=d9]","color":"gold"},{"score":{"name":"@p[tag=d9]","objective":"Desertkills"},"color":"green"}]}]
execute if entity @p[tag=d10] run tellraw @a[team=desert] [{"translate":"map.end.place","color":"red","with":[{"text":"10. ","color":"red"},{"selector":"@p[tag=d10]","color":"gold"},{"score":{"name":"@p[tag=d10]","objective":"Desertkills"},"color":"green"}]}]

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
