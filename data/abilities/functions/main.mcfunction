scoreboard players add @a[team=!Lobby,tag=play,scores={effectsek=1..}] effecttimer 1
execute as @a[team=!Lobby] if score @s effecttimer matches 20.. run scoreboard players remove @s effectsek 1
execute as @a[team=!Lobby] if score @s effecttimer matches 20.. run scoreboard players set @s effecttimer 0

#fähigkeit auslösen
execute as @a[team=!Lobby,tag=play,scores={effectsek=..0,book=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:knowledge_book"}]}] at @s run function abilities:run
#fähigkeit vorhanden
execute as @a[team=!Lobby,tag=ar1,tag=play] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:barrier"}]}] run item replace entity @s hotbar.1 with minecraft:barrier{display: {Name: '{"translate":"effect.book.no","color":"red"}'}}

#Countdown abgelaufen
execute as @a[tag=!ding,team=!Lobby,tag=!ar1,tag=play,scores={effectsek=..0}] at @s run playsound entity.experience_orb.pickup master @s[tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute as @a[tag=!ding,team=!Lobby,tag=!ar1,tag=play,scores={effectsek=..0}] run tag @s add ding

#fähigkeiten nicht bereit
execute as @a[team=!Lobby,tag=play,scores={effectsek=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:book"}]}] run function abilities:book

#fähigkeit verfügbar
execute as @a[team=!Lobby,tag=play,scores={effectsek=..0}] run function abilities:book2

#spezial Fähigkeiten
#immunity
scoreboard players add @a[tag=immune,tag=play] immunity 1
tag @a[scores={immunity=60..},tag=play] remove immune

#karma
scoreboard players add @a[tag=karma,tag=play] karma 1
tag @a[scores={karma=100..},tag=play] remove karma

#brownie-style
scoreboard players add @a[tag=brst,tag=play] brst 1
execute as @a at @s[tag=brst,tag=play,scores={brst=20..}] run summon item ~ ~ ~ {NoGravity:1b,HasVisualFire:0b,Glowing:1b,CustomNameVisible:0b,Age:5700,PickupDelay:6000,Tags:["immune"],Item:{id:"minecraft:cookie",Count:1b}}
execute as @a[scores={brst=20..}] run scoreboard players set @s brst 0

#mine
execute if entity @p[tag=minen,team=!Lobby] if entity @p[tag=minen,team=!Lobby,nbt={Inventory:[{Slot:2b, id:"minecraft:tnt"}]}] run tellraw @p[tag=minen,nbt={Inventory:[{id:"minecraft:tnt"}]}] {"translate":"faeh.mine.defused","color":"yellow"}
execute if entity @p[tag=minen,team=!Lobby] if entity @p[tag=minen,team=!Lobby,nbt={Inventory:[{Slot:2b, id:"minecraft:tnt"}]}] run clear @p[tag=minen,nbt={Inventory:[{id:"minecraft:tnt"}]}] tnt

execute if entity @p[tag=minen,team=!Lobby] if entity @p[tag=!minen,team=!Lobby,nbt={Inventory:[{Slot:2b, id:"minecraft:tnt"}]}] run tag @p[tag=!minen,nbt={Inventory:[{id:"minecraft:tnt"}]}] add mdeath
execute if entity @p[tag=minen,team=!Lobby] at @p[tag=minen,team=!Lobby] if entity @p[tag=!minen,tag=mdeath,team=!Lobby] run function abilities:mine/func

#auslöser reset
scoreboard players set @s book 0

