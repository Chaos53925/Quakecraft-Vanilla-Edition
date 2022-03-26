#timer

execute if score #apex game matches 1 if score #apexsek game matches 0 if score #apexmin game matches 2 run tellraw @a[team=apex] {"translate":"map.timer.2min","color":"yellow"}
execute if score #apex game matches 1 if score #apexsek game matches 0 if score #apexmin game matches 1 run tellraw @a[team=apex] {"translate":"map.timer.1min","color":"yellow"}
execute if score #apex game matches 1 if score #apexsek game matches 30 if score #apexmin game matches 0 run tellraw @a[team=apex] {"translate":"map.timer.30sek","color":"yellow"}
execute if score #apex game matches 1 if score #apexsek game matches 15 if score #apexmin game matches 0 run tellraw @a[team=apex] {"translate":"map.timer.15sek","color":"yellow"}
execute if score #apex game matches 1 if score #apexsek game matches 10 if score #apexmin game matches 0 run tellraw @a[team=apex] {"translate":"map.timer.10sek","color":"yellow"}
execute if score #apex game matches 1 if score #apexsek game matches 5 if score #apexmin game matches 0 run tellraw @a[team=apex] [{"translate":"map.timer.startin","color":"yellow"},{"text":"5 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #apex game matches 1 if score #apexsek game matches 4 if score #apexmin game matches 0 run tellraw @a[team=apex] [{"translate":"map.timer.startin","color":"yellow"},{"text":"4 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #apex game matches 1 if score #apexsek game matches 3 if score #apexmin game matches 0 run tellraw @a[team=apex] [{"translate":"map.timer.startin","color":"yellow"},{"text":"3 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #apex game matches 1 if score #apexsek game matches 2 if score #apexmin game matches 0 run tellraw @a[team=apex] [{"translate":"map.timer.startin","color":"yellow"},{"text":"2 ","color":"gold"},{"translate":"map.timer.sek1"}]
execute if score #apex game matches 1 if score #apexsek game matches 1 if score #apexmin game matches 0 run tellraw @a[team=apex] [{"translate":"map.timer.startin","color":"yellow"},{"text":"1 ","color":"red"},{"translate":"map.timer.sek0"}]

execute if score #apex game matches 1 if score #apexsek game matches 5 if score #apexmin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=apex,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #apex game matches 1 if score #apexsek game matches 4 if score #apexmin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=apex,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #apex game matches 1 if score #apexsek game matches 3 if score #apexmin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=apex,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #apex game matches 1 if score #apexsek game matches 2 if score #apexmin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=apex,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute if score #apex game matches 1 if score #apexsek game matches 1 if score #apexmin game matches 0 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s[team=apex,tag=!soundsoff] ~ ~ ~ 0.4 1 0

execute if score #apex game matches 20.. run scoreboard players remove #apexsek game 1
execute if score #apex game matches 20.. run scoreboard players remove #apexbar game 1
execute if score #apex game matches 20.. run scoreboard players set #apex game 0
execute if score #apex game matches 0 if score #apexsek game matches ..-1 run scoreboard players remove #apexmin game 1
execute if score #apex game matches 0 if score #apexsek game matches ..-1 run scoreboard players set #apexsek game 59
