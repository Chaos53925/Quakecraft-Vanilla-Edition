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

#pbuttons im besitz
execute as @s[tag=!game,tag=!p1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:firework_rocket"}]}] run item replace entity @s inventory.1 with minecraft:firework_rocket{display: {Name: '{"translate":"shop.shpa.firework"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=p1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:firework_rocket"}]}] run item replace entity @s inventory.1 with minecraft:firework_rocket{Enchantments:[{}],display: {Name: '{"translate":"shop.shpa.firework"}'}}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!p2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:heart_of_the_sea"}]}] run item replace entity @s inventory.2 with minecraft:heart_of_the_sea{display: {Name: '{"translate":"shop.shpa.sea"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1
#pbuttons im besitz
execute as @s[tag=!game,tag=p2b,tag=!p2] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:heart_of_the_sea"}]}] run item replace entity @s inventory.2 with minecraft:heart_of_the_sea{display: {Name: '{"translate":"shop.shpa.sea"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=p2,tag=p2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:heart_of_the_sea"}]}] run item replace entity @s inventory.2 with minecraft:heart_of_the_sea{Enchantments:[{}],display: {Name: '{"translate":"shop.shpa.sea"}'}}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!p3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:composter"}]}] run item replace entity @s inventory.3 with minecraft:composter{display: {Name: '{"translate":"shop.shpa.composter"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1
#pbuttons im besitz
execute as @s[tag=!game,tag=p3b,tag=!p3] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:composter"}]}] run item replace entity @s inventory.3 with minecraft:composter{display: {Name: '{"translate":"shop.shpa.composter"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=p3,tag=p3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:composter"}]}] run item replace entity @s inventory.3 with minecraft:composter{Enchantments:[{}],display: {Name: '{"translate":"shop.shpa.composter"}'}}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!p4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:diamond_sword"}]}] run item replace entity @s inventory.4 with minecraft:diamond_sword{display: {Name: '{"translate":"shop.shpa.sword"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1
#pbuttons im besitz
execute as @s[tag=!game,tag=p4b,tag=!p4] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:diamond_sword"}]}] run item replace entity @s inventory.4 with minecraft:diamond_sword{display: {Name: '{"translate":"shop.shpa.sword"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=p4,tag=p4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:diamond_sword"}]}] run item replace entity @s inventory.4 with minecraft:diamond_sword{Enchantments:[{}],display: {Name: '{"translate":"shop.shpa.sword"}'}}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!p5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:enchanted_book"}]}] run item replace entity @s inventory.5 with minecraft:enchanted_book{display: {Name: '{"translate":"shop.shpa.enchanted"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1
#pbuttons im besitz
execute as @s[tag=!game,tag=p5b,tag=!p5] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:enchanted_book"}]}] run item replace entity @s inventory.5 with minecraft:enchanted_book{display: {Name: '{"translate":"shop.shpa.enchanted"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=p5,tag=p5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:enchanted_book"}]}] run item replace entity @s inventory.5 with minecraft:enchanted_book{Enchantments:[{}],display: {Name: '{"translate":"shop.shpa.enchanted"}'}}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!p6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:soul_torch"}]}] run item replace entity @s inventory.6 with minecraft:soul_torch{display: {Name: '{"translate":"shop.shpa.soul"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1
#pbuttons im besitz
execute as @s[tag=!game,tag=p6b,tag=!p6] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:soul_torch"}]}] run item replace entity @s inventory.6 with minecraft:soul_torch{display: {Name: '{"translate":"shop.shpa.soul"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=p6,tag=p6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:soul_torch"}]}] run item replace entity @s inventory.6 with minecraft:soul_torch{Enchantments:[{}],display: {Name: '{"translate":"shop.shpa.soul"}'}}

tag @s remove shop
tag @s add shpa
