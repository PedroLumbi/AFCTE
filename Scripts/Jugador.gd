extends KinematicBody2D
var VELOCIDAD = 100

#Proceso fisico que se sincroniza con el procesador
func _physics_process(_delta):
	var movimiento = Vector2()#vector de movimiento
	
	#animacion se ejecuta dentro de estos listenner
	if Input.is_action_pressed("ui_up"):
		movimiento.y -= 1
	if Input.is_action_pressed("ui_left"):
		movimiento.x += 1
	if Input.is_action_pressed("ui_right"):
		movimiento.x -= 1
	if Input.is_action_pressed("ui_down"):
		movimiento.y += 1 
	
	#sincroniza los ticks del procesador con la velocidad de movimiento
	#Maquillando la latencia interna
	print(move_and_slide(movimiento))
