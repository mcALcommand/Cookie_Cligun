#パーティクル
 particle dust 1.000 0.580 0.098 1 ^ ^ ^0.7 0 0 0 0 1
#前進
 execute if entity @s[scores={Cligun.Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# プレイヤーから出るまでヒット判定ナシ
 execute at @s positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[dx=0] run tag @s add Cligun.NoHitUser

#スコア減算
 scoreboard players remove @s Cligun.Range 1

# プレイヤーのヒット判定
 execute if entity @s[tag=Cligun.NoHitUser] positioned ~-0.5 ~0.0 ~-0.5 positioned ~0.3 ~-0.1 ~0.3 if entity @e[type=!#cookie_cligun:unhurtable,type=!ender_dragon,dx=0,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[type=!#cookie_cligun:unhurtable,nbt={Invulnerable:0b},dx=0,sort=nearest,limit=1] run function cookie_cligun:entiy/bullet/hit

#　エンダードラゴン
 execute at @s at @e[type=ender_dragon,distance=..6,sort=nearest,limit=1] run function cookie_cligun:entiy/bullet/hit

#壁判定
 execute unless block ~ ~ ~ #cookie_cligun:no_collision run function cookie_cligun:entiy/bullet/bullet_kill

# もう一回
 execute if entity @s[scores={Cligun.Range=1..}] at @s run function cookie_cligun:entiy/bullet/move

# キル
 execute if entity @s[scores={Cligun.Range=..0}] run kill @s