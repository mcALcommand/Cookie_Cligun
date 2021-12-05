
# 音
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1.2
    playsound minecraft:entity.player.burp player @a ~ ~ ~ 1.5 2
#再配置
loot replace entity @s weapon.mainhand loot cookie_cligun:item/cookie_cligun

# 煙
    # 腰だめ
        execute unless predicate cookie_cligun:sneak anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5

    # ADS
        execute if predicate cookie_cligun:sneak anchored eyes run particle smoke ^ ^ ^0.7 0 0 0 0.05 2