execute at @s run particle block ice ~ ~1 ~ 0.5 1.0 0.5 1 25 normal
execute at @s run playsound block.glass.break block @a[distance=..16] ~ ~ ~ 0.25 1 0.05
kill @s
