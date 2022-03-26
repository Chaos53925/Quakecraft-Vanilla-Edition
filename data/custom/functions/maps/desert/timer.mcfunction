#timer

execute if score #desert game matches 1 if score #desertsek game matches 0 if score #desertmin game matches 2 run tellraw @a[team=desert] {"translate":"map.timer.2min","color":"yellow"}
execute if score #desert game matches 1 if score #desertsek game matches 0 if score #desertmin game matches 1 run tellraw @a[team=desert] {"translate":"map.timer.1min","color":"yellow"}
execute if score #desert game matches 1 if score #desertsek game matches 30 if score #desertmin game matches 0 run tellraw @a[team=desert] {"translate":"map.timer.30sek","color":"yellow"}
execute if score #desert game matches 1 if score #desertsek game matches 15 if score #desertmin game matches 0 run tellraw @a[team=desert] {"translate":"map.timer.15sek","color":"yellow"}
execute if score #desert game matches 1 if score #desertsek game matches 10 if score #desertmin game matches 0 run tellraw @a[team=desert] {"translate":"map.timer.10sek","color":"yellow"}
execute if score #desert game matches 1 if score #desertsek game matches 5 if score #desertmin game matches 0 run tellraw @a[team=desert] [{"translate":"map.timer.startin","color":"yellow"},{"text":"5 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #desert game matches 1 if score #desertsek game matches 4 if score #desertmin game matches 0 run tellraw @a[team=desert] [{"translate":"map.timer.startin","color":"yellow"},{"text":"4 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #desert game matches 1 if score #desertsek game matches 3 if score #desertmin game matches 0 run tellraw @a[team=desert] [{"translate":"map.timer.startin","color":"yellow"},{"text":"3 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #desert game matches 1 if score #desertsek game matches 2 if score #desertmin game matches 0 run tellraw @a[team=desert] [{"translate":"map.timer.startin","color":"yellow"},{"text":"2 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #desert game matches 1 if score #desertsek game matches 1 if score #desertmin game matches 0 run tellraw @a[team=desert] [{"translate":"map.timer.startin","color":"yellow"},{"text":"1 ","color":"red"},{"translate":"map.timer.sek0"}]

execute if score #desert game matches 1 if score #desertsek game matches 5 if score #desertmin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=desert,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #desert game matches 1 if score #desertsek game matches 4 if score #desertmin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=desert,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #desert game matches 1 if score #desertsek game matches 3 if score #desertmin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=desert,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #desert game matches 1 if score #desertsek game matches 2 if score #desertmin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=desert,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #desert game matches 1 if score #desertsek game matches 1 if score #desertmin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=desert,tag=!soundsoff] ~ ~ ~ 0.4 1 0

execute if score #desert game matches 20.. run scoreboard players remove #desertsek game 1
execute if score #desert game matches 20.. run scoreboard players remove #desertbar game 1
execute if score #desert game matches 20.. run scoreboard players set #desert game 0
execute if score #desert game matches 0 if score #desertsek game matches ..-1 run scoreboard players remove #desertmin game 1
execute if score #desert game matches 0 if score #desertsek game matches ..-1 run scoreboard players set #desertsek game 59
