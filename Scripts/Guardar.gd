extends Button




func _on_Guardar_pressed():
	var dialogo = get_parent().get_node("FileDialog")
	dialogo.show()


func _on_FileDialog_file_selected(path):
	var archivador = File.new()
	archivador.open(path, File.WRITE)
	archivador.store_string("cosa guardada")
	archivador.close()
