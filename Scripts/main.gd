extends Control


onready var archivo = 'res://texto.txt'
onready var contador = 0

func cargarArchivo(archivo):
	var f = File.new()
	var err = f.open(archivo, File.READ)
	if err != OK:
		printerr("Error", err)
		return ""
	var texto = f.get_line()
	contador = int(texto)+1
	f.close()
	return texto
	
func guardarArchivo(texto, archivo):
	var f = File.new()
	var err = f.open(archivo, File.WRITE)
	if err != OK:
		printerr("Error", err)
		return
	f.store_string(texto)
	f.close()
	
func _ready():
	
	print(cargarArchivo(archivo))
	
	
	guardarArchivo(str(contador), archivo)
	
	var escena11  = global.escena1.instance()
	
	add_child(escena11)
	
	$Intro.play()
	
	pass 


