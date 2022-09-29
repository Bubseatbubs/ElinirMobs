#Particles Generated with: Cloud Wolf's Particle Grapher
scoreboard objectives add cw_particleplot dummy
function elinirmobs:anim/l1/l1_0
scoreboard players add @s cw_particleplot 1
execute if score @s cw_particleplot matches 20.. in minecraft:bof run playsound minecraft:entity.evoker.cast_spell neutral @a[x=0] 0 0 0 1 1
execute if score @s cw_particleplot matches 20.. in minecraft:bof run execute as @a[x=0] at @s run playsound minecraft:block.beacon.ambient neutral @s ~ ~ ~ 1 1
execute if score @s cw_particleplot matches 20.. run scoreboard players set @s cw_particleplot 0