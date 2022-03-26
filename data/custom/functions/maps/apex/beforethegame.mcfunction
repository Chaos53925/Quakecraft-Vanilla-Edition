
scoreboard players set @a[team=apex,tag=apexvote] apexvoting 1
scoreboard objectives setdisplay sidebar.team.red apexvoting

bossbar set minecraft:apexbar players @a[team=apex]
execute as @a[scores={book=1..},tag=!play] unless entity @s[nbt={Inventory:[{Slot:8b, id:"minecraft:knowledge_book"}]}] run function custom:leave
scoreboard players set #apex apexlobby 0
execute as @a[team=apex] run scoreboard players add #apex apexlobby 1
execute if score #apex apexlobby matches 1.. run function custom:maps/apex/timer

execute as @a[team=apex] run function custom:maps/invbefore

execute store result bossbar minecraft:apexbar value run scoreboard players get #apexbar game

execute if score #apex apexlobby matches 0 run scoreboard players set #apex game 0
execute if score #apex apexlobby matches 0 run scoreboard players set #apexsek game 0
execute if score #apex apexlobby matches 0 run scoreboard players set #apexmin game 2
execute if score #apex apexlobby matches 0 run scoreboard players set #apexbar game 120
execute if score #apex apexlobby matches 0 run scoreboard players set #apexquick game 0
execute if score #apex apexlobby matches 1.. run scoreboard players add #apex game 1

execute if score #apexsek game matches 0..59 if score #apexmin game matches 1..2 if score #apexquick game matches 0 if score #apex apexlobby matches 2.. if score #apex apexlobby = #apex apexvote run function custom:maps/apex/quickstart
execute if score #apexsek game matches 16..59 if score #apexmin game matches 0 if score #apexquick game matches 0 if score #apex apexlobby matches 2.. if score #apex apexlobby = #apex apexvote run function custom:maps/apex/quickstart

execute as @a[team=apex,tag=!apexvote,scores={book=1..}] unless entity @s[nbt={Inventory:[{Slot:7b, id:"minecraft:knowledge_book"}]}] run function custom:maps/apex/voting

scoreboard players set #apex apexvote 0
execute as @a[team=apex,tag=apexvote] run scoreboard players add #apex apexvote 1

execute if score #apex apexlobby matches 2..6 as @a[tag=!apexvote] run item replace entity @s[team=apex] hotbar.7 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.quick.vote","color":"green"}'}}

execute if score #apex apexlobby matches ..1 as @a[tag=!apexvote] run item replace entity @s[team=apex] hotbar.7 with book{display:{Name:'{"translate":"map.before.quick.notavailable","color":"red"}'}}

execute if score #apex apexlobby matches 2..6 as @a[tag=apexvote] run item replace entity @s[team=apex] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.alreadyvote","color":"yellow"}'}}

execute if score #apex apexlobby matches 7.. as @a[tag=!apexvote] run item replace entity @s[team=apex] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.notavailable","color":"red"}'}}

item replace entity @a[team=apex] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}

execute unless score #apex apexlobby = #apex apexvote if score #apex apexlobby matches ..6 if score #apexmin game matches ..0 if score #apexsek game matches ..0 run tellraw @a[team=apex] {"translate":"map.start.lessplayers","color":"yellow"}
execute unless score #apex apexlobby = #apex apexvote if score #apex apexlobby matches ..6 if score #apexmin game matches ..0 if score #apexsek game matches ..0 as @a[team=apex] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
execute unless score #apex apexlobby = #apex apexvote if score #apex apexlobby matches ..6 if score #apexmin game matches ..0 if score #apexsek game matches ..0 run scoreboard players set #apexbar game 30
execute unless score #apex apexlobby = #apex apexvote if score #apex apexlobby matches ..6 if score #apexmin game matches ..0 if score #apexsek game matches ..0 run scoreboard players set #apexsek game 30

