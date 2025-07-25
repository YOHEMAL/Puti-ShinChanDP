kill @e[tag=npc,type=!player]

# 要対応 NPCの位置を入力
summon armor_stand 217 65 82 {NoGravity:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["npc"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",count:1,components:{"minecraft:custom_model_data":60}}]}
summon villager 217 65 82 {NoGravity:0b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["npc"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:99999,show_particles:0b,show_icon:0b}],Offers:{}}
execute as @e[tag=npc,type=villager] at @s run summon text_display ~ ~2.2 ~ {billboard:"center",see_through:0b,alignment:"center",Tags:["npc"],text:'""',background:-16777216}
execute as @e[tag=npc,type=villager] at @s run tp @e[tag=npc,type=armor_stand] ~ ~ ~ ~ ~