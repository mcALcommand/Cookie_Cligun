#> cookie_score_damage:core/get_default_epf/enchant/fall
#
# 落下耐性のEPFを取得します
#
# @within function cookie_score_damage:core/get_default_epf/

# 0
    execute store result score $Temp ScoreDamageCore run data get storage cookie_score_damage: Protection[0][{id:"minecraft:feather_falling"}].lvl
    scoreboard players operation $Temp ScoreDamageCore *= $3 ScoreDamageCore
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
# 1
    execute store result score $Temp ScoreDamageCore run data get storage cookie_score_damage: Protection[1][{id:"minecraft:feather_falling"}].lvl
    scoreboard players operation $Temp ScoreDamageCore *= $3 ScoreDamageCore
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
# 2
    execute store result score $Temp ScoreDamageCore run data get storage cookie_score_damage: Protection[2][{id:"minecraft:feather_falling"}].lvl
    scoreboard players operation $Temp ScoreDamageCore *= $3 ScoreDamageCore
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
# 3
    execute store result score $Temp ScoreDamageCore run data get storage cookie_score_damage: Protection[3][{id:"minecraft:feather_falling"}].lvl
    scoreboard players operation $Temp ScoreDamageCore *= $3 ScoreDamageCore
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore