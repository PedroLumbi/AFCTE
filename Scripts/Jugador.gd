extends KinematicBody2D
var VELOCIDAD = 200

#Proceso fisico que se sincroniza con el procesador
func _physics_process(_delta):
	var movimiento = Vector2()#vector de movimiento
	
	#animacion se ejecuta dentro de estos listenner
	if Input.is_action_pressed("ui_up"):
		movimiento.y -= VELOCIDAD
	if Input.is_action_pressed("ui_left"):
		movimiento.x -= VELOCIDAD
	if Input.is_action_pressed("ui_right"):
		movimiento.x += VELOCIDAD
	if Input.is_action_pressed("ui_down"):
		movimiento.y += VELOCIDAD
	move_and_slide(movimiento)
