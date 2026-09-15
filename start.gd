extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_shop_pressed():
	get_tree().change_scene_to_file("res://shop.tscn")
	# Replace with function body.



func _on_levels_pressed():
	get_tree().change_scene_to_file("res://level board 1.tscn") # Replace with function body.
	
func _on_quit_pressed():
	get_tree().quit() # Replace with function body.


func _on_settings_pressed():
	get_tree().change_scene_to_file("res://settings.tscn") # Replace with function body.


func _on_store_pressed():
	get_tree().change_scene_to_file("res://store.tscn") # Replace with function body.


func _on_select_pressed():
	get_node("back/Sprite2D").hide()# Replace with function body.


func _on_endless_pressed():
	get_tree().change_scene_to_file("res://endless.tscn") # Replace with function body.


func _on_play_story_pressed() -> void:
	get_tree().change_scene_to_file("res://cut_scene.tscn") # Replace with function body.
