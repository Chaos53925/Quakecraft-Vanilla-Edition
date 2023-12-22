#timer
execute if score #apex game matches 1 if score #apexsek game matches 0 if score #apexmin game matches 2 run tellraw @a[team=apex] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#apexmin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#apexsek","objective":"game"},"color":"red"}]}
execute if score #apex game matches 1 if score #apexsek game matches 0 if score #apexmin game matches 1 run tellraw @a[team=apex] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#apexmin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#apexsek","objective":"game"},"color":"red"}]}
execute if score #apex game matches 1 if score #apexsek game matches 30 if score #apexmin game matches 0 run tellraw @a[team=apex] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#apexmin","objective":"game"},"color":"red"},{"text":"","color":"red"},{"score":{"name":"#apexsek","objective":"game"},"color":"red"}]}
execute if score #apex game matches 1 if score #apexsek game matches 15 if score #apexmin game matches 0 run tellraw @a[team=apex] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#apexmin","objective":"game"},"color":"red"},{"text":"","color":"red"},{"score":{"name":"#apexsek","objective":"game"},"color":"red"}]}
execute if score #apex game matches 1 if score #apexsek game matches 10 if score #apexmin game matches 0 run tellraw @a[team=apex] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#apexmin","objective":"game"},"color":"red"},{"text":"","color":"red"},{"score":{"name":"#apexsek","objective":"game"},"color":"red"}]}
execute if score #apex game matches 1 if score #apexsek game matches 5 if score #apexmin game matches 0 run tellraw @a[team=apex] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#apexmin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#apexsek","objective":"game"},"color":"red"}]}
execute if score #apex game matches 1 if score #apexsek game matches 4 if score #apexmin game matches 0 run tellraw @a[team=apex] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#apexmin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#apexsek","objective":"game"},"color":"red"}]}
execute if score #apex game matches 1 if score #apexsek game matches 3 if score #apexmin game matches 0 run tellraw @a[team=apex] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#apexmin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#apexsek","objective":"game"},"color":"red"}]}
execute if score #apex game matches 1 if score #apexsek game matches 2 if score #apexmin game matches 0 run tellraw @a[team=apex] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#apexmin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#apexsek","objective":"game"},"color":"red"}]}
execute if score #apex game matches 1 if score #apexsek game matches 1 if score #apexmin game matches 0 run tellraw @a[team=apex] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#apexmin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#apexsek","objective":"game"},"color":"red"}]}

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