title @a times 0 10 0
tag @a remove alwaysShoot

execute as @a run scoreboard players add #player temp 1
execute if score #player game < #player temp run scoreboard players reset * apexvoting
execute if score #player game < #player temp run scoreboard players reset * candyvoting
execute if score #player game < #player temp run scoreboard players reset * desertvoting
execute if score #player game < #player temp run scoreboard players reset * lostcityvoting
scoreboard players set #player game 0
scoreboard players set #player temp 0
execute as @a run scoreboard players add #player game 1
execute store result bossbar minecraft:playerbar value run scoreboard players get #player game
bossbar set playerbar name [{"text":"Quakecraft Vanilla Edition ","color":"white"},{"text":"|","color":"gold"},{"text":" Online: ","color":"yellow"},{"score":{"name":"#player","objective":"game"},"color":"aqua"},{"text":"/","color":"gold"},{"text":"60","color":"aqua"}]
bossbar set minecraft:playerbar players @a[team=Lobby]

effect give @a saturation 20 9 true
tp @a[team=] 10 17 146 -90.0 0.0
team join Lobby @a[team=]

setblock 44 16 127 air replace
setblock 24 17 117 air replace
setblock 44 16 165 air replace
setblock 24 17 175 air replace

setblock 44 16 127 oak_wall_sign[facing=west]{Text1:'[{"text":"[","clickEvent":{"action":"run_command","value":"/trigger apexjoin set 1"}},{"text":"Apex","color":"red"},{"text":"]","color":"reset"}]',Text2:'[{"text":"("},{"score":{"name":"#apex","objective":"apexlobby"}},{"text":"/10)"}]'} replace
setblock 24 17 117 oak_wall_sign[facing=south]{Text1:'[{"text":"[","clickEvent":{"action":"run_command","value":"/trigger desertjoin set 1"}},{"text":"Desert","color":"gold"},{"text":"]","color":"reset"}]',Text2:'[{"text":"("},{"score":{"name":"#desert","objective":"desertlobby"}},{"text":"/10)"}]'} replace
setblock 44 16 165 oak_wall_sign[facing=west]{Text1:'[{"text":"[","clickEvent":{"action":"run_command","value":"/trigger candyjoin set 1"}},{"text":"Candy","color":"aqua"},{"text":"]","color":"reset"}]',Text2:'[{"text":"("},{"score":{"name":"#candy","objective":"candylobby"}},{"text":"/10)"}]'} replace
setblock 24 17 175 oak_wall_sign[facing=north]{Text1:'[{"text":"[","clickEvent":{"action":"run_command","value":"/trigger lostcityjoin set 1"}},{"text":"Lostcity","color":"gray"},{"text":"]","color":"reset"}]',Text2:'[{"text":"("},{"score":{"name":"#lostcity","objective":"lostcitylobby"}},{"text":"/10)"}]'} replace

scoreboard players enable @a[team=Lobby] apexjoin
scoreboard players enable @a[team=Lobby] desertjoin
scoreboard players enable @a[team=Lobby] candyjoin
scoreboard players enable @a[team=Lobby] lostcityjoin
scoreboard players enable @a money
scoreboard players enable @a stats
scoreboard players enable @a pay

scoreboard players add @a jointimer 1
tellraw @a[scores={jointimer=10..},tag=midgame] {"translate":"join.leave.midgame","color":"red"}
tellraw @a[scores={jointimer=10..},tag=endgame] {"translate":"join.leave.endgame","color":"red"}
tellraw @a[scores={jointimer=10..},tag=startgame] {"translate":"join.leave.startgame","color":"red"}
tag @a[scores={jointimer=10..}] remove midgame
tag @a[scores={jointimer=10..}] remove endgame
tag @a[scores={jointimer=10..}] remove startgame
scoreboard players set @a[scores={jointimer=10..}] jointimer 0

spawnpoint @a[team=Lobby] 10 17 146

execute as @a run function custom:special

execute as @a[scores={money=1..}] run function custom:money
execute as @a[scores={stats=1..}] run function custom:stats
execute as @a[scores={pay=1..}] at @s if entity @p[distance=0.1..] if score @s Coins >= @s pay run function custom:pay
execute as @a[scores={pay=1..}] at @s unless entity @p[distance=0.1..] run function custom:nopay
execute as @a[scores={pay=1..}] at @s if entity @p[distance=0.1..] if score @s Coins < @s pay run function custom:nocoinspay

scoreboard players set #reload reload 1
execute as @a store result score @s xp run xp query @s levels

schedule function custom:lobby 1s
