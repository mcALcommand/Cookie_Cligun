#Hold
tag @s add Cligun.Hold

#ゲームルール
 function cookie_cligun:item/cookie_cligun/cookie_trigger_on

#発砲

 execute if score @s Cligun_Shot matches 1 if score @s Cligun_Cookie matches 3.. if data storage al.slot Item.Mainhand.tag.AlData run function cookie_cligun:item/cookie_cligun/shot

 execute if score @s Cligun_Shot matches 1 if score @s Cligun_Cookie matches ..2 if data storage al.slot Item.Mainhand.tag.AlData run function cookie_cligun:item/cookie_cligun/miss_shot

#クッキーを作成
execute if score @s Cligun_Cookie2 matches 1.. run function cookie_cligun:item/cookie_cligun/cookie_click
execute unless score @s craft.cursor matches 1.. run scoreboard players set @s craft.cursor 1

#カーソル購入
execute if score @s buy.trigger matches 1.. run function cookie_cligun:item/cookie_cligun/cursorbuy
execute as @a unless score @s cookie.cursor matches 0.. run scoreboard players set @s cookie.cursor 50

#カーソルクッキー
execute if score @s cookie.time matches 20.. run scoreboard players operation @s Cligun_Cookie += @s buy.cursor

#ADS
  execute if entity @s[tag=!Cligun.ADSStart] if predicate cookie_cligun:sneak run function cookie_cligun:item/cookie_cligun/ads_sound
  execute unless predicate cookie_cligun:sneak run tag @s remove Cligun.ADSStart

#スニーク中
execute if predicate cookie_cligun:sneak run function cookie_cligun:item/cookie_cligun/ads

#スニーク状況
execute unless predicate cookie_cligun:sneak run tag @s add Cligun.NowNormal
execute unless predicate cookie_cligun:sneak run tag @s remove Cligun.NowADS

#ADSReplace
function cookie_cligun:replaceitem

#スコア表示
title @s actionbar [{"text":"｜ ","color":"gold","italic":false},{"text":"\uE002:","color":"white","italic":false},{"score":{"name":"@s","objective":"Cligun_Cookie"},"color":"yellow","italic":false},{"text":" ｜","color":"gold","italic":false}]
scoreboard players add @s cookie.time 1
execute if score @s cookie.time matches 21.. run scoreboard players reset @s cookie.time

#リセット
scoreboard players reset @a[scores={Cligun_Shot=0..}] Cligun_Shot