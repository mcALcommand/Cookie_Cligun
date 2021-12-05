
# UUIDコピーしたAECを当てる
    attribute @s minecraft:generic.knockback_resistance modifier add 0-0-8-2-8 "Temp Reisist" 0.85 add
    execute if entity @s[type=#cookie_score_damage:undead] at @s anchored feet positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Particle:"crit",Tags:[AL_UUID_Hit],Radius:0.4f,Duration:6,DurationOnUse:0,Age:4,WaitTime:0,Owner:[],Effects:[{Id:22b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:6b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
    execute if entity @s[type=!#cookie_score_damage:undead] at @s anchored feet positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Particle:"crit",Tags:[AL_UUID_Hit],Radius:0.4f,Duration:6,DurationOnUse:0,Age:4,WaitTime:0,Owner:[],Effects:[{Id:22b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}

# オーナーのUUIDをコピー
    data modify entity @e[type=minecraft:area_effect_cloud,tag=AL_UUID_Hit,limit=1,sort=nearest] Owner set from entity @e[tag=AL.UUIDAttack,limit=1,sort=nearest] data.AlData.Owner

#リセット
 tag @s add UUID.Reset
 schedule function cookie_cligun:uuid_reset 2t