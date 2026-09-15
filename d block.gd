extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var raycast1 = $RayCast2D


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_released("d key"):
		if raycast1.is_colliding():
			die()
		else:
			print("not colliding")

	move_and_slide()
	
	
func _ready():
	#for index in get_slide_collision_count():
	#	var collision = get_slide_collision(index)
	#	if collision.collider is StaticBody2D:
	#		queue_free()
	pass
	
		
		
func die():
	queue_free()
	Global.coins += 1

#func _on_area_2d_area_entered(area):
		#if area.is_in_group("wallss"):
		#	call(_on_new_world_dkey())
		#		
		#else: 
		#	if area.is_in_group("blocks"):
		#		pass
			

	

func _on_d_delete_button_pressed():
	queue_free() 
	Global.coins += 1# Replace with function body.




#func _on_area_2d_body_entered(body):
#	queue_free()
	 # Replace with function body.


#func _on_new_world_dkey() -> bool:
#	var result = raycast1.is_colliding()
#	return result

	
