extends Area2D

var movimientoRaton = false;

func _process(delta):
	
	if (movimientoRaton):
		set_position (get_viewport().get_mouse_position())
		
	pass
		

func _on_Area2D_input_event(viewport, event, shape_idx):
	
	if event is InputEventMouseButton: 
		if event.pressed:
			movimientoRaton = true
		else:
			movimientoRaton = false
	
	pass # Replace with function body.
