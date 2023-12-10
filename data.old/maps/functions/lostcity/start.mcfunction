
scoreboard objectives setdisplay sidebar.team.gray LostcityKills

kill @e[type=armor_stand,tag=lostcity]
summon armor_stand 352 47.3 325 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["lostcity"],DisabledSlots:4144959}
summon armor_stand 349 50.3 374 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["lostcity"],DisabledSlots:4144959}
summon armor_stand 324 50.3 397 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["lostcity"],DisabledSlots:4144959}
summon armor_stand 308 42.3 358 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["lostcity"],DisabledSlots:4144959}
summon armor_stand 348 33.3 337 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["lostcity"],DisabledSlots:4144959}
summon armor_stand 374 37.3 366 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["lostcity"],DisabledSlots:4144959}
summon armor_stand 330 43.3 391 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["lostcity"],DisabledSlots:4144959}
summon armor_stand 325 34.3 387 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["lostcity"],DisabledSlots:4144959}
summon armor_stand 325 31.3 365 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["lostcity"],DisabledSlots:4144959}
summon armor_stand 352 40.3 358 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["lostcity"],DisabledSlots:4144959}

bossbar set minecraft:lostcitybar players
clear @a[team=lostcity]
execute as @a[team=lostcity] run function maps:abilities
execute as @a[team=lostcity] run function maps:inv
execute as @a[team=lostcity] run function maps:scores
scoreboard players add #lostcitygame game 1
tag @a[team=lostcity] add startlostcity
tag @a[team=lostcity] add play
function maps:lostcity/spawn
scoreboard players set @a[team=lostcity] LostcityKills 0
execute as @a at @s run playsound minecraft:entity.player.levelup master @s[team=lostcity,tag=!soundsoff] ~ ~ ~ 0.4 1 0
tag @a[team=lostcity] remove start
tag @a[team=lostcity] remove ding
execute at @e[type=armor_stand,limit=1,sort=random,tag=lostcity] run kill @e[type=item,distance=..100]