execute if score #apex apexlobby = #apex apexvote if score #apex apexlobby matches ..1 if score #apexmin game matches ..0 if score #apexsek game matches ..0 run tellraw @a[team=apex] {"translate":"map.start.alone","color":"yellow"}
execute if score #apex apexlobby = #apex apexvote if score #apex apexlobby matches ..1 if score #apexmin game matches ..0 if score #apexsek game matches ..0 as @a[team=apex] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
execute if score #apex apexlobby = #apex apexvote if score #apex apexlobby matches ..1 if score #apexmin game matches ..0 if score #apexsek game matches ..0 run scoreboard players set #apexbar game 30
execute if score #apex apexlobby = #apex apexvote if score #apex apexlobby matches ..1 if score #apexmin game matches ..0 if score #apexsek game matches ..0 run scoreboard players set #apexsek game 30

execute unless score #apex apexlobby = #apex apexvote if score #apex apexlobby matches 7.. if score #apexmin game matches ..0 if score #apexsek game matches ..0 run tellraw @a[team=apex] {"translate":"map.start.normal","color":":yellow"}
execute unless score #apex apexlobby = #apex apexvote if score #apex apexlobby matches 7.. if score #apexmin game matches ..0 if score #apexsek game matches ..0 run scoreboard players set #apexgame game 1
execute unless score #apex apexlobby = #apex apexvote if score #apex apexlobby matches 7.. if score #apexmin game matches ..0 if score #apexsek game matches ..0 run scoreboard players set #apex game 0

execute if score #apex apexlobby = #apex apexvote if score #apex apexlobby matches 7.. if score #apexmin game matches 0.. if score #apexsek game matches 31.. run scoreboard players set #apexbar game 30
execute if score #apex apexlobby = #apex apexvote if score #apex apexlobby matches 7.. if score #apexmin game matches 0.. if score #apexsek game matches 31.. run scoreboard players set #apexsek game 30

execute if score #apex apexlobby = #apex apexvote if score #apex apexlobby matches 2.. if score #apexmin game matches ..0 if score #apexsek game matches ..0 run tellraw @a[team=apex] {"translate":"map.start.quick","color":"yellow"}
execute if score #apex apexlobby = #apex apexvote if score #apex apexlobby matches 2.. if score #apexmin game matches ..0 if score #apexsek game matches ..0 run scoreboard players set #apexgame game 1
execute if score #apex apexlobby = #apex apexvote if score #apex apexlobby matches 2.. if score #apexmin game matches ..0 if score #apexsek game matches ..0 run scoreboard players set #apex game 0

execute unless score #reload reload matches 0 unless score #apexsek game matches 0..9 run title @a[team=apex] actionbar [{"text":">>> ","color":"gold"},{"translate":"map.before.actionbar.players","color":"dark_blue"},{"text":"(","color":"yellow"},{"score":{"name":"#apex","objective":"apexlobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.countdown","color":"dark_blue"},{"score":{"name":"#apexmin","objective":"game"},"color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"#apexsek","objective":"game"},"color":"aqua"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.vote","color":"dark_blue"},{"score":{"name":"#apex","objective":"apexvote"},"color":"aqua"},{"text":" <<<","color":"gold"}]
execute unless score #reload reload matches 0 if score #apexsek game matches 0..9 run title @a[team=apex] actionbar [{"text":">>> ","color":"gold"},{"translate":"map.before.actionbar.players","color":"dark_blue"},{"text":"(","color":"yellow"},{"score":{"name":"#apex","objective":"apexlobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.countdown","color":"dark_blue"},{"score":{"name":"#apexmin","objective":"game"},"color":"aqua"},{"text":":","color":"yellow"},{"text":"0","color":"aqua"},{"score":{"name":"#apexsek","objective":"game"},"color":"aqua"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.vote","color":"dark_blue"},{"score":{"name":"#apex","objective":"apexvote"},"color":"aqua"},{"text":" <<<","color":"gold"}]
