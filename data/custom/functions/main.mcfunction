stopsound @a * block.portal.ambient

execute as @a[scores={join=1..}] run function custom:join
scoreboard players set @a[scores={join=1..}] join 0

function custom:effects/effects
function custom:guns/guns

execute as @a run function custom:hat

execute if score #apexgame game matches 0 run function custom:maps/apex/beforethegame
execute if score #apexgame game matches 2 run function custom:maps/apex/game
execute if score #apexgame game matches 1 run function custom:maps/apex/start
execute if score #apexgame game matches 3 run function custom:maps/apex/aftergame

execute if score #candygame game matches 0 run function custom:maps/candy/beforethegame
execute if score #candygame game matches 2 run function custom:maps/candy/game
execute if score #candygame game matches 1 run function custom:maps/candy/start
execute if score #candygame game matches 3 run function custom:maps/candy/aftergame

execute if score #desertgame game matches 0 run function custom:maps/desert/beforethegame
execute if score #desertgame game matches 2 run function custom:maps/desert/game
execute if score #desertgame game matches 1 run function custom:maps/desert/start
execute if score #desertgame game matches 3 run function custom:maps/desert/aftergame

execute if score #lostcitygame game matches 0 run function custom:maps/lostcity/beforethegame
execute if score #lostcitygame game matches 2 run function custom:maps/lostcity/game
execute if score #lostcitygame game matches 1 run function custom:maps/lostcity/start
execute if score #lostcitygame game matches 3 run function custom:maps/lostcity/aftergame

item replace entity @a[team=Lobby] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"lobby.book.spawn","color":"green"}'}}

execute as @a[team=Lobby] if score #reload reload matches 1 run title @s actionbar [{"text":">>> ","color":"gold"},{"translate":"main.actionbar.wins","color":"dark_blue"},{"score":{"name":"@s","objective":"Wins"},"color":"red"},{"text":" | ","color":"gold"},{"translate":"main.actionbar.kills","color":"dark_blue"},{"score":{"name":"@s","objective":"Kills"},"color":"red"},{"text":" | ","color":"gold"},{"translate":"main.actionbar.deaths","color":"dark_blue"},{"score":{"name":"@s","objective":"Tode"},"color":"red"},{"text":" | ","color":"gold"},{"translate":"main.actionbar.coins","color":"dark_blue"},{"score":{"name":"@s","objective":"Coins"},"color":"red"},{"text":" <<<","color":"gold"}]

kill @e[type=item,tag=!immune]
execute as @a[team=] run function custom:shop/main/initmain
gamemode adventure @a[team=!Build]

execute as @a[team=Lobby,scores={book=1..},tag=!play] unless entity @s[nbt={Inventory:[{Slot:8b, id:"minecraft:knowledge_book"}]}] run function custom:leave

execute as @a[team=Lobby] run function custom:shop/work

execute as @a at @s if entity @s[y=0,dy=0] run kill @s