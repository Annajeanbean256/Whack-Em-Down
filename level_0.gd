extends Node2D

@onready var lable = $Label2
@onready var timer = $Timer
@onready var youwin = get_node("Label")
# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Button5").hide()
	get_node("Button2").hide()
	get_node("Label").hide()
	timer.start()
	
func level_end():
	var levelEnd = timer.time_left
	var minute = floor(levelEnd / 60)
	var secound = int(levelEnd) % 60
	return [minute, secound]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	lable.text = "%02d:%02d" % level_end()
	
	
func _physics_process(delta):
	pass


func _on_timer_timeout():
		
	get_node("Button5").show()
	get_node("Button2").show()
	get_node("Label").show()



func _on_levelselect_pressed() -> void:
	get_tree().change_scene_to_file("res://levels.tscn")



#func _on_area_2d_board_is_clear() -> void:
	
#	if timer.timeout():
#		_on_timer_timeout()
		
		 # Replace with function body.



	
	
	 # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	timer.stop()
	print("area clear") # Replace with function body.
