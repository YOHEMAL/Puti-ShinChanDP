execute as @a at @s if score @s talkV matches 1 run scoreboard players operation tmp talkV += @s talkV
execute as @a at @s if score @s talkV matches 1 run scoreboard players set @s talkV 0
# 要対応 NPCの会話を入力
execute if score tmp talkV matches 0 run data modify entity @e[tag=npc,type=minecraft:text_display,limit=1] text set value '""'
execute if score tmp talkV matches 1 run data modify entity @e[tag=npc,type=minecraft:text_display,limit=1] text set value '"ちょっと、みんな…お願い、聞いてくれる？"'
execute if score tmp talkV matches 2 run data modify entity @e[tag=npc,type=minecraft:text_display,limit=1] text set value '"ひろしが晩酌しすぎて、なんだか様子がおかしいの…"'
execute if score tmp talkV matches 3 run data modify entity @e[tag=npc,type=minecraft:text_display,limit=1] text set value '"このままだとご近所に迷惑がかかっちゃうし、私も困ってるの…"'
execute if score tmp talkV matches 4 run data modify entity @e[tag=npc,type=minecraft:text_display,limit=1] text set value '"だから、みんなの力を貸してほしいの"'
execute if score tmp talkV matches 5 run data modify entity @e[tag=npc,type=minecraft:text_display,limit=1] text set value '"ひろしを落ち着かせるには、“臭い靴下”を6個見つけるしかないの"'
execute if score tmp talkV matches 6 run data modify entity @e[tag=npc,type=minecraft:text_display,limit=1] text set value '"きっと家の周り、どこかにあるはずだから、一緒に探してきて！"'
execute if score tmp talkV matches 7 run data modify entity @e[tag=npc,type=minecraft:text_display,limit=1] text set value '"頼んだわよ！"'

execute if score tmp talkV matches 8.. run scoreboard players set tmp talkV 0