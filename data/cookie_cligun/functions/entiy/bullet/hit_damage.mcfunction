#攻撃判定
 
# 爆發
    execute if entity @s[type=end_crystal] run summon tnt

#ヒット音
execute as @e[tag=cligun.Bullet,sort=nearest,limit=1] at @a if score @s Al_En.ID = @p Al_Pl.ID run playsound minecraft:entity.player.attack.strong neutral @p ~ ~ ~ 0.5 1
playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

#胴体ダメージ
  data modify storage cookie_score_damage: Argument set value {Damage:2.0}
#ヘッドダメージ
  execute anchored eyes positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=marker,tag=cligun.Bullet,dx=0] run function cookie_cligun:entiy/bullet/hit_head_damage

#ダメージを与える
 execute if entity @s[type=!end_crystal] run function cookie_score_damage:api/attack
 data remove storage cookie_score_damage: Argument
