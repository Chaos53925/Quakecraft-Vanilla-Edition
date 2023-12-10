title @a times 0 10 0

scoreboard objectives add reload dummy

tellraw @a[tag=op] {"text":"+-----------------------------------+","color":"white"}
tellraw @a[tag=op] [{"text":"Initialisierung läuft.","color":"yellow"},{"text":"\n"},{"text":"Dauer:","color":"yellow"},{"text":" ca. ","color":"green"},{"text":"10 ","color":"gold"},{"text":"Sekunden.","color":"green"}]
tellraw @a[tag=op] {"text":"+-----------------------------------+","color":"white"}
execute as @a[tag=op] run execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundsoff] ~ ~ ~ 0.5 2

scoreboard players set #reload reload 0

schedule clear custom:lobby
schedule clear guns:guns
schedule clear custom:journey
schedule clear abilities:main

schedule clear custom:standart
schedule clear custom:main
schedule clear custom:gamejoin

function initialisation:actionbar
schedule function initialisation:maps 1s
schedule function initialisation:teams 2s
schedule function initialisation:settings 3s
schedule function initialisation:weapon 4s
schedule function initialisation:bossbars 5s
schedule function initialisation:other 6s

schedule function custom:standart 7s
schedule function custom:lobby 7s
schedule function custom:gamejoin 7s

schedule function custom:version 8s
