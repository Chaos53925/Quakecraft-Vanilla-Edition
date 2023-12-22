# Beitritt der Map
$execute as @a[team=Lobby,scores={$(jointrigger)=1}] if score $(mapdata) data matches 0 unless score $(teamlobby) game matches 10 run function quake:maps/data/map/join with storage quake:$(team)
# Das Spiel läuft bereits (nicht im Gamestate 0)
$execute as @a[scores={$(jointrigger)=1}] unless score $(mapdata) data matches 0 run tellraw @s [{"translate":"lobby.game.running","color":"red"}]
# Map ist bereits Voll (Im Gamestate 0, aber Lobbycounter auf 10)
$execute as @a[scores={$(jointrigger)=1}] if score $(mapdata) data matches 0 if score $(teamlobby) game matches 10 run tellraw @s [{"translate":"lobby.game.full","color":"yellow","with":[{"text":"Apex","color":"red"}]}]
# Zurücksetzen des Scores für den Map beitritt.
$execute as @a[scores={$(jointrigger)=1}] run scoreboard players set @s $(jointrigger) 0