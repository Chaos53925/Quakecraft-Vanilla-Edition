
scoreboard objectives add reload dummy
scoreboard players set #reload reload 0

schedule clear custom:lobby
schedule clear custom:guns/guns
schedule clear custom:journey
schedule clear custom:effects/effects

schedule clear custom:standart
schedule clear custom:main
schedule clear custom:gamejoin

function custom:init/actionbar

tellraw @a[tag=op] {"text":"+-----------------------------------+","color":"white"}
tellraw @a[tag=op] [{"text":"Initialisierung läuft.","color":"yellow"},{"text":"\n"},{"text":"Dauer:","color":"yellow"},{"text":" ca. ","color":"green"},{"text":"10 ","color":"gold"},{"text":"Sekunden.","color":"green"}]
tellraw @a[tag=op] {"text":"+-----------------------------------+","color":"white"}
execute as @a[tag=op] run execute at @s run playsound minecraft:block.note_block.pling master @s[tag=!soundoff] ~ ~ ~ 0.5 2

schedule function custom:init/maps 1s
schedule function custom:init/teams 2s
schedule function custom:init/settings 3s
schedule function custom:init/weapon 4s
schedule function custom:init/bossbars 5s
schedule function custom:init/other 6s

schedule function custom:standart 7s
schedule function custom:lobby 7s
schedule function custom:gamejoin 7s

schedule function custom:version 8s