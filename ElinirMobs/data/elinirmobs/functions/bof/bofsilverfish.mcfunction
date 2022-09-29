
execute as @s rotated as @s positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["aim"]}
execute as @s at @s run summon silverfish ~ ~ ~ {CustomNameVisible:1b,Health:3f,Tags:["bofinit","frostfeeder"],CustomName:'{"text":"Frostfeeder","color":"aqua"}',Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0.66},{Name:generic.attack_damage,Base:3}]}
scoreboard players reset @s EM_BoFSnowball
execute at @s run playsound minecraft:entity.bat.hurt master @a[distance=..40] ~ ~ ~ 1 0.5
execute at @s run particle sneeze ~ ~ ~ 0.5 1 1 1 100 normal
execute as @e[type=silverfish,tag=bofinit] at @s run function elinirmobs:bof/boftoss