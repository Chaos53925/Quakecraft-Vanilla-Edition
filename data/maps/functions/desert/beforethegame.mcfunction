
scoreboard players set @a[team=desert,tag=desertvote] desertvoting 1
scoreboard objectives setdisplay sidebar.team.gold desertvoting

bossbar set minecraft:desertbar players @a[team=desert]

execute store result bossbar minecraft:desertbar value run scoreboard players get #desertbar game
execute as @a[team=desert,scores={book=1..},tag=!play] unless entity @s[nbt={Inventory:[{Slot:8b, id:"minecraft:knowledge_book"}]}] run function custom:leave
scoreboard players set #desert desertlobby 0
execute as @a[team=desert] run scoreboard players add #desert desertlobby 1

execute as @a[team=desert] run function maps:invbefore

execute if score #desert desertlobby matches 1.. run function maps:desert/timer

execute store result bossbar minecraft:desertbar value run scoreboard players get #desertbar game

execute if score #desert desertlobby matches 0 run scoreboard players set #desert game 0
execute if score #desert desertlobby matches 0 run scoreboard players set #desertsek game 0
execute if score #desert desertlobby matches 0 run scoreboard players set #desertmin game 2
execute if score #desert desertlobby matches 0 run scoreboard players set #desertbar game 120
execute if score #desert desertlobby matches 0 run scoreboard players set #desertquick game 0
execute if score #desert desertlobby matches 1.. run scoreboard players add #desert game 1

execute if score #desertsek game matches 0..59 if score #desertmin game matches 1..2 if score #desertquick game matches 0 if score #desert desertlobby matches 2.. if score #desert desertlobby = #desert desertvote run function maps:desert/quickstart
execute if score #desertsek game matches 16..59 if score #desertmin game matches 0 if score #desertquick game matches 0 if score #desert desertlobby matches 2.. if score #desert desertlobby = #desert desertvote run function maps:desert/quickstart

execute as @a[team=desert,tag=!desertvote,scores={book=1..}] unless entity @s[nbt={Inventory:[{Slot:7b, id:"minecraft:knowledge_book"}]}] run function maps:desert/voting

scoreboard players set #desert desertvote 0
execute as @a[team=desert,tag=desertvote] run scoreboard players add #desert desertvote 1

execute if score #desert desertlobby matches 2..6 as @a[tag=!desertvote] run item replace entity @s[team=desert] hotbar.7 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.quick.vote","color":"green"}'}}

execute if score #desert desertlobby matches ..1 as @a[tag=!desertvote] run item replace entity @s[team=desert] hotbar.7 with minecraft:book{display:{Name:'{"translate":"map.before.quick.notavailable","color":"red"}'}}

execute if score #desert desertlobby matches 2..6 as @a[tag=desertvote] run item replace entity @s[team=desert] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.alreadyvote","color":"yellow"}'}}

execute if score #desert desertlobby matches 7.. as @a[tag=!desertvote] run item replace entity @s[team=desert] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.notavailable","color":"red"}'}}

item replace entity @a[team=desert] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}

execute unless score #desert desertlobby = #desert desertvote if score #desert desertlobby matches ..6 if score #desertmin game matches ..0 if score #desertsek game matches ..0 run tellraw @a[team=desert] {"translate":"map.start.lessplayers","color":"yellow"}
execute unless score #desert desertlobby = #desert desertvote if score #desert desertlobby matches ..6 if score #desertmin game matches ..0 if score #desertsek game matches ..0 as @a[team=desert] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
execute unless score #desert desertlobby = #desert desertvote if score #desert desertlobby matches ..6 if score #desertmin game matches ..0 if score #desertsek game matches ..0 run scoreboard players set #desertbar game 30
execute unless score #desert desertlobby = #desert desertvote if score #desert desertlobby matches ..6 if score #desertmin game matches ..0 if score #desertsek game matches ..0 run scoreboard players set #desertsek game 30

