extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("cut scene 1")
	# Replace with function body.
	get_tree().change_scene_to_file("res://start.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.


	#if $RichTextLabel.visible_ratio < 1:
		#$RichTextLabel.visible_ratio += 0.1 * delta
	pass
