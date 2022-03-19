extends Area2D

signal lvlEnd()

func _ready():
	#Conectamnos la señal de los puntos a la interfaz para el contador
	connect("lvlEnd", get_parent(), "finalizar_nivel")

func _on_GoldenHuevo_body_entered(body):
	if body.name == "Player":
		emit_signal("lvlEnd") #Emitir la señal de fin del nivel
		queue_free() #Elimina el objeto de la escena, ya que "Ya lo recoletó"
