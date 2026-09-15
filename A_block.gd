extends RigidBody2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

@onready var raycast1 = $RayCast2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _physics_process(delta):
	apply_central_force(Vector2(0,0))
	if Input.is_action_just_released("a key"):
		if raycast1.is_colliding():
			die()
		else:
			print("not colliding")
			
func die():
	queue_free()
	Global.coins += 1


func _on_a_button_pressed() -> void:
	if raycast1.is_colliding():
		die()
	else:
		print("not colliding")
