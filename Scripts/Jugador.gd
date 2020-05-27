extends KinematicBody2D
var VELOCIDAD = 200
var SpriteAnimacion
var nombreAnimacion

var cuerpo = null#almacena un npc

func _ready():
	SpriteAnimacion = $CollisionShape2D/AnimatedSprite
#Proceso fisico que se sincroniza con el procesador
func _physics_process(_delta):
	var movimiento = Vector2()#vector de movimiento
	#animacion se ejecuta dentro de estos listenner
	if Input.is_action_pressed("ui_up"):
		movimiento.y -= VELOCIDAD
		nombreAnimacion = "arriba"
	if Input.is_action_pressed("ui_left"):
		movimiento.x -= VELOCIDAD
		nombreAnimacion = "izquierda"
	if Input.is_action_pressed("ui_right"):
		movimiento.x += VELOCIDAD
		nombreAnimacion = "derecha"
	if Input.is_action_pressed("ui_down"):
		movimiento.y += VELOCIDAD
		nombreAnimacion = "abajo"
	if Input.is_action_pressed("ui_accept"):
		if(cuerpo != null):
			cuerpo.dialogo()
			cuerpo = null
			$Timer.stop()
			$dialogo.hide()
	if movimiento.length() > 0:
		SpriteAnimacion.play(nombreAnimacion)
	else:
		SpriteAnimacion.stop()
		SpriteAnimacion.frame = 0
	print(move_and_slide(movimiento))

func entraCuerpo(body):
	if body.is_in_group("npc"):
		cuerpo = body
		$Timer.start()

func temporizador():
	if $dialogo.visible:
		$dialogo.hide()
	else:
		$dialogo.show()

func saleCuerpo(body):
	if body.is_in_group("npc"):
		cuerpo = null
		$Timer.stop()
		$dialogo.hide()


