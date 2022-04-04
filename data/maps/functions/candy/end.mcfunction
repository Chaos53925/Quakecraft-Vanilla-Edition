tellraw @a[team=candy] [{"selector":"@a[tag=c1,team=candy]","color":"green"},{"translate":"map.end.haswon","color":"green"}]
tellraw @a[tag=!c1,team=candy] [{"translate":"map.end.teilnehmer","color":"blue"},{"text":" 50 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"blue"}]
tellraw @a[tag=c1,team=candy] [{"translate":"map.end.winner","color":"blue"},{"text":" 75 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"blue"}]

tag @a[tag=c1] add win
tag @a[team=candy] add end
execute as @a[team=candy] run function maps:rewards
tag @a[tag=c1] remove win
execute as @a[team=candy] run tellraw @s [{"translate":"map.end.insgesammt","color":"yellow"},{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"},{"text":".","color":"blue"},{"text":".","color":"yellow"}]

scoreboard players operation #temp candyplace = @p[tag=c1] CandyKills
function maps:candy/place/2
scoreboard players operation #temp candyplace = @p[tag=c1] CandyKills
function maps:candy/place/3
scoreboard players operation #temp candyplace = @p[tag=c1] CandyKills
function maps:candy/place/4
scoreboard players operation #temp candyplace = @p[tag=c1] CandyKills
function maps:candy/place/5
scoreboard players operation #temp candyplace = @p[tag=c1] CandyKills
function maps:candy/place/6
scoreboard players operation #temp candyplace = @p[tag=c1] CandyKills
function maps:candy/place/7
scoreboard players operation #temp candyplace = @p[tag=c1] CandyKills
function maps:candy/place/8
scoreboard players operation #temp candyplace = @p[tag=c1] CandyKills
function maps:candy/place/9
scoreboard players operation #temp candyplace = @p[tag=c1] CandyKills
function maps:candy/place/10

execute if entity @p[tag=c1] run tellraw @a[team=candy] [{"text":"1. ","color":"red"},{"selector":"@p[tag=c1]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=c1]","objective":"CandyKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=c2] run tellraw @a[team=candy] [{"text":"2. ","color":"red"},{"selector":"@p[tag=c2]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=c2]","objective":"CandyKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=c3] run tellraw @a[team=candy] [{"text":"3. ","color":"red"},{"selector":"@p[tag=c3]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=c3]","objective":"CandyKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=c4] run tellraw @a[team=candy] [{"text":"4. ","color":"red"},{"selector":"@p[tag=c4]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=c4]","objective":"CandyKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=c5] run tellraw @a[team=candy] [{"text":"5. ","color":"red"},{"selector":"@p[tag=c5]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=c5]","objective":"CandyKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=c6] run tellraw @a[team=candy] [{"text":"6. ","color":"red"},{"selector":"@p[tag=c6]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=c6]","objective":"CandyKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=c7] run tellraw @a[team=candy] [{"text":"7. ","color":"red"},{"selector":"@p[tag=c7]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=c7]","objective":"CandyKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=c8] run tellraw @a[team=candy] [{"text":"8. ","color":"red"},{"selector":"@p[tag=c8]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=c8]","objective":"CandyKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=c9] run tellraw @a[team=candy] [{"text":"9. ","color":"red"},{"selector":"@p[tag=c9]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=c9]","objective":"CandyKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]
execute if entity @p[tag=c10] run tellraw @a[team=candy] [{"text":"10. ","color":"red"},{"selector":"@p[tag=c10]","color":"gold"},{"text":" - ","color":"red"},{"score":{"name":"@p[tag=c10]","objective":"CandyKills"},"color":"green"},{"translate":"map.end.place.kills","color":"red"}]

tag @a[team=candy] remove c1
tag @a[team=candy] remove c2
tag @a[team=candy] remove c3
tag @a[team=candy] remove c4
tag @a[team=candy] remove c5
tag @a[team=candy] remove c6
tag @a[team=candy] remove c7
tag @a[team=candy] remove c8
tag @a[team=candy] remove c9
tag @a[team=candy] remove c10

scoreboard players set #candy candyvote 0

execute as @a[team=candy,tag=!soundsoff] at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.5 1 0

scoreboard players set #candyquick game 0
scoreboard players set @a[team=candy] Coin 0
scoreboard players set @a[team=candy] kstreak 0
scoreboard players reset * CandyKills
scoreboard players reset @a[team=candy] uID
scoreboard players reset @a[team=candy] CandyTode
tag @a[team=candy] remove candyvote
clear @a[team=candy]
tag @a[team=candy] remove play
tag @a[team=candy] remove brst
tag @a[team=candy] add alwaysShoot
scoreboard players set #candygame game 3
bossbar set minecraft:candyprogress players