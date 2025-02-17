# Beam at the end
execute if score @s stellarity.misc matches 360 run playsound minecraft:entity.warden.sonic_charge block @a[distance=0..] ~ ~ ~ 4 1

execute if score @s stellarity.misc matches 390 run setblock 0 63 0 end_gateway
execute if score @s stellarity.misc matches 390 positioned 0 66 0 run function stellarity:sfx/dragon_respawn_animation/beam/shoot
execute as @e[type=marker,tag=stellarity.dragon_respawn.beam] at @s run function stellarity:sfx/dragon_respawn_animation/beam/loop

# Enchant particles
execute if score @s stellarity.misc matches ..660 run particle enchant 0 63 0 0 0 0 10 7 normal

# Circle
execute rotated ~ ~ run particle end_rod ^ ^0.35 ^9.5 0 0 0 0 1 force
execute rotated ~120 ~ run particle end_rod ^ ^0.35 ^9.5 0 0 0 0 1 force
execute rotated ~240 ~ run particle end_rod ^ ^0.35 ^9.5 0 0 0 0 1 force

execute if score @s stellarity.misc matches 1 run function stellarity:sfx/dragon_respawn_animation/wave
# Secondary circle
execute as @e[type=marker,tag=stellarity.dragon_respawn.marker2,limit=1,sort=nearest] at @s run function stellarity:sfx/dragon_respawn_animation/loop_marker2

tp @s ~ ~ ~ ~2 ~

# Ambient sounds
execute if score @s stellarity.misc matches 1 run playsound minecraft:block.beacon.ambient block @a[distance=0..] ~ ~ ~ 3 0.75
execute if score @s stellarity.misc matches 200 run playsound minecraft:block.beacon.ambient block @a[distance=0..] ~ ~ ~ 3 0.75
execute if score @s stellarity.misc matches 300 run playsound minecraft:block.beacon.ambient block @a[distance=0..] ~ ~ ~ 3 0.75

