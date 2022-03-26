tag @a[tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7,tag=!slv1,tag=!slv2,tag=!slv3,tag=!slv4,tag=!slv5,tag=!slv6] add wlv1
tag @a[tag=!hat1,tag=!hat2,tag=!hat3,tag=!hat4,tag=!hat5,tag=!hat6,tag=!hat7,tag=!hat8,tag=!hat9,tag=!hat10,tag=!hat11,tag=!hat12,tag=!hat0] add hat0
tag @a[tag=!e1,tag=!e2,tag=!e3,tag=!e4,tag=!e5,tag=!e6] add e1
tag @a[tag=!s1,tag=!s2,tag=!s3,tag=!s4,tag=!s5,tag=!s6] add s1
tag @a[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6] add p1
tag @a[tag=!r1,tag=!r2,tag=!r3,tag=!r4,tag=!r5,tag=!r6] add r1
tag @a[tag=!ar1,tag=!ar2,tag=!ar3,tag=!ar4,tag=!ar5,tag=!ar6,tag=!ar7,tag=!br1,tag=!mn1] add ar1
execute as @a unless entity @s[scores={shotguntimer=0..}] run scoreboard players set @s shotguntimer 0
execute as @a unless entity @s[scores={shotgunshots=0..}] run scoreboard players set @s shotgunshots 0
execute as @a unless entity @s[scores={headshots=0..}] run scoreboard players set @s headshots 0
execute as @a unless entity @s[scores={ks10=0..}] run scoreboard players set @s ks10 0
execute as @a unless entity @s[scores={ks20=0..}] run scoreboard players set @s ks20 0
execute as @a unless entity @s[scores={ks38=0..}] run scoreboard players set @s ks38 0
execute as @a unless entity @s[scores={ks30=0..}] run scoreboard players set @s ks30 0
execute as @a unless entity @s[scores={dkills=0..}] run scoreboard players set @s dkills 0
execute as @a unless entity @s[scores={tkills=0..}] run scoreboard players set @s tkills 0
execute as @a unless entity @s[scores={mkills=0..}] run scoreboard players set @s mkills 0
execute as @a unless entity @s[scores={gkills=0..}] run scoreboard players set @s gkills 0
execute as @a unless entity @s[scores={shots=0..}] run scoreboard players set @s shots 0
execute as @a unless entity @s[scores={snipe=0..}] run scoreboard players set @s snipe 0
execute as @a unless entity @s[scores={games=0..}] run scoreboard players set @s games 0
execute as @a unless entity @s[scores={lost=0..}] run scoreboard players set @s lost 0
execute as @a unless entity @s[scores={supersnipe=0..}] run scoreboard players set @s supersnipe 0

execute as @a[team=Lobby] unless entity @s[scores={Wins=0..}] run scoreboard players set @s Wins 0
execute as @a[team=Lobby] unless entity @s[scores={Coins=0..}] run scoreboard players set @s Coins 0
execute as @a[team=Lobby] unless entity @s[scores={Kills=0..}] run scoreboard players set @s Kills 0
execute as @a[team=Lobby] unless entity @s[scores={Tode=0..}] run scoreboard players set @s Tode 0

schedule function custom:standart 1s