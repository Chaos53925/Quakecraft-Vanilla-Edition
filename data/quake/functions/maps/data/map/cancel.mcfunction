
$tellraw @a[team=$(team)] [{"translate":"map.end.cancel.playergo","color":"red"}]

$execute as @a[team=$(team)] run tellraw @s [{"translate":"map.end.cancel.get","color":"yellow","with":[{"score":{"name":"@s","objective":"Coin"},"color":"red"},{"text":" Coins","color":"gold"}]}]

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
