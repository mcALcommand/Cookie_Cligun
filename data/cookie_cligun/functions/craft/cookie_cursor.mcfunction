#サウンド
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1.5 2

#アイテムを召喚
scoreboard players add @s craft.cursor 1

#カーソル作成メッセージ
tellraw @s [{"text":"※カーソルを作成しました。","italic":false},{"text":"[1クリックで","italic":false},{"score":{"name":"@s","objective":"craft.cursor"},"italic":false},{"text":"枚作成。]"}]

#レシピ没収
recipe take @s cookie_cligun:cookie_cursor

#チェストを消す
 clear @s chest 1

#進捗削除
 advancement revoke @s only cookie_cligun:craft/cookie_cursor