
#ヘッド音
execute as @e[tag=cligun.Bullet,sort=nearest,limit=1] at @a if score @s Al_En.ID = @p Al_Pl.ID run playsound entity.arrow.hit_player player @p ~ ~ ~ 2 1

#ヘッドダメージ
data remove storage cookie_score_damage: Argument
data modify storage cookie_score_damage: Argument set value {Damage:4.0}

#パーティクル
 execute at @s anchored eyes run particle end_rod ^ ^ ^ 0 0 0 0.1 3 force