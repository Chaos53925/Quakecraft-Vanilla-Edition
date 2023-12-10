
$scoreboard players set @a[team=apex,tag=$(votetag)] $(votescore) 1
$scoreboard objectives setdisplay sidebar.team.$(teamcolor) $(votescore)

$bossbar set minecraft:$(bar) players @a[team=$(team)]
$execute as @a[scores={book=1..},tag=!play] unless entity @s[nbt={Inventory:[{Slot:8b, id:"minecraft:knowledge_book"}]}] run function custom:leave with storage quake:$(team)
$scoreboard players set $(teamlobby) data 0
# Lobbycounter
$execute as @a[team=$(team)] run scoreboard players add $(teamlobby) data 1
# Timerfunktion
$execute if score $(teamlobby) data matches 1.. run function maps:apex/timer with storage quake:$(team)

$execute as @a[team=$(team)] run function maps:invbefore

$execute store result bossbar minecraft:apexbar value run scoreboard players get $(barname) data

$execute if score $(teamlobby) data matches 0 run scoreboard players set #apex data 0
$execute if score $(teamlobby) data matches 0 run scoreboard players set #apexsek data 0
$execute if score $(teamlobby) data matches 0 run scoreboard players set #apexmin data 2
$execute if score $(teamlobby) data matches 0 run scoreboard players set $(barname) data 120
$execute if score $(teamlobby) data matches 0 run scoreboard players set #apexquick data 0
$execute if score $(teamlobby) data matches 1.. run scoreboard players add #apex data 1

$execute if score #apexsek data matches 0..59 if score #apexmin data matches 1..2 if score #apexquick data matches 0 if score $(teamlobby) data matches 2.. if score $(teamlobby) data = #apex apexvote run function maps:apex/quickstart
$execute if score #apexsek data matches 16..59 if score #apexmin data matches 0 if score #apexquick data matches 0 if score $(teamlobby) data matches 2.. if score $(teamlobby) data = #apex apexvote run function maps:apex/quickstart

$execute as @a[team=apex,tag=!$(votetag),scores={book=1..}] unless entity @s[nbt={Inventory:[{Slot:7b, id:"minecraft:knowledge_book"}]}] run function maps:apex/voting

$execute store result score $(votename) data if entity @a[tag=$(votetag)]

$execute if score $(teamlobby) data matches 2..6 as @a[tag=!$(votetag)] run item replace entity @s[team=$(team)] hotbar.7 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.quick.vote","color":"green"}'}}

$execute if score $(teamlobby) data matches ..1 as @a[tag=!$(votetag)] run item replace entity @s[team=$(team)] hotbar.7 with book{display:{Name:'{"translate":"map.before.quick.notavailable","color":"red"}'}}

$execute if score $(teamlobby) data matches 2..6 as @a[tag=$(votetag)] run item replace entity @s[team=$(team)] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.alreadyvote","color":"yellow"}'}}

$execute if score $(teamlobby) data matches 7.. as @a[tag=!$(votetag)] run item replace entity @s[team=$(team)] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.notavailable","color":"red"}'}}

$item replace entity @a[team=$(team)] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}

$execute unless score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches ..6 if score #apexmin data matches ..0 if score #apexsek data matches ..0 run tellraw @a[team=apex] {"translate":"map.start.lessplayers","color":"yellow"}
$execute unless score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches ..6 if score #apexmin data matches ..0 if score #apexsek data matches ..0 as @a[team=apex] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
$execute unless score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches ..6 if score #apexmin data matches ..0 if score #apexsek data matches ..0 run scoreboard players set #apexbar data 30
$execute unless score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches ..6 if score #apexmin data matches ..0 if score #apexsek data matches ..0 run scoreboard players set #apexsek data 30

$execute if score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches ..1 if score #apexmin data matches ..0 if score #apexsek data matches ..0 run tellraw @a[team=apex] {"translate":"map.start.alone","color":"yellow"}
$execute if score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches ..1 if score #apexmin data matches ..0 if score #apexsek data matches ..0 as @a[team=apex] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
$execute if score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches ..1 if score #apexmin data matches ..0 if score #apexsek data matches ..0 run scoreboard players set #apexbar data 30
$execute if score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches ..1 if score #apexmin data matches ..0 if score #apexsek data matches ..0 run scoreboard players set #apexsek data 30

$execute unless score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches 7.. if score #apexmin data matches ..0 if score #apexsek data matches ..0 run tellraw @a[team=apex] {"translate":"map.start.normal","color":":yellow"}
$execute unless score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches 7.. if score #apexmin data matches ..0 if score #apexsek data matches ..0 run scoreboard players set #apexdata data 1
$execute unless score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches 7.. if score #apexmin data matches ..0 if score #apexsek data matches ..0 run scoreboard players set #apex data 0

$execute if score $(teamlobby) data matches 7.. if score #apexmin data matches 0.. if score #apexsek data matches 31.. run scoreboard players set #apexbar data 30
$execute if score $(teamlobby) data matches 7.. if score #apexmin data matches 0.. if score #apexsek data matches 31.. run scoreboard players set #apexsek data 30
$execute if score $(teamlobby) data matches 7.. if score #apexmin data matches 0.. if score #apexsek data matches 31.. run scoreboard players set #apexmin data 0

$execute if score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches 2.. if score #apexmin data matches ..0 if score #apexsek data matches ..0 run tellraw @a[team=apex] {"translate":"map.start.quick","color":"yellow"}
$execute if score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches 2.. if score #apexmin data matches ..0 if score #apexsek data matches ..0 run scoreboard players set #apexdata data 1
$execute if score $(teamlobby) data = #apex apexvote if score $(teamlobby) data matches 2.. if score #apexmin data matches ..0 if score #apexsek data matches ..0 run scoreboard players set #apex data 0

$execute unless score #reload reload matches 0 unless score #apexsek data matches 0..9 run title @a[team=$] actionbar [{"translate":"map.before.actionbar","color":"yellow","with":[{"score":{"name":"#apex","object":"$(teamlobby)"},"color":"aqua"},{"score":{"name":"#apexmin","objective":"data"},"color":"aqua"},{"score":{"name":"#apexsek","objective":"data"},"color":"aqua"},{"score":{"name":"#apex","objective":"apexvote"},"color":"aqua"},{"text":"10","color":"aqua"},{"text":">>>","color":"gold"},{"text":"|","color":"gold"},{"text":"<<<","color":"gold"},{"text":"","color":"aqua"}]}]
$execute unless score #reload reload matches 0 if score #apexsek data matches 0..9 run title @a[team=$] actionbar [{"translate":"map.before.actionbar","color":"yellow","with":[{"score":{"name":"#apex","object":"$(teamlobby)"},"color":"aqua"},{"score":{"name":"#apexmin","objective":"data"},"color":"aqua"},{"score":{"name":"#apexsek","objective":"data"},"color":"aqua"},{"score":{"name":"#apex","objective":"apexvote"},"color":"aqua"},{"text":"10","color":"aqua"},{"text":">>>","color":"gold"},{"text":"|","color":"gold"},{"text":"<<<","color":"gold"},{"text":"0","color":"aqua"}]}]
