extends Node2D
# Script attached to the Control node



func _ready():
	pass


# Called when the node enters the scene tree for the first time

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass







func _on_character_body_2d_2_visibility_changed():
	pass# Replace with function body.


func _on_select_pressed():
	#get_node("Sprite2D").hide()
	pass # Replace with function body.


	# Replace with function body.




func _on_change_bg_3_pressed() -> void:
	if (Global.coins >= 1):
		$"bg 5".visible = false
		$"bg 3".visible = true
		$"bg 8".visible = false
	else:
		print("no coins") # Replace with function body.


func _on_change_bg_8_pressed() -> void:
	pass
	#$"bg 5".visible = false
	#$"bg 3".visible = false
	#$"bg 8".visible = true # Replace with function body.
