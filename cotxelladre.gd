extends KinematicBody2D

var velocitat_base = 200
var velocitat = Vector2.ZERO
var velocitat_amunt = Vector2.UP * 400
var velocitta_avall = Vector2.DOWN * 400
var gravetat = Vector2.RIGHT * 10000

func _physics_process(delta):
	if Input.is_action_just_pressed("mou amunt"):
		velocitat += velocitat_amunt
	if Input.is_action_just_pressed("mou avall"):
		velocitat += velocitta_avall
	
	velocitat.x = 0
	velocitat.y = 0
	
	velocitat += gravetat * delta
	velocitat = move_and_slide(velocitat)
	velocitat = move_and_slide(velocitat, Vector2.UP)
