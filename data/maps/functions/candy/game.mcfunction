
bossbar set minecraft:candyprogress players @a[team=candy]
scoreboard players set #candyprogress temp 0
execute as @a[team=candy] run scoreboard players operation #candyprogress temp > @s CandyKills
execute store result bossbar minecraft:candyprogress value run scoreboard players get #candyprogress temp
bossbar set candyprogress name [{"text":"Candy ","color":"aqua"},{"translate":"main.actionbar.kills","color":"yellow"},{"score":{"name":"#candyprogress","objective":"temp"},"color":"blue"},{"text":"/","color":"yellow"},{"text":"30","color":"blue"}]

scoreboard objectives setdisplay sidebar.team.aqua CandyKills

execute as @a[team=candy] run function maps:invgame

execute if entity @p[team=candy,scores={CandyKills=30..}] run function maps:candy/winner

scoreboard players set #candy candylobby 0
execute as @a[team=candy] run scoreboard players add #candy candylobby 1
execute if score #candy candylobby matches ..1 run function maps:candy/cancel

#effekte in-game
effect give @a[team=candy] speed 1 1 true
effect give @a[team=candy] jump_boost 1 0 true

#respawn functions
function maps:candy/spawn

execute as @a[team=candy] run function guns:reload

#endfunktion
execute at @p[tag=c1,team=candy] run function maps:candy/end