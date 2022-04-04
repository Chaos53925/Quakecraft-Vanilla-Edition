clear @s
item replace entity @s inventory.7 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.8 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.9 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.10 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.11 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.12 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.13 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.14 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.15 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.16 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.17 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.18 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.19 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.20 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.21 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.22 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.23 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.24 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.25 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.26 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.0 with minecraft:red_stained_glass_pane{display: {Name: '{"translate":"shop.back","color":"red"}'}}

#Effekt im besitz
execute as @s[tag=!game,tag=!e1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:end_rod"}]}] run item replace entity @s inventory.1 with minecraft:end_rod{display: {Name: '{"translate":"shop.kipa.endrod"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=e1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:end_rod"}]}] run item replace entity @s inventory.1 with minecraft:end_rod{Enchantments:[{}],display: {Name: '{"translate":"shop.kipa.endrod"}'}}

#Effekt nicht im besitz
execute as @s[tag=!game,tag=!e2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:lava_bucket"}]}] run item replace entity @s inventory.2 with minecraft:lava_bucket{display: {Name: '{"translate":"shop.kipa.lava"}', Lore: ['[{"translate":"shop.cost"},{"text":" 500 "},{"translate":"main.coins"}]']}} 1
#Effekt im besitz
execute as @s[tag=!game,tag=e2b,tag=!e2] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:lava_bucket"}]}] run item replace entity @s inventory.2 with minecraft:lava_bucket{display: {Name: '{"translate":"shop.kipa.lava"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=e2,tag=e2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:lava_bucket"}]}] run item replace entity @s inventory.2 with minecraft:lava_bucket{Enchantments:[{}],display: {Name: '{"translate":"shop.kipa.lava"}'}}

#Effekt nicht im besitz
execute as @s[tag=!game,tag=!e3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:crying_obsidian"}]}] run item replace entity @s inventory.3 with minecraft:crying_obsidian{display: {Name: '{"translate":"shop.kipa.crying"}', Lore: ['[{"translate":"shop.cost"},{"text":" 500 "},{"translate":"main.coins"}]']}} 1
#Effekt shop.owned
execute as @s[tag=!game,tag=e3b,tag=!e3] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:crying_obsidian"}]}] run item replace entity @s inventory.3 with minecraft:crying_obsidian{display: {Name: '{"translate":"shop.kipa.crying"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=e3,tag=e3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:crying_obsidian"}]}] run item replace entity @s inventory.3 with minecraft:crying_obsidian{Enchantments:[{}],display: {Name: '{"translate":"shop.kipa.crying"}'}}

#Effekt nicht im besitz
execute as @s[tag=!game,tag=!e4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:water_bucket"}]}] run item replace entity @s inventory.4 with minecraft:water_bucket{display: {Name: '{"translate":"shop.kipa.water"}', Lore: ['[{"translate":"shop.cost"},{"text":" 500 "},{"translate":"main.coins"}]']}} 1
#Effekt im besitz
execute as @s[tag=!game,tag=e4b,tag=!e4] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:water_bucket"}]}] run item replace entity @s inventory.4 with minecraft:water_bucket{display: {Name: '{"translate":"shop.kipa.water"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=e4,tag=e4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:water_bucket"}]}] run item replace entity @s inventory.4 with minecraft:water_bucket{Enchantments:[{}],display: {Name: '{"translate":"shop.kipa.water"}'}}

#Effekt nicht im besitz
execute as @s[tag=!game,tag=!e5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:dragon_breath"}]}] run item replace entity @s inventory.5 with minecraft:dragon_breath{display: {Name: '{"translate":"shop.kipa.dragon"}', Lore: ['[{"translate":"shop.cost"},{"text":" 1500 "},{"translate":"main.coins"}]']}} 1
#Effekt im besitz
execute as @s[tag=!game,tag=e5b,tag=!e5] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:dragon_breath"}]}] run item replace entity @s inventory.5 with minecraft:dragon_breath{display: {Name: '{"translate":"shop.kipa.dragon"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=e5,tag=e5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:dragon_breath"}]}] run item replace entity @s inventory.5 with minecraft:dragon_breath{Enchantments:[{}],display: {Name: '{"translate":"shop.kipa.dragon"}'}}

#Effekt nicht im besitz
execute as @s[tag=!game,tag=!e6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:fire_charge"}]}] run item replace entity @s inventory.6 with minecraft:fire_charge{display: {Name: '{"translate":"shop.kipa.flame"}', Lore: ['[{"translate":"shop.cost"},{"text":" 1500 "},{"translate":"main.coins"}]']}} 1
#Effekt im besitz
execute as @s[tag=!game,tag=e6b,tag=!e6] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:fire_charge"}]}] run item replace entity @s inventory.6 with minecraft:fire_charge{display: {Name: '{"translate":"shop.kipa.flame"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=e6,tag=e6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:fire_charge"}]}] run item replace entity @s inventory.6 with minecraft:fire_charge{Enchantments:[{}],display: {Name: '{"translate":"shop.kipa.flame"}'}}

tag @s remove shop
tag @s add kipa