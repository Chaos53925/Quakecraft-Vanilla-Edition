stopsound @a * block.portal.ambient

execute as @a[scores={join=1..}] run function custom:join
scoreboard players set @a[scores={join=1..}] join 0

function abilities:main
function guns:guns

execute as @a run function custom:hat

execute if score #apexgame game matches 0 run function maps:apex/beforethegame
execute if score #apexgame game matches 2 run function maps:apex/game
execute if score #apexgame game matches 1 run function maps:apex/start
execute if score #apexgame game matches 3 run function maps:apex/aftergame

execute if score #candygame game matches 0 run function maps:candy/beforethegame
execute if score #candygame game matches 2 run function maps:candy/game
execute if score #candygame game matches 1 run function maps:candy/start
execute if score #candygame game matches 3 run function maps:candy/aftergame

execute if score #desertgame game matches 0 run function maps:desert/beforethegame
execute if score #desertgame game matches 2 run function maps:desert/game
execute if score #desertgame game matches 1 run function maps:desert/start
execute if score #desertgame game matches 3 run function maps:desert/aftergame

execute if score #lostcitygame game matches 0 run function maps:lostcity/beforethegame
execute if score #lostcitygame game matches 2 run function maps:lostcity/game
execute if score #lostcitygame game matches 1 run function maps:lostcity/start
execute if score #lostcitygame game matches 3 run function maps:lostcity/aftergame

item replace entity @a[team=Lobby] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"lobby.book.spawn","color":"green"}'}}

execute as @a[team=Lobby] if score #reload reload matches 1 run title @s actionbar {"translate":"main.actionbar","color":"yellow","with":[{"text":">>>","color":"gold"},{"text":"|","color":"gold"},{"text":"<<<","color":"gold"},{"score":{"name":"@s","objective":"Wins"},"color":"red"},{"score":{"name":"@s","objective":"Kills"},"color":"red"},{"score":{"name":"@s","objective":"Tode"},"color":"red"},{"score":{"name":"@s","objective":"Coins"},"color":"red"}]}

execute as @a unless score @s id = @s id store result score @s id run scoreboard players add #counter id 1

kill @e[type=item,tag=!immune]
execute as @a[team=] run function shop:main/initmain
tp @a[team=] 10 17 146 -90.0 0.0
team join Lobby @a[team=]
gamemode adventure @a[team=!Build]

execute as @a[team=Lobby,scores={book=1..},tag=!play] unless entity @s[nbt={Inventory:[{Slot:8b, id:"minecraft:knowledge_book"}]}] run function custom:backtolobby
execute as @a[team=Lobby] run function shop:work

execute as @a at @s if entity @s[y=0,dy=0] run scoreboard players remove @s Tode 1
execute as @a at @s if entity @s[y=0,dy=0] run kill @s
