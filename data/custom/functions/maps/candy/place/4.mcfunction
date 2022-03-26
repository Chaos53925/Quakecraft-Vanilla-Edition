
execute unless entity @p[team=candy,tag=c4] as @a[team=candy,tag=!c1,tag=!c2,tag=!c3] if score @s CandyKills = #temp candyplace run tag @s add c4
execute as @a[team=candy,tag=c4] run scoreboard players add #temp candytag 1
execute if score #temp candytag matches 2.. run tag @r[team=candy,tag=c4,limit=1] add c4a
execute if score #temp candytag matches 2.. run tag @a[team=candy,tag=!c4a] remove c4
tag @a[team=candy] remove c4a
scoreboard players set #temp candytag 0
scoreboard players remove #temp candyplace 1
execute if score #temp candyplace matches 0.. run function custom:maps/candy/place/4