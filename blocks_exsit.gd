extends Area2D

var overlapping_bodies
signal board_clear_of_boxes
signal reset

func _ready() -> void:
	
	overlapping_bodies == true
	$youlose.visible = false
	$youwin.visible = false
	$Button.visible = false
	$levels.visible = false

func is_clear_of_bodies():
		overlapping_bodies = has_overlapping_bodies()
		return overlapping_bodies

func _process(delta):
	if is_clear_of_bodies() == false:
		print("yaaaaa, no bodies")
		$youwin.visible = true
		$levels.visible = true
	else:
		print("bodies still in")
		$youwin.visible = false
		$levels.visible = false
		
#func _on_board_clear_of_boxes() -> void:
	#print("you win")
	#$youwin.visible = true
	#$levels.visible = true
	
	 # Replace with function body.

func _on_timer_timeout() -> void:
	if is_clear_of_bodies() == false:
		print("yaaaaa, no bodies, you win")
		$youwin.visible = true
		$levels.visible = true
	else:
		print("bodies still in") 
		print("you lose")
		$youlose.visible = true
		$Button.visible = true# Replace with function body.


func _on_button_pressed() -> void:
	reset.emit()
	get_tree().reload_current_scene()
	# Replace with function body.


func _on_levels_pressed() -> void:
	reset.emit()
	get_tree().change_scene_to_file("res://level board 1.tscn")
	 # Replace with function body.



func _on_reset() -> void:
	overlapping_bodies == true
	$youlose.visible = false
	$youwin.visible = false
	$Button.visible = false
	$levels.visible = false # Replace with function body.
