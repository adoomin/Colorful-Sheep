scoreboard objectives add CSExcOnce dummy
scoreboard objectives add ColorfulSheep dummy

#Initial Entity Tag
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:mutton"}},tag=!CSExcOnce] at @s if entity @e[type=minecraft:sheep,distance=0..1,limit=1] run tag @e[type=minecraft:sheep,distance=0..1,limit=1] add ColorfulSheep
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:cooked_mutton"}},tag=!CSExcOnce] at @s if entity @e[type=minecraft:sheep,distance=0..1,limit=1] run tag @e[type=minecraft:sheep,distance=0..1,limit=1] add ColorfulSheep

#Execute Once
scoreboard players add @e[tag=ColorfulSheep,tag=!CSExcOnce] CSExcOnce 1
execute as @e[tag=ColorfulSheep,tag=!CSExcOnce] at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 0.1 1 normal
execute as @e[tag=ColorfulSheep,tag=!CSExcOnce] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:mutton"}},distance=0..1]
execute as @e[tag=ColorfulSheep,tag=!CSExcOnce] at @s run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:cooked_mutton"}},distance=0..1]
execute as @e[tag=ColorfulSheep,tag=!CSExcOnce] at @s run playsound minecraft:entity.firework_rocket.launch block @p
scoreboard players set @e[tag=ColorfulSheep] Colorfulsheep 0

tag @e[scores={CSExcOnce=1..},tag=!CSExcOnce] add CSExcOnce
scoreboard players reset @e[tag=CSExcOnce] CSExcOnce
tag @e[scores={CSExcOnce=0}] remove CSExcOnce

#Loop
execute as @e[tag=ColorfulSheep] at @s run particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 0.1 1 normal
execute as @e[tag=ColorfulSheep] at @s run effect give @s minecraft:speed 1 10 true
scoreboard players add @e[tag=ColorfulSheep] ColorfulSheep 1
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=0}] at @s run data merge entity @s {Color:0b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=1}] at @s run data merge entity @s {Color:1b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=2}] at @s run data merge entity @s {Color:2b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=3}] at @s run data merge entity @s {Color:3b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=4}] at @s run data merge entity @s {Color:4b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=5}] at @s run data merge entity @s {Color:5b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=6}] at @s run data merge entity @s {Color:6b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=7}] at @s run data merge entity @s {Color:7b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=8}] at @s run data merge entity @s {Color:8b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=9}] at @s run data merge entity @s {Color:9b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=10}] at @s run data merge entity @s {Color:10b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=11}] at @s run data merge entity @s {Color:11b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=12}] at @s run data merge entity @s {Color:12b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=13}] at @s run data merge entity @s {Color:13b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=14}] at @s run data merge entity @s {Color:14b}
execute as @e[tag=ColorfulSheep,scores={ColorfulSheep=15}] at @s run data merge entity @s {Color:15b}
scoreboard players set @e[tag=ColorfulSheep,scores={ColorfulSheep=16..}] ColorfulSheep 0