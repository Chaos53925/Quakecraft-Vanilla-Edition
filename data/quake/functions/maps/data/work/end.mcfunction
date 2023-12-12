
tag @s remove end
tag @s remove ks10
tag @s remove ks20
tag @s remove ks30
tag @s remove ks38
tag @s remove game
tag @s remove immune
scoreboard players set @s ammo 0
execute as @s run function shop:main/initmain
$scoreboard players reset @s $(votescore)
team join Lobby @s
spawnpoint @s 10 17 146
tp @s 10 17 146 -90.0 0.0