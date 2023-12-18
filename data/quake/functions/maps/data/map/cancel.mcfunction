
# Alle spieler aktiven werden darüber benachrichtigt, dass die Runde abgebrochen wurde. 
$tellraw @a[team=$(team)] [{"translate":"map.end.cancel.playergo","color":"red"}]

$execute as @a[team=$(team)] run tellraw @s [{"translate":"map.end.cancel.get","color":"yellow","with":[{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"}]}]

# Hier wird alles andere zurückgesetzt um Komplikationen bei einem neuen Spiel zu vermeiden.
# Die Spieler werden auch in die Lobby gebracht und der Shop wird initialisiert.
$scoreboard players set $(teamname) $(votescoreboard) 0
$scoreboard players set $(quickplayers) data 0
$scoreboard players set @a[team=$(team)] Coin 0
$scoreboard players reset * $(teamkills)
$scoreboard players reset @a[team=$(team)] uID
$scoreboard players set $(teamname) data 0
$scoreboard players set $(seconds) data 0
$scoreboard players set $(minutes) data 2
$scoreboard players set $(mapdata) data 0
$scoreboard players reset @a[team=$(team)] $(teamkills)
$tag @a[team=$(team)] remove $(votetag)
$clear @a[team=$(team)]
$tag @a[team=$(team)] remove play
$tag @a[team=$(team)] remove game
$tp @a[team=$(team)] 10 17 146
$execute as @a[team=$(team)] run function shop:main/initmain
$team join Lobby @a[team=$(team)]
$bossbar set minecraft:$(teamprogressbar) players
