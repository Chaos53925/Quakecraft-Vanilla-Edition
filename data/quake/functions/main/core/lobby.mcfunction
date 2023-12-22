# Der Tag, welcher für die dauerhafte ausführbarkeit von Schüssen zuständig ist wird hier entfernt. (Sicher ist Sicher)
tag @a remove alwaysShoot

execute as @a run scoreboard players add #player temp 1
execute if score #player data < #player temp run scoreboard players reset * apexvoting
execute if score #player data < #player temp run scoreboard players reset * candyvoting
execute if score #player data < #player temp run scoreboard players reset * desertvoting
execute if score #player data < #player temp run scoreboard players reset * lostcityvoting
scoreboard players set #player data 0
scoreboard players set #player temp 0
execute as @a run scoreboard players add #player data 1

execute store result bossbar minecraft:playerbar value run scoreboard players get #player data
bossbar set playerbar name [{"translate":"quake.lobby.bar.title","color":"white","with":[{"text":"|","color":"gold"}]},{"translate":"quake.lobby.bar.online","color":"yellow","with":[{"score":{"name":"#player","objective":"data"},"color":"aqua"},{"text":"/","color":"gold"},{"text":"60","color":"aqua"}]}]
bossbar set minecraft:playerbar players @a[team=Lobby]

# Wenn die Schwirigkeit über Friedlich liegen sollte wird der Sättigungseffekt gegeben, sonst nicht.
execute store result score #dif temp run difficulty
execute if score #dif temp matches 1.. run effect give @a saturation 20 9 true
execute if score #dif temp matches 0 run effect clear @a saturation

# Regelmäßiges aktualisieren der Schilder um Korrekte Datenanzeigen zu können. (wird noch ausgebaut)
data merge block 44 16 127 {front_text:{messages:['[{"text":"[","color":"black","clickEvent":{"action":"run_command","value":"/trigger apexjoin set 1"}},{"text":"Apex","color":"red"},{"text":"]","color":"black"}]','[{"text":"("},{"score":{"name":"#apexlobby","objective":"data"}},{"text":"/10)"}]','{"text":""}','{"text":""}']}}
data merge block 24 17 117 {front_text:{messages:['[{"text":"[","color":"black","clickEvent":{"action":"run_command","value":"/trigger desertjoin set 1"}},{"text":"Desert","color":"gold"},{"text":"]","color":"black"}]','[{"text":"("},{"score":{"name":"#desertlobby","objective":"data"}},{"text":"/10)"}]','{"text":""}','{"text":""}']}}
data merge block 44 16 165 {front_text:{messages:['[{"text":"[","color":"black","clickEvent":{"action":"run_command","value":"/trigger candyjoin set 1"}},{"text":"Candy","color":"aqua"},{"text":"]","color":"black"}]','[{"text":"("},{"score":{"name":"#candylobby","objective":"data"}},{"text":"/10)"}]','{"text":""}','{"text":""}']}}
data merge block 24 17 175 {front_text:{messages:['[{"text":"[","color":"black","clickEvent":{"action":"run_command","value":"/trigger lostcityjoin set 1"}},{"text":"Lostcity","color":"gray"},{"text":"]","color":"black"}]','[{"text":"("},{"score":{"name":"#lostcitylobby","objective":"data"}},{"text":"/10)"}]','{"text":""}','{"text":""}']}}

scoreboard players enable @a[team=Lobby] apexjoin
scoreboard players enable @a[team=Lobby] desertjoin
scoreboard players enable @a[team=Lobby] candyjoin
scoreboard players enable @a[team=Lobby] lostcityjoin
scoreboard players enable @a money
scoreboard players enable @a stats

scoreboard players add @a jointimer 1
tellraw @a[scores={jointimer=10..},tag=midgame] {"translate":"join.leave.midgame","color":"red"}
tellraw @a[scores={jointimer=10..},tag=endgame] {"translate":"join.leave.endgame","color":"red"}
tellraw @a[scores={jointimer=10..},tag=startgame] {"translate":"join.leave.startgame","color":"red"}
tag @a[scores={jointimer=10..}] remove midgame
tag @a[scores={jointimer=10..}] remove endgame
tag @a[scores={jointimer=10..}] remove startgame
scoreboard players set @a[scores={jointimer=10..}] jointimer 0

spawnpoint @a[team=Lobby] 10 17 146

execute as @a[scores={money=1..}] run function custom:money
execute as @a[scores={stats=1..}] run function custom:stats

execute as @a store result score @s xp run xp query @s levels

# Funktionen zum beitreten einer Map beim anklicken eines Schildes oder eines Buttons im Menü
function quake:main/core/gamejoin with storage quake:apex
function quake:main/core/gamejoin with storage quake:candy
function quake:main/core/gamejoin with storage quake:desert
function quake:main/core/gamejoin with storage quake:lostcity

schedule function custom:lobby 1s
