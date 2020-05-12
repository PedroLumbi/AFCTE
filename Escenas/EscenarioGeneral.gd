extends Node2D



func _on_btnPausa_pressed():
	get_tree().paused = true
	$AudioPausa.play()
	$Jugador/laCamara/VentanaPausa.show()
	print("pausa")
	


func _on_CerrarVentana_pressed():
	$Jugador/laCamara/VentanaPausa.hide()
	get_tree().paused = false
	print("despausa")



func _on_btnSalir_pressed():
	get_tree().paused = false
	print(get_tree().change_scene("res://Escenas/MenuPrincipal.tscn"))
	pass # Replace with function body.
