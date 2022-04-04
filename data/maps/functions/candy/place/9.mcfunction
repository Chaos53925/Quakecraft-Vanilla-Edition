
execute unless entity @p[team=candy,tag=c9] as @a[team=candy,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6,tag=!c7,tag=!c8] if score @s CandyKills = #temp candyplace run tag @s add c9
execute as @a[team=candy,tag=c9] run scoreboard players add #temp candytag 1
execute if score #temp candytag matches 2.. run tag @r[team=candy,tag=c9,limit=1] add c9a
execute if score #temp candytag matches 2.. run tag @a[team=candy,tag=!c9a] remove c9
tag @a[team=candy] remove c9a
scoreboard players set #temp candytag 0
scoreboard players remove #temp candyplace 1
execute if score #temp candyplace matches 0.. run function maps:candy/place/9