extends KinematicBody2D

export var velocidad = 200
var random = RandomNumberGenerator.new()
var movimiento = Vector2()
func _ready():
	$temporizador.start()
	pass
func _physics_process(_delta):
	print(move_and_slide(movimiento))
	pass

func temporizador():
	movimiento = Vector2()
	random.randomize()
	var resultado = random.randi_range(1, 6)#dado de 6 caras
	
	if(resultado > 3):
		#se mueve
		random.randomize()
		resultado = random.randi_range(1,4)#tira dado de 4 caras
		print(resultado)
		if(resultado == 1):
			movimiento.x += velocidad
		elif(resultado == 2):
			movimiento.x -= velocidad
		elif(resultado == 3):
			movimiento.y += velocidad
		elif(resultado == 4):
			movimiento.y -= velocidad
		pass
	#se ejecuta cada 2 segundos en FPS de la maquina
	pass

func dialogo():
	$Dialogbox.show_text(["Hola, buenas tardes", "Tenga un buen dia"])

func huir():
	#cuando se termine la conversación, el npc huirá
	#buscará el borde de la camara mas cercano y será borrado de la escena
	#haciendo que sin importar victoria o derrota
	#se de la diferencia entre delincuente y NPC generico
	pass
