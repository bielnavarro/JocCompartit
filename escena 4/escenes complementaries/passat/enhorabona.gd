extends Sprite
 
func _process(delta):
	if Input.is_action_just_pressed('espai'):
		get_tree().change_scene("res://MENU PRINCIPAL.tscn")
