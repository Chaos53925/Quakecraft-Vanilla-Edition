
tellraw @a[team=apex] [{"translate":"map.end.haswon","color":"green","with":[{"selector":"@a[tag=a1,team=apex]","color":"green"}]}]
tellraw @a[tag=!a1,team=apex] [{"translate":"map.end.teilnehmer","color":"blue"},{"text":" 50 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"blue"}]
tellraw @a[tag=a1,team=apex] [{"translate":"map.end.winner","color":"blue","with":[{"text":"75","color":"red"},{"text":"Coins","color":"gold"}]}]

execute as @a[tag=a1] run function maps:winreward
scoreboard players add @s[tag=!a1] lost 1
tag @a[team=apex] add end
execute as @a[team=apex] run function maps:rewards
execute as @a[team=apex] run tellraw @s [{"translate":"map.end.insgesamt","color":"yellow","with":[{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"}]}]


scoreboard players operation #temp apexplace = @p[tag=a1] ApexKills
function maps:apex/place/2
scoreboard players operation #temp apexplace = @p[tag=a1] ApexKills
function maps:apex/place/3
scoreboard players operation #temp apexplace = @p[tag=a1] ApexKills
function maps:apex/place/4
scoreboard players operation #temp apexplace = @p[tag=a1] ApexKills
function maps:apex/place/5
scoreboard players operation #temp apexplace = @p[tag=a1] ApexKills
function maps:apex/place/6
scoreboard players operation #temp apexplace = @p[tag=a1] ApexKills
function maps:apex/place/7
scoreboard players operation #temp apexplace = @p[tag=a1] ApexKills
function maps:apex/place/8
scoreboard players operation #temp apexplace = @p[tag=a1] ApexKills
function maps:apex/place/9
scoreboard players operation #temp apexplace = @p[tag=a1] ApexKills
function maps:apex/place/10

execute if entity @p[tag=a1] run tellraw @a[team=apex] [{"translate":"map.end.place","color":"red","with":[{"text":"1.","color":"red"},{"selector":"@p[tag=a1]","color":"gold"},{"score":{"name":"@p[tag=a1]","objective":"ApexKills"},"color":"green"}]}]
execute if entity @p[tag=a2] run tellraw @a[team=apex] [{"translate":"map.end.place","color":"red","with":[{"text":"2.","color":"red"},{"selector":"@p[tag=a2]","color":"gold"},{"score":{"name":"@p[tag=a2]","objective":"ApexKills"},"color":"green"}]}]
execute if entity @p[tag=a3] run tellraw @a[team=apex] [{"translate":"map.end.place","color":"red","with":[{"text":"3.","color":"red"},{"selector":"@p[tag=a3]","color":"gold"},{"score":{"name":"@p[tag=a3]","objective":"ApexKills"},"color":"green"}]}]
execute if entity @p[tag=a4] run tellraw @a[team=apex] [{"translate":"map.end.place","color":"red","with":[{"text":"4.","color":"red"},{"selector":"@p[tag=a4]","color":"gold"},{"score":{"name":"@p[tag=a4]","objective":"ApexKills"},"color":"green"}]}]
execute if entity @p[tag=a5] run tellraw @a[team=apex] [{"translate":"map.end.place","color":"red","with":[{"text":"5.","color":"red"},{"selector":"@p[tag=a5]","color":"gold"},{"score":{"name":"@p[tag=a5]","objective":"ApexKills"},"color":"green"}]}]
execute if entity @p[tag=a6] run tellraw @a[team=apex] [{"translate":"map.end.place","color":"red","with":[{"text":"6.","color":"red"},{"selector":"@p[tag=a6]","color":"gold"},{"score":{"name":"@p[tag=a6]","objective":"ApexKills"},"color":"green"}]}]
execute if entity @p[tag=a7] run tellraw @a[team=apex] [{"translate":"map.end.place","color":"red","with":[{"text":"7.","color":"red"},{"selector":"@p[tag=a7]","color":"gold"},{"score":{"name":"@p[tag=a7]","objective":"ApexKills"},"color":"green"}]}]
execute if entity @p[tag=a8] run tellraw @a[team=apex] [{"translate":"map.end.place","color":"red","with":[{"text":"8.","color":"red"},{"selector":"@p[tag=a8]","color":"gold"},{"score":{"name":"@p[tag=a8]","objective":"ApexKills"},"color":"green"}]}]
execute if entity @p[tag=a9] run tellraw @a[team=apex] [{"translate":"map.end.place","color":"red","with":[{"text":"9.","color":"red"},{"selector":"@p[tag=a9]","color":"gold"},{"score":{"name":"@p[tag=a9]","objective":"ApexKills"},"color":"green"}]}]
execute if entity @p[tag=a10] run tellraw @a[team=apex] [{"translate":"map.end.place","color":"red","with":[{"text":"10.","color":"red"},{"selector":"@p[tag=a10]","color":"gold"},{"score":{"name":"@p[tag=a10]","objective":"ApexKills"},"color":"green"}]}]

tag @a[team=apex] remove a1
tag @a[team=apex] remove a2
tag @a[team=apex] remove a3
tag @a[team=apex] remove a4
tag @a[team=apex] remove a5
tag @a[team=apex] remove a6
tag @a[team=apex] remove a7
tag @a[team=apex] remove a8
tag @a[team=apex] remove a9
tag @a[team=apex] remove a10

scoreboard players set #apex apexvote 0

execute as @a[team=apex,tag=!soundsoff] at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.5 1 0

scoreboard players set #apexquick game 0
scoreboard players set @a[team=apex] Coin 0
scoreboard players set @a[team=apex] kstreak 0
scoreboard players reset * ApexKills
scoreboard players reset @a[team=apex] uID
scoreboard players reset @a[team=apex] ApexTode
tag @a[team=apex] remove apexvote
clear @a[team=apex]
tag @a[team=apex] remove play
tag @a[team=apex] remove brst
tag @a[team=apex] add alwaysShoot
scoreboard players set #apexgame game 3
bossbar set minecraft:apexprogress players
