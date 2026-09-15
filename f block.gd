extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var raycast = $RayCast2D

		
	
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		
	if Input.is_action_just_pressed("f key"):
		if raycast.is_colliding():
			die()
		else:
			print("not colliding")

	move_and_slide()
	
func die():
	queue_free() 
	Global.coins += 1
	


#func _on_area_2d_area_entered(area):
	#if Input.is_action_just_pressed("f key"):
	#	if area.is_in_group("blocks"):
	#		pass
	#	if area.is_in_group("wallss"):
	#		queue_free()# Replace with function body.
