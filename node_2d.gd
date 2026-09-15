extends Node2D



var coins = 0

func _process(delta):
	$coins.text = str(Global.coins)
	
	
		
	
func add_coins():
	Global.coins += 1
	


func _on_button_pressed():
	get_tree().change_scene_to_file("res://start.tscn")
	# Replace with function body.


func _on_select_pressed():
	get_node("back/Sprite2D").hide() # Replace with function body.
