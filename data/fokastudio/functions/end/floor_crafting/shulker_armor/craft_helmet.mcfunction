kill @e[tag=foka.altar_of_the_accursed.shulker_shells,distance=..1,limit=1]
kill @e[tag=foka.altar_of_the_accursed.netherite_helmet,distance=..1,limit=1]

loot spawn ~ ~ ~ loot fokastudio:end/items/armors/shulker_armor/helmet

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal
function fokastudio:end/floor_crafting/particles_base
