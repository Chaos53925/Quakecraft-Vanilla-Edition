execute at @s run kill @e[tag=mine,distance=..100]
tag @s remove end
tag @s remove ks10
tag @s remove ks20
tag @s remove ks30
tag @s remove ks38
tag @s remove game
tag @s remove immune
scoreboard players set @s shotgunshots 0
scoreboard players set @s railgunshots 0
execute as @s run function custom:shop/main/initmain
scoreboard players reset @s apexvoting
scoreboard players reset @s candyvoting
scoreboard players reset @s desertvoting
scoreboard players reset @s lostcityvoting
team join Lobby @s
spawnpoint @s 10 17 146
tp @s 10 17 146 -90.0 0.0