function stellarity:items/main
function stellarity:mechanics/main
function stellarity:mobs/main
function stellarity:sfx/main

execute as @e[type=marker,tag=stellarity.marker] at @s run function stellarity:loops/marker_loop
execute as @a at @s run function stellarity:loops/player_loop

# Helpful stuff :D
function stellarity:utils/main

# Some Minecraft change causes default Ender Dragon to spawn
# no matter what in 1.19, and this is ruining the whole system
# It DOES NOT come with the tags though! Nor the special marker!
# So I can just butcher the dragon in the most painless way possible!
execute unless score #stellarity.vanilla_dragon_butcher.setup stellarity.misc matches 1 in minecraft:the_end run function stellarity:mobs/dragon/butcher/setup
execute if entity @e[type=minecraft:ender_dragon,tag=!fe.boss,tag=!fe.ender_dragon,tag=!fe.init,tag=!fe.mob,predicate=stellarity:locations/in_dragons_den] run schedule function stellarity:mobs/dragon/butcher/scheduled 1t append

# Moved from far_end:structures/check
execute as @e[type=minecraft:end_crystal,predicate=stellarity:utils/exit_portal_crystal] at @s run function far_end:structures/replace/exit_portal
