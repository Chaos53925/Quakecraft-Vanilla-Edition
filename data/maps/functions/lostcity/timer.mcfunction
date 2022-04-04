#timer

execute if score #lostcity game matches 1 if score #lostcitysek game matches 0 if score #lostcitymin game matches 2 run tellraw @a[team=lostcity] {"translate":"map.timer.2min","color":"yellow"}
execute if score #lostcity game matches 1 if score #lostcitysek game matches 0 if score #lostcitymin game matches 1 run tellraw @a[team=lostcity] {"translate":"map.timer.1min","color":"yellow"}
execute if score #lostcity game matches 1 if score #lostcitysek game matches 30 if score #lostcitymin game matches 0 run tellraw @a[team=lostcity] {"translate":"map.timer.30sek","color":"yellow"}
execute if score #lostcity game matches 1 if score #lostcitysek game matches 15 if score #lostcitymin game matches 0 run tellraw @a[team=lostcity] {"translate":"map.timer.15sek","color":"yellow"}
execute if score #lostcity game matches 1 if score #lostcitysek game matches 10 if score #lostcitymin game matches 0 run tellraw @a[team=lostcity] {"translate":"map.timer.10sek","color":"yellow"}
execute if score #lostcity game matches 1 if score #lostcitysek game matches 5 if score #lostcitymin game matches 0 run tellraw @a[team=lostcity] [{"translate":"map.timer.startin","color":"yellow"},{"text":"5 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #lostcity game matches 1 if score #lostcitysek game matches 4 if score #lostcitymin game matches 0 run tellraw @a[team=lostcity] [{"translate":"map.timer.startin","color":"yellow"},{"text":"4 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #lostcity game matches 1 if score #lostcitysek game matches 3 if score #lostcitymin game matches 0 run tellraw @a[team=lostcity] [{"translate":"map.timer.startin","color":"yellow"},{"text":"3 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #lostcity game matches 1 if score #lostcitysek game matches 2 if score #lostcitymin game matches 0 run tellraw @a[team=lostcity] [{"translate":"map.timer.startin","color":"yellow"},{"text":"2 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #lostcity game matches 1 if score #lostcitysek game matches 1 if score #lostcitymin game matches 0 run tellraw @a[team=lostcity] [{"translate":"map.timer.startin","color":"yellow"},{"text":"1 ","color":"red"},{"translate":"map.timer.sek0"}]

execute if score #lostcity game matches 1 if score #lostcitysek game matches 5 if score #lostcitymin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=lostcity,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #lostcity game matches 1 if score #lostcitysek game matches 4 if score #lostcitymin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=lostcity,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #lostcity game matches 1 if score #lostcitysek game matches 3 if score #lostcitymin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=lostcity,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #lostcity game matches 1 if score #lostcitysek game matches 2 if score #lostcitymin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=lostcity,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #lostcity game matches 1 if score #lostcitysek game matches 1 if score #lostcitymin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=lostcity,tag=!soundsoff] ~ ~ ~ 0.4 1 0

execute if score #lostcity game matches 20.. run scoreboard players remove #lostcitysek game 1
execute if score #lostcity game matches 20.. run scoreboard players remove #lostcitybar game 1
execute if score #lostcity game matches 20.. run scoreboard players set #lostcity game 0
execute if score #lostcity game matches 0 if score #lostcitysek game matches ..-1 run scoreboard players remove #lostcitymin game 1
execute if score #lostcity game matches 0 if score #lostcitysek game matches ..-1 run scoreboard players set #lostcitysek game 59
