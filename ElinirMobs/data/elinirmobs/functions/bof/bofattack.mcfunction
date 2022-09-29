execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["bofattack","bof1"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["bofattack","bof2"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["bofattack","bof3"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["bofattack","bof4"]}
scoreboard players set @e[tag=bof1] BoF_attackNum 1
scoreboard players set @e[tag=bof2] BoF_attackNum 2
scoreboard players set @e[tag=bof3] BoF_attackNum 3
scoreboard players set @e[tag=bof4] BoF_attackNum 4
scoreboard players operation @s BoF_attackNum = @e[tag=bofattack,limit=1,sort=random] BoF_attackNum

execute as @s[scores={BoF_attackNum=1}] at @s run function elinirmobs:bof/bofsnowball

execute as @s[scores={BoF_attackNum=2}] at @s run function elinirmobs:bof/bofleap

execute as @s[scores={BoF_attackNum=3}] at @s run function elinirmobs:bof/bofsilverfish

execute as @s[scores={BoF_attackNum=4}] at @s run function elinirmobs:bof/bofdash