#timer
execute if score #candy game matches 1 if score #candysek game matches 0 if score #candymin game matches 2 run tellraw @a[team=candy] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#candymin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#candysek","objective":"game"},"color":"red"}]}
execute if score #candy game matches 1 if score #candysek game matches 0 if score #candymin game matches 1 run tellraw @a[team=candy] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#candymin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#candysek","objective":"game"},"color":"red"}]}
execute if score #candy game matches 1 if score #candysek game matches 30 if score #candymin game matches 0 run tellraw @a[team=candy] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#candymin","objective":"game"},"color":"red"},{"text":"","color":"red"},{"score":{"name":"#candysek","objective":"game"},"color":"red"}]}
execute if score #candy game matches 1 if score #candysek game matches 15 if score #candymin game matches 0 run tellraw @a[team=candy] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#candymin","objective":"game"},"color":"red"},{"text":"","color":"red"},{"score":{"name":"#candysek","objective":"game"},"color":"red"}]}
execute if score #candy game matches 1 if score #candysek game matches 10 if score #candymin game matches 0 run tellraw @a[team=candy] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#candymin","objective":"game"},"color":"red"},{"text":"","color":"red"},{"score":{"name":"#candysek","objective":"game"},"color":"red"}]}
execute if score #candy game matches 1 if score #candysek game matches 5 if score #candymin game matches 0 run tellraw @a[team=candy] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#candymin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#candysek","objective":"game"},"color":"red"}]}
execute if score #candy game matches 1 if score #candysek game matches 4 if score #candymin game matches 0 run tellraw @a[team=candy] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#candymin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#candysek","objective":"game"},"color":"red"}]}
execute if score #candy game matches 1 if score #candysek game matches 3 if score #candymin game matches 0 run tellraw @a[team=candy] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#candymin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#candysek","objective":"game"},"color":"red"}]}
execute if score #candy game matches 1 if score #candysek game matches 2 if score #candymin game matches 0 run tellraw @a[team=candy] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#candymin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#candysek","objective":"game"},"color":"red"}]}
execute if score #candy game matches 1 if score #candysek game matches 1 if score #candymin game matches 0 run tellraw @a[team=candy] {"translate":"map.timer","color":"yellow","with":[{"score":{"name":"#candymin","objective":"game"},"color":"red"},{"text":"0","color":"red"},{"score":{"name":"#candysek","objective":"game"},"color":"red"}]}

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