
$tellraw @a[team=$(team)] [{"translate":"map.end.haswon","color":"green","with":[{"selector":"@a[scores={$(placescore)=1},team=$(team)]","color":"green"}]}]
$execute as @a[team=$(team)] unless entity @s[scores={$(placescore)=1}] run tellraw @s [{"translate":"map.end.teilnehmer","color":"blue"},{"text":" 50 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"blue"}]
$tellraw @a[scores={$(placescore)=1},team=$(team)] [{"translate":"map.end.winner","color":"blue","with":[{"text":"75","color":"red"},{"text":"Coins","color":"gold"}]}]

$execute as @a[scores={$(placescore)=1}] run function maps:winreward
$execute as @a[team=$(team)] unless entity @s[scores={$(placescore)=1}] run scoreboard players add @s lost 1
$tag @a[team=$(team)] add end
$execute as @a[team=$(team)] run function maps:rewards
$execute as @a[team=$(team)] run tellraw @s [{"translate":"map.end.insgesamt","color":"yellow","with":[{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"}]}]


$scoreboard players operation #temp apexplace = @p[scores={$(placescore)=1}] $(teamkills)
function maps:apex/place
$scoreboard players operation #temp apexplace = @p[scores={$(placescore)=1}] $(teamkills)
function maps:apex/place
$scoreboard players operation #temp apexplace = @p[scores={$(placescore)=1}] $(teamkills)
function maps:apex/place
$scoreboard players operation #temp apexplace = @p[scores={$(placescore)=1}] $(teamkills)
function maps:apex/place
$scoreboard players operation #temp apexplace = @p[scores={$(placescore)=1}] $(teamkills)
function maps:apex/place
$scoreboard players operation #temp apexplace = @p[scores={$(placescore)=1}] $(teamkills)
function maps:apex/place
$scoreboard players operation #temp apexplace = @p[scores={$(placescore)=1}] $(teamkills)
function maps:apex/place
$scoreboard players operation #temp apexplace = @p[scores={$(placescore)=1}] $(teamkills)
function maps:apex/place
$scoreboard players operation #temp apexplace = @p[scores={$(placescore)=1}] $(teamkills)
function maps:apex/place

$execute if entity @p[scores={$(placescore)=1}] run tellraw @a[team=$(team)] [{"translate":"map.end.place","color":"red","with":[{"text":"1.","color":"red"},{"selector":"@p[scores={$(placescore)=1}]","color":"gold"},{"score":{"name":"@p[scores={$(placescore)=1}]","objective":"ApexKills"},"color":"green"}]}]
$execute if entity @p[scores={$(placescore)=2}] run tellraw @a[team=$(team)] [{"translate":"map.end.place","color":"red","with":[{"text":"2.","color":"red"},{"selector":"@p[scores={$(placescore)=2}]","color":"gold"},{"score":{"name":"@p[scores={$(placescore)=2}]","objective":"ApexKills"},"color":"green"}]}]
$execute if entity @p[scores={$(placescore)=3}] run tellraw @a[team=$(team)] [{"translate":"map.end.place","color":"red","with":[{"text":"3.","color":"red"},{"selector":"@p[scores={$(placescore)=3}]","color":"gold"},{"score":{"name":"@p[scores={$(placescore)=3}]","objective":"ApexKills"},"color":"green"}]}]
$execute if entity @p[scores={$(placescore)=4}] run tellraw @a[team=$(team)] [{"translate":"map.end.place","color":"red","with":[{"text":"4.","color":"red"},{"selector":"@p[scores={$(placescore)=4}]","color":"gold"},{"score":{"name":"@p[scores={$(placescore)=4}]","objective":"ApexKills"},"color":"green"}]}]
$execute if entity @p[scores={$(placescore)=5}] run tellraw @a[team=$(team)] [{"translate":"map.end.place","color":"red","with":[{"text":"5.","color":"red"},{"selector":"@p[scores={$(placescore)=5}]","color":"gold"},{"score":{"name":"@p[scores={$(placescore)=5}]","objective":"ApexKills"},"color":"green"}]}]
$execute if entity @p[scores={$(placescore)=6}] run tellraw @a[team=$(team)] [{"translate":"map.end.place","color":"red","with":[{"text":"6.","color":"red"},{"selector":"@p[scores={$(placescore)=6}]","color":"gold"},{"score":{"name":"@p[scores={$(placescore)=6}]","objective":"ApexKills"},"color":"green"}]}]
$execute if entity @p[scores={$(placescore)=7}] run tellraw @a[team=$(team)] [{"translate":"map.end.place","color":"red","with":[{"text":"7.","color":"red"},{"selector":"@p[scores={$(placescore)=7}]","color":"gold"},{"score":{"name":"@p[scores={$(placescore)=7}]","objective":"ApexKills"},"color":"green"}]}]
$execute if entity @p[scores={$(placescore)=8}] run tellraw @a[team=$(team)] [{"translate":"map.end.place","color":"red","with":[{"text":"8.","color":"red"},{"selector":"@p[scores={$(placescore)=8}]","color":"gold"},{"score":{"name":"@p[scores={$(placescore)=8}]","objective":"ApexKills"},"color":"green"}]}]
$execute if entity @p[scores={$(placescore)=9}] run tellraw @a[team=$(team)] [{"translate":"map.end.place","color":"red","with":[{"text":"9.","color":"red"},{"selector":"@p[scores={$(placescore)=9}]","color":"gold"},{"score":{"name":"@p[scores={$(placescore)=9}]","objective":"ApexKills"},"color":"green"}]}]
$execute if entity @p[scores={$(placescore)=10}] run tellraw @a[team=$(team)] [{"translate":"map.end.place","color":"red","with":[{"text":"10.","color":"red"},{"selector":"@p[scores={$(placescore)=10}]","color":"gold"},{"score":{"name":"@p[scores={$(placescore)=10}]","objective":"ApexKills"},"color":"green"}]}]

$scoreboard players reset @a[team=$(team)] $(placescore)

$scoreboard players set $(teamname) $(votescoreboard) 0

$execute as @a[team=$(team),tag=!soundsoff] at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.5 1 0

$scoreboard players set $(quickplayers) data 0
$scoreboard players set @a[team=$(team)] Coin 0
$scoreboard players set @a[team=$(team)] kstreak 0
$scoreboard players reset * $(teamkills)
$scoreboard players reset @a[team=$(team)] uID
$scoreboard players reset @a[team=$(team)] ApexTode
$tag @a[team=$(team)] remove $(apextag)
$clear @a[team=$(team)]
$tag @a[team=$(team)] remove play
$scoreboard players set $(mapdata) data 3
$bossbar set minecraft:$(teamprogressbar) players
