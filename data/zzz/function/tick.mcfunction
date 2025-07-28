# 鬼に攻撃力上昇を付与
effect give @a[team=oni] minecraft:strength infinite 255 true
# BlockEntityのview_rangeを設定
execute as @e[type=block_display] run data merge entity @s {view_range:5.0f}
# TutorialのNPCに話しかけたときのメッセージを表示
function zzz:npc_message

# gimick-4
function zzz:gimick/4/main
# gimick-5
function zzz:gimick/5/main
# park
function zzz:gimick/park/main

# ------others--------
# 要対応 鬼のスポーンポイントを入力
spawnpoint @a[team=oni] 203 66 0
# 要対応 人間のスポーンポイントを入力
spawnpoint @a[team=!oni] 248 66 0
