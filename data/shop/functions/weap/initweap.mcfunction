clear @s
item replace entity @s inventory.7 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.8 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
item replace entity @s inventory.9 with minecraft:gray_stained_glass_pane{display: {Name: '{"text":""}'}}
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

#waffe im besitz
execute as @s[tag=!game,tag=!wlv1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:wooden_hoe"}]}] run item replace entity @s inventory.1 with minecraft:wooden_hoe{display: {Name: '{"translate":"shop.weap.wlv1"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,5"}, {"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=wlv1] unless entity @s[nbt={Inventory:[{Slot:10b, id:"minecraft:wooden_hoe"}]}] run item replace entity @s inventory.1 with minecraft:wooden_hoe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.wlv1"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,5"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}

#waffe nicht im besitz
execute as @s[tag=!game,tag=!wlv2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:stone_hoe"}]}] run item replace entity @s inventory.2 with minecraft:stone_hoe{display: {Name: '{"translate":"shop.weap.wlv2"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,4"},{"translate":"shop.weap.reloadtime.sek"}]', '[{"translate":"shop.need"}]', '[{"translate":"shop.weap.wlv1"}]', '[{"text":"1500 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 5"}]']}}
#waffe im besitz
execute as @s[tag=!game,tag=wlv2b,tag=!wlv2] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:stone_hoe"}]}] run item replace entity @s inventory.2 with minecraft:stone_hoe{display: {Name: '{"translate":"shop.weap.wlv2"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,4"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=wlv2,tag=wlv2b] unless entity @s[nbt={Inventory:[{Slot:11b, id:"minecraft:stone_hoe"}]}] run item replace entity @s inventory.2 with minecraft:stone_hoe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.wlv2"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,4"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}

#waffe nicht im besitz
execute as @s[tag=!game,tag=!wlv3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:iron_hoe"}]}] run item replace entity @s inventory.3 with minecraft:iron_hoe{display: {Name: '{"translate":"shop.weap.wlv3"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,3"},{"translate":"shop.weap.reloadtime.sek"}]', '[{"translate":"shop.need"}]', '[{"translate":"shop.weap.wlv2"}]', '[{"text":"2500 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 10"}]']}}
#waffe im besitz
execute as @s[tag=!game,tag=wlv3b,tag=!wlv3] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:iron_hoe"}]}] run item replace entity @s inventory.3 with minecraft:iron_hoe{display: {Name: '{"translate":"shop.weap.wlv3"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,3"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=wlv3,tag=wlv3b] unless entity @s[nbt={Inventory:[{Slot:12b, id:"minecraft:iron_hoe"}]}] run item replace entity @s inventory.3 with minecraft:iron_hoe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.wlv3"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,3"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}

#waffe nicht im besitz
execute as @s[tag=!game,tag=!wlv4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:golden_hoe"}]}] run item replace entity @s inventory.4 with minecraft:golden_hoe{display: {Name: '{"translate":"shop.weap.wlv4"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,2"},{"translate":"shop.weap.reloadtime.sek"}]', '[{"translate":"shop.need"}]', '[{"translate":"shop.weap.wlv3"}]', '[{"text":"5000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 15"}]']}}
#waffe im besitz
execute as @s[tag=!game,tag=wlv4b,tag=!wlv4] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:golden_hoe"}]}] run item replace entity @s inventory.4 with minecraft:golden_hoe{display: {Name: '{"translate":"shop.weap.wlv4"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,2"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=wlv4,tag=wlv4b] unless entity @s[nbt={Inventory:[{Slot:13b, id:"minecraft:golden_hoe"}]}] run item replace entity @s inventory.4 with minecraft:golden_hoe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.wlv4"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,2"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}

