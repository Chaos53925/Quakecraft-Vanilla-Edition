
scoreboard objectives setdisplay sidebar.team.red ApexKills 

kill @e[type=armor_stand,tag=apex]
summon armor_stand -1384 42.3 246 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["apex"],DisabledSlots:4144959}
summon armor_stand -1413 28.3 239 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["apex"],DisabledSlots:4144959}
summon armor_stand -1368 41.3 201 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["apex"],DisabledSlots:4144959}
summon armor_stand -1410 28.3 205 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["apex"],DisabledSlots:4144959}
summon armor_stand -1420 45.3 201 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["apex"],DisabledSlots:4144959}
summon armor_stand -1386 28.3 238 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["apex"],DisabledSlots:4144959}
summon armor_stand -1372 28.3 205 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["apex"],DisabledSlots:4144959}
summon armor_stand -1388 38.3 196 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["apex"],DisabledSlots:4144959}
summon armor_stand -1419 45.3 224 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["apex"],DisabledSlots:4144959}
summon armor_stand -1421 33.3 240 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["apex"],DisabledSlots:4144959}

bossbar set minecraft:apexbar players
clear @a[team=apex]
tag @a[team=apex] remove start
execute as @a[team=apex] run function custom:maps/abilities
execute as @a[team=apex] run function custom:maps/inv
execute as @a[team=apex] run function custom:maps/scores
scoreboard players add #apexgame game 1
tag @a[team=apex] add alwaysShoot
tag @a[team=apex] add startapex
tag @a[team=apex] add play
tag @a[team=apex] remove apexvote
function custom:maps/apex/spawn
scoreboard players set @a[team=apex] ApexKills 0
execute as @a at @s run playsound minecraft:entity.player.levelup master @s[team=apex,tag=!soundsoff] ~ ~ ~ 0.4 1 0
tag @a[team=apex] remove start
tag @a[team=apex] remove ding
execute at @e[type=armor_stand,limit=1,sort=random,tag=apex] run kill @e[type=item,distance=..100]