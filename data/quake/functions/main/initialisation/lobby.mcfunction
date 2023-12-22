bossbar add playerbar {"text":"Players"}
bossbar set minecraft:playerbar color white
bossbar set minecraft:playerbar max 60
bossbar set minecraft:playerbar style notched_6

setblock 44 16 127 oak_wall_sign[facing=west]{front_text:{messages:['[{"text":"[","clickEvent":{"action":"run_command","value":"/trigger apexjoin set 1"}},{"text":"Apex","color":"red"},{"text":"]","color":"reset"}]','[{"text":"("},{"score":{"name":"#apex","objective":"apexlobby"}},{"text":"/10)"}]','{"text":""}','{"text":""}']}} replace
setblock 24 17 117 oak_wall_sign[facing=south]{front_text:{messages:['[{"text":"[","clickEvent":{"action":"run_command","value":"/trigger desertjoin set 1"}},{"text":"Desert","color":"gold"},{"text":"]","color":"reset"}]','[{"text":"("},{"score":{"name":"#desert","objective":"desertlobby"}},{"text":"/10)"}]','{"text":""}','{"text":""}']}} replace
setblock 44 16 165 oak_wall_sign[facing=west]{front_text:{messages:['[{"text":"[","clickEvent":{"action":"run_command","value":"/trigger candyjoin set 1"}},{"text":"Candy","color":"aqua"},{"text":"]","color":"reset"}]','[{"text":"("},{"score":{"name":"#candy","objective":"candylobby"}},{"text":"/10)"}]','{"text":""}','{"text":""}']}} replace
setblock 24 17 175 oak_wall_sign[facing=north]{front_text:{messages:['[{"text":"[","clickEvent":{"action":"run_command","value":"/trigger lostcityjoin set 1"}},{"text":"Lostcity","color":"gray"},{"text":"]","color":"reset"}]','[{"text":"("},{"score":{"name":"#lostcity","objective":"lostcitylobby"}},{"text":"/10)"}]','{"text":""}','{"text":""}']}} replace
