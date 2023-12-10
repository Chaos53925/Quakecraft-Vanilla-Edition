
execute unless entity @p[team=candy,tag=c5] as @a[team=candy,tag=!c1,tag=!c2,tag=!c3,tag=!c4] if score @s CandyKills = #temp candyplace run tag @s add c5
execute as @a[team=candy,tag=c5] run scoreboard players add #temp candytag 1
execute if score #temp candytag matches 2.. run tag @r[team=candy,tag=c5,limit=1] add c5a
execute if score #temp candytag matches 2.. run tag @a[team=candy,tag=!c5a] remove c5
tag @a[team=candy] remove c5a
scoreboard players set #temp candytag 0
scoreboard players remove #temp candyplace 1
execute if score #temp candyplace matches 0.. run function maps:candy/place/5