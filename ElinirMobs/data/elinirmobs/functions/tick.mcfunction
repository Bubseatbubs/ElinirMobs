
# Bub
execute as @e[tag=BubEnemy] unless entity @s[nbt={Motion:[0.0,0.0,0.0]}] run scoreboard players add @s EM_BubTick 1
execute as @e[tag=BubEnemy] run scoreboard players add @s EM_BubAmbient 1
execute as @e[tag=BubEnemy] at @s if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s EM_BubHostile 1
execute as @e[tag=BubEnemy,tag=!BubInit] run function elinirmobs:initalizebub

# Bub Animation
execute as @e[tag=BubEnemy,scores={EM_BubTick=5}] run item replace entity @s armor.head with coal{display:{Name:'{"text":"Bub"}',Lore:['{"text":"It appears that you can now"}','{"text":"tame the bub!"}','{"text":"And... wear it on your head?!","italic":true}']},HideFlags:32,CustomModelData:10001} 1
execute as @e[tag=BubEnemy,scores={EM_BubTick=10}] at @s run playsound entity.polar_bear.step hostile @a[distance=..16] ~ ~ ~ 1 1 0.85
execute as @e[tag=BubEnemy,scores={EM_BubTick=10}] run item replace entity @s armor.head with coal{display:{Name:'{"text":"Bub"}',Lore:['{"text":"It appears that you can now"}','{"text":"tame the bub!"}','{"text":"And... wear it on your head?!","italic":true}']},HideFlags:32,CustomModelData:10002} 1
execute as @e[tag=BubEnemy,scores={EM_BubTick=15}] run item replace entity @s armor.head with coal{display:{Name:'{"text":"Bub"}',Lore:['{"text":"It appears that you can now"}','{"text":"tame the bub!"}','{"text":"And... wear it on your head?!","italic":true}']},HideFlags:32,CustomModelData:10003} 1
execute as @e[tag=BubEnemy,scores={EM_BubTick=20}] run item replace entity @s armor.head with coal{display:{Name:'{"text":"Bub"}',Lore:['{"text":"It appears that you can now"}','{"text":"tame the bub!"}','{"text":"And... wear it on your head?!","italic":true}']},HideFlags:32,CustomModelData:10002} 1
execute as @e[tag=BubEnemy,scores={EM_BubTick=25}] run item replace entity @s armor.head with coal{display:{Name:'{"text":"Bub"}',Lore:['{"text":"It appears that you can now"}','{"text":"tame the bub!"}','{"text":"And... wear it on your head?!","italic":true}']},HideFlags:32,CustomModelData:10001} 1
execute as @e[tag=BubEnemy,scores={EM_BubTick=25}] at @s run playsound entity.polar_bear.step hostile @a[distance=..16] ~ ~ ~ 1 1 0.85
execute as @e[tag=BubEnemy,scores={EM_BubTick=30}] run item replace entity @s armor.head with coal{display:{Name:'{"text":"Bub"}',Lore:['{"text":"It appears that you can now"}','{"text":"tame the bub!"}','{"text":"And... wear it on your head?!","italic":true}']},HideFlags:32,CustomModelData:10000} 1
execute as @e[tag=BubEnemy,scores={EM_BubTick=35..}] run scoreboard players set @s EM_BubTick 0

execute at @e[tag=BubEnemy,scores={EM_BubAmbient=200..}] run playsound entity.polar_bear.ambient hostile @a[distance=..7] ~ ~ ~ 1 0.5 0.3
execute as @e[tag=BubEnemy,scores={EM_BubAmbient=200..}] run scoreboard players set @s EM_BubAmbient 0

execute as @e[tag=BubEnemy,nbt={HurtTime:10s}] run function elinirmobs:bubdamaged
execute as @e[tag=BubEnemy,scores={EM_BubHostile=100..}] at @s facing entity @p eyes run function elinirmobs:bubleap

# Bastard of Frost
execute as @e[tag=BoFEnemy] unless entity @s[nbt={Motion:[0.0,0.0,0.0]}] run scoreboard players add @s EM_BoFTick 1
execute as @e[tag=BoFEnemy] run scoreboard players add @s EM_BoFAmbient 1
execute as @e[tag=BoFEnemy] at @s if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s BoF_attackNum 1
execute as @e[tag=BoFEnemy,tag=!BoFInit] run function elinirmobs:initalizebof

