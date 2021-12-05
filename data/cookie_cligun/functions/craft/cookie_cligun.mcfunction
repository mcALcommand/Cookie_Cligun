#アイテムを召喚
execute at @s run loot spawn ~ ~ ~ loot cookie_cligun:item/cookie_cligun
data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0

#レシピ没収
recipe take @s cookie_cligun:cookie_cligun

#チェストを消す
 clear @s chest 1

#進捗削除
 advancement revoke @s only cookie_cligun:craft/cookie_cligun