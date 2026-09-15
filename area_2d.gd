extends Area2D

signal board_is_clear
var board_clear =false
@onready var raycast1 = $RayCast2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	if raycast1.is_colliding():
		board_clear == false
	else:
		board_clear == true
		board_is_clear.emit()
		
