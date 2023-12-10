
scoreboard objectives add ApexKills dummy {"text":"Kills"}
scoreboard objectives add DesertKills dummy {"text":"Kills"}
scoreboard objectives add CandyKills dummy {"text":"Kills"}
scoreboard objectives add LostcityKills dummy {"text":"Kills"}
scoreboard objectives add NetherKills dummy {"text":"Kills"}
scoreboard objectives add EndKills dummy {"text":"Kills"}

scoreboard objectives add apexvote dummy
scoreboard objectives add desertvote dummy
scoreboard objectives add candyvote dummy
scoreboard objectives add lostcityvote dummy
scoreboard objectives add nethervote dummy
scoreboard objectives add endvote dummy

scoreboard objectives add apexvoting dummy {"text":"Voting"}
scoreboard objectives add desertvoting dummy {"text":"Voting"}
scoreboard objectives add candyvoting dummy {"text":"Voting"}
scoreboard objectives add lostcityvoting dummy {"text":"Voting"}
scoreboard objectives add nethervoting dummy {"text":"Voting"}
scoreboard objectives add endvoting dummy {"text":"Voting"}

scoreboard objectives add book minecraft.used:minecraft.knowledge_book
scoreboard objectives add apexvote dummy
scoreboard objectives add candyvote dummy
scoreboard objectives add desertvote dummy
scoreboard objectives add lostcityvote dummy
scoreboard objectives add nethervote dummy
scoreboard objectives add endvote dummy

#anzeige Kills
scoreboard objectives setdisplay sidebar.team.red ApexKills
scoreboard objectives setdisplay sidebar.team.aqua CandyKills
scoreboard objectives setdisplay sidebar.team.gold DesertKills
scoreboard objectives setdisplay sidebar.team.gray Lostcitykills
scoreboard objectives setdisplay sidebar.team.dark_red Netherkills
scoreboard objectives setdisplay sidebar.team.light_purple Endkills

scoreboard objectives add apexplace dummy
scoreboard objectives add candyplace dummy
scoreboard objectives add desertplace dummy
scoreboard objectives add lostcityplace dummy

scoreboard objectives add apextag dummy
scoreboard objectives add candytag dummy
scoreboard objectives add deserttag dummy
scoreboard objectives add lostcitytag dummy
#lobbys
scoreboard objectives add apexlobby dummy
scoreboard objectives add candylobby dummy
scoreboard objectives add desertlobby dummy
scoreboard objectives add lostcitylobby dummy
scoreboard objectives add netherlobby dummy
scoreboard objectives add endlobby dummy

scoreboard players reset * apexvoting
scoreboard players reset * candyvoting
scoreboard players reset * desertvoting
scoreboard players reset * lostcityvoting