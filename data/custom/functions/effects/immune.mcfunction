tag @s add immune
scoreboard players set @s[tag=ar2.1,tag=ar2.2,tag=ar2.3] immunity 0
scoreboard players set @s[tag=ar2.1,tag=ar2.2,tag=!ar2.3] immunity 20
scoreboard players set @s[tag=ar2.1,tag=!ar2.2,tag=!ar2.3] immunity 30
scoreboard players set @s[tag=!ar2.1,tag=!ar2.2,tag=!ar2.3] immunity 40
scoreboard players set @s effecttimer 0
scoreboard players set @s[tag=ar2.1,tag=ar2.2,tag=ar2.3] effectsek 60
scoreboard players set @s[tag=ar2.1,tag=ar2.2,tag=!ar2.3] effectsek 60
scoreboard players set @s[tag=ar2.1,tag=!ar2.2,tag=!ar2.3] effectsek 90
scoreboard players set @s[tag=!ar2.1,tag=!ar2.2,tag=!ar2.3] effectsek 120
scoreboard players set @s book 0
effect give @s resistance 3 0 false
tag @s remove ding