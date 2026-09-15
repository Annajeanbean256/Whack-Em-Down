extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	get_tree().change_scene_to_file("res://start.tscn") # Replace with function body.


func _on_select_pressed():
	get_node("back/Sprite2D").hide() # Replace with function body.
