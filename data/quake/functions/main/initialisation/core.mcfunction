# Shows players that initialization is in progress.
title @a times 0 10 0
title @a actionbar {"translate":"actionbar.init","color":"yellow"}
function quake:main/initialisation/storages
function quake:main/initialisation/mapdata with storage quake:apex
function quake:main/initialisation/mapdata with storage quake:candy
function quake:main/initialisation/mapdata with storage quake:desert
function quake:main/initialisation/mapdata with storage quake:lostcity











schedule function custom:standart 7s
schedule function custom:lobby 7s

schedule function custom:version 8s
