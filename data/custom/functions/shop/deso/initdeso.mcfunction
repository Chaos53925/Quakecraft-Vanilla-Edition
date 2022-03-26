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
#Sound im besitz
execute as @s[tag=!game,tag=!s1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:blaze_rod"}]}] run item replace entity @s inventory.1 with minecraft:blaze_rod{display: {Name: '{"translate":"shop.deso.blaze"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=s1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:blaze_rod"}]}] run item replace entity @s inventory.1 with minecraft:blaze_rod{Enchantments:[{}],display: {Name: '{"translate":"shop.deso.blaze"}'}}


#Sound nicht im besitz
execute as @s[tag=!game,tag=!s2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:anvil"}]}] run item replace entity @s inventory.2 with minecraft:anvil{display: {Name: '{"translate":"shop.deso.anvil"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1
#Sound im besitz
execute as @s[tag=!game,tag=s2b,tag=!s2] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:anvil"}]}] run item replace entity @s inventory.2 with minecraft:anvil{display: {Name: '{"translate":"shop.deso.anvil"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=s2,tag=s2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:anvil"}]}] run item replace entity @s inventory.2 with minecraft:anvil{Enchantments:[{}],display: {Name: '{"translate":"shop.deso.anvil"}'}}


#Sound nicht im besitz
execute as @s[tag=!game,tag=!s3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run item replace entity @s inventory.3 with minecraft:ender_pearl{display: {Name: '{"translate":"shop.deso.ender"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1
#Sound im besitz
execute as @s[tag=!game,tag=s3b,tag=!s3] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run item replace entity @s inventory.3 with minecraft:ender_pearl{display: {Name: '{"translate":"shop.deso.ender"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=s3,tag=s3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run item replace entity @s inventory.3 with minecraft:ender_pearl{Enchantments:[{}],display: {Name: '{"translate":"shop.deso.ender"}'}}

#Sound nicht im besitz
execute as @s[tag=!game,tag=!s4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:iron_block"}]}] run item replace entity @s inventory.4 with minecraft:iron_block{display: {Name: '{"translate":"shop.deso.iron"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1
#Sound im besitz
execute as @s[tag=!game,tag=s4b,tag=!s4] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:iron_block"}]}] run item replace entity @s inventory.4 with minecraft:iron_block{display: {Name: '{"translate":"shop.deso.iron"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=s4,tag=s4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:iron_block"}]}] run item replace entity @s inventory.4 with minecraft:iron_block{Enchantments:[{}],display: {Name: '{"translate":"shop.deso.iron"}'}}

#Sound nicht im besitz
execute as @s[tag=!game,tag=!s5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:wither_skeleton_skull"}]}] run item replace entity @s inventory.5 with minecraft:wither_skeleton_skull{display: {Name: '{"translate":"shop.deso.wither"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1
#Sound im besitz
execute as @s[tag=!game,tag=s5b,tag=!s5] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:wither_skeleton_skull"}]}] run item replace entity @s inventory.5 with minecraft:wither_skeleton_skull{display: {Name: '{"translate":"shop.deso.wither"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=s5,tag=s5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:wither_skeleton_skull"}]}] run item replace entity @s inventory.5 with minecraft:wither_skeleton_skull{Enchantments:[{}],display: {Name: '{"translate":"shop.deso.wither"}'}}

#Sound nicht im besitztext
execute as @s[tag=!game,tag=!s6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:dragon_head"}]}] run item replace entity @s inventory.6 with minecraft:dragon_head{display: {Name: '{"translate":"shop.deso.dragon"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1
#Sound im besitz
execute as @s[tag=!game,tag=s6b,tag=!s6] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:dragon_head"}]}] run item replace entity @s inventory.6 with minecraft:dragon_head{display: {Name: '{"translate":"shop.deso.dragon"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=s6,tag=s6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:dragon_head"}]}] run item replace entity @s inventory.6 with minecraft:dragon_head{Enchantments:[{}],display: {Name: '{"translate":"shop.deso.dragon"}'}}

tag @s add deso
tag @s remove shop
