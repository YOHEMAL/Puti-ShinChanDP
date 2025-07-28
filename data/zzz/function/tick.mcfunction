# 鬼に攻撃力上昇を付与
effect give @a[team=oni] minecraft:strength infinite 255 true
# BlockEntityのview_rangeを設定
execute as @e[type=block_display] run data merge entity @s {view_range:5.0f}
# TutorialのNPCに話しかけたときのメッセージを表示
function zzz:npc_message

# gimick-4
function zzz:gimick/4/main