#waffe nicht im besitz
execute as @s[tag=!game,tag=!wlv5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:diamond_hoe"}]}] run item replace entity @s inventory.5 with minecraft:diamond_hoe{display: {Name: '{"translate":"shop.weap.wlv5"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,1"},{"translate":"shop.weap.reloadtime.sek"}]', '[{"translate":"shop.need"}]', '[{"translate":"shop.weap.wlv4"}]', '[{"text":"10000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 20"}]']}}
#waffe im besitz
execute as @s[tag=!game,tag=wlv5b,tag=!wlv5] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:diamond_hoe"}]}] run item replace entity @s inventory.5 with minecraft:diamond_hoe{display: {Name: '{"translate":"shop.weap.wlv5"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,1"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=wlv5,tag=wlv5b] unless entity @s[nbt={Inventory:[{Slot:14b, id:"minecraft:diamond_hoe"}]}] run item replace entity @s inventory.5 with minecraft:diamond_hoe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.wlv5"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,1"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}

#waffe nicht im besitz
execute as @s[tag=!game,tag=!wlv6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:netherite_hoe"}]}] run item replace entity @s inventory.6 with minecraft:netherite_hoe{display: {Name: '{"translate":"shop.weap.wlv6"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,0"},{"translate":"shop.weap.reloadtime.sek"}]', '[{"translate":"shop.need"}]', '[{"translate":"shop.weap.wlv5"}]', '[{"text":"15000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 25"}]']}}
#waffe im besitz
execute as @s[tag=!game,tag=wlv6b,tag=!wlv6] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:netherite_hoe"}]}] run item replace entity @s inventory.6 with minecraft:netherite_hoe{display: {Name: '{"translate":"shop.weap.wlv6"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,0"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=wlv6,tag=wlv6b] unless entity @s[nbt={Inventory:[{Slot:15b, id:"minecraft:netherite_hoe"}]}] run item replace entity @s inventory.6 with minecraft:netherite_hoe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.wlv6"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"1,0"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}


#waffe nicht Owned
execute as @s[tag=!game,tag=!slv1b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:wooden_pickaxe"}]}] run item replace entity @s inventory.10 with minecraft:wooden_pickaxe{display: {Name: '{"translate":"shop.weap.slv1"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"5,5"},{"translate":"shop.weap.reloadtime.sek"}]', '[{"translate":"shop.need"}]', '[{"text":"25000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 15"}]']}}
#waffe Owned
execute as @s[tag=!game,tag=slv1b,tag=!slv1] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:wooden_pickaxe"}]}] run item replace entity @s inventory.10 with minecraft:wooden_pickaxe{display: {Name: '{"translate":"shop.weap.slv1"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"5,5"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=slv1,tag=slv1b] unless entity @s[nbt={Inventory:[{Slot:19b, id:"minecraft:wooden_pickaxe"}]}] run item replace entity @s inventory.10 with minecraft:wooden_pickaxe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.slv1"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"5,5"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}

#waffe nicht Im Besitz
execute as @s[tag=!game,tag=!slv2b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:stone_pickaxe"}]}] run item replace entity @s inventory.11 with minecraft:stone_pickaxe{display: {Name: '{"translate":"shop.weap.slv2"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"5,0"},{"translate":"shop.weap.reloadtime.sek"}]', '[{"translate":"shop.need"}]', '[{"translate":"shop.weap.slv1"}]', '[{"text":"30000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 20"}]']}}
#waffe Im Besitz
execute as @s[tag=!game,tag=slv2b,tag=!slv2] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:stone_pickaxe"}]}] run item replace entity @s inventory.11 with minecraft:stone_pickaxe{display: {Name: '{"translate":"shop.weap.slv2"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"5,0"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=slv2,tag=slv2b] unless entity @s[nbt={Inventory:[{Slot:20b, id:"minecraft:stone_pickaxe"}]}] run item replace entity @s inventory.11 with minecraft:stone_pickaxe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.slv2"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"5,0"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}

