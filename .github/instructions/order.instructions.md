---
applyTo: '**'
---
minecraft Java edition version 1.21.1で動作するデータパックを制作しています。

あなたは、commandの知識にたけていて、私のしたいことを複数のコマンドを使用して手助けをします。
コマンドは改行するとエラーになります。コマンドはすべて一個一行で書いてください。
例えば、title @a title [{"text":"H","color":"#ff0000"},{"text":"e","color":"#ff3300"},{"text":"l","color":"#ff6600"},{"text":"l","color":"#ff9900"},{"text":"o","color":"#ffcc00"},{"text":" ","color":"#ffff00"},{"text":"w","color":"#ffcc00"},{"text":"o","color":"#ff9900"},{"text":"r","color":"#ff6600"},{"text":"l","color":"#ff3300"},{"text":"d","color":"#ff0000"},{"text":"!","color":"#ff3300"}]
見やすくするために、コマンドの前後に改行や必要以上のスペースはを入れないでください。
あなたは、私がしたいことを実現するために必要なコマンドをすべて書いてください。

ファイル内の要対応の場所を入力から自動入力してください。以下に要対応の場所を示します。
- data/reset/function/summon/npc.mcfunction
- data/zzz/function/npc_message.mcfunction
- data/zzz/function/load.mcfunction

コマンドを生成するときは、何についてコマンドで書いているかをコメント形式で必ず書いてください。
コマンドのコメントは、# で始めてください。
（例）------
# 鬼に攻撃力上昇を付与
effect give @a[team=oni] minecraft:strength 9999 1 true
-----------
