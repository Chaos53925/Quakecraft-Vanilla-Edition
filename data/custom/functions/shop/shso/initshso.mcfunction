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


execute as @s[tag=!game,tag=!r1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:bone_meal"}]}] run item replace entity @s inventory.1 with minecraft:bone_meal{display: {Name: '{"translate":"shop.shso.bone"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=r1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:bone_meal"}]}] run item replace entity @s inventory.1 with minecraft:bone_meal{Enchantments:[{}],display: {Name: '{"translate":"shop.shso.bone"}'}}


execute as @s[tag=!game,tag=!r2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:bow"}]}] run item replace entity @s inventory.2 with minecraft:bow{display: {Name: '{"translate":"shop.shso.bow"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1

execute as @s[tag=!game,tag=r2b,tag=!r2] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:bow"}]}] run item replace entity @s inventory.2 with minecraft:bow{display: {Name: '{"translate":"shop.shso.bow"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=r2,tag=r2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:bow"}]}] run item replace entity @s inventory.2 with minecraft:bow{Enchantments:[{}],display: {Name: '{"translate":"shop.shso.bow"}'}}


execute as @s[tag=!game,tag=!r3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:blaze_powder"}]}] run item replace entity @s inventory.3 with minecraft:blaze_powder{display: {Name: '{"translate":"shop.shso.blaze"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1

execute as @s[tag=!game,tag=r3b,tag=!r3] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:blaze_powder"}]}] run item replace entity @s inventory.3 with minecraft:blaze_powder{display: {Name: '{"translate":"shop.shso.blaze"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=r3,tag=r3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:blaze_powder"}]}] run item replace entity @s inventory.3 with minecraft:blaze_powder{Enchantments:[{}],display: {Name: '{"translate":"shop.shso.blaze"}'}}


execute as @s[tag=!game,tag=!r4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:firework_star"}]}] run item replace entity @s inventory.4 with minecraft:firework_star{display: {Name: '{"translate":"shop.shso.firework"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1

execute as @s[tag=!game,tag=r4b,tag=!r4] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:firework_star"}]}] run item replace entity @s inventory.4 with minecraft:firework_star{display: {Name: '{"translate":"shop.shso.firework"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=r4,tag=r4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:firework_star"}]}] run item replace entity @s inventory.4 with minecraft:firework_star{Enchantments:[{}],display: {Name: '{"translate":"shop.shso.firework"}'}}


execute as @s[tag=!game,tag=!r5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run item replace entity @s inventory.5 with minecraft:tnt{display: {Name: '{"translate":"shop.shso.tnt"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1

execute as @s[tag=!game,tag=r5b,tag=!r5] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run item replace entity @s inventory.5 with minecraft:tnt{display: {Name: '{"translate":"shop.shso.tnt"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=r5,tag=r5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:tnt"}]}] run item replace entity @s inventory.5 with minecraft:tnt{Enchantments:[{}],display: {Name: '{"translate":"shop.shso.tnt"}'}}


execute as @s[tag=!game,tag=!r6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:magma_cream"}]}] run item replace entity @s inventory.6 with minecraft:magma_cream{display: {Name: '{"translate":"shop.shso.magma"}', Lore: ['[{"translate":"shop.cost"},{"text":" 5000 "},{"translate":"main.coins"}]']}} 1

execute as @s[tag=!game,tag=r6b,tag=!r6] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:magma_cream"}]}] run item replace entity @s inventory.6 with minecraft:magma_cream{display: {Name: '{"translate":"shop.shso.magma"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=r6,tag=r6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:magma_cream"}]}] run item replace entity @s inventory.6 with minecraft:magma_cream{Enchantments:[{}],display: {Name: '{"translate":"shop.shso.magma"}'}}

tag @s add shso
tag @s remove shop