extends Sprite
 
func _process(delta):
	if Input.is_action_just_pressed('espai'):
		get_tree().change_scene("res://escena 4/escena final/escena 4.tscn")
