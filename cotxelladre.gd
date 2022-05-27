extends KinematicBody2D

var inici = Vector2(50,275)
var posicio = inici
var velocitat_base = 400
var velocitat = Vector2.ZERO

func _physics_process(delta):
	velocitat = Vector2.ZERO
	velocitat.x += 300
	if Input.is_action_pressed("mou amunt"):
		velocitat.y = -velocitat_base
	if Input.is_action_pressed("mou avall"):
		velocitat.y = velocitat_base
		
	velocitat.normalized()
	move_and_slide(velocitat)
	


func _on_policia1_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")


func _on_policia2_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")


func _on_policia3_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")


func _on_policia4_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")


func _on_camio_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")


func _on_camio2_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")

func _on_cotxerapid_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")


func _on_bombero_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")

func _on_bombero2_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")

func _on_cotxeraro_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")


func _on_cotxeraro2_body_entered(body):
	get_tree().change_scene("res://MENU DE MORT.tscn")


func _on_casa_final_body_entered(body):
	if body.name == 'cotxelladre':
		get_tree().change_scene("res://MENU PRINCIPAL.tscn")


func _on_final_body_entered(body):
	get_tree().change_scene("res://ESCENA INTERIOR CASA.tscn")
