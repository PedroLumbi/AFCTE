extends Control

func NuevoJuego():
	#Nuevo juego sin guardar
	pass

func Continuar():
	#Lanzar menu de seleccion de partidas
	pass

func Controles():
	get_tree().change_scene("res://Escenas/Controles.tscn")
	#Pasar a la escena que contiene los controles WASD
	pass

func Salir():
	get_tree().quit()


func creditos():
	get_tree().change_scene("res://Escenas/Creditos.tscn")
	pass
