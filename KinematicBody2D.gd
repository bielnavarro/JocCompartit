extends KinematicBody2D

var velocitat_base = 200
var gravetat = Vector2.DOWN * 980
var velocitat =  Vector2.ZERO
var salt = Vector2.UP * 450

func _physics_process(delta):
	
	velocitat.x = 0
	
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou esquerre"):
		velocitat += Vector2.LEFT * velocitat_base
	if Input.is_action_just_pressed("mou amunt") and is_on_floor():
		velocitat += salt
	
	
	
	velocitat += gravetat * delta
	print(velocitat)
	velocitat = move_and_slide(velocitat, Vector2.UP)
	
	anima(velocitat)

func anima(velocitat: Vector2):
	var animacio : AnimatedSprite = $AnimatedSprite
	if velocitat.x > 0:
		animacio.flip_h = false
		animacio.play('run')
	elif velocitat.x < 0:
		animacio.flip_h = true
		animacio.play('run')
	if velocitat.y < -1:
		animacio.play('jump')
	
	if abs(velocitat.x) < 0.1:
		animacio.play('quiet')


func _on_Button_pressed():
	get_tree().change_scene("res://escena jon/Sortida del banc.tscn")



func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://escena jon/PARKING.tscn")




func _on_cotxe_canviescena_body_entered(body):
	get_tree().change_scene("res://ESQUIVAR COTXES.tscn")


func _on_PORTACASAINT_body_entered(body):
	get_tree().change_scene("res://escena 3/escena final/escena final.tscn")


func _on_mort_terra_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")



func _on_terra_mort_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")
	


func _on_terra_mort_2_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")


func _on_terra_mort_3_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")
