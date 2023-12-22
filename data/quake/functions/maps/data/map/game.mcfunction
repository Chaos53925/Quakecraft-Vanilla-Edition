
$bossbar set minecraft:$(teamprogressbar) players @a[team=$(team)]
$scoreboard players set $(teamprogress) data 0
$execute as @a[team=$(team)] run scoreboard players operation $(teamprogress) temp > @s $(teamkills)
$execute store result bossbar minecraft:$(teamprogressbar) value run scoreboard players get $(teamprogress) data
$bossbar set $(teamprogressbar) name [{"translate":"main.progressbar","color":"yellow","with":[{"text":"$(teambarname)","color":"$(teamcolor)"},{"score":{"name":"$(teamprogress)","objective":"data"},"color":"blue"},{"text":"30","color":"blue"}]}]

#spielerdisplay
$scoreboard objectives setdisplay sidebar.team.$(teamcolor) $(teamkills) 

#inventar
$execute as @a[team=$(team)] run function quake:maps/data/work/invgame

#gewinner ermittlung
$execute as @r[team=$(team),scores={$(teamkills)=30..},limit=1] run scoreboard players set @s $(placescore) 1

#abbruchbedingung
$scoreboard players set $(teamlobby) data 0
$execute as @a[team=$(team)] run scoreboard players add $(teamlobby) data 1
$execute if score $(teamlobby) data matches ..1 run function quake:maps/data/map/cancel with storage quake:$(team)

#effekte in-game
$effect give @a[team=$(team)] speed 1 1 true
$effect give @a[team=$(team)] jump_boost 1 0 true

#respawn function
$function maps:maps/data/map/spawn with storage quake:$(team)

$execute as @a[team=$(team)] run function guns:reload/reload

#endfunktion
$execute at @p[team=$(team),scores={$(placescore)=1}] run function quake:maps/data/map/end with storage quake:$(team)
