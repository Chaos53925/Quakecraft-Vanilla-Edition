scoreboard players set @s kstreak 0
scoreboard players set @s effecttimer 0
scoreboard players set @s railguntimer 0
scoreboard players set @s shotgunshots 0
scoreboard players set @s railgunshots 0
scoreboard players set @s shotguntimer 0
tag @s remove canShoot

scoreboard players set @s[tag=!man,scores={xp=..9}] immune 30
scoreboard players set @s[tag=!man,scores={xp=10..19}] immune 35
scoreboard players set @s[tag=!man,scores={xp=20..29}] immune 40
scoreboard players set @s[tag=!man,scores={xp=30..49}] immune 43
scoreboard players set @s[tag=!man,scores={xp=50..99}] immune 46
scoreboard players set @s[tag=!man,scores={xp=100..149}] immune 48
scoreboard players set @s[tag=!man,scores={xp=150..}] immune 50
scoreboard players set @s[tag=man] immune 59