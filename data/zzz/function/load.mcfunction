# コマンドブロックの出力を無効化
gamerule commandBlockOutput false

# コマンド実行時のフィードバックを無効化
gamerule sendCommandFeedback true
# gamerule sendCommandFeedback false

# プレイヤーが死亡したときにインベントリを保持する
gamerule keepInventory true

# 天候の変化を無効化
gamerule doWeatherCycle false

# 昼夜のサイクルを無効化
gamerule doDaylightCycle false

# ブロックを破壊したときにアイテムをドロップしない
gamerule doTileDrops false

# 火が燃え広がるのを無効化
gamerule doFireTick false

# モブの自然生成を無効化
gamerule doMobSpawning false

# ゲームの難易度をイージーに設定
difficulty easy

# 村人話しかけたときのスコアボードを設定
scoreboard objectives remove talkV
scoreboard objectives add talkV minecraft.custom:minecraft.talked_to_villager

# 鬼チーム作成
team remove oni
team add oni "鬼"
team modify oni nametagVisibility never
# 要対応 鬼のプレイヤーを入力
team join oni <playerID>
# 要対応 鬼のスポーンポイントを入力
spawnpoint @a[team=oni] <x> <y> <z>
# 要対応 人間のスポーンポイントを入力
spawnpoint @a[team=!oni] <x> <y> <z>
