
$execute as @a[team=$(team)] run execute as @s positioned as @e[type=armor_stand,limit=1,sort=random,tag=$(team)] run spawnpoint @s ~ ~ ~
$execute as @a[tag=$(starttag)] unless score @s $(startscoreboard) = @s $(startscoreboard) store result score @s $(startscoreboard) run scoreboard players add #counter $(startscoreboard) 1

$tp @a[tag=$(starttag),team=$(team),scores={$(startscoreboard)=1}] $(coords0)
$tp @a[tag=$(starttag),team=$(team),scores={$(startscoreboard)=2}] $(coords1)
$tp @a[tag=$(starttag),team=$(team),scores={$(startscoreboard)=3}] $(coords2)
$tp @a[tag=$(starttag),team=$(team),scores={$(startscoreboard)=4}] $(coords3)
$tp @a[tag=$(starttag),team=$(team),scores={$(startscoreboard)=5}] $(coords4)
$tp @a[tag=$(starttag),team=$(team),scores={$(startscoreboard)=6}] $(coords5)
$tp @a[tag=$(starttag),team=$(team),scores={$(startscoreboard)=7}] $(coords6)
$tp @a[tag=$(starttag),team=$(team),scores={$(startscoreboard)=8}] $(coords7)
$tp @a[tag=$(starttag),team=$(team),scores={$(startscoreboard)=9}] $(coords8)
$tp @a[tag=$(starttag),team=$(team),scores={$(startscoreboard)=10}] $(coords9)

$scoreboard players reset @a[team=$(team),tag=$(starttag)] $(startscoreboard)

$tag @a[tag=$(starttag)] remove $(starttag)
