execute if entity @s[tag=r1] positioned as @s as @a run playsound minecraft:entity.item.break master @s[team=!Lobby,distance=..50,tag=!soundsoff] ~ ~ ~ 0.4 1.6 0
execute if entity @s[tag=r2] positioned as @s as @a run playsound minecraft:entity.arrow.hit_player master @s[team=!Lobby,distance=..50,tag=!soundsoff] ~ ~ ~ 0.4 0 0
execute if entity @s[tag=r3] positioned as @s as @a run playsound minecraft:entity.blaze.hurt master @a[team=!Lobby,distance=..50,tag=!soundsoff] ~ ~ ~ 0.4 2 0
execute if entity @s[tag=r4] positioned as @s as @a run playsound minecraft:entity.firework_rocket.large_blast master @s[team=!Lobby,distance=..50,tag=!soundsoff] ~ ~ ~ 0.8 0.8 0
execute if entity @s[tag=r5] positioned as @s as @a run playsound minecraft:entity.generic.explode master @s[team=!Lobby,distance=..50,tag=!soundsoff] ~ ~ ~ 0.4 2 0
execute if entity @s[tag=r6] positioned as @s as @a run playsound minecraft:entity.ghast.shoot master @s[team=!Lobby,distance=..50,tag=!soundsoff] ~ ~ ~ 0.4 1 0
scoreboard players add @s shots 1