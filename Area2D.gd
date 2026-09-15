extends Area2D

signal hit

# Called when the node enters the scene tree for the first time.
func _ready():
	if Input.is_action_just_pressed("d key"):
		pass
			
		
	#if Input.is_action_just_pressed("d key") and :
		#if area_entered.is_in_group("wallss"):
			#queue_free()
			#Global.coins += 1
	 # Replace with function body.


	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	queue_free()
	#hit.emit()
	$CollisionShape2D.set_deferred("disabled", true)
	 # Replace with function body.
