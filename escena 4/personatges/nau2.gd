extends KinematicBody2D
var inici = Vector2(50,275)
var posicio = inici
var velocitat_base1 = 300
var velocitat_base2 = 200
var velocitat = Vector2.ZERO


func _physics_process(delta):
	velocitat = Vector2.ZERO
	
	if Input.is_action_pressed("mou dreta"):
		velocitat.x = velocitat_base1
	if Input.is_action_pressed("mou esquerra"):
		velocitat.x = -velocitat_base1
	if Input. is_action_pressed("mou amunt"):
		velocitat.y = -velocitat_base2
	if Input. is_action_pressed("mou avall"):
		velocitat.y = velocitat_base2
	
	velocitat.normalized()
	move_and_slide(velocitat)



func _on_bala_10_body_entered(body):
	if body.name == 'pers':
		get_tree().change_scene("res://escena 4/escenes complementaries/capturat/escena capturat.tscn")


func _on_bala_1_body_entered(body):
	if body.name == 'pers':
		get_tree().change_scene("res://escena 4/escenes complementaries/capturat/escena capturat.tscn")


func _on_bala_21_body_entered(body):
	if body.name == 'pers':
		get_tree().change_scene("res://escena 4/escenes complementaries/capturat/escena capturat.tscn")



func _on_Area2D_body_entered(body):
	if body.name == 'pers':
		get_tree().change_scene("res://escena 4/escenes complementaries/passat/enhorabona.tscn")
