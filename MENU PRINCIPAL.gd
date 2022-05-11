extends Control



func _on_Jugar_pressed():
	get_tree().change_scene("res://Escena1.tscn")


func _on_Sortir_pressed():
	get_tree().quit()


func _on_Configuracio_pressed():
	get_tree().change_scene("res://CONFIGURACIÓ.tscn")
