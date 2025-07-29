# 最終ギミック用スコアボード初期化
scoreboard objectives add last_diamond_check dummy "ダイヤモンド所持確認"
scoreboard objectives add last_crystal_check dummy "プリズマリン所持確認"
scoreboard objectives add last_effect_timer dummy "エフェクト時間計測"
scoreboard objectives add last_particle_timer dummy "パーティクル時間計測"
scoreboard objectives add last_activated dummy "ギミック発動状態"

# 初期値設定
scoreboard players set @a last_diamond_check 0
scoreboard players set @a last_crystal_check 0
scoreboard players set @a last_effect_timer 0
scoreboard players set @a last_particle_timer 0
scoreboard players set @a last_activated 0
