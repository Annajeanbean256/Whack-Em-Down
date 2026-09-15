extends Control
var store
var save_store_path = "user://save"

func save_store():
	var file = FileAccess.open(save_store_path, FileAccess.WRITE)
	file.store_var(store)
	file.close()

func load_store():
	if not FileAccess.file_exists(save_store_path):
		return false
	var file = FileAccess.open(save_store_path, FileAccess.READ)
	store = file.get_var()
	file.close()
	return true
	
# Called when the node enters the scene tree for the first time.
func _ready():
	$TabContainer/Backgrounds/Panel2/buy.text = str("Buy")
	$TabContainer/Backgrounds/Panel/select.text = str("Select") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$coins.text = str(Global.coins)
	



func _on_buy_pressed():
	if Global.coins >= 1:
		Global.coins -= 1
		$Panel/buy.text = str("Bought")
		
		
	 # Replace with function body.




func _on_select_pressed():
	$Panel/select.text = str("Selected")
	get_node("back/Sprite2D").hide()
	save_store()
	#Replace with function body.


func _on_menu_pressed():
	get_tree().change_scene_to_file("res://start.tscn") # Replace with function body.
