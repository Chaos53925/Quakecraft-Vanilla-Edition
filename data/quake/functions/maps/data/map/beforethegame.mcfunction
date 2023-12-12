
$scoreboard players set @a[team=apex,tag=$(votetag)] $(votescore) 1
$scoreboard objectives setdisplay sidebar.team.$(teamcolor) $(votescore)

$bossbar set minecraft:$(bar) players @a[team=$(team)]
$execute as @a[scores={book=1..},tag=!play] unless entity @s[nbt={Inventory:[{Slot:8b, id:"minecraft:knowledge_book"}]}] run function custom:leave with storage quake:$(team)
$scoreboard players set $(teamlobby) data 0
# Lobbycounter
$execute as @a[team=$(team)] run scoreboard players add $(teamlobby) data 1
# Timerfunktion
$execute if score $(teamlobby) data matches 1.. run function maps:map/timer with storage quake:$(team)

$execute as @a[team=$(team)] run function maps:invbefore

$execute store result bossbar minecraft:$(bar) value run scoreboard players get $(barname) data

$execute if score $(teamlobby) data matches 0 run scoreboard players set $(teamname) data 0
$execute if score $(teamlobby) data matches 0 run scoreboard players set $(seconds) data 0
$execute if score $(teamlobby) data matches 0 run scoreboard players set $(minutes) data 2
$execute if score $(teamlobby) data matches 0 run scoreboard players set $(barname) data 120
$execute if score $(teamlobby) data matches 0 run scoreboard players set $(quickplayers) data 0
$execute if score $(teamlobby) data matches 1.. run scoreboard players add $(teamname) data 1

$execute if score $(seconds) data matches 0..59 if score $(minutes) data matches 1..2 if score $(quickplayers) data matches 0 if score $(teamlobby) data matches 2.. if score $(teamlobby) data = $(teamname) $(votescoreboard) run function maps:map/quickstart with storage quake:$(team)
$execute if score $(seconds) data matches 16..59 if score $(minutes) data matches 0 if score $(quickplayers) data matches 0 if score $(teamlobby) data matches 2.. if score $(teamlobby) data = $(teamname) $(votescoreboard) run function maps:map/quickstart with storage quake:$(team)

$execute as @a[team=apex,tag=!$(votetag),scores={book=1..}] unless entity @s[nbt={Inventory:[{Slot:7b, id:"minecraft:knowledge_book"}]}] run function maps:map/voting with storage $(team)

$execute store result score $(votename) data if entity @a[tag=$(votetag)]

$execute if score $(teamlobby) data matches 2..6 as @a[tag=!$(votetag)] run item replace entity @s[team=$(team)] hotbar.7 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.quick.vote","color":"green"}'}}

$execute if score $(teamlobby) data matches ..1 as @a[tag=!$(votetag)] run item replace entity @s[team=$(team)] hotbar.7 with book{display:{Name:'{"translate":"map.before.quick.notavailable","color":"red"}'}}

$execute if score $(teamlobby) data matches 2..6 as @a[tag=$(votetag)] run item replace entity @s[team=$(team)] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.alreadyvote","color":"yellow"}'}}

$execute if score $(teamlobby) data matches 7.. as @a[tag=!$(votetag)] run item replace entity @s[team=$(team)] hotbar.7 with minecraft:book{display: {Name: '{"translate":"map.before.quick.notavailable","color":"red"}'}}

$item replace entity @a[team=$(team)] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"map.before.leave","color":"dark_red"}'}}

$execute unless score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches ..6 if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run tellraw @a[team=apex] {"translate":"map.start.lessplayers","color":"yellow"}
$execute unless score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches ..6 if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 as @a[team=apex] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
$execute unless score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches ..6 if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run scoreboard players set $(barname) data 30
$execute unless score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches ..6 if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run scoreboard players set $(seconds) data 30

$execute if score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches ..1 if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run tellraw @a[team=apex] {"translate":"map.start.alone","color":"yellow"}
$execute if score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches ..1 if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 as @a[team=apex] positioned as @s run playsound entity.villager.no master @s[tag=!soundsoff] ~ ~ ~
$execute if score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches ..1 if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run scoreboard players set $(barname) data 30
$execute if score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches ..1 if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run scoreboard players set $(seconds) data 30

$execute unless score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches 7.. if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run tellraw @a[team=apex] {"translate":"map.start.normal","color":":yellow"}
$execute unless score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches 7.. if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run scoreboard players set $(teamname)data data 1
$execute unless score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches 7.. if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run scoreboard players set $(teamname) data 0

$execute if score $(teamlobby) data matches 7.. if score $(minutes) data matches 0.. if score $(seconds) data matches 31.. run scoreboard players set $(barname) data 30
$execute if score $(teamlobby) data matches 7.. if score $(minutes) data matches 0.. if score $(seconds) data matches 31.. run scoreboard players set $(seconds) data 30
$execute if score $(teamlobby) data matches 7.. if score $(minutes) data matches 0.. if score $(seconds) data matches 31.. run scoreboard players set $(minutes) data 0

$execute if score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches 2.. if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run tellraw @a[team=apex] {"translate":"map.start.quick","color":"yellow"}
$execute if score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches 2.. if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run scoreboard players set $(teamname)data data 1
$execute if score $(teamlobby) data = $(teamname) $(votescoreboard) if score $(teamlobby) data matches 2.. if score $(minutes) data matches ..0 if score $(seconds) data matches ..0 run scoreboard players set $(teamname) data 0

$execute unless score #reload reload matches 0 unless score $(seconds) data matches 0..9 run title @a[team=$(team)] actionbar [{"translate":"map.before.actionbar","color":"yellow","with":[{"score":{"name":"$(teamname)","object":"$(teamlobby)"},"color":"aqua"},{"score":{"name":"$(minutes)","objective":"data"},"color":"aqua"},{"score":{"name":"$(seconds)","objective":"data"},"color":"aqua"},{"score":{"name":"$(teamname)","objective":"$(votescoreboard)"},"color":"aqua"},{"text":"10","color":"aqua"},{"text":">>>","color":"gold"},{"text":"|","color":"gold"},{"text":"<<<","color":"gold"},{"text":"","color":"aqua"}]}]
$execute unless score #reload reload matches 0 if score $(seconds) data matches 0..9 run title @a[team=$(team)] actionbar [{"translate":"map.before.actionbar","color":"yellow","with":[{"score":{"name":"$(teamname)","object":"$(teamlobby)"},"color":"aqua"},{"score":{"name":"$(minutes)","objective":"data"},"color":"aqua"},{"score":{"name":"$(seconds)","objective":"data"},"color":"aqua"},{"score":{"name":"$(teamname)","objective":"$(votescoreboard)"},"color":"aqua"},{"text":"10","color":"aqua"},{"text":">>>","color":"gold"},{"text":"|","color":"gold"},{"text":"<<<","color":"gold"},{"text":"0","color":"aqua"}]}]