#waffe nicht Im Besitz
execute as @s[tag=!game,tag=!slv3b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:iron_pickaxe"}]}] run item replace entity @s inventory.12 with minecraft:iron_pickaxe{display: {Name: '{"translate":"shop.weap.slv3"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"4,5"},{"translate":"shop.weap.reloadtime.sek"}]', '[{"translate":"shop.need"}]', '[{"translate":"shop.weap.slv2"}]', '[{"text":"35000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 26"}]']}}
#waffe Im Besitz
execute as @s[tag=!game,tag=slv3b,tag=!slv3] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:iron_pickaxe"}]}] run item replace entity @s inventory.12 with minecraft:iron_pickaxe{display: {Name: '{"translate":"shop.weap.slv3"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"4,5"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=slv3,tag=slv3b] unless entity @s[nbt={Inventory:[{Slot:21b, id:"minecraft:iron_pickaxe"}]}] run item replace entity @s inventory.12 with minecraft:iron_pickaxe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.slv3"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"4,5"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}

#waffe nicht Im Besitz
execute as @s[tag=!game,tag=!slv4b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:golden_pickaxe"}]}] run item replace entity @s inventory.13 with minecraft:golden_pickaxe{display: {Name: '{"translate":"shop.weap.slv4"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"4,0"},{"translate":"shop.weap.reloadtime.sek"}]', '[{"translate":"shop.need"}]', '[{"translate":"shop.weap.slv3"}]', '[{"text":"40000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 33"}]']}}
#waffe Im Besitz
execute as @s[tag=!game,tag=slv4b,tag=!slv4] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:golden_pickaxe"}]}] run item replace entity @s inventory.13 with minecraft:golden_pickaxe{display: {Name: '{"translate":"shop.weap.slv4"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"4,0"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=slv4,tag=slv4b] unless entity @s[nbt={Inventory:[{Slot:22b, id:"minecraft:golden_pickaxe"}]}] run item replace entity @s inventory.13 with minecraft:golden_pickaxe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.slv4"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"4,0"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}

#waffe nicht Im Besitz
execute as @s[tag=!game,tag=!slv5b] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:diamond_pickaxe"}]}] run item replace entity @s inventory.14 with minecraft:diamond_pickaxe{display: {Name: '{"translate":"shop.weap.slv5"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"3,5"},{"translate":"shop.weap.reloadtime.sek"}]', '[{"translate":"shop.need"}]', '[{"translate":"shop.weap.slv4"}]', '[{"text":"45000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 41"}]']}}
#waffe Im Besitz
execute as @s[tag=!game,tag=slv5b,tag=!slv5] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:diamond_pickaxe"}]}] run item replace entity @s inventory.14 with minecraft:diamond_pickaxe{display: {Name: '{"translate":"shop.weap.slv5"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"3,5"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=slv5,tag=slv5b] unless entity @s[nbt={Inventory:[{Slot:23b, id:"minecraft:diamond_pickaxe"}]}] run item replace entity @s inventory.14 with minecraft:diamond_pickaxe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.slv5"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"3,5"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}

#waffe nicht Im Besitz
execute as @s[tag=!game,tag=!slv6b,tag=!slv6] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:netherite_pickaxe"}]}] run item replace entity @s inventory.15 with minecraft:netherite_pickaxe{display: {Name: '{"translate":"shop.weap.slv6"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"3,0"},{"translate":"shop.weap.reloadtime.sek"}]', '[{"translate":"shop.need"}]', '[{"translate":"shop.weap.slv5"}]', '[{"text":"50000 "},{"translate":"main.coins"}]', '[{"translate":"shop.level"},{"text":" 50"}]']}}
#waffe Im Besitz
execute as @s[tag=!game,tag=slv6b,tag=!slv6] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:netherite_pickaxe"}]}] run item replace entity @s inventory.15 with minecraft:netherite_pickaxe{display: {Name: '{"translate":"shop.weap.slv6"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"3,0"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}
execute as @s[tag=!game,tag=slv6,tag=slv6b] unless entity @s[nbt={Inventory:[{Slot:24b, id:"minecraft:netherite_pickaxe"}]}] run item replace entity @s inventory.15 with minecraft:netherite_pickaxe{Enchantments:[{}],display: {Name: '{"translate":"shop.weap.slv6"}', Lore: ['[{"translate":"shop.weap.reloadtime.main"},{"text":"3,0"},{"translate":"shop.weap.reloadtime.sek"}]', '{"translate":"shop.owned"}']}}

tag @s remove shop
tag @s add weap
