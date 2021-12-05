#スコア作成
scoreboard objectives add Cligun_Shot minecraft.used:minecraft.crossbow
scoreboard objectives add Cligun_Delay dummy
scoreboard objectives add craft.cursor dummy
scoreboard objectives add cookie.cursor dummy
scoreboard objectives add buy.cursor dummy
scoreboard objectives add Cligun.Range dummy
scoreboard objectives add Cligun_Cookie dummy
scoreboard objectives add Cligun_Cookie2 trigger
scoreboard objectives add Cligun_Cookie3 dummy
scoreboard objectives add buy.trigger trigger
scoreboard objectives add cookie.time dummy

#Player Entity ID
scoreboard objectives add Al_Pl.ID dummy
scoreboard objectives add Al_En.ID dummy



#チャンク読み込み,オフハンド用
forceload add 100000 100000
execute unless block 100000 0 100000 gray_shulker_box run setblock 100000 0 100000 gray_shulker_box
execute unless block 100000 1 100000 bedrock run setblock 100000 1 100000 bedrock