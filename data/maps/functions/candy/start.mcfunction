
scoreboard objectives setdisplay sidebar.team.aqua CandyKills

kill @e[type=armor_stand,tag=candy]
summon armor_stand -708 35.3 372 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["candy"],DisabledSlots:4144959}
summon armor_stand -722 23.3 346 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["candy"],DisabledSlots:4144959}
summon armor_stand -706 23.3 334 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["candy"],DisabledSlots:4144959}
summon armor_stand -694 31.3 335 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["candy"],DisabledSlots:4144959}
summon armor_stand -694 31.3 349 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["candy"],DisabledSlots:4144959}
summon armor_stand -693 25.3 360 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["candy"],DisabledSlots:4144959}
summon armor_stand -686 23.3 376 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["candy"],DisabledSlots:4144959}
summon armor_stand -696 30.3 387 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["candy"],DisabledSlots:4144959}
summon armor_stand -685 32.3 355 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["candy"],DisabledSlots:4144959}
summon armor_stand -671 33.3 367 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["candy"],DisabledSlots:4144959}

bossbar set minecraft:candybar players
clear @a[team=candy]
tag @a[team=candy] remove start
execute as @a[team=candy] run function maps:abilities
execute as @a[team=candy] run function maps:inv
execute as @a[team=candy] run function maps:scores
scoreboard players add #candygame game 1
tag @a[team=candy] add alwaysShoot
tag @a[team=candy] add startcandy
tag @a[team=candy] add play
function maps:candy/spawn
scoreboard players set @a[team=candy] CandyKills 0
execute as @a at @s run playsound minecraft:entity.player.levelup master @s[team=candy,tag=!soundsoff] ~ ~ ~ 0.4 1 0
tag @a[team=candy] remove start
tag @a[team=candy] remove ding
execute at @e[type=armor_stand,limit=1,sort=random,tag=candy] run kill @e[type=item,distance=..100]