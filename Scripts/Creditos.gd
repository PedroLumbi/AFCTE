extends Node

var dialogo = []

func _ready():
	cargarDialogo()
	pass

func timer():
	var item = dialogo.pop_front()
	if item != null:
		$Label.text += item+"\n"

func cargarDialogo():
	var archivo = File.new()
	archivo.open("res://Dialogos/Creditos.json", archivo.READ)
	while (!archivo.eof_reached()):
		dialogo.append(archivo.get_line())


func vovlerAlMenuPrincipal():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Escenas/MenuPrincipal.tscn")
