clear @s
item replace entity @s inventory.7 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
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
#effekt im besitz
execute as @s[tag=!game,tag=!ar1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:barrier"}]}] run item replace entity @s inventory.1 with minecraft:barrier{display: {Name: '{"translate":"shop.faeh.barrier"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=ar1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:barrier"}]}] run item replace entity @s inventory.1 with minecraft:barrier{Enchantments:[{}],display: {Name: '{"translate":"shop.faeh.barrier"}'}}
#effekt nicht im besitz
execute as @s[tag=!game,tag=!ar2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:netherite_block"}]}] run item replace entity @s inventory.2 with minecraft:netherite_block{display: {Name: '{"translate":"shop.faeh.netherite"}', Lore: ['[{"translate":"shop.cost"},{"text":" 75000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 40"}]']}} 1
#effekt im besitz
execute as @s[tag=!game,tag=ar2b,tag=!ar2] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:netherite_block"}]}] run item replace entity @s inventory.2 with minecraft:netherite_block{display: {Name: '{"translate":"shop.faeh.netherite"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=ar2,tag=ar2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:netherite_block"}]}] run item replace entity @s inventory.2 with minecraft:netherite_block{Enchantments:[{}],display: {Name: '{"translate":"shop.faeh.netherite"}'}}


execute as @s[tag=!game,tag=!ar3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run item replace entity @s inventory.3 with minecraft:ender_pearl{display: {Name: '{"translate":"shop.faeh.ender"}', Lore: ['[{"translate":"shop.cost"},{"text":" 20000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 15"}]']}} 1
#effekt im besitz
execute as @s[tag=!game,tag=ar3b,tag=!ar3] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run item replace entity @s inventory.3 with minecraft:ender_pearl{display: {Name: '{"translate":"shop.faeh.ender"}', Lore: ['{"translate":"shop.owned"}']}} 1
execute as @s[tag=!game,tag=ar3,tag=ar3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:ender_pearl"}]}] run item replace entity @s inventory.3 with minecraft:ender_pearl{Enchantments:[{}],display: {Name: '{"translate":"shop.faeh.ender"}'}}

#effekt nicht im besitz wlv
execute as @s[tag=!slv1,tag=!slv2,tag=!slv3,tag=!slv4,tag=!slv5,tag=!slv6,tag=!game,tag=!ar4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run item replace entity @s inventory.4 with gunpowder{display:{Name:'{"translate":"shop.faeh.gun1"}',Lore: ['[{"translate":"shop.cost"},{"text":" 100000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 45"}]']}} 1
#effekt nicht im besitz slv
execute as @s[tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7,tag=!game,tag=!ar4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run item replace entity @s inventory.4 with gunpowder{display:{Name:'{"translate":"shop.faeh.gun2"}',Lore: ['[{"translate":"shop.cost"},{"text":" 100000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 45"}]']}} 1
#effekt im besitz wlv
execute as @s[tag=!slv1,tag=!slv2,tag=!slv3,tag=!slv4,tag=!slv5,tag=!slv6,tag=!game,tag=ar4b,tag=!ar7,tag=!ar4] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run item replace entity @s inventory.4 with gunpowder{display:{Name:'{"translate":"shop.faeh.gun1"}',Lore: ['{"translate":"shop.owned"}']}} 1
#effekt im besitz slv
execute as @s[tag=!wlv1,tag=!wlv2,tag=!wlv3,tag=!wlv4,tag=!wlv5,tag=!wlv6,tag=!wlv7,tag=!game,tag=ar4b,tag=!ar7,tag=!ar4] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run item replace entity @s inventory.4 with gunpowder{display:{Name:'{"translate":"shop.faeh.gun2"}',Lore: ['{"translate":"shop.owned"}']}} 1

execute as @s[tag=!game,tag=ar4,tag=ar4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run item replace entity @s inventory.4 with minecraft:gunpowder{Enchantments:[{}],display: {Name: '{"translate":"shop.faeh.gun1"}'}}
execute as @s[tag=!game,tag=ar7,tag=ar4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:gunpowder"}]}] run item replace entity @s inventory.4 with minecraft:gunpowder{Enchantments:[{}],display: {Name: '{"translate":"shop.faeh.gun2"}'}}

execute as @s[tag=!game,tag=!ar5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:netherite_boots"}]}] run item replace entity @s inventory.5 with netherite_boots{display:{Name:'{"translate":"shop.faeh.boots"}',Lore: ['[{"translate":"shop.cost"},{"text":" 10000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 5"}]']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:1,Operation:0,UUID:[I;37649807,1474183494,-1826164626,334535938],Slot:"feet"}]}
#effekt im besitz
execute as @s[tag=!game,tag=ar5b,tag=!ar5] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:netherite_boots"}]}] run item replace entity @s inventory.5 with netherite_boots{display:{Name:'{"translate":"shop.faeh.boots"}',Lore: ['{"translate":"shop.owned"}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:1,Operation:0,UUID:[I;37649807,1474183494,-1826164626,334535938],Slot:"feet"}]}

execute as @s[tag=!game,tag=ar5,tag=ar5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:netherite_boots"}]}] run item replace entity @s inventory.5 with netherite_boots{Enchantments:[{}],display:{Name:'{"translate":"shop.faeh.boots"}'},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:1,Operation:0,UUID:[I;-1129824517,-1890040017,-1934453213,980850261],Slot:"feet"}]}

#effekt nicht im besitz
execute as @s[tag=!game,tag=!ar6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:potion"}]}] run item replace entity @s inventory.6 with potion{display:{Name:'{"translate":"shop.faeh.potion"}',Lore: ['[{"translate":"shop.cost"},{"text":" 50000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 25"}]']},Potion:"minecraft:invisibility"} 1
#effekt im besitz
execute as @s[tag=!game,tag=ar6b,tag=!ar6] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:potion"}]}] run item replace entity @s inventory.6 with potion{display:{Name:'{"translate":"shop.faeh.potion"}',Lore: ['{"translate":"shop.owned"}']},Potion:"minecraft:invisibility"} 1
execute as @s[tag=!game,tag=ar6,tag=ar6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:potion"}]}] run item replace entity @s inventory.6 with potion{Enchantments:[{}],display:{Name:'{"translate":"shop.faeh.potion"}'},Potion:"minecraft:invisibility"}

#persönliche spezialeffekte (keine zusätzlichen sprachen)
execute as @s[tag=!game,tag=mn1] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:tnt"}]}] run item replace entity @s inventory.8 with minecraft:tnt{Enchantments:[{}],display: {Name: '{"translate":"shop.faeh.mine"}'}}
execute as @s[tag=!game,tag=br1] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:brown_dye"}]}] run item replace entity @s inventory.8 with minecraft:brown_dye{Enchantments:[{}],display: {Name: '{"text":"Brownie-Style"}'}}
execute as @s[tag=!game,tag=!br1,tag=!mn1] unless entity @s[nbt={Inventory:[{Slot:17b, id:"minecraft:barrier"}]}] run item replace entity @s inventory.8 with minecraft:barrier{display: {Name: '{"translate":"shop.faeh.barrier.special"}'}}

tag @s remove shop
tag @s add faeh