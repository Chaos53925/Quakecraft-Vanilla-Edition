
execute as @a[team=lostcity] run execute as @s positioned as @e[type=armor_stand,limit=1,sort=random,tag=lostcity] run spawnpoint @s ~ ~ ~

tag @r[tag=startlostcity,team=lostcity] add l1
tag @r[tag=startlostcity,team=lostcity,tag=!l1] add l2
tag @r[tag=startlostcity,team=lostcity,tag=!l1,tag=!l2] add l3
tag @r[tag=startlostcity,team=lostcity,tag=!l1,tag=!l2,tag=!l3] add l4
tag @r[tag=startlostcity,team=lostcity,tag=!l1,tag=!l2,tag=!l3,tag=!l4] add l5
tag @r[tag=startlostcity,team=lostcity,tag=!l1,tag=!l2,tag=!l3,tag=!l4,tag=!l5] add l6
tag @r[tag=startlostcity,team=lostcity,tag=!l1,tag=!l2,tag=!l3,tag=!l4,tag=!l5,tag=!l6] add l7
tag @r[tag=startlostcity,team=lostcity,tag=!l1,tag=!l2,tag=!l3,tag=!l4,tag=!l5,tag=!l6,tag=!l7] add l8
tag @r[tag=startlostcity,team=lostcity,tag=!l1,tag=!l2,tag=!l3,tag=!l4,tag=!l5,tag=!l6,tag=!l7,tag=!l8] add l9
tag @r[tag=startlostcity,team=lostcity,tag=!l1,tag=!l2,tag=!l3,tag=!l4,tag=!l5,tag=!l6,tag=!l7,tag=!l8,tag=!l9] add l10

tp @a[tag=startlostcity,team=lostcity,tag=l1] 352 47.3 325
tp @a[tag=startlostcity,team=lostcity,tag=l2] 349 50.3 374
tp @a[tag=startlostcity,team=lostcity,tag=l3] 324 50.3 397
tp @a[tag=startlostcity,team=lostcity,tag=l4] 308 42.3 358
tp @a[tag=startlostcity,team=lostcity,tag=l5] 348 33.3 337
tp @a[tag=startlostcity,team=lostcity,tag=l6] 374 37.3 366
tp @a[tag=startlostcity,team=lostcity,tag=l7] 330 43.3 391
tp @a[tag=startlostcity,team=lostcity,tag=l8] 325 34.3 387
tp @a[tag=startlostcity,team=lostcity,tag=l9] 325 31.3 365
tp @a[tag=startlostcity,team=lostcity,tag=l10] 352 40.3 358

tag @a[tag=startlostcity,team=lostcity] remove l1
tag @a[tag=startlostcity,team=lostcity] remove l2
tag @a[tag=startlostcity,team=lostcity] remove l3
tag @a[tag=startlostcity,team=lostcity] remove l4
tag @a[tag=startlostcity,team=lostcity] remove l5
tag @a[tag=startlostcity,team=lostcity] remove l6
tag @a[tag=startlostcity,team=lostcity] remove l7
tag @a[tag=startlostcity,team=lostcity] remove l8
tag @a[tag=startlostcity,team=lostcity] remove l9
tag @a[tag=startlostcity,team=lostcity] remove l10

tag @a[tag=startlostcity] remove startlostcity
