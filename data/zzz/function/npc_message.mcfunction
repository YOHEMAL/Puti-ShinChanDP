execute as @a at @s if score @s talkV matches 1 run scoreboard players operation tmp talkV += @s talkV
execute as @a at @s if score @s talkV matches 1 run scoreboard players set @s talkV 0
# 要対応 NPCの会話を入力
execute if score tmp talkV matches 0 run data modify entity @e[tag=doctor,type=minecraft:text_display,limit=1] text set value '""'
execute if score tmp talkV matches 1 run data modify entity @e[tag=doctor,type=minecraft:text_display,limit=1] text set value '""'
execute if score tmp talkV matches 2 run data modify entity @e[tag=doctor,type=minecraft:text_display,limit=1] text set value '""'
execute if score tmp talkV matches 3 run data modify entity @e[tag=doctor,type=minecraft:text_display,limit=1] text set value '""'
execute if score tmp talkV matches 4 run data modify entity @e[tag=doctor,type=minecraft:text_display,limit=1] text set value '""'
execute if score tmp talkV matches 5 run data modify entity @e[tag=doctor,type=minecraft:text_display,limit=1] text set value '""'
execute if score tmp talkV matches 6 run data modify entity @e[tag=doctor,type=minecraft:text_display,limit=1] text set value '""'

execute if score tmp talkV matches 7.. run scoreboard players set tmp talkV 0