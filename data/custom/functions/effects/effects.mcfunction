scoreboard players add @a[team=!Lobby,tag=play,scores={effectsek=1..}] effecttimer 1
execute as @a[team=!Lobby] if score @s effecttimer matches 20.. run scoreboard players remove @s effectsek 1
execute as @a[team=!Lobby] if score @s effecttimer matches 20.. run scoreboard players set @s effecttimer 0

execute as @a[team=!Lobby,tag=ar2,tag=play,scores={effectsek=..0,book=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:knowledge_book"}]}] at @s run function custom:effects/immune
execute as @a[team=!Lobby,tag=ar3,tag=play,scores={effectsek=..0,book=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:knowledge_book"}]}] at @s run function custom:effects/tp
execute as @a[team=!Lobby,tag=ar4,tag=play,scores={effectsek=..0,book=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:knowledge_book"}]}] at @s run function custom:effects/reload
execute as @a[team=!Lobby,tag=ar5,tag=play,scores={effectsek=..0,book=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:knowledge_book"}]}] at @s run function custom:effects/speed
execute as @a[team=!Lobby,tag=ar6,tag=play,scores={effectsek=..0,book=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:knowledge_book"}]}] at @s run function custom:effects/invisibility
execute as @a[team=!Lobby,tag=ar7,tag=play,scores={effectsek=..0,book=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:knowledge_book"}]}] at @s run function custom:effects/extrashot
execute as @a[team=!Lobby,tag=br1,tag=play,scores={effectsek=..0,book=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:knowledge_book"}]}] at @s run function custom:effects/brownie
execute as @a[team=!Lobby,tag=mn1,tag=play,scores={effectsek=..0,book=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:knowledge_book"}]}] at @s run function custom:effects/mine/mine

#effekte nicht bereit
execute as @a[team=!Lobby,tag=ar1,tag=play] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:barrier"}]}] run item replace entity @s hotbar.1 with minecraft:barrier{display: {Name: '{"translate":"effect.book.no","color":"red"}'}}

execute as @a[tag=!ding,team=!Lobby,tag=ar2,tag=play,scores={effectsek=..0}] at @s run playsound entity.experience_orb.pickup master @s[tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute as @a[tag=!ding,team=!Lobby,tag=ar2,tag=play,scores={effectsek=..0}] run tag @s add ding

execute as @a[tag=!ding,team=!Lobby,tag=ar3,tag=play,scores={effectsek=..0}] at @s run playsound entity.experience_orb.pickup master @s[tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute as @a[tag=!ding,team=!Lobby,tag=ar3,tag=play,scores={effectsek=..0}] run tag @s add ding

execute as @a[tag=!ding,team=!Lobby,tag=ar4,tag=play,scores={effectsek=..0}] at @s run playsound entity.experience_orb.pickup master @s[tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute as @a[tag=!ding,team=!Lobby,tag=ar4,tag=play,scores={effectsek=..0}] run tag @s add ding

execute as @a[tag=!ding,team=!Lobby,tag=ar5,tag=play,scores={effectsek=..0}] at @s run playsound entity.experience_orb.pickup master @s[tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute as @a[tag=!ding,team=!Lobby,tag=ar5,tag=play,scores={effectsek=..0}] run tag @s add ding

execute as @a[tag=!ding,team=!Lobby,tag=ar6,tag=play,scores={effectsek=..0}] at @s run playsound entity.experience_orb.pickup master @s[tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute as @a[tag=!ding,team=!Lobby,tag=ar6,tag=play,scores={effectsek=..0}] run tag @s add ding

execute as @a[tag=!ding,team=!Lobby,tag=ar7,tag=play,scores={effectsek=..0}] at @s run playsound entity.experience_orb.pickup master @s[tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute as @a[tag=!ding,team=!Lobby,tag=ar7,tag=play,scores={effectsek=..0}] run tag @s add ding

execute as @a[tag=!ding,team=!Lobby,tag=br1,tag=play,scores={effectsek=..0}] at @s run playsound entity.experience_orb.pickup master @s[tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute as @a[tag=!ding,team=!Lobby,tag=br1,tag=play,scores={effectsek=..0}] run tag @s add ding

execute as @a[tag=!ding,team=!Lobby,tag=mn1,tag=play,scores={effectsek=..0}] at @s run playsound entity.experience_orb.pickup master @s[tag=!soundsoff] ~ ~ ~ 0.4 1 0
execute as @a[tag=!ding,team=!Lobby,tag=mn1,tag=play,scores={effectsek=..0}] run tag @s add ding


execute as @a[team=!Lobby,tag=ar2,tag=play,scores={effectsek=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:book"}]}] run item replace entity @s hotbar.1 with minecraft:book{display: {Name: '{"translate":"effect.book.immune.load","color":"red"}'}}

execute as @a[team=!Lobby,tag=ar3,tag=play,scores={effectsek=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:book"}]}] run item replace entity @s hotbar.1 with minecraft:book{display: {Name: '{"translate":"effect.book.teleport.load","color":"red"}'}}

execute as @a[team=!Lobby,tag=ar4,tag=play,scores={effectsek=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:book"}]}] run item replace entity @s hotbar.1 with minecraft:book{display: {Name: '{"translate":"effect.book.rapidfire.load","color":"red"}'}}

execute as @a[team=!Lobby,tag=ar5,tag=play,scores={effectsek=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:book"}]}] run item replace entity @s hotbar.1 with minecraft:book{display: {Name: '{"translate":"effect.book.speed.load","color":"red"}'}}

execute as @a[team=!Lobby,tag=ar6,tag=play,scores={effectsek=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:book"}]}] run item replace entity @s hotbar.1 with minecraft:book{display: {Name: '{"translate":"effect.book.invisibility.load","color":"red"}'}}

execute as @a[team=!Lobby,tag=ar7,tag=play,scores={effectsek=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:book"}]}] run item replace entity @s hotbar.1 with minecraft:book{display: {Name: '{"translate":"effect.book.extrashot.load","color":"red"}'}}

execute as @a[team=!Lobby,tag=br1,tag=play,scores={effectsek=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:book"}]}] run item replace entity @s hotbar.1 with minecraft:book{display: {Name: '{"translate":"effect.book.browniestyle.load","color":"red"}'}}

execute as @a[team=!Lobby,tag=mn1,tag=play,scores={effectsek=1..}] unless entity @s[nbt={Inventory:[{Slot:1b, id:"minecraft:book"}]}] run item replace entity @s hotbar.1 with minecraft:book{display: {Name: '{"translate":"effect.book.mine.load","color":"red"}'}}

#effekte aktivieren
item replace entity @a[team=!Lobby,tag=play,tag=ar2,scores={effectsek=..0}] hotbar.1 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"effect.book.immune.ready","color":"green"}'}}

item replace entity @a[team=!Lobby,tag=play,tag=ar3,scores={effectsek=..0}] hotbar.1 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"effect.book.teleport.ready","color":"green"}'}}

item replace entity @a[team=!Lobby,tag=play,tag=ar4,scores={effectsek=..0}] hotbar.1 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"effect.book.rapidfire.ready","color":"green"}'}}

item replace entity @a[team=!Lobby,tag=play,tag=ar5,scores={effectsek=..0}] hotbar.1 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"effect.book.speed.ready","color":"green"}'}}

item replace entity @a[team=!Lobby,tag=play,tag=ar6,scores={effectsek=..0}] hotbar.1 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"effect.book.invisibility.ready","color":"green"}'}}

item replace entity @a[team=!Lobby,tag=play,tag=ar7,scores={effectsek=..0}] hotbar.1 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"effect.book.extrashot.ready","color":"green"}'}}

item replace entity @a[team=!Lobby,tag=play,tag=br1,scores={effectsek=..0}] hotbar.1 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"effect.book.browniestyle.ready","color":"gold"}'}}

item replace entity @a[team=!Lobby,tag=play,tag=mn1,scores={effectsek=..0}] hotbar.1 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"effect.book.mine.ready","color":"gold"}'}}

#immunity
scoreboard players add @a[tag=immune,tag=play] immunity 1
tag @a[scores={immunity=60..},tag=play] remove immune

scoreboard players add @a[tag=brst,tag=play] brst 1
execute as @a at @s[tag=brst,tag=play,scores={brst=20..}] run summon item ~ ~ ~ {NoGravity:1b,HasVisualFire:0b,Glowing:1b,CustomNameVisible:0b,Age:5700,PickupDelay:6000,Tags:["immune"],Item:{id:"minecraft:cookie",Count:1b}}
execute as @a[scores={brst=20..}] run scoreboard players set @s brst 0

scoreboard players set @s book 0

#mine
execute if entity @p[tag=minen,team=!Lobby] if entity @p[tag=minen,team=!Lobby,nbt={Inventory:[{Slot:2b, id:"minecraft:tnt"}]}] run tellraw @p[tag=minen,nbt={Inventory:[{id:"minecraft:tnt"}]}] {"translate":"faeh.mine.defused","color":"yellow"}
execute if entity @p[tag=minen,team=!Lobby] if entity @p[tag=minen,team=!Lobby,nbt={Inventory:[{Slot:2b, id:"minecraft:tnt"}]}] run clear @p[tag=minen,nbt={Inventory:[{id:"minecraft:tnt"}]}] tnt

execute if entity @p[tag=minen,team=!Lobby] if entity @p[tag=!minen,team=!Lobby,nbt={Inventory:[{Slot:2b, id:"minecraft:tnt"}]}] run tag @p[tag=!minen,nbt={Inventory:[{id:"minecraft:tnt"}]}] add mdeath
execute if entity @p[tag=minen,team=!Lobby] at @p[tag=minen,team=!Lobby] if entity @p[tag=!minen,tag=mdeath,team=!Lobby] run function custom:effects/mine/func
