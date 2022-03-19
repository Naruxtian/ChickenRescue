extends CanvasLayer

var conteo = 0
var tiempo = 15

signal Perder()

func _ready():
	$Cronometro.start()
	connect("Perder", get_parent(), "Game_over")
	

func punto_obtenido():
	conteo +=1
	$ContadorHuevos.text = str(conteo)
	$ContadorHuevos.show()

func _on_Cronometro_timeout():
	print(tiempo)
	$TiempoRestante.text = str(tiempo)
	tiempo -= 1
	
	if tiempo == -2:
		emit_signal("Perder")
