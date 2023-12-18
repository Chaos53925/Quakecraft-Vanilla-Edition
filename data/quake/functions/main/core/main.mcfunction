# Portalsounds stoppen
stopsound @a * block.portal.ambient

# Vernichtet alle gedropten Items und fehlerhafte ausführungen anderer Funktionen zu verhindern und um die Lags gering zu halten.
kill @e[type=item,tag=!immune]

# Damit die Waffen auch ordnungsgemäs Funktionieren muss die dazugehörige Funktion ausgeführt werden.
# Die geschieht allgemein um zu verhindern, dass alles durch multiple aufrufe in X-facher geschwindigkeit abläuft.
function guns:guns

# Hier werden die Cosmetics für alle angelegt und es wird sichergestellt, dass diese nicht eigenmächtig ausgezogen werden kann.
execute as @a run function custom:cosmetics

# Wenn ein Spieler den Server / die Welt betritt wird eine Funktion ausgeführt, die den Spieler an den Spawnpunkt bringt.
execute as @a[scores={join=1..}] run function custom:join
scoreboard players set @a[scores={join=1..}] join 0

# Das Buch welches man anklicken kann um zurück zum Lobby Spawnpunkt zu gelangen wird hier in den letzten Slot der Hotbar gelegt.
# Wird dieses ausgelöst wird der Spieler an den Spawnpunkt gebracht.
item replace entity @a[team=Lobby] hotbar.8 with minecraft:knowledge_book{Recipes: ["minecraft:book"], display: {Name: '{"translate":"lobby.book.spawn","color":"green"}'}}
execute as @a[team=Lobby,scores={book=1..},tag=!play] unless entity @s[nbt={Inventory:[{Slot:8b, id:"minecraft:knowledge_book"}]}] run function custom:backtolobby

# Hier werden für alle Spieler in der Lobby ihre persönlichen Stats in der Actionbar angezeigt.
# Dieser Command wird nicht ausgeführt, wenn das Datapack neu geladen wird.
execute as @a[team=Lobby] if score #reload reload matches 1 run title @s actionbar {"translate":"main.actionbar","color":"yellow","with":[{"text":">>>","color":"gold"},{"text":"|","color":"gold"},{"text":"<<<","color":"gold"},{"score":{"name":"@s","objective":"Wins"},"color":"red"},{"score":{"name":"@s","objective":"Kills"},"color":"red"},{"score":{"name":"@s","objective":"Tode"},"color":"red"},{"score":{"name":"@s","objective":"Coins"},"color":"red"}]}

# Damit das Waffensystem bei gleichzeitigem Besiegen zweiger Gegner, die aufeinander schießen, korrekt funktionieren kann bekommt jeder Spieler automatisch eine ID zugewiesen.
# Dies verhindert, dass die Anzeige, wer wen besiegt hat leer bleibt.
execute as @a unless score @s id = @s id store result score @s id run scoreboard players add #counter id 1

# Spieler die den Server das erste mal betreten werden hier in das Team Lobby eingegliedert und zum Lobbyspawnpunkt gebracht.
# Auch wird hier das Menü Initialisiert um sicher zu gehen, dass nicht ausversehen eine ungewollte Aktion im Menü ausgeführt wird.
execute as @a[team=] run function quake:menu/main/initmain
tp @a[team=] 10 17 146 -90.0 0.0
team join Lobby @a[team=]

# Damit das Menü auch funktionieren kann muss die Grundfunktion, die den rest ansteuert, ausgeführt werden.
execute as @a[team=Lobby] run function menu:menu/work

# Alle speiler, die nicht im Team Build sind werden in den Adventuremodus gebracht und gehalten um zerstörung der Maps zu verhindern.
# Das Team Build ist dafür da, dass der Operator schnell und ohne vermeidbarem Aufwand die Map fixen oder verändern kann.
gamemode adventure @a[team=!Build]

# ausführung der Mapfunktionen mit den jeweils richtigen Variablen
# Die Variablken werden auf den Storages abgerufen welche vorher bei der Initiolisierung definiert werden.
function quake:maps/maps with storage quake:apex
function quake:maps/maps with storage quake:desert
function quake:maps/maps with storage quake:candy
function quake:maps/maps with storage quake:lostcity

# Da man nie ausschließen kann, dass der Spieler doch zufällig aus der Welt fällt wird er ab Koordienate 0 oder weniger sofort gekillt und somit zurück an den Spawnpunkt gesetzt.
# Damit das innerhalb eines Spiels nicht zum Nachteil wird udn damit die Sattistiken auch weiterhin korrekt sind, wird der Counter für die Tode um 1 verringert.
execute as @a at @s if entity @s[y=0,dy=0] run scoreboard players remove @s Tode 1
execute as @a at @s if entity @s[y=0,dy=0] run kill @s
