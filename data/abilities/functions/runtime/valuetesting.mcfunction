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
execute if entity @p[tag=minen,team=!Lobby] at @p[tag=minen,team=!Lobby] if entity @p[tag=!minen,tag=mdeath,team=!Lobby] run function abilities:specialabilities/mine/func
