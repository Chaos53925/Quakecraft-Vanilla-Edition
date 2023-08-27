execute at @s positioned as @s run playsound minecraft:block.portal.travel master @a[team=!Lobby,distance=..50,tag=!soundsoff]
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 500 force
scoreboard players set @s effecttimer 0
scoreboard players set @s effectsek 40
scoreboard players set @s book 0
tag @s remove ding
kill @s

scoreboard players remove @s Tode 1