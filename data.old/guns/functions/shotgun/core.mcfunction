# Partikeleffekt
tag @s add shoot
function guns:shotgun/particle

scoreboard players add @s shotgun 1
scoreboard players add @s particleC 1

scoreboard players set @s guntimer 0
execute if score @s shotgun <= MAX shotgun run scoreboard players add @s distance 1
execute if score @s shotgun >= MAX shotgun run scoreboard players reset @s distance

execute as @s run function guns:shotgun/hitbox

execute if score @s particleC >= PARTICLES shotgun run scoreboard players set @s particleC 0

# Blöcke, durch die der Strahl durchgeht
execute if score @s shotgun <= MAX shotgun positioned ^ ^ ^0.25 if block ~ ~ ~ #guns:bangable run function guns:shotgun/core

# reset distanz
execute if score @s shotgun <= MAX shotgun positioned ^ ^ ^0.25 unless block ~ ~ ~ #guns:bangable run scoreboard players reset @s distance

# IGNORE # execute positioned ^ ^ ^0.25 if score @s shotgun matches 50.. unless block ~ ~ ~ air run playsound minecraft:block.conduit.deactivate record @a ~ ~ ~ 1 0.8 0
execute positioned ^ ^ ^0.25 if score @s shotgun matches 60.. if entity @s[tag=break] run playsound minecraft:block.conduit.deactivate record @a[tag=!soundsoff] ~ ~ ~ 1 0.8 0
tag @s remove break