# BOF Animation
execute as @e[tag=BoFEnemy,scores={EM_BoFTick=2}] run item replace entity @s weapon.mainhand with coal{display:{Name:'{"text":"With Its Own Two Hands"}'},HideFlags:32,CustomModelData:30001} 1
execute as @e[tag=BoFEnemy,scores={EM_BoFTick=4}] at @s run playsound entity.wolf.step hostile @a[distance=..16] ~ ~ ~ 1 1 0.85
execute as @e[tag=BoFEnemy,scores={EM_BoFTick=4}] run item replace entity @s weapon.mainhand with coal{display:{Name:'{"text":"With Its Own Two Hands"}'},HideFlags:32,CustomModelData:30002} 1
execute as @e[tag=BoFEnemy,scores={EM_BoFTick=6}] run item replace entity @s weapon.mainhand with coal{display:{Name:'{"text":"With Its Own Two Hands"}'},HideFlags:32,CustomModelData:30003} 1
execute as @e[tag=BoFEnemy,scores={EM_BoFTick=8}] run item replace entity @s weapon.mainhand with coal{display:{Name:'{"text":"With Its Own Two Hands"}'},HideFlags:32,CustomModelData:30002} 1
execute as @e[tag=BoFEnemy,scores={EM_BoFTick=10}] run item replace entity @s weapon.mainhand with coal{display:{Name:'{"text":"With Its Own Two Hands"}'},HideFlags:32,CustomModelData:30001} 1
execute as @e[tag=BoFEnemy,scores={EM_BoFTick=10}] at @s run playsound entity.wolf.step hostile @a[distance=..16] ~ ~ ~ 1 1 0.85
execute as @e[tag=BoFEnemy,scores={EM_BoFTick=12}] run item replace entity @s weapon.mainhand with coal{display:{Name:'{"text":"With Its Own Two Hands"}'},HideFlags:32,CustomModelData:30000} 1
execute as @e[tag=BoFEnemy,scores={EM_BoFTick=12..}] run scoreboard players set @s EM_BoFTick 0

execute at @e[tag=BoFEnemy,scores={EM_BoFAmbient=250..}] run playsound entity.skeleton_horse.death hostile @a[distance=..7] ~ ~ ~ 1 0.5 0.3
execute as @e[tag=BoFEnemy,scores={EM_BoFAmbient=250..}] run scoreboard players set @s EM_BoFAmbient 0

execute as @e[tag=BoFEnemy] store result score @s EM_BoFHealth run data get entity @s Health 1
execute as @e[tag=BoFEnemy,scores={BoF_attackNum=150..,EM_BoFHealth=300..400}] run function elinirmobs:bof/bofattack
execute as @e[tag=BoFEnemy,scores={BoF_attackNum=110..,EM_BoFHealth=200..399}] run function elinirmobs:bof/bofattack
execute as @e[tag=BoFEnemy,scores={BoF_attackNum=85..,EM_BoFHealth=100..299}] run function elinirmobs:bof/bofattack
execute as @e[tag=BoFEnemy,scores={BoF_attackNum=75..,EM_BoFHealth=..99}] run function elinirmobs:bof/bofattack

execute as @e[tag=BoFEnemy,nbt={HurtTime:10s}] run function elinirmobs:bof/bofdamaged

# BOF Song
execute as @e[tag=BoFEnemy] in minecraft:bof at @s run scoreboard players add @a[distance=..100] BoF_songLength 1
execute as @a[scores={BoF_songLength=1}] at @s run playsound minecraft:lumebattlebgm1 record @s ~ ~ ~ 0.65 0.9
execute if entity @e[tag=BoFEnemy] in minecraft:bof run scoreboard players set @a[scores={BoF_songLength=2321..}] BoF_songLength 0
execute if entity @e[tag=BoFEnemy] in minecraft:bof run stopsound @a[scores={BoF_songLength=2320}] * minecraft:lumebattlebgm1
execute unless entity @e[tag=BoFEnemy] in minecraft:bof run execute as @a in minecraft:bof run stopsound @s * minecraft:lumebattlebgm1
execute unless entity @e[tag=BoFEnemy] in minecraft:bof run execute as @a in minecraft:bof run scoreboard players set @s BoF_songLength 0
execute in minecraft:overworld run scoreboard players set @a[x=0] BoF_songLength 0

execute as @e[tag=bof] at @s run effect give @p[distance=..0.9] instant_damage 1 0 true
execute as @e[tag=bof] at @s run effect give @p[distance=..0.95] slowness 1 1 true

execute as @e[tag=frostfeeder] at @s run execute if entity @e[tag=bof,limit=1,distance=..1.25,sort=nearest] at @s run function elinirmobs:bof/boffrostfeed
execute if score .bofcheck BoF_isAlive matches 1 unless entity @e[tag=BoFEnemy] run function elinirmobs:bof/bofdeath

