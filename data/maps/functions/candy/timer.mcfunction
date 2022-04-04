#timer

execute if score #candy game matches 1 if score #candysek game matches 0 if score #candymin game matches 2 run tellraw @a[team=candy] {"translate":"map.timer.2min","color":"yellow"}
execute if score #candy game matches 1 if score #candysek game matches 0 if score #candymin game matches 1 run tellraw @a[team=candy] {"translate":"map.timer.1min","color":"yellow"}
execute if score #candy game matches 1 if score #candysek game matches 30 if score #candymin game matches 0 run tellraw @a[team=candy] {"translate":"map.timer.30sek","color":"yellow"}
execute if score #candy game matches 1 if score #candysek game matches 15 if score #candymin game matches 0 run tellraw @a[team=candy] {"translate":"map.timer.15sek","color":"yellow"}
execute if score #candy game matches 1 if score #candysek game matches 10 if score #candymin game matches 0 run tellraw @a[team=candy] {"translate":"map.timer.10sek","color":"yellow"}
execute if score #candy game matches 1 if score #candysek game matches 5 if score #candymin game matches 0 run tellraw @a[team=candy] [{"translate":"map.timer.startin","color":"yellow"},{"text":"5 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #candy game matches 1 if score #candysek game matches 4 if score #candymin game matches 0 run tellraw @a[team=candy] [{"translate":"map.timer.startin","color":"yellow"},{"text":"4 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #candy game matches 1 if score #candysek game matches 3 if score #candymin game matches 0 run tellraw @a[team=candy] [{"translate":"map.timer.startin","color":"yellow"},{"text":"3 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #candy game matches 1 if score #candysek game matches 2 if score #candymin game matches 0 run tellraw @a[team=candy] [{"translate":"map.timer.startin","color":"yellow"},{"text":"2 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #candy game matches 1 if score #candysek game matches 1 if score #candymin game matches 0 run tellraw @a[team=candy] [{"translate":"map.timer.startin","color":"yellow"},{"text":"1 ","color":"red"},{"translate":"map.timer.sek0"}]

execute if score #candy game matches 1 if score #candysek game matches 5 if score #candymin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=candy,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #candy game matches 1 if score #candysek game matches 4 if score #candymin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=candy,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #candy game matches 1 if score #candysek game matches 3 if score #candymin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=candy,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #candy game matches 1 if score #candysek game matches 2 if score #candymin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=candy,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #candy game matches 1 if score #candysek game matches 1 if score #candymin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=candy,tag=!soundsoff] ~ ~ ~ 0.4 1 0

execute if score #candy game matches 20.. run scoreboard players remove #candysek game 1
execute if score #candy game matches 20.. run scoreboard players remove #candybar game 1
execute if score #candy game matches 20.. run scoreboard players set #candy game 0
execute if score #candy game matches 0 if score #candysek game matches ..-1 run scoreboard players remove #candymin game 1
execute if score #candy game matches 0 if score #candysek game matches ..-1 run scoreboard players set #candysek game 59
