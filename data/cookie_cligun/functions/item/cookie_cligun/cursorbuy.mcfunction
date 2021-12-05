#カーソル購入処理
execute if score @s Cligun_Cookie < @s cookie.cursor run function cookie_cligun:item/cookie_cligun/cursorbuymiss
execute if score @s Cligun_Cookie >= @s cookie.cursor run function cookie_cligun:item/cookie_cligun/cursorbuy2
scoreboard players reset @s buy.trigger