function zzz:init/gamerule
function zzz:init/scoreboard
function zzz:init/team

function reset:summon/npc

# ------others--------
# 要対応 鬼のスポーンポイントを入力
spawnpoint @a[team=oni] 203 66 0
# 要対応 人間のスポーンポイントを入力
spawnpoint @a[team=!oni] 248 66 0

#gimick
function zzz:gimick/4/init
function zzz:gimick/5/init
function zzz:gimick/park/init

# chest
function reset:chest


# Send a Message
tellraw @a [{"text": "[System] 全ての設定をリセットしました","color": "gray"}]