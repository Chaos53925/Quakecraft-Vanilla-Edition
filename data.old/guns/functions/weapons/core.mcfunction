# Partikeleffekt
tag @s add shoot
execute if score @s particleC matches 0 run function guns:core/particle
scoreboard players add @s railgun 1
scoreboard players add @s particleC 1
scoreboard players set @s guntimer 0
execute if score @s railgun <= MAX railgun run scoreboard players add @s distance 1
execute if score @s railgun >= MAX railgun run scoreboard players reset @s distance

execute if score @s railgun <= MAX railgun run return 1
# Hitbox erkennung
execute as @e[dx=0,tag=!die] positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] positioned ~0.85 ~0.85 ~0.85 run function guns:core/hitbox
execute at @e[tag=hit,tag=!immune] run function guns:weapons/beam
execute at @e[tag=hit,tag=!immune] run return 0

execute if score @s particleC >= PARTICLES railgun run scoreboard players set @s particleC 0

# reset distanz
execute positioned ^ ^ ^0.25 unless block ~ ~ ~ #guns:bangable run scoreboard players reset @s distance

# Blöcke, durch die der Strahl durchgeht
execute positioned ^ ^ ^0.25 if block ~ ~ ~ #guns:bangable run function guns:weapons/core


# IGNORE # execute positioned ^ ^ ^0.25 if score @s railgun matches 50.. unless block ~ ~ ~ air run playsound minecraft:block.conduit.deactivate record @a ~ ~ ~ 1 0.8 0
execute positioned ^ ^ ^0.25 if score @s railgun matches 20.. if entity @s[tag=break] run playsound minecraft:block.conduit.deactivate record @a[tag=!soundsoff] ~ ~ ~ 1 0.8 0
tag @s remove break
