
execute unless entity @p[team=candy,tag=c7] as @a[team=candy,tag=!c1,tag=!c2,tag=!c3,tag=!c4,tag=!c5,tag=!c6] if score @s CandyKills = #temp candyplace run tag @s add c7
execute as @a[team=candy,tag=c7] run scoreboard players add #temp candytag 1
execute if score #temp candytag matches 2.. run tag @r[team=candy,tag=c7,limit=1] add c7a
execute if score #temp candytag matches 2.. run tag @a[team=candy,tag=!c7a] remove c7
tag @a[team=candy] remove c7a
scoreboard players set #temp candytag 0
scoreboard players remove #temp candyplace 1
execute if score #temp candyplace matches 0.. run function maps:candy/place/7