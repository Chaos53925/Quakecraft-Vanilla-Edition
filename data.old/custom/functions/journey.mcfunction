execute unless block -21 22 130 minecraft:light_weighted_pressure_plate[power=0] positioned -20.5 22 130.5 as @a[distance=..0.5] run tag @s add jumpandrun
execute as @a[tag=jumpandrun] run tp @s -21 15 130 -90 0
execute as @a[tag=jumpandrun] run tellraw @s [{"translate":"journey.jar.end","color":"yellow"}]
execute as @a[tag=jumpandrun] run tag @s remove jumpandrun

execute unless block -29 14 130 minecraft:heavy_weighted_pressure_plate[power=0] positioned -28.5 14 130.5 as @a[distance=..0.5,tag=!jnr] run tellraw @s [{"translate":"journey.jar.start","color":"yellow"}]
execute unless block -29 14 130 minecraft:heavy_weighted_pressure_plate[power=0] positioned -28.5 14 130.5 as @a[distance=..0.5] run tag @s add jnr
execute if block -29 14 130 minecraft:heavy_weighted_pressure_plate[power=0] positioned -28.5 14 130.5 as @a[distance=1..] run tag @s remove jnr

execute unless block 20 1 146 minecraft:light_weighted_pressure_plate[power=0] positioned 20.5 1 146.5 as @a[distance=..0.5,tag=geheimnis,tag=!getgeheimnis,tag=!da] run tellraw @s [{"translate":"journey.lobby.once","color":"yellow"}]
execute unless block 20 1 146 minecraft:light_weighted_pressure_plate[power=0] positioned 20.5 1 146.5 as @a[distance=..0.5,tag=geheimnis,tag=!da] run tag @s add getgeheimnis
execute if block 20 1 146 minecraft:light_weighted_pressure_plate[power=0] positioned 20.5 1 146.5 as @a[distance=1..] run tag @s remove getgeheimnis
execute unless block 20 1 146 minecraft:light_weighted_pressure_plate[power=0] positioned 20.5 1 146.5 as @a[distance=..0.5,tag=!geheimnis] run tellraw @s [{"translate":"journey.lobby.under","color":"yellow"},{"text":"1000 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"yellow"}]
execute unless block 20 1 146 minecraft:light_weighted_pressure_plate[power=0] positioned 20.5 1 146.5 as @a[distance=..0.5,tag=!geheimnis] run scoreboard players add @s Coins 1000
execute unless block 20 1 146 minecraft:light_weighted_pressure_plate[power=0] positioned 20.5 1 146.5 as @a[distance=..0.5] run tag @s add geheimnis
execute unless block 20 1 146 minecraft:light_weighted_pressure_plate[power=0] positioned 20.5 1 146.5 as @a[distance=..0.5] run tag @s add da
execute if block 20 1 146 minecraft:light_weighted_pressure_plate[power=0] positioned 20.5 1 146.5 as @a[distance=1..] run tag @s remove da

execute unless block -2 20 108 minecraft:light_weighted_pressure_plate[power=0] positioned -1.5 20 108.5 as @a[distance=..0.5,tag=mauer,tag=!getmauer,tag=!da] run tellraw @s [{"translate":"journey.lobby.once","color":"yellow"}]
execute unless block -2 20 108 minecraft:light_weighted_pressure_plate[power=0] positioned -1.5 20 108.5 as @a[distance=..0.5,tag=mauer,tag=!da] run tag @s add getmauer
execute if block -2 20 108 minecraft:light_weighted_pressure_plate[power=0] positioned -1.5 20 108.5 as @a[distance=1..] run tag @s remove getmauer
execute unless block -2 20 108 minecraft:light_weighted_pressure_plate[power=0] positioned -1.5 20 108.5 as @a[distance=..0.5,tag=!mauer] run tellraw @s [{"translate":"journey.lobby.wall","color":"yellow"},{"text":"1000 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"yellow"}]
execute unless block -2 20 108 minecraft:light_weighted_pressure_plate[power=0] positioned -1.5 20 108.5 as @a[distance=..0.5,tag=!mauer] run scoreboard players add @s Coins 1000
execute unless block -2 20 108 minecraft:light_weighted_pressure_plate[power=0] positioned -1.5 20 108.5 as @a[distance=..0.5] run tag @s add mauer
execute unless block -2 20 108 minecraft:light_weighted_pressure_plate[power=0] positioned -1.5 20 108.5 as @a[distance=..0.5] run tag @s add da
execute if block -2 20 108 minecraft:light_weighted_pressure_plate[power=0] positioned -1.5 20 108.5 as @a[distance=1..] run tag @s remove da

execute unless block 24 22 176 minecraft:light_weighted_pressure_plate[power=0] positioned 24.5 22 176.5 as @a[distance=..0.5,tag=lost,tag=!getlost,tag=!da] run tellraw @s [{"translate":"journey.lobby.once","color":"yellow"}]
execute unless block 24 22 176 minecraft:light_weighted_pressure_plate[power=0] positioned 24.5 22 176.5 as @a[distance=..0.5,tag=lost,tag=!da] run tag @s add getlost
execute if block 24 22 176 minecraft:light_weighted_pressure_plate[power=0] positioned 24.5 22 176.5 as @a[distance=1..] run tag @s remove getlost
execute unless block 24 22 176 minecraft:light_weighted_pressure_plate[power=0] positioned 24.5 22 176.5 as @a[tag=deu,distance=..0.5,tag=!lost] run tellraw @s [{"translate":"journey.lobby.gray","color":"yellow"},{"text":"1000 ","color":"red"},{"text":"Coins","color":"gold"},{"text":".","color":"yellow"}]
execute unless block 24 22 176 minecraft:light_weighted_pressure_plate[power=0] positioned 24.5 22 176.5 as @a[distance=..0.5,tag=!lost] run scoreboard players add @s Coins 1000
execute unless block 24 22 176 minecraft:light_weighted_pressure_plate[power=0] positioned 24.5 22 176.5 as @a[distance=..0.5] run tag @s add lost
execute unless block 24 22 176 minecraft:light_weighted_pressure_plate[power=0] positioned 24.5 22 176.5 as @a[distance=..0.5] run tag @s add da
execute if block 24 22 176 minecraft:light_weighted_pressure_plate[power=0] positioned 24.5 22 176.5 as @a[distance=1..] run tag @s remove da

execute unless block -11 22 198 minecraft:light_weighted_pressure_plate[power=0] positioned -10.5 22 198.5 as @a[distance=..0.5] run tag @s add jumpandrunwide
execute as @a[tag=jumpandrunwide] run tp @s -11 15 198 180 0
execute as @a[tag=jumpandrunwide] run tellraw @s [{"translate":"journey.jar.end","color":"yellow"}]
execute as @a[tag=jumpandrunwide] run tag @s remove jumpandrunwide

execute unless block -11 14 206 minecraft:heavy_weighted_pressure_plate[power=0] positioned -10.5 14 206.5 as @a[tag=deu,distance=..0.5,tag=!jnrw] run tellraw @s [{"translate":"journey.jar.start","color":"yellow"}]
execute unless block -11 14 206 minecraft:heavy_weighted_pressure_plate[power=0] positioned -10.5 14 206.5 as @a[distance=..0.5] run tag @s add jnrw
execute if block -11 14 206 minecraft:heavy_weighted_pressure_plate[power=0] positioned -10.5 14 206.5 as @a[distance=1..] run tag @s remove jnrw
