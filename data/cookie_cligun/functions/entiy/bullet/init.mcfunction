execute facing entity @e[type=marker,tag=cligun.spread,distance=..100] feet run tp @s ~ ~-0.15 ~ ~ ~
kill @e[type=marker,tag=cligun.spread,distance=..100]
tag @s remove cligun.Init
scoreboard players set @s Cligun.Range 600

#UUIDコピー
 execute run data modify entity @s data.AlData.Owner set from entity @p UUID

#スコアコピー
 scoreboard players operation @s Al_En.ID = @p Al_Pl.ID