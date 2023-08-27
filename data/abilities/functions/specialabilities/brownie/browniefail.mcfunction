kill @s
tellraw @a[distance=..150,team=!Lobby] {"selector":"@s","color":"blue","extra":[{"text":" >>> ","color":"gold"},{"selector":"@s","color":"dark_blue"}]}
scoreboard players set @s brst 0
scoreboard players set @s effecttimer 0
scoreboard players set @s effectsek 120
scoreboard players set @s railguntimer 0
scoreboard players set @s shotguntimer 0
scoreboard players set @s book 0
tag @s remove ding
