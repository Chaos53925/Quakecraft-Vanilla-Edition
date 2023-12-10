
execute as @a[team=Lobby,scores={apexjoin=1}] if score #apexgame game matches 0 unless score #apex apexlobby matches 10 run function maps:apex/join
execute as @a[team=Lobby,scores={lostcityjoin=1}] if score #lostcitygame game matches 0 unless score #lostcity lostcitylobby matches 10 run function maps:lostcity/join
execute as @a[team=Lobby,scores={desertjoin=1}] if score #desertgame game matches 0 unless score #desert desertlobby matches 10 run function maps:desert/join
execute as @a[team=Lobby,scores={candyjoin=1}] if score #candygame game matches 0 unless score #candy candylobby matches 10 run function maps:candy/join

execute as @a[scores={apexjoin=1}] unless score #apexgame game matches 0 run tellraw @s [{"translate":"lobby.game.running","color":"red"}]
execute as @a[scores={lostcityjoin=1}] unless score #lostcitygame game matches 0 run tellraw @s [{"translate":"lobby.game.running","color":"red"}]
execute as @a[scores={desertjoin=1}] unless score #desertgame game matches 0 run tellraw @s [{"translate":"lobby.game.running","color":"red"}]
execute as @a[scores={candyjoin=1}] unless score #candygame game matches 0 run tellraw @s [{"translate":"lobby.game.running","color":"red"}]

execute as @a[scores={apexjoin=1}] if score #apexgame game matches 0 if score #apex apexlobby matches 10 run tellraw @s [{"translate":"lobby.game.full","color":"yellow","with":[{"text":"Apex","color":"red"}]}]
execute as @a[scores={lostcityjoin=1}] if score #lostcitygame game matches 0 if score #lostcity lostcitylobby matches 10 run tellraw @s [{"translate":"lobby.game.full","color":"yellow","with":[{"text":"Lostcity","color":"grey"}]}]
execute as @a[scores={desertjoin=1}] if score #desertgame game matches 0 if score #desert desertlobby matches 10 run tellraw @s [{"translate":"lobby.game.full","color":"yellow","with":[{"text":"Desert","color":"gold"}]}]
execute as @a[scores={candyjoin=1}] if score #candygame game matches 0 if score #candy candylobby matches 10 run tellraw @s [{"translate":"lobby.game.full","color":"yellow","with":[{"text":"Candy","color":"aqua"}]}]

execute as @a[scores={apexjoin=1}] if score #apexgame game matches 0 if score #apex apexlobby matches 10 run scoreboard players set @s apexjoin 0
execute as @a[scores={lostcityjoin=1}] if score #lostcitygame game matches 0 if score #lostcity lostcitylobby matches 10 run scoreboard players set @s lostcityjoin 0
execute as @a[scores={desertjoin=1}] if score #desertgame game matches 0 if score #desert desertlobby matches 10 run scoreboard players set @s desertjoin 0
execute as @a[scores={candyjoin=1}] if score #candygame game matches 0 if score #candy candylobby matches 10 run scoreboard players set @s candyjoin 0

execute as @a[scores={apexjoin=1}] unless score #apexgame game matches 0 run scoreboard players set @s apexjoin 0
execute as @a[scores={lostcityjoin=1}] unless score #lostcitygame game matches 0 run scoreboard players set @s lostcityjoin 0
execute as @a[scores={desertjoin=1}] unless score #desertgame game matches 0 run scoreboard players set @s desertjoin 0
execute as @a[scores={candyjoin=1}] unless score #candygame game matches 0 run scoreboard players set @s candyjoin 0

schedule function custom:gamejoin 5t