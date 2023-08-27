tag @a[tag=alwaysShoot] add canShoot
execute as @r[scores={rightclick=1..},tag=canShoot] run function custom:unique_id/init
execute as @a[scores={rightclick=1..},tag=canShoot] run tag @s add break

#Waffen
execute as @a[tag=canShoot,tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7] at @s if score @s rightclick matches 1.. run function guns:sounds
execute as @a[tag=canShoot,tag=!slv1,tag=!slv2,tag=!slv3,tag=!slv4,tag=!slv5,tag=!slv6] at @s if score @s rightclick matches 1.. run function guns:sounds
execute as @a[tag=!canShoot] at @s if score @s rightclick matches 1.. positioned as @s as @s run playsound minecraft:block.dispenser.fail master @s[team=!Lobby,distance=..50,tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute as @a[tag=!canShoot] at @s if score @s rightclick matches 1.. positioned as @s as @s run playsound minecraft:block.dispenser.fail master @s[team=!Lobby,distance=..50,tag=!soundsoff] ~ ~ ~ 0.4 1 0

#Shotgun
execute as @a[tag=canShoot,scores={ammo=1..},tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7] at @s if score @s rightclick matches 1.. anchored eyes positioned ^ ^ ^0.75 run function guns:shotgun/core
execute as @a[tag=canShoot,scores={ammo=1..},tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7] at @s if score @s rightclick matches 1.. run scoreboard players remove @s ammo 1

#Railgun
execute as @a[tag=canShoot,scores={ammo=1..},tag=!slv1,tag=!slv2,tag=!slv3,tag=!slv4,tag=!slv5,tag=!slv6] at @s if score @s rightclick matches 1.. anchored eyes positioned ^ ^ ^0.75 run function guns:railgun/core
execute as @a[tag=canShoot,scores={ammo=1..},tag=!slv1,tag=!slv2,tag=!slv3,tag=!slv4,tag=!slv5,tag=!slv6] at @s if score @s rightclick matches 1.. run scoreboard players remove @s ammo 1

#Mehrfachkillerkennung
execute as @a at @s if score @s streak matches 2 run function guns:streak/streak2
execute as @a at @s if score @s streak matches 3 run function guns:streak/streak3
execute as @a at @s if score @s streak matches 4..8 run function guns:streak/streak48
execute as @a at @s if score @s streak matches 9.. run function guns:streak/streak9
execute as @a[tag=!ks10] at @s if score @s kstreak matches 10 run function guns:kstreak/ks10
execute as @a[tag=!ks20] at @s if score @s kstreak matches 20 run function guns:kstreak/ks20
execute as @a[tag=!ks30] at @s if score @s kstreak matches 30 run function guns:kstreak/ks30
execute as @a[tag=!ks38] at @s if score @s kstreak matches 38 run function guns:kstreak/ks38

#abschluss
execute as @a[scores={rightclick=1..},tag=canShoot] unless entity @s[tag=alwaysShoot] run tag @s remove canShoot
scoreboard players set @a shotgun 0
scoreboard players set @a railgun 0
scoreboard players set @a streak 0
scoreboard players set @a particleC 0
scoreboard players set @a rightclick 0
kill @e[tag=die]
scoreboard players set @a[tag=die,tag=!karma] kstreak 0
scoreboard players set @a[tag=die] gunrlmsek 0
scoreboard players set @a[tag=die] gunrlsek 0
scoreboard players set @a[tag=die] guntimer 0
tag @a[tag=die] remove brst
tag @a[tag=die] remove hit
tag @a[tag=die] remove headshot
execute as @a[tag=die] run scoreboard players operation @s immunity = @s immune
tag @a[tag=die] add immune
tag @a[tag=die] remove karma
tag @a[tag=die] remove die
execute as @a[tag=shoot,scores={gCoin=1..}] run tellraw @s [{"text": "Coins","color": "gold"},{"text": ": +","color": "yellow"},{"score":{"name":"@s","objective":"gCoin"},"color": "red"}]
scoreboard players set @a gCoin 0
tag @a remove shoot
