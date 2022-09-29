execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"block ice",ReapplicationDelay:10,Radius:12f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:45,DurationOnUse:0f}

data merge entity @s {Motion:[0.0,1.25,0.0]}

execute at @s run playsound entity.skeleton_horse.gallop_water hostile @a[distance=..16] ~ ~ ~ 1 0.5 0.5
execute at @s run playsound entity.creeper.primed hostile @a[distance=..16] ~ ~ ~ 1 1 1
execute at @s run playsound entity.firework_rocket.blast_far hostile @a[distance=..16] ~ ~ ~ 1 0.5 0.3
execute at @s run particle cloud ~ ~ ~ 0.5 1 1 1 100 normal
scoreboard players add @s BoF_attackNum 30

schedule function elinirmobs:bof/bofleap2 40t replace