
execute as @r[scores={rightclick=1..},tag=canShoot] run function custom:unique_id/init
execute as @a[scores={rightclick=1..},tag=canShoot] run tag @s add break

# Waffen
execute as @a[tag=canShoot] at @s if score @s rightclick matches 1.. run function weapons:sounds
execute as @a[tag=!canShoot] at @s if score @s rightclick matches 1.. positioned as @s as @s run playsound minecraft:block.dispenser.fail master @s[team=!Lobby,distance=..50,tag=!soundsoff] ~ ~ ~ 0.4 1 0

# Auslösen des Schusses
execute as @a[tag=canShoot,scores={ammo=1..,rightclick=1..}] run function weapons:weapons/weaponselector
execute as @a[tag=canShoot,scores={ammo=1..,rightclick=1..}] at @s run scoreboard players remove @s ammo 1

# Mehrfachkillerkennung
execute as @a[tag=!ks10] at @s if score @s kstreak matches 10 run function weapons:kstreak/ks10
execute as @a[tag=!ks20] at @s if score @s kstreak matches 20 run function weapons:kstreak/ks20
execute as @a[tag=!ks30] at @s if score @s kstreak matches 30 run function weapons:kstreak/ks30

# abschluss
execute as @a[scores={rightclick=1..},tag=canShoot] run tag @s remove canShoot
scoreboard players set @a shotgun 0
scoreboard players set @a railgun 0
scoreboard players set @a streak 0
scoreboard players set @a particleC 0
scoreboard players set @a rightclick 0
kill @e[tag=die]
scoreboard players set @a[tag=die] gunrlmsek 0
scoreboard players set @a[tag=die] gunrlsek 0
scoreboard players set @a[tag=die] guntimer 0
tag @a remove hit
tag @a remove headshot
execute as @a[tag=die] run scoreboard players operation @s immunity = @s immune
tag @a[tag=die] add immune
tag @a[tag=die] remove die
execute as @a[tag=shoot,scores={gCoin=1..}] run tellraw @s [{"text": "Coins","color": "gold"},{"text": ": +","color": "yellow"},{"score":{"name":"@s","objective":"gCoin"},"color": "red"}]
scoreboard players set @a gCoin 0
tag @a remove shoot
