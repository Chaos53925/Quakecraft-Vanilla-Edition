# Platzierungsermittlung
# Geht alle Nummern ab dem Wert des erstplatzierten ab und letzt die Plätze automatisch fest.
# Führt sich selbst so lange aus bis der Wert bei 0 angelangt ist.
# Der Wert wird erst in einen temporären scoreboard gespeichert und dann zur berechnung verwendet.
# Sollten mehrere Spieler den selben Score haben wird die Reihenfolge der Platzierung alleine durch die eigenart des Codes festgelegt, welcher dem execute Command im Minecraft Code zugrunde liegt.
# Ein Platz wird keine 2 mal vergeben.
$execute as @a[team=$(team)] unless score @s $(placescore) = @s $(placescore) if score @p $(teamkills) = @p[scores={$(placescore)=1}] $(teamtemp) store result score @s $(placescore) run scoreboard players add #counter $(placescore) 1
$scoreboard players remove @p[team=$(team),scores={$(placescore)=1}] temp 1
$execute if score @p[team=$(team),scores={$(placescore)=1}] temp matches 0.. run function maps:map/place with storage quake:$(team)