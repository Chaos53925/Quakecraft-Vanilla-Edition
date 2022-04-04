#waffentimer
scoreboard players add @s railguntimer 1
scoreboard players add @s[scores={shotgunshots=0}] shotguntimer 1


execute as @s[team=!Lobby,tag=wlv1,tag=play] run function guns:wlv1
execute as @s[team=!Lobby,tag=wlv2,tag=play] run function guns:wlv2
execute as @s[team=!Lobby,tag=wlv3,tag=play] run function guns:wlv3
execute as @s[team=!Lobby,tag=wlv4,tag=play] run function guns:wlv4
execute as @s[team=!Lobby,tag=wlv5,tag=play] run function guns:wlv5
execute as @s[team=!Lobby,tag=wlv6,tag=play] run function guns:wlv6
execute as @s[team=!Lobby,tag=wlv7,tag=play] run function guns:wlv7

execute as @s[team=!Lobby,tag=slv1,tag=play] run function guns:slv1
execute as @s[team=!Lobby,tag=slv2,tag=play] run function guns:slv2
execute as @s[team=!Lobby,tag=slv3,tag=play] run function guns:slv3
execute as @s[team=!Lobby,tag=slv4,tag=play] run function guns:slv4
execute as @s[team=!Lobby,tag=slv5,tag=play] run function guns:slv5
execute as @s[team=!Lobby,tag=slv6,tag=play] run function guns:slv6

tag @s[scores={railgunshots=1..}] add canShoot
tag @s[scores={shotgunshots=1..}] add canShoot
tag @s[tag=extrashotused,scores={shotgunshots=3}] remove extrashot
tag @s[tag=!extrashot] remove extrashotused