execute if score #desert desertlobby = #desert desertvote if score #desert desertlobby matches ..1 if score #desertmin game matches ..0 if score #desertsek game matches ..0 run tellraw @a[team=desert] {"translate":"map.start.alone","color":"yellow"}
execute if score #desert desertlobby = #desert desertvote if score #desert desertlobby matches ..1 if score #desertmin game matches ..0 if score #desertsek game matches ..0 as @a[team=desert] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
execute if score #desert desertlobby = #desert desertvote if score #desert desertlobby matches ..1 if score #desertmin game matches ..0 if score #desertsek game matches ..0 run scoreboard players set #desertbar game 30
execute if score #desert desertlobby = #desert desertvote if score #desert desertlobby matches ..1 if score #desertmin game matches ..0 if score #desertsek game matches ..0 run scoreboard players set #desertsek game 30

execute unless score #desert desertlobby = #desert desertvote if score #desert desertlobby matches 7.. if score #desertmin game matches ..0 if score #desertsek game matches ..0 run tellraw @a[team=desert] {"translate":"map.start.normal","color":":yellow"}
execute unless score #desert desertlobby = #desert desertvote if score #desert desertlobby matches 7.. if score #desertmin game matches ..0 if score #desertsek game matches ..0 run scoreboard players set #desertgame game 1
execute unless score #desert desertlobby = #desert desertvote if score #desert desertlobby matches 7.. if score #desertmin game matches ..0 if score #desertsek game matches ..0 run scoreboard players set #desert game 0

execute if score #desert desertlobby = #desert desertvote if score #desert desertlobby matches 2.. if score #desertmin game matches ..0 if score #desertsek game matches ..0 run tellraw @a[team=desert] {"translate":"map.start.quick","color":"yellow"}
execute if score #desert desertlobby = #desert desertvote if score #desert desertlobby matches 2.. if score #desertmin game matches ..0 if score #desertsek game matches ..0 run scoreboard players set #desertgame game 1
execute if score #desert desertlobby = #desert desertvote if score #desert desertlobby matches 2.. if score #desertmin game matches ..0 if score #desertsek game matches ..0 run scoreboard players set #desert game 0

execute if score #desert desertlobby matches 7.. if score #desertmin game matches 0.. if score #desertsek game matches 31.. run scoreboard players set #desertbar game 30
execute if score #desert desertlobby matches 7.. if score #desertmin game matches 0.. if score #desertsek game matches 31.. run scoreboard players set #desertsek game 30
execute if score #desert desertlobby matches 7.. if score #desertmin game matches 0.. if score #desertsek game matches 31.. run scoreboard players set #desertmin game 0

execute unless score #reload reload matches 0 unless score #desertsek game matches 0..9 run title @a[team=desert] actionbar [{"text":">>> ","color":"gold"},{"translate":"map.before.actionbar.players","color":"dark_blue"},{"text":"(","color":"yellow"},{"score":{"name":"#desert","objective":"desertlobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.countdown","color":"dark_blue"},{"score":{"name":"#desertmin","objective":"game"},"color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"#desertsek","objective":"game"},"color":"aqua"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.vote","color":"dark_blue"},{"score":{"name":"#desert","objective":"desertvote"},"color":"aqua"},{"text":" <<<","color":"gold"}]
execute unless score #reload reload matches 0 if score #desertsek game matches 0..9 run title @a[team=desert] actionbar [{"text":">>> ","color":"gold"},{"translate":"map.before.actionbar.players","color":"dark_blue"},{"text":"(","color":"yellow"},{"score":{"name":"#desert","objective":"desertlobby"},"color":"aqua"},{"text":"/","color":"yellow"},{"text":"10","color":"aqua"},{"text":")","color":"yellow"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.countdown","color":"dark_blue"},{"score":{"name":"#desertmin","objective":"game"},"color":"aqua"},{"text":":","color":"yellow"},{"text":"0","color":"aqua"},{"score":{"name":"#desertsek","objective":"game"},"color":"aqua"},{"text":" | ","color":"gold"},{"translate":"map.before.actionbar.vote","color":"dark_blue"},{"score":{"name":"#desert","objective":"desertvote"},"color":"aqua"},{"text":" <<<","color":"gold"}]
