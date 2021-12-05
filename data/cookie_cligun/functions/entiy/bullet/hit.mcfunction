
 
 #ダメージを与える
  execute as @e[type=!#cookie_cligun:unhurtable,type=!ender_dragon,dx=0,sort=nearest,limit=1] unless entity @s[gamemode=!adventure,gamemode=!survival] at @s run function cookie_cligun:entiy/bullet/hit_damage
  execute as @e[type=ender_dragon,sort=nearest,limit=1] unless entity @s[gamemode=!adventure,gamemode=!survival] at @s run function cookie_cligun:entiy/bullet/hit_damage

 # 弾キル
  tag @s remove Cligun.NoHitUser
  function cookie_cligun:entiy/bullet/bullet_kill
  