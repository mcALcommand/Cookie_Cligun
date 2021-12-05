#オフハンドに入れると戻ってくる
    data remove storage al.slot Item
    data modify storage al.slot Item.Mainhand merge from entity @s SelectedItem
    data modify storage al.slot Item.Offhand merge from entity @s Inventory[{Slot:-106b}]
    data modify storage al.slot Item.Offhand merge value {Slot:0b}
    data modify block 100000 0 100000 Items set value []
    data modify block 100000 0 100000 Items append from storage al.slot Item.Offhand
    loot replace entity @s weapon.mainhand 1 mine 100000 0 100000 debug_stick
    item replace entity @s weapon.offhand with air
    data modify block 100000 0 100000 Items append from storage al.slot Item.Mainhand
    execute if data storage al.slot Item.Mainhand run loot replace entity @s weapon.offhand 1 mine 100000 0 100000 debug_stick
    data modify storage al.slot Item.Mainhand set from entity @s SelectedItem 
    data modify storage al.slot Item.Offhand set from entity @s Inventory[{Slot:-106b}]

#ゲームルール
 function cookie_cligun:item/cookie_cligun/cookie_trigger_on

#置き換え
loot replace entity @s weapon.mainhand loot cookie_cligun:item/cookie_cligun

#クッキーを作成
execute if score @s Cligun_Cookie2 matches 1.. run function cookie_cligun:item/cookie_cligun/cookie_click

#スコア表示
title @s actionbar [{"text":"｜ ","color":"gold","italic":false},{"text":"\uE002:","color":"white","italic":false},{"score":{"name":"@s","objective":"Cligun_Cookie"},"color":"yellow","italic":false},{"text":" ｜","color":"gold","italic":false}]

#クッキーメニュー
function cookie_cligun:item/cookie_cligun/cookiemenu
