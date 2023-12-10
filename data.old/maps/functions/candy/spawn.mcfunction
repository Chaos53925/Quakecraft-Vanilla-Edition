
execute as @a[team=candy] run execute as @s positioned as @e[type=armor_stand,limit=1,sort=random,tag=candy] run spawnpoint @s ~ ~ ~

tag @r[tag=startcandy,team=candy] add c1
tag @r[tag=startcandy,team=candy,tag=!c1] add c2
tag @r[tag=startcandy,team=candy,tag=!c1,tag=!c2] add c3
tag @r[tag=startcandy,team=candy,tag=!c1,tag=!c2,tag=!c3] add c4
tag @r[tag=startcandy,team=candy,tag=!c1,tag=!c2,tag=!c3,tag=!c4] add c5
tag @r[tag=startcandy,team=candy,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5] add c6
tag @r[tag=startcandy,team=candy,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6] add c7
tag @r[tag=startcandy,team=candy,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7] add c8
tag @r[tag=startcandy,team=candy,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7,tag=!c8] add c9
tag @r[tag=startcandy,team=candy,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7,tag=!c8,tag=!c9] add c10

tp @a[tag=startcandy,team=candy,tag=c1] -708 35.3 372
tp @a[tag=startcandy,team=candy,tag=c2] -722 23.3 346
tp @a[tag=startcandy,team=candy,tag=c3] -706 23.3 334
tp @a[tag=startcandy,team=candy,tag=c4] -694 31.3 335
tp @a[tag=startcandy,team=candy,tag=c5] -694 31.3 349
tp @a[tag=startcandy,team=candy,tag=c6] -693 25.3 360
tp @a[tag=startcandy,team=candy,tag=c7] -686 23.3 376
tp @a[tag=startcandy,team=candy,tag=c8] -696 30.3 387
tp @a[tag=startcandy,team=candy,tag=c9] -685 32.3 355
tp @a[tag=startcandy,team=candy,tag=c10] -671 33.3 367

tag @a[tag=startcandy,team=candy] remove c1
tag @a[tag=startcandy,team=candy] remove c2
tag @a[tag=startcandy,team=candy] remove c3
tag @a[tag=startcandy,team=candy] remove c4
tag @a[tag=startcandy,team=candy] remove c5
tag @a[tag=startcandy,team=candy] remove c6
tag @a[tag=startcandy,team=candy] remove c7
tag @a[tag=startcandy,team=candy] remove c8
tag @a[tag=startcandy,team=candy] remove c9
tag @a[tag=startcandy,team=candy] remove c10

tag @a[tag=startcandy] remove startcandy
