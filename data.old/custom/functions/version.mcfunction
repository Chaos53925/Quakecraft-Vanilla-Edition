tellraw @a[tag=op] {"text":"\n+-----------------------------------+\n\n","color":"white"}
execute unless score #reload reload matches 1 run tellraw @a[tag=op] [{"text":"Initialisierung abgeschlossen.\n","color":"yellow"},{"text":"Datenpaket erfolgreich geladen.\n\n","color":"green"}]
tellraw @a[tag=op] [{"text":"Versionen:\n\n","color":"green"},{"text":"Datenpaket Version:\n","color":"white"},{"text":"1.2.0-b829\n\n","color":"light_purple"},{"text":"+-----------------------------------+\n\n","color":"white"}]
scoreboard players set #reload reload 1
