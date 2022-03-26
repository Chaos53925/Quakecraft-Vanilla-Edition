clear @s
item replace entity @s inventory.8 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.9 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.14 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.15 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.16 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.17 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.18 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.21 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.22 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.23 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.24 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.25 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.26 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.0 with minecraft:red_stained_glass_pane{display: {Name: '{"translate":"shop.back","color":"red"}'}}

execute as @s[tag=!game,tag=!hat0] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:barrier"}]}] run item replace entity @s inventory.1 with minecraft:barrier{display: {Name: '{"translate":"shop.hat.nohat"}', Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat0] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:barrier"}]}] run item replace entity @s inventory.1 with minecraft:barrier{Enchantments:[{}],display: {Name: '{"translate":"shop.hat.nohat"}'}}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat1b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:glass"}]}] run item replace entity @s inventory.2 with minecraft:glass{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 1000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat1b,tag=!hat1] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:glass"}]}] run item replace entity @s inventory.2 with minecraft:glass{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat1,tag=hat1b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:glass"}]}] run item replace entity @s inventory.2 with minecraft:glass{Enchantments:[{}]}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat4b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:redstone_block"}]}] run item replace entity @s inventory.3 with minecraft:redstone_block{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 1000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat4b,tag=!hat4] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:redstone_block"}]}] run item replace entity @s inventory.3 with minecraft:redstone_block{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat4,tag=hat4b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:redstone_block"}]}] run item replace entity @s inventory.3 with minecraft:redstone_block{Enchantments:[{}]}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat9b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:target"}]}] run item replace entity @s inventory.4 with minecraft:target{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 1000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat9b,tag=!hat9] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:target"}]}] run item replace entity @s inventory.4 with minecraft:target{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat9,tag=hat9b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:target"}]}] run item replace entity @s inventory.4 with minecraft:target{Enchantments:[{}]}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat10b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run item replace entity @s inventory.5 with minecraft:tnt{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 1000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat10b,tag=!hat10] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run item replace entity @s inventory.5 with minecraft:tnt{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat10,tag=hat10b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run item replace entity @s inventory.5 with minecraft:tnt{Enchantments:[{}]}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat11b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:slime_block"}]}] run item replace entity @s inventory.6 with minecraft:slime_block{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 1000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat11b,tag=!hat11] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:slime_block"}]}] run item replace entity @s inventory.6 with minecraft:slime_block{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat11,tag=hat11b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:slime_block"}]}] run item replace entity @s inventory.6 with minecraft:slime_block{Enchantments:[{}]}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat12b] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:observer"}]}] run item replace entity @s inventory.7 with minecraft:observer{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 1000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat12b,tag=!hat12] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:observer"}]}] run item replace entity @s inventory.7 with minecraft:observer{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat12,tag=hat12b] unless entity @s[nbt={Inventory:[{Slot:16b, id:"minecraft:observer"}]}] run item replace entity @s inventory.7 with minecraft:observer{Enchantments:[{}]}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat2b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:creeper_head"}]}] run item replace entity @s inventory.10 with minecraft:creeper_head{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat2b,tag=!hat2] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:creeper_head"}]}] run item replace entity @s inventory.10 with minecraft:creeper_head{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat2,tag=hat2b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:creeper_head"}]}] run item replace entity @s inventory.10 with minecraft:creeper_head{Enchantments:[{}]}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat6b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:skeleton_skull"}]}] run item replace entity @s inventory.11 with minecraft:skeleton_skull{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat6b,tag=!hat6] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:skeleton_skull"}]}] run item replace entity @s inventory.11 with minecraft:skeleton_skull{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat6,tag=hat6b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:skeleton_skull"}]}] run item replace entity @s inventory.11 with minecraft:skeleton_skull{Enchantments:[{}]}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat5b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:wither_skeleton_skull"}]}] run item replace entity @s inventory.12 with minecraft:wither_skeleton_skull{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat5b,tag=!hat5] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:wither_skeleton_skull"}]}] run item replace entity @s inventory.12 with minecraft:wither_skeleton_skull{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat5,tag=hat5b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:wither_skeleton_skull"}]}] run item replace entity @s inventory.12 with minecraft:wither_skeleton_skull{Enchantments:[{}]}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat3b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:dragon_head"}]}] run item replace entity @s inventory.13 with minecraft:dragon_head{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat3b,tag=!hat3] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:dragon_head"}]}] run item replace entity @s inventory.13 with minecraft:dragon_head{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat3,tag=hat3b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:dragon_head"}]}] run item replace entity @s inventory.13 with minecraft:dragon_head{Enchantments:[{}]}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat8b] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:end_rod"}]}] run item replace entity @s inventory.19 with minecraft:end_rod{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 10000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat8b,tag=!hat8] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:end_rod"}]}] run item replace entity @s inventory.19 with minecraft:end_rod{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat8,tag=hat8b] unless entity @s[nbt={Inventory:[{Slot:28b, id:"minecraft:end_rod"}]}] run item replace entity @s inventory.19 with minecraft:end_rod{Enchantments:[{}]}

#pbuttons nicht im besitz
execute as @s[tag=!game,tag=!hat7b] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:lightning_rod"}]}] run item replace entity @s inventory.20 with minecraft:lightning_rod{display: {Lore: ['[{"translate":"shop.cost"},{"text":" 10000 "},{"translate":"main.coins"}]']}}
#pbuttons im besitz
execute as @s[tag=!game,tag=hat7b,tag=!hat7] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:lightning_rod"}]}] run item replace entity @s inventory.20 with minecraft:lightning_rod{display: {Lore: ['{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=hat7,tag=hat7b] unless entity @s[nbt={Inventory:[{Slot:29b, id:"minecraft:lightning_rod"}]}] run item replace entity @s inventory.20 with minecraft:lightning_rod{Enchantments:[{}]}

tag @s remove shop
tag @s add hat