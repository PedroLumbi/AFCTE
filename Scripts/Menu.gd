extends Control

func NuevoJuego():
	print(get_tree().change_scene("res://Escenas/EscenarioGeneral.tscn"))
	#Nuevo juego sin guardar
	pass

func Continuar():
	#Lanzar menu de seleccion de partidas
	pass

func Controles():
	print(get_tree().change_scene("res://Escenas/Controles.tscn"))
	#Pasar a la escena que contiene los controles WASD
	pass

func Salir():
	get_tree().quit()


func creditos():
	print(get_tree().change_scene("res://Escenas/Creditos.tscn"))
	pass





func _on_Cuando_mouse_entered():
	$SobreBoton.play()
	pass # Replace with function body.
