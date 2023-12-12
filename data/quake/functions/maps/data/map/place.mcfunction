# Platzierungsermittlung
$execute as @a[team=$(team)] unless score @s $(placescore) = @s $(placescore) if score @p $(teamkills) = @p[scores={$(placescore)=1}] $(teamtemp) store result score @s $(placescore) run scoreboard players add #counter $(placescore) 1
$scoreboard players remove @p[team=$(team),scores={$(placescore)=1}] temp 1
$execute if score @p[team=$(team),scores={$(placescore)=1}] temp matches 0.. run function maps:map/place with storage quake:$(team)