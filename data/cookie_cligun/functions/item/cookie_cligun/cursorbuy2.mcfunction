playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1.5 1
scoreboard players operation @s Cligun_Cookie -= @s cookie.cursor
scoreboard players add @s buy.cursor 1
scoreboard players set @s cookie.cursor 100
scoreboard players operation @s cookie.cursor *= @s buy.cursor
function cookie_cligun:item/cookie_cligun/cookiemenu