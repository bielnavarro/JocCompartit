extends Control



func _on_Jugar_pressed():
	get_tree().change_scene("res://escena jon/Escena1.tscn")


func _on_Sortir_pressed():
	get_tree().quit()


func _on_Configuracio_pressed():
	get_tree().change_scene("res://CONFIGURACIÃ“.tscn")
