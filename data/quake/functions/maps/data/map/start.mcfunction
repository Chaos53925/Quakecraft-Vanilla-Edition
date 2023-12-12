
$scoreboard objectives setdisplay sidebar.team.$(teamcolor) $(teamkills) 

$kill @e[type=armor_stand,tag=$(team)]
$summon armor_stand $(coords0) {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["$(team)"],DisabledSlots:4144959}
$summon armor_stand $(coords1) {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["$(team)"],DisabledSlots:4144959}
$summon armor_stand $(coords2) {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["$(team)"],DisabledSlots:4144959}
$summon armor_stand $(coords3) {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["$(team)"],DisabledSlots:4144959}
$summon armor_stand $(coords4) {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["$(team)"],DisabledSlots:4144959}
$summon armor_stand $(coords5) {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["$(team)"],DisabledSlots:4144959}
$summon armor_stand $(coords6) {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["$(team)"],DisabledSlots:4144959}
$summon armor_stand $(coords7) {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["$(team)"],DisabledSlots:4144959}
$summon armor_stand $(coords8) {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["$(team)"],DisabledSlots:4144959}
$summon armor_stand $(coords9) {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Marker:1b,Invisible:1b,Tags:["$(team)"],DisabledSlots:4144959}

$bossbar set minecraft:$(bar) players
$clear @a[team=$(team)]
$tag @a[team=$(team)] remove start
$execute as @a[team=$(team)] run function maps:inv
$execute as @a[team=$(team)] run function maps:scores
$scoreboard players add $(mapdata) data 1
$tag @a[team=$(team)] add $(starttag)
$tag @a[team=$(team)] add play
$tag @a[team=$(team)] remove $(votetag)
$function maps:map/spawn with storage quake:$(team)
$scoreboard players set @a[team=$(team)] $(teamkills) 0
$execute as @a[team=$(team)] at @s run playsound minecraft:entity.player.levelup master @s[tag=!soundsoff] ~ ~ ~ 0.4 1 0
$tag @a[team=$(team)] remove start
$tag @a[team=$(team)] remove ding
$execute at @e[type=armor_stand,limit=1,sort=random,tag=$(team)] run kill @e[type=item,distance=..100]