
execute as @a[team=desert] run execute as @s positioned as @e[type=armor_stand,limit=1,sort=random,tag=desert] run spawnpoint @s ~ ~ ~

tag @r[tag=startdesert,team=desert] add d1
tag @r[tag=startdesert,team=desert,tag=!d1] add d2
tag @r[tag=startdesert,team=desert,tag=!d1,tag=!d2] add d3
tag @r[tag=startdesert,team=desert,tag=!d1,tag=!d2,tag=!d3] add d4
tag @r[tag=startdesert,team=desert,tag=!d1,tag=!d2,tag=!d3,tag=!d4] add d5
tag @r[tag=startdesert,team=desert,tag=!d1,tag=!d2,tag=!d3,tag=!d4,tag=!d5] add d6
tag @r[tag=startdesert,team=desert,tag=!d1,tag=!d2,tag=!d3,tag=!d4,tag=!d5,tag=!d6] add d7
tag @r[tag=startdesert,team=desert,tag=!d1,tag=!d2,tag=!d3,tag=!d4,tag=!d5,tag=!d6,tag=!d7] add d8
tag @r[tag=startdesert,team=desert,tag=!d1,tag=!d2,tag=!d3,tag=!d4,tag=!d5,tag=!d6,tag=!d7,tag=!d8] add d9
tag @r[tag=startdesert,team=desert,tag=!d1,tag=!d2,tag=!d3,tag=!d4,tag=!d5,tag=!d6,tag=!d7,tag=!d8,tag=!d9] add d10

tp @a[tag=startdesert,team=desert,tag=d1] -178 44.3 343
tp @a[tag=startdesert,team=desert,tag=d2] -178 34.3 352
tp @a[tag=startdesert,team=desert,tag=d3] -156 27.3 386
tp @a[tag=startdesert,team=desert,tag=d4] -140 34.3 395
tp @a[tag=startdesert,team=desert,tag=d5] -185 36.3 375
tp @a[tag=startdesert,team=desert,tag=d6] -178 27.3 343
tp @a[tag=startdesert,team=desert,tag=d7] -147 44.3 390
tp @a[tag=startdesert,team=desert,tag=d8] -192 44.3 394
tp @a[tag=startdesert,team=desert,tag=d9] -151 27.3 380
tp @a[tag=startdesert,team=desert,tag=d10] -151 34.3 380

tag @a[tag=startdesert,team=desert] remove d1
tag @a[tag=startdesert,team=desert] remove d2
tag @a[tag=startdesert,team=desert] remove d3
tag @a[tag=startdesert,team=desert] remove d4
tag @a[tag=startdesert,team=desert] remove d5
tag @a[tag=startdesert,team=desert] remove d6
tag @a[tag=startdesert,team=desert] remove d7
tag @a[tag=startdesert,team=desert] remove d8
tag @a[tag=startdesert,team=desert] remove d9
tag @a[tag=startdesert,team=desert] remove d10

tag @a[tag=startdesert] remove startdesert
