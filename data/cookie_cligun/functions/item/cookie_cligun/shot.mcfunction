# 自分に実行者
 tag @s add AL.this

#リコイル
    execute if entity @s[tag=Cligun.NowNormal,tag=!Cligun.NowADS] at @s run tp @s ~ ~ ~ ~ ~-0.6
    execute if entity @s[tag=Cligun.NowADS,tag=!Cligun.NowNormal] at @s run tp @s ~ ~ ~ ~ ~-1
    execute if entity @s[scores={cookie.time=0..12}] at @s run tp @s ~ ~ ~ ~0.4 ~
    execute if entity @s[scores={cookie.time=13..21}] at @s run tp @s ~ ~ ~ ~-0.4 ~

#発砲
playsound minecraft:entity.player.burp player @a ~ ~ ~ 1.5 2
playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1.5 2
playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 2 2

#弾を召喚
execute unless predicate cookie_cligun:sneak anchored eyes run particle crit ^-0.25 ^ ^1 0 0 0 0.01 1
execute unless predicate cookie_cligun:sneak anchored eyes run summon marker ^-0.25 ^ ^ {Tags:["cligun.detection","AL.UUIDAttack","cligun.Init"],data:{AlData:{BodyDamage:2.0,HeadDamage:3.0}}}
execute unless predicate cookie_cligun:sneak as @p[tag=AL.this] at @s run function cookie_cligun:item/cookie_cligun/spread

#ADS弾を召喚
execute if predicate cookie_cligun:sneak anchored eyes run particle crit ^ ^-0.15 ^1 0 0 0 0.01 1
execute if predicate cookie_cligun:sneak anchored eyes run summon marker ^ ^-0.15 ^ {Tags:["cligun.detection","AL.UUIDAttack","cligun.Init"],data:{AlData:{BodyDamage:2.0,HeadDamage:3.0}}}
execute if predicate cookie_cligun:sneak anchored eyes run summon marker ^ ^ ^10 {Tags:["cligun.spread"]}

#Init 処理
 tag @e[type=marker,tag=cligun.Init,limit=1] add cligun.Bullet
 execute as @e[type=marker,tag=cligun.Init,limit=1] at @s run function cookie_cligun:entiy/bullet/init
 

#弾消費
scoreboard players remove @s Cligun_Cookie 3

# 実行者を解除
  tag @s remove AL.this

