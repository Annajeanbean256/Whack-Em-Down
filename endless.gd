extends Node


var a_block = load("res://A block.tscn")
var d_block = load("res://D block.tscn")
var g_block = load("res://G block.tscn")
var f_block = load("res://F block.tscn")
var a_block_instance = a_block.instantiate()
var d_block_instance = d_block.instantiate()
var g_block_instance = g_block.instantiate()
var f_block_instance = f_block.instantiate()
var random = RandomNumberGenerator.new()
var rand = random.randi() % 4
var position = -1000

# Called when the node enters the scene tree for the first time.
func _ready():
	random.randomize()
	print(rand)
	for n in range(50):
		spawn()
		rand = random.randi() % 4
	
	# Replace with function body.
func spawn():
	
	if (rand == 0):
		get_node("objects").add_child(a_block_instance)
		a_block_instance.position = Vector2(100, position)
		position+=5
	if (rand == 1):
		get_node("objects").add_child(d_block_instance)
		d_block_instance.position = Vector2(100, position)
		position+=5
	if (rand == 2):
		get_node("objects").add_child(g_block_instance)
		g_block_instance.position = Vector2(100, position)
		position+=5
	if (rand == 3):
		get_node("objects").add_child(f_block_instance)
		f_block_instance.position = Vector2(100, position)
		position+=5
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass


func _process(delta):
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
