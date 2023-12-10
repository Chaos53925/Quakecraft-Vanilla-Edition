tellraw @a[team=lostcity] [{"translate":"map.end.haswon","color":"green","with":[{"selector":"@a[tag=l1,team=lostcity]","color":"green"}]}]
tellraw @a[tag=!l1,team=lostcity] [{"translate":"map.end.teilnehmer","color":"blue","with":[{"text":"50","color":"red"},{"text":"Coins","color":"gold"}]}]
tellraw @a[tag=l1,team=lostcity] [{"translate":"map.end.winner","color":"blue","with":[{"text":"75","color":"red"},{"text":"Coins","color":"gold"}]}]

scoreboard players add @s[tag=!l1] lost 1
execute as @a[tag=l1] run function maps:winreward
tag @a[team=lostcity] add end
execute as @a[team=loscity] run function maps:rewards
execute as @a[team=lostcity] run tellraw @s [{"translate":"map.end.insgesamt","color":"yellow","with":[{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"}]}]

scoreboard players operation #temp lostcityplace = @p[tag=l1] LostcityKills
function maps:lostcity/place/2
scoreboard players operation #temp lostcityplace = @p[tag=l1] LostcityKills
function maps:lostcity/place/3
scoreboard players operation #temp lostcityplace = @p[tag=l1] LostcityKills
function maps:lostcity/place/4
scoreboard players operation #temp lostcityplace = @p[tag=l1] LostcityKills
function maps:lostcity/place/5
scoreboard players operation #temp lostcityplace = @p[tag=l1] LostcityKills
function maps:lostcity/place/6
scoreboard players operation #temp lostcityplace = @p[tag=l1] LostcityKills
function maps:lostcity/place/7
scoreboard players operation #temp lostcityplace = @p[tag=l1] LostcityKills
function maps:lostcity/place/8
scoreboard players operation #temp lostcityplace = @p[tag=l1] LostcityKills
function maps:lostcity/place/9
scoreboard players operation #temp lostcityplace = @p[tag=l1] LostcityKills
function maps:lostcity/place/10

execute if entity @p[tag=l1] run tellraw @a[team=lostcity] [{"translate":"map.end.place","color":"red","with":[{"text":"1.","color":"red"},{"selector":"@p[tag=l1]","color":"gold"},{"score":{"name":"@p[tag=l1]","objective":"LostcityKills"},"color":"green"}]}]
execute if entity @p[tag=l2] run tellraw @a[team=lostcity] [{"translate":"map.end.place","color":"red","with":[{"text":"2.","color":"red"},{"selector":"@p[tag=l2]","color":"gold"},{"score":{"name":"@p[tag=l2]","objective":"LostcityKills"},"color":"green"}]}]
execute if entity @p[tag=l3] run tellraw @a[team=lostcity] [{"translate":"map.end.place","color":"red","with":[{"text":"3.","color":"red"},{"selector":"@p[tag=l3]","color":"gold"},{"score":{"name":"@p[tag=l3]","objective":"LostcityKills"},"color":"green"}]}]
execute if entity @p[tag=l4] run tellraw @a[team=lostcity] [{"translate":"map.end.place","color":"red","with":[{"text":"4.","color":"red"},{"selector":"@p[tag=l4]","color":"gold"},{"score":{"name":"@p[tag=l4]","objective":"LostcityKills"},"color":"green"}]}]
execute if entity @p[tag=l5] run tellraw @a[team=lostcity] [{"translate":"map.end.place","color":"red","with":[{"text":"5.","color":"red"},{"selector":"@p[tag=l5]","color":"gold"},{"score":{"name":"@p[tag=l5]","objective":"LostcityKills"},"color":"green"}]}]
execute if entity @p[tag=l6] run tellraw @a[team=lostcity] [{"translate":"map.end.place","color":"red","with":[{"text":"6.","color":"red"},{"selector":"@p[tag=l6]","color":"gold"},{"score":{"name":"@p[tag=l6]","objective":"LostcityKills"},"color":"green"}]}]
execute if entity @p[tag=l7] run tellraw @a[team=lostcity] [{"translate":"map.end.place","color":"red","with":[{"text":"7.","color":"red"},{"selector":"@p[tag=l7]","color":"gold"},{"score":{"name":"@p[tag=l7]","objective":"LostcityKills"},"color":"green"}]}]
execute if entity @p[tag=l8] run tellraw @a[team=lostcity] [{"translate":"map.end.place","color":"red","with":[{"text":"8.","color":"red"},{"selector":"@p[tag=l8]","color":"gold"},{"score":{"name":"@p[tag=l8]","objective":"LostcityKills"},"color":"green"}]}]
execute if entity @p[tag=l9] run tellraw @a[team=lostcity] [{"translate":"map.end.place","color":"red","with":[{"text":"9.","color":"red"},{"selector":"@p[tag=l9]","color":"gold"},{"score":{"name":"@p[tag=l9]","objective":"LostcityKills"},"color":"green"}]}]
execute if entity @p[tag=l10] run tellraw @a[team=lostcity] [{"translate":"map.end.place","color":"red","with":[{"text":"10.","color":"red"},{"selector":"@p[tag=l10]","color":"gold"},{"score":{"name":"@p[tag=l10]","objective":"LostcityKills"},"color":"green"}]}]

tag @a[team=lostcity] remove l1
tag @a[team=lostcity] remove l2
tag @a[team=lostcity] remove l3
tag @a[team=lostcity] remove l4
tag @a[team=lostcity] remove l5
tag @a[team=lostcity] remove l6
tag @a[team=lostcity] remove l7
tag @a[team=lostcity] remove l8
tag @a[team=lostcity] remove l9
tag @a[team=lostcity] remove l10

scoreboard players set #lostcity lostcityvote 0

execute as @a[team=lostcity,tag=!soundsoff] at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.5 1 0

scoreboard players set #lostcityquick game 0
scoreboard players set @a[team=lostcity] Coin 0
scoreboard players set @a[team=lostcity] kstreak 0
scoreboard players reset * LostcityKills
scoreboard players reset @a[team=lostcity] uID
scoreboard players reset @a[team=lostcity] LostcityTode
clear @a[team=lostcity]
tag @a[team=lostcity] remove lostcityvote
tag @a[team=lostcity] remove play
scoreboard players set #lostcitygame game 3
bossbar set minecraft:lostcityprogress players