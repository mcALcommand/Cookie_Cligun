#リセット
tag @a[tag=Cligun.Hold] remove Cligun.Hold

#いろいろ
execute as @a at @s run function cookie_cligun:storage

#ID指定
execute as @a unless score @s Al_Pl.ID matches 0.. run function cookie_cligun:score_id

#弾飛ばし
execute as @e[type=#cookie_cligun:projectile,tag=cligun.Bullet] at @s run function cookie_cligun:entiy/bullet/move
