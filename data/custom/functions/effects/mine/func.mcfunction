scoreboard players add @p[tag=minen,team=apex] ApexKills 1
scoreboard players add @p[tag=minen,team=candy] CandyKills 1
scoreboard players add @p[tag=minen,team=desert] DesertKills 1
scoreboard players add @p[tag=minen,team=lostcity] LostcityKills 1
scoreboard players add @p[tag=minen] Kills 1
scoreboard players add @p[tag=minen] kstreak 1
scoreboard players add @p[tag=minen] streak 1
scoreboard players add @p[tag=minen] Coins 5
scoreboard players add @p[tag=minen] Coin 5
tellraw @p[tag=minen] {"translate":"faeh.mine.exploded","color":"green"}
tellraw @a[distance=..150,team=!Lobby] {"selector":"@p[tag=minen]","color":"blue","extra":[{"text":" >>> ","color":"gold"},{"selector":"@p[tag=!minen,tag=mdeath]","color":"dark_blue"}]}
execute at @p[tag=mdeath] positioned as @p[tag=mdeath] run playsound minecraft:entity.generic.explode master @a[team=!Lobby,distance=..50,tag=!soundsoff]
execute at @p[tag=mdeath] run particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 500 force
kill @e[type=item,tag=mine]
kill @p[tag=!minen,tag=mdeath]
clear @p[tag=!minen,tag=mdeath] tnt
tag @p[tag=mdeath] remove mdeath
