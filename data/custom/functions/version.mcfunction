tellraw @a[tag=op] {"text":""}
tellraw @a[tag=op] {"text":"+-----------------------------------+","color":"white"}
tellraw @a[tag=op] {"text":""}
execute unless score #reload reload matches 1 run tellraw @a[tag=op] {"text":"Initialisierung abgeschlossen.","color":"yellow"}
execute unless score #reload reload matches 1 run tellraw @a[tag=op] {"text":"Datenpaket erfolgreich geladen.","color":"green"}
execute unless score #reload reload matches 1 run tellraw @a[tag=op] {"text":""}
tellraw @a[tag=op] {"text":"Versionen:","color":"green"}
tellraw @a[tag=op] {"text":""}
tellraw @a[tag=op] {"text":"Datenpaket Version:","color":"white"}
tellraw @a[tag=op] {"text":"1.0.2-b835","color":"light_purple"}
tellraw @a[tag=op] {"text":""}
tellraw @a[tag=op] {"text":"+-----------------------------------+","color":"white"}
tellraw @a[tag=op] {"text":""}
scoreboard players set #reload reload 1
