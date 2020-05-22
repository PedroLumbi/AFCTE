extends Node2D



func _on_btnPausa_pressed():
	get_tree().paused = true
	$AudioPausa.play()
	var posicion = $Jugador.position
	posicion.x -= 150
	posicion.y -= 50#correccion de la posicion de la ventana
	$Jugador/laCamara/VentanaPausa.set_position(posicion)
	$Jugador/laCamara/VentanaPausa.visible=true
	print("pausa")
	


func _on_CerrarVentana_pressed():
	$Jugador/laCamara/VentanaPausa.visible = false
	get_tree().paused = false
	print("despausa")



func _on_btnSalir_pressed():
	get_tree().paused = false
	print(get_tree().change_scene("res://Escenas/MenuPrincipal.tscn"))
	pass # Replace with function body.


func _on_btnEvidencias_pressed():
	get_tree().paused = false
	print(get_tree().change_scene("res://Escenas/PizzarraPistas.tscn"))
	pass # Replace with function body.
	
	
func _on_Cuando_mouse_entered():
	$SobreBoton.play()
	pass # Replace with function body.
