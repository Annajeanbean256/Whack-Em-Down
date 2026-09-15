extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var raycast = $RayCast2D

func _process(delta):
	pass
func _ready():
	#var ablock = get_node("a block")
	#ablock.akey.connect(_on_new_world_akey)
	pass
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
	if Input.is_action_just_pressed("a key"):
		if raycast.is_colliding():
			die()
		else:
			print("not colliding")
			
	move_and_slide()
	



func _on_a_delete_button_pressed():
	queue_free() 
	Global.coins += 1# Replace with function body.



func die():
	queue_free()
	Global.coins += 1


#func _on_new_world_akey():
#	if raycast.is_colliding() == true:
#		die()
#		raycast.is_colliding() == false# Replace with function body.
