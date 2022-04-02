
scoreboard players set @a[team=lostcity,tag=lostcityvote] lostcityvoting 1
scoreboard objectives setdisplay sidebar.team.gray lostcityvoting

bossbar set minecraft:lostcitybar players @a[team=lostcity]
execute as @a[team=lostcity,scores={book=1..},tag=!play] unless entity @s[nbt={Inventory:[{Slot:8b, id:"minecraft:knowledge_book"}]}] run function custom:leave
scoreboard players set #lostcity lostcitylobby 0
execute as @a[team=lostcity] run scoreboard players add #lostcity lostcitylobby 1

execute as @a[team=lostcity] run function custom:maps/invbefore

execute if score #lostcity lostcitylobby matches 1.. run function custom:maps/lostcity/timer

execute store result bossbar minecraft:lostcitybar value run scoreboard players get #lostcitybar game

execute if score #lostcity lostcitylobby matches 0 run scoreboard players set #lostcity game 0
execute if score #lostcity lostcitylobby matches 0 run scoreboard players set #lostcitysek game 0
execute if score #lostcity lostcitylobby matches 0 run scoreboard players set #lostcitymin game 2
execute if score #lostcity lostcitylobby matches 0 run scoreboard players set #lostcitybar game 120
execute if score #lostcity lostcitylobby matches 0 run scoreboard players set #lostcityquick game 0
execute if score #lostcity lostcitylobby matches 1.. run scoreboard players add #lostcity game 1

execute if score #lostcitysek game matches 0..59 if score #lostcitymin game matches 1..2 if score #lostcityquick game matches 0 if score #lostcity lostcitylobby matches 2.. if score #lostcity lostcitylobby = #lostcity lostcityvote run function custom:maps/lostcity/quickstart
execute if score #lostcitysek game matches 16..59 if score #lostcitymin game matches 0 if score #lostcityquick game matches 0 if score #lostcity lostcitylobby matches 2.. if score #lostcity lostcitylobby = #lostcity lostcityvote run function custom:maps/lostcity/quickstart

execute as @a[team=lostcity,tag=!lostcityvote,scores={book=1..}] unless entity @s[nbt={Inventory:[{Slot:7b, id:"minecraft:knowledge_book"}]}] run function custom:maps/lostcity/voting

scoreboard players set #lostcity lostcityvote 0
execute as @a[team=lostcity,tag=lostcityvote] run scoreboard players add #lostcity lostcityvote 1

execute if score #lostcity lostcitylobby matches 2..6 as @a[tag=!lostcityvote] run item replace entity @s[team=lostcity] hotbar.7 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.quick.vote","color":"green"}'}}

execute if score #lostcity lostcitylobby matches ..1 as @a[tag=!lostcityvote] run item replace entity @s[team=lostcity] hotbar.7 with minecraft:book{display: {Name:'{"translate":"map.before.quick.notavailable","color":"red"}'}}

execute if score #lostcity lostcitylobby matches 2..6 as @a[tag=lostcityvote] run item replace entity @s[team=lostcity] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.alreadyvote","color":"yellow"}'}}

execute if score #lostcity lostcitylobby matches 7.. as @a[tag=!lostcityvote] run item replace entity @s[team=lostcity] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.notavailable","color":"red"}'}}

item replace entity @a[team=lostcity] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}

execute unless score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches ..6 if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run tellraw @a[team=lostcity] {"translate":"map.start.lessplayers","color":"yellow"}
execute unless score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches ..6 if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 as @a[team=lostcity] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
execute unless score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches ..6 if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run scoreboard players set #lostcitybar game 30
execute unless score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches ..6 if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run scoreboard players set #lostcitysek game 30

execute if score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches ..1 if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run tellraw @a[team=lostcity] {"translate":"map.start.alone","color":"yellow"}
execute if score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches ..1 if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 as @a[team=lostcity] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
execute if score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches ..1 if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run scoreboard players set #lostcitybar game 30
execute if score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches ..1 if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run scoreboard players set #lostcitysek game 30

execute unless score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches 7.. if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run tellraw @a[team=lostcity] {"translate":"map.start.normal","color":":yellow"}
execute unless score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches 7.. if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run scoreboard players set #lostcitygame game 1
execute unless score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches 7.. if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run scoreboard players set #lostcity game 0

execute if score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches 2.. if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run tellraw @a[team=lostcity] {"translate":"map.start.quick","color":"yellow"}
execute if score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches 2.. if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run scoreboard players set #lostcitygame game 1
execute if score #lostcity lostcitylobby = #lostcity lostcityvote if score #lostcity lostcitylobby matches 2.. if score #lostcitymin game matches ..0 if score #lostcitysek game matches ..0 run scoreboard players set #lostcity game 0

execute if score #lostcity lostcitylobby matches 7.. if score #lostcitymin game matches 0.. if score #lostcitysek game matches 31.. run scoreboard players set #lostcitybar game 30
execute if score #lostcity lostcitylobby matches 7.. if score #lostcitymin game matches 0.. if score #lostcitysek game matches 31.. run scoreboard players set #lostcitysek game 30
execute if score #lostcity lostcitylobby matches 7.. if score #lostcitymin game matches 0.. if score #lostcitysek game matches 31.. run scoreboard players set #lostcitymin game 0


execute unless score #reload reload matches 0 unless score #lostcitysek game matches 0..9 run title @a[team=lostcity] actionbar [{"text":">>> ","color":"gold"},{"translate":"map.before.actionbar.players","color":"dark_blue"},{"text":"(","color":"yellow"},{"score":{"name":"#lostcity","objective":"lostcitylobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.countdown","color":"dark_blue"},{"score":{"name":"#lostcitymin","objective":"game"},"color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"#lostcitysek","objective":"game"},"color":"aqua"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.vote","color":"dark_blue"},{"score":{"name":"#lostcity","objective":"lostcityvote"},"color":"aqua"},{"text":" <<<","color":"gold"}]
execute unless score #reload reload matches 0 if score #lostcitysek game matches 0..9 run title @a[team=lostcity] actionbar [{"text":">>> ","color":"gold"},{"translate":"map.before.actionbar.players","color":"dark_blue"},{"text":"(","color":"yellow"},{"score":{"name":"#lostcity","objective":"lostcitylobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.countdown","color":"dark_blue"},{"score":{"name":"#lostcitymin","objective":"game"},"color":"aqua"},{"text":":","color":"yellow"},{"text":"0","color":"aqua"},{"score":{"name":"#lostcitysek","objective":"game"},"color":"aqua"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.vote","color":"dark_blue"},{"score":{"name":"#lostcity","objective":"lostcityvote"},"color":"aqua"},{"text":" <<<","color":"gold"}]
