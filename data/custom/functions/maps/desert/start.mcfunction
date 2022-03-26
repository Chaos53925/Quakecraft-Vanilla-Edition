
scoreboard objectives setdisplay sidebar.team.gold DesertKills

kill @e[type=armor_stand,tag=desert]
summon armor_stand -178 44.3 343 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["desert"],DisabledSlots:4144959}
summon armor_stand -178 34.3 352 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["desert"],DisabledSlots:4144959}
summon armor_stand -156 27.3 386 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["desert"],DisabledSlots:4144959}
summon armor_stand -140 34.3 395 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["desert"],DisabledSlots:4144959}
summon armor_stand -185 36.3 375 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["desert"],DisabledSlots:4144959}
summon armor_stand -178 27.3 343 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["desert"],DisabledSlots:4144959}
summon armor_stand -147 44.3 390 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["desert"],DisabledSlots:4144959}
summon armor_stand -192 44.3 394 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["desert"],DisabledSlots:4144959}
summon armor_stand -151 27.3 380 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["desert"],DisabledSlots:4144959}
summon armor_stand -151 34.3 380 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["desert"],DisabledSlots:4144959}

bossbar set minecraft:desertbar players
clear @a[team=desert]
execute as @a[team=desert] run function custom:maps/abilities
execute as @a[team=desert] run function custom:maps/inv
execute as @a[team=desert] run function custom:maps/scores
scoreboard players add #desertgame game 1
tag @a[team=desert] add alwaysShoot
tag @a[team=desert] add startdesert
tag @a[team=desert] add play
function custom:maps/desert/spawn
scoreboard players set @a[team=desert] DesertKills 0
execute as @a at @s run playsound minecraft:entity.player.levelup master @s[team=desert,tag=!soundsoff] ~ ~ ~ 0.4 1 0
tag @a[team=desert] remove start
tag @a[team=desert] remove ding
execute at @e[type=armor_stand,limit=1,sort=random,tag=desert] run kill @e[type=item,distance=..100]
