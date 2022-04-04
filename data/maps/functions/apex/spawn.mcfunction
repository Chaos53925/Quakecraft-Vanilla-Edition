
execute as @a[team=apex] run execute as @s positioned as @e[type=armor_stand,limit=1,sort=random,tag=apex] run spawnpoint @s ~ ~ ~

tag @r[tag=startapex,team=apex] add a1
tag @r[tag=startapex,team=apex,tag=!a1] add a2
tag @r[tag=startapex,team=apex,tag=!a1,tag=!a2] add a3
tag @r[tag=startapex,team=apex,tag=!a1,tag=!a2,tag=!a3] add a4
tag @r[tag=startapex,team=apex,tag=!a1,tag=!a2,tag=!a3,tag=!a4] add a5
tag @r[tag=startapex,team=apex,tag=!a1,tag=!a2,tag=!a3,tag=!a4,tag=!a5] add a6
tag @r[tag=startapex,team=apex,tag=!a1,tag=!a2,tag=!a3,tag=!a4,tag=!a5,tag=!a6] add a7
tag @r[tag=startapex,team=apex,tag=!a1,tag=!a2,tag=!a3,tag=!a4,tag=!a5,tag=!a6,tag=!a7] add a8
tag @r[tag=startapex,team=apex,tag=!a1,tag=!a2,tag=!a3,tag=!a4,tag=!a5,tag=!a6,tag=!a7,tag=!a8] add a9
tag @r[tag=startapex,team=apex,tag=!a1,tag=!a2,tag=!a3,tag=!a4,tag=!a5,tag=!a6,tag=!a7,tag=!a8,tag=!a9] add a10

tp @a[tag=startapex,team=apex,tag=a1] -1384 42.3 246
tp @a[tag=startapex,team=apex,tag=a2] -1413 28.3 239
tp @a[tag=startapex,team=apex,tag=a3] -1368 41.3 201
tp @a[tag=startapex,team=apex,tag=a4] -1410 28.3 205
tp @a[tag=startapex,team=apex,tag=a5] -1420 45.3 201
tp @a[tag=startapex,team=apex,tag=a6] -1386 28.3 238
tp @a[tag=startapex,team=apex,tag=a7] -1372 28.3 205
tp @a[tag=startapex,team=apex,tag=a8] -1388 38.3 196
tp @a[tag=startapex,team=apex,tag=a9] -1419 45.3 224
tp @a[tag=startapex,team=apex,tag=a10] -1421 33.3 240

tag @a[tag=startapex,team=apex] remove a1
tag @a[tag=startapex,team=apex] remove a2
tag @a[tag=startapex,team=apex] remove a3
tag @a[tag=startapex,team=apex] remove a4
tag @a[tag=startapex,team=apex] remove a5
tag @a[tag=startapex,team=apex] remove a6
tag @a[tag=startapex,team=apex] remove a7
tag @a[tag=startapex,team=apex] remove a8
tag @a[tag=startapex,team=apex] remove a9
tag @a[tag=startapex,team=apex] remove a10

tag @a[tag=startapex] remove startapex
