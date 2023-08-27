
scoreboard players add @a[team=!Lobby,tag=play,scores={effectsek=1..}] effecttimer 1
execute as @a[team=!Lobby] if score @s effecttimer matches 20.. run scoreboard players remove @s effectsek 1
execute as @a[team=!Lobby] if score @s effecttimer matches 20.. run scoreboard players set @s effecttimer 0

#fähigkeit auslösen
execute as @a[team=!Lobby,tag=play,scores={effectsek=..0,book=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:knowledge_book"}]}] at @s run function abilities:runtime/run
#fähigkeit vorhanden
execute as @a[team=!Lobby,tag=ar1,tag=play] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:barrier"}]}] run item replace entity @s hotbar.1 with minecraft:barrier{display: {Name: '{"translate":"effect.book.no","color":"red"}'}}

#Countdown abgelaufen
execute as @a[tag=!ding,team=!Lobby,tag=!ar1,tag=play,scores={effectsek=..0}] at @s run playsound entity.experience_orb.pickup master @s[tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute as @a[tag=!ding,team=!Lobby,tag=!ar1,tag=play,scores={effectsek=..0}] run tag @s add ding

#fähigkeiten nicht bereit
execute as @a[team=!Lobby,tag=play,scores={effectsek=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:book"}]}] run function abilities:runtime/book

#fähigkeit verfügbar
execute as @a[team=!Lobby,tag=play,scores={effectsek=..0}] run function abilities:runtime/book2

function abilities:runtime/valuetesting
#auslöser reset
scoreboard players set @s book 0

