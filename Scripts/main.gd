extends Control



func _ready():
	
	var escena11  = global.escena1.instance()
	
	add_child(escena11)
	
	$Intro.play()
	
	pass 


