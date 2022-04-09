#Partikeleffekt
execute if score @s particleC matches 0 run function guns:core/particle
scoreboard players add @s railgun 1
scoreboard players add @s particleC 1
scoreboard players set @s railguntimer 0
execute if score @s railgun <= MAX railgun run scoreboard players add @s distance 1
execute if score @s railgun >= MAX railgun run scoreboard players reset @s distance

#Hitbox erkennung
execute as @e[dx=0,tag=!die] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run function guns:core/hitbox
execute at @e[tag=hit,tag=!immune] run function guns:railgun/beam

execute if score @s particleC >= PARTICLES railgun run scoreboard players set @s particleC 0

#Blöcke, durch die der Strahl durchgeht
execute if score @s railgun <= MAX railgun positioned ^ ^ ^0.25 if block ~ ~ ~ #guns:bangable run function guns:railgun/core

#reset distanz
execute if score @s railgun <= MAX railgun positioned ^ ^ ^0.25 unless block ~ ~ ~ #guns:bangable run scoreboard players reset @s distance

#IGNORE# execute positioned ^ ^ ^0.25 if score @s railgun matches 50.. unless block ~ ~ ~ air run playsound minecraft:block.conduit.deactivate record @a ~ ~ ~ 1 0.8 0
execute positioned ^ ^ ^0.25 if score @s railgun matches 60.. if entity @s[tag=break] run playsound minecraft:block.conduit.deactivate record @a[tag=!soundsoff] ~ ~ ~ 1 0.8 0
tag @s remove break
