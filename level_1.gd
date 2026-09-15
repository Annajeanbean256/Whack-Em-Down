extends Node

@onready var lable = $timerlable
@onready var timer = $Timer
# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start() 
	$Area2D/youlose.visible = false
	$Area2D/youwin.visible = false
	$Area2D/Button.visible = false
	$Area2D/levels.visible = false
	# Replace with function body.

func level_end():
	var levelEnd = timer.time_left
	var minute = floor(levelEnd / 60)
	var secound = int(levelEnd) % 60
	return [minute, secound]
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass#if timer_end


func _process(delta):
	lable.text = "%02d:%02d" % level_end()
	$coinvalue.text = str(Global.coins)


func _on_menu_pressed() -> void:
	$Area2D/youlose.visible = false
	$Area2D/youwin.visible = false
	$Area2D/Button.visible = false
	$Area2D/levels.visible = false
	get_tree().change_scene_to_file("res://start.tscn") # Replace with function body.


 # Replace with function body.


func _on_levels_pressed() -> void:
	$Area2D/youlose.visible = false
	$Area2D/youwin.visible = false
	$Area2D/Button.visible = false
	$Area2D/levels.visible = false # Replace with function body.
