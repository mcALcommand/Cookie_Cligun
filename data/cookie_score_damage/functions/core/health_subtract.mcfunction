#> cookie_score_damage:core/health_subtract
#
# MobのHealthを減算する
#
# @within function cookie_score_damage:core/attack

#> Temp
# @private
    #declare objective ScoreToHealth
    #declare score_holder $SubtractedHealth
    #declare score_holder $HasDependency

# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage ScoreDamageCore < $Health ScoreDamageCore
# Health減算
    scoreboard players operation $SubtractedHealth ScoreDamageCore = $Health ScoreDamageCore
    scoreboard players operation $SubtractedHealth ScoreDamageCore -= $Damage ScoreDamageCore
# Mobへ代入
    # Player
        execute if entity @s[type=player] run scoreboard players operation $Health ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation $SubtractedHealth ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation $Damage ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] store success score $HasDependency ScoreDamageCore unless score @s ScoreToHealth matches 0.. run scoreboard players operation @s ScoreToHealth = $Health ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation @s ScoreToHealth -= $Damage ScoreDamageCore
        execute if entity @s[type=player] if score $HasDependency ScoreDamageCore matches 0 run tellraw @a [{"text":"ERROR >> ","color":"red"},{"text":"ScoreToHealth","underlined":true,"color":"#4c4cff","clickEvent":{"action":"open_url","value":"https://github.com/Ai-Akaishi/ScoreToHealth"}},{"text":"が導入されていないため\nPlayerにダメージを与えることは出来ません","color":"white"}]
    # Mob
        execute if entity @s[type=!player] if score $SubtractedHealth ScoreDamageCore matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $SubtractedHealth ScoreDamageCore
    # Common
        execute if score $SubtractedHealth ScoreDamageCore matches ..0 run kill @s[type=!ender_dragon]

    # ドラゴンならヘルス0でDragonPhaseを9にして墜落させる
        execute if entity @s[type=ender_dragon] if score $SubtractedHealth ScoreDamageCore matches ..0 run data merge entity @s {DragonPhase:9}

    # ヘルスが1以上ならUUID攻撃
        execute unless entity @s[type=player] unless entity @s[type=ender_dragon] if score $SubtractedHealth ScoreDamageCore matches 1.. run function cookie_cligun:uuid_attack

# 演出
    #execute if score $SubtractedHealth ScoreDamageCore matches 1.. if entity @s[type=#cookie_score_damage:undead] run effect give @s instant_health 1 30 true
    #execute if score $SubtractedHealth ScoreDamageCore matches 1.. if score $Resistance ScoreDamageCore matches 5.. if entity @s[type=!#cookie_score_damage:undead] run effect give @s instant_damage 1 0 true
    #execute if score $SubtractedHealth ScoreDamageCore matches 1.. if score $Resistance ScoreDamageCore matches ..4 if entity @s[type=!player,type=!#cookie_score_damage:undead] run effect give @s instant_damage 1 31 true
    #execute if score $SubtractedHealth ScoreDamageCore matches 1.. if score $Resistance ScoreDamageCore matches ..4 if entity @s[type=player] run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,Effects:[{Id:11b,Amplifier:127b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
    execute if data storage cookie_score_damage: Argument{DisableParticle:0b} at @s run function cookie_score_damage:core/damage_indicator
# リセット
    scoreboard players reset $SubtractedHealth ScoreDamageCore
    scoreboard players reset $HasDependency ScoreDamageCore