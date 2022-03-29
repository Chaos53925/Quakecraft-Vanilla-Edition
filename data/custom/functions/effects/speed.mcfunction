effect clear @s speed
effect give @s[tag=!ar5.1,tag=!ar5.2,tag=!ar5.3] minecraft:speed 5 3 true
effect give @s[tag=ar5.1,tag=!ar5.2,tag=!ar5.3] minecraft:speed 7 3 true
effect give @s[tag=ar5.1,tag=ar5.2,tag=!ar5.3] minecraft:speed 8 3 true
effect give @s[tag=ar5.1,tag=ar5.2,tag=ar5.3] minecraft:speed 10 3 true
scoreboard players set @s effecttimer 0
scoreboard players set @s[tag=!ar5.1,tag=!ar5.2,tag=!ar5.3] effectsek 30
scoreboard players set @s[tag=ar5.1,tag=!ar5.2,tag=!ar5.3] effectsek 25
scoreboard players set @s[tag=ar5.1,tag=ar5.2,tag=!ar5.3] effectsek 20
scoreboard players set @s[tag=ar5.1,tag=ar5.2,tag=ar5.3] effectsek 15
scoreboard players set @s book 0
tag @s remove ding