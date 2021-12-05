# storage取得
 data modify storage al.slot Item.Mainhand set from entity @s SelectedItem
 data modify storage al.slot Item.Offhand set from entity @s Inventory[{Slot:-106b}]

#クッキークリッガン
 #メインハンド
  execute if data storage al.slot Item.Mainhand.tag.AlData{ItemID:Cookie_Cligun} run function cookie_cligun:item/cookie_cligun/main

 #オフハンド
  execute if entity @s[tag=cookie_have] unless data storage al.slot Item.Mainhand.tag.AlData{ItemID:Cookie_Cligun} run function cookie_cligun:item/cookie_cligun/cookie_trigger_off
  execute if data storage al.slot Item.Offhand.tag.AlData{ItemID:Cookie_Cligun} run function cookie_cligun:item/cookie_cligun/cookie_off

# storage削除
  data remove storage al.slot Item