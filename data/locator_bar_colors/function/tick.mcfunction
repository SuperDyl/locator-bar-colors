# Manages the `/trigger locator_bar_colors:locator_bar` command
# Ran every tick by `minecraft/tags/function/tick.json`

# show help menu when player uses `/trigger locator_bar_colors:locator_bar`
execute as @a[scores={locator_bar=1..}] run function locator_bar_colors:show_dialog
execute as @a[scores={locator_bar=..-1}] run function locator_bar_colors:show_dialog
scoreboard players set @a locator_bar 0
scoreboard players enable @a locator_bar
