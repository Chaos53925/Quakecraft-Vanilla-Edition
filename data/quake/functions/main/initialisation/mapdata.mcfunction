$scoreboard objectives add $(votescoreboard) dummy
$scoreboard objectives add $(votescore) dummy
$scoreboard objectives add $(teamkills) dummy
$scoreboard objectives add $(placescore) dummy
$scoreboard objectives add $(teamtemp) dummy
$scoreboard objectives add $(startscoreboard) dummy

$bossbar add $(bar) {"text":"$(teambarname)","color":"$(teamcolor)"}
$bossbar set minecraft:$(bar) name {"text":"$(teambarname)","color":"$(teamcolor)"}
$bossbar set minecraft:$(teambar) color $(barcolor)
$bossbar set minecraft:$(teambar) max 120
$bossbar set minecraft:$(teambar) style notched_12
$bossbar set minecraft:$(teambar) players

$bossbar add $(teamprogressbar) {"text":"$(teambarname)","color":"$(teamcolor)"}
$bossbar set minecraft:$(teamprogressbar) name {"text":"$(teambarname)","color":"$(teamcolor)"}
$bossbar set minecraft:$(teamprogressbar) color red
$bossbar set minecraft:$(teamprogressbar) max 30
$bossbar set minecraft:$(teamprogressbar) style notched_10
$bossbar set minecraft:$(teamprogressbar) players
