extends KinematicBody2D
var inici = Vector2(50,275)
var posicio = inici
var velocitat_base = 400
var velocitat = Vector2.ZERO
#var gravetat = Vector2.DOWN * 150


func _physics_process(delta):
	velocitat = Vector2.ZERO
	position.x += 3
#	if Input.is_action_pressed("mou dreta"):
#		velocitat.x = velocitat_base
#	if Input.is_action_pressed("mou esquerra"):
#		velocitat.x = -velocitat_base
	if Input. is_action_pressed("mou amunt"):
		velocitat.y = -velocitat_base
	if Input. is_action_pressed("mou avall"):
		velocitat.y = velocitat_base
	#if Input. is_action_pressed("espai"):
	#	position = Vector2(3065,132)
	
	velocitat.normalized()
	move_and_slide(velocitat)



func _on_bala_1_body_entered(body):
	get_tree().reload_current_scene()
