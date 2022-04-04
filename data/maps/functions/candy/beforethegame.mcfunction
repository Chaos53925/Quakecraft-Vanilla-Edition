
scoreboard players set @a[team=candy,tag=candyvote] candyvoting 1
scoreboard objectives setdisplay sidebar.team.aqua candyvoting

bossbar set minecraft:candybar players @a[team=candy]
execute as @a[team=candy,scores={book=1..},tag=!play] unless entity @s[nbt={Inventory:[{Slot:8b, id:"minecraft:knowledge_book"}]}] run function custom:leave
scoreboard players set #candy candylobby 0
execute as @a[team=candy] run scoreboard players add #candy candylobby 1

execute as @a[team=candy] run function maps:invbefore

execute if score #candy candylobby matches 1.. run function maps:candy/timer

execute store result bossbar minecraft:candybar value run scoreboard players get #candybar game

execute if score #candy candylobby matches 0 run scoreboard players set #candy game 0
execute if score #candy candylobby matches 0 run scoreboard players set #candysek game 0
execute if score #candy candylobby matches 0 run scoreboard players set #candymin game 2
execute if score #candy candylobby matches 0 run scoreboard players set #candybar game 120
execute if score #candy candylobby matches 0 run scoreboard players set #candyquick game 0
execute if score #candy candylobby matches 1.. run scoreboard players add #candy game 1

execute if score #candysek game matches 0..59 if score #candymin game matches 1..2 if score #candyquick game matches 0 if score #candy candylobby matches 2.. if score #candy candylobby = #candy candyvote run function maps:candy/quickstart
execute if score #candysek game matches 16..59 if score #candymin game matches 0 if score #candyquick game matches 0 if score #candy candylobby matches 2.. if score #candy candylobby = #candy candyvote run function maps:candy/quickstart

execute as @a[team=candy,tag=!candyvote,scores={book=1..}] unless entity @s[nbt={Inventory:[{Slot:7b, id:"minecraft:knowledge_book"}]}] run function maps:candy/voting

scoreboard players set #candy candyvote 0
execute as @a[team=candy,tag=candyvote] run scoreboard players add #candy candyvote 1

execute if score #candy candylobby matches 2..6 as @a[tag=!candyvote] run item replace entity @s[team=candy] hotbar.7 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.quick.vote","color":"green"}'}}

execute if score #candy candylobby matches ..1 as @a[tag=!candyvote] run item replace entity @s[team=candy] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.notavailable","color":"red"}'}}

execute if score #candy candylobby matches 2..6 as @a[tag=candyvote] run item replace entity @s[team=candy] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.alreadyvote","color":"yellow"}'}}

execute if score #candy candylobby matches 7.. as @a[tag=!candyvote] run item replace entity @s[team=candy] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.notavailable","color":"red"}'}}

item replace entity @a[team=candy] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}

execute unless score #candy candylobby = #candy candyvote if score #candy candylobby matches ..6 if score #candymin game matches ..0 if score #candysek game matches ..0 run tellraw @a[team=candy] {"translate":"map.start.lessplayers","color":"yellow"}
execute unless score #candy candylobby = #candy candyvote if score #candy candylobby matches ..6 if score #candymin game matches ..0 if score #candysek game matches ..0 as @a[team=candy] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
execute unless score #candy candylobby = #candy candyvote if score #candy candylobby matches ..6 if score #candymin game matches ..0 if score #candysek game matches ..0 run scoreboard players set #candybar game 30
execute unless score #candy candylobby = #candy candyvote if score #candy candylobby matches ..6 if score #candymin game matches ..0 if score #candysek game matches ..0 run scoreboard players set #candysek game 30

execute if score #candy candylobby = #candy candyvote if score #candy candylobby matches ..1 if score #candymin game matches ..0 if score #candysek game matches ..0 run tellraw @a[team=candy] {"translate":"map.start.alone","color":"yellow"}
execute if score #candy candylobby = #candy candyvote if score #candy candylobby matches ..1 if score #candymin game matches ..0 if score #candysek game matches ..0 as @a[team=candy] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
execute if score #candy candylobby = #candy candyvote if score #candy candylobby matches ..1 if score #candymin game matches ..0 if score #candysek game matches ..0 run scoreboard players set #candybar game 30
execute if score #candy candylobby = #candy candyvote if score #candy candylobby matches ..1 if score #candymin game matches ..0 if score #candysek game matches ..0 run scoreboard players set #candysek game 30

execute unless score #candy candylobby = #candy candyvote if score #candy candylobby matches 7.. if score #candymin game matches ..0 if score #candysek game matches ..0 run tellraw @a[team=candy] {"translate":"map.start.normal","color":":yellow"}
execute unless score #candy candylobby = #candy candyvote if score #candy candylobby matches 7.. if score #candymin game matches ..0 if score #candysek game matches ..0 run scoreboard players set #candygame game 1
execute unless score #candy candylobby = #candy candyvote if score #candy candylobby matches 7.. if score #candymin game matches ..0 if score #candysek game matches ..0 run scoreboard players set #candy game 0

execute if score #candy candylobby = #candy candyvote if score #candy candylobby matches 2.. if score #candymin game matches ..0 if score #candysek game matches ..0 run tellraw @a[team=candy] {"translate":"map.start.quick","color":"yellow"}
execute if score #candy candylobby = #candy candyvote if score #candy candylobby matches 2.. if score #candymin game matches ..0 if score #candysek game matches ..0 run scoreboard players set #candygame game 1
execute if score #candy candylobby = #candy candyvote if score #candy candylobby matches 2.. if score #candymin game matches ..0 if score #candysek game matches ..0 run scoreboard players set #candy game 0

execute if score #candy candylobby matches 7.. if score #candymin game matches 0.. if score #candysek game matches 31.. run scoreboard players set #candybar game 30
execute if score #candy candylobby matches 7.. if score #candymin game matches 0.. if score #candysek game matches 31.. run scoreboard players set #candysek game 30
execute if score #candy candylobby matches 7.. if score #candymin game matches 0.. if score #candysek game matches 31.. run scoreboard players set #candymin game 0

execute unless score #reload reload matches 0 unless score #candysek game matches 0..9 run title @a[team=candy] actionbar [{"text":">>> ","color":"gold"},{"translate":"map.before.actionbar.players","color":"dark_blue"},{"text":"(","color":"yellow"},{"score":{"name":"#candy","objective":"candylobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.countdown","color":"dark_blue"},{"score":{"name":"#candymin","objective":"game"},"color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"#candysek","objective":"game"},"color":"aqua"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.vote","color":"dark_blue"},{"score":{"name":"#candy","objective":"candyvote"},"color":"aqua"},{"text":" <<<","color":"gold"}]
execute unless score #reload reload matches 0 if score #candysek game matches 0..9 run title @a[team=candy] actionbar [{"text":">>> ","color":"gold"},{"translate":"map.before.actionbar.players","color":"dark_blue"},{"text":"(","color":"yellow"},{"score":{"name":"#candy","objective":"candylobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.countdown","color":"dark_blue"},{"score":{"name":"#candymin","objective":"game"},"color":"aqua"},{"text":":","color":"yellow"},{"text":"0","color":"aqua"},{"score":{"name":"#candysek","objective":"game"},"color":"aqua"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.vote","color":"dark_blue"},{"score":{"name":"#candy","objective":"candyvote"},"color":"aqua"},{"text":" <<<","color":"gold"}]
