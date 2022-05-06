extends KinematicBody2D

var velocitat_base = 200
var velocitat = Vector2.ZERO
var velocitat_amunt = Vector2.UP * 400
var velocitta_avall = Vector2.DOWN * 400

func _physics_process(delta):
	
	velocitat.y = 0
	velocitat.x = 0
	
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_just_pressed("mou amunt"):
		velocitat += velocitat_amunt
	if Input.is_action_just_pressed("mou avall"):
		velocitat += velocitta_avall
	
	velocitat = move_and_slide(velocitat, Vector2.UP)

