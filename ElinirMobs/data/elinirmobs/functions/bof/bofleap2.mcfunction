execute at @e[tag=BoFEnemy] as @e[tag=bof,distance=..11] at @s run data merge entity @s {Motion:[0.0,0.45,0.0]}
execute as @e[tag=BoFEnemy] at @s run playsound entity.iron_golem.death master @a[distance=..60] ~ ~ ~ 1 2 1
execute as @e[tag=BoFEnemy] at @s run playsound block.anvil.fall master @a[distance=..60] ~ ~ ~ 1 2 1
execute at @e[tag=BoFEnemy] as @e[tag=bof,distance=..11] at @s run particle poof ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal
execute at @e[tag=BoFEnemy] as @e[tag=bof,distance=..11] at @s run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1}
execute at @e[tag=BoFEnemy] as @a[distance=..10] run effect give @s instant_damage 1 0 true
execute at @e[tag=BoFEnemy] as @e[tag=frostfeeder,distance=..11] run effect give @s instant_damage 1 0 true