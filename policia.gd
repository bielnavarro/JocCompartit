extends KinematicBody2D

var velocitat_base = 5000
var velocitat = Vector2.ZERO
var gravetat = Vector2.LEFT * 9800

func _physics_process(delta):
	
	velocitat.x = 0
	velocitat.y = 0
	
	velocitat += gravetat * delta
	velocitat = move_and_slide(velocitat)
