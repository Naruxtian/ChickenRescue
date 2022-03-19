extends Area2D

signal puntos() #Creamos una señal para contar los puntos

#func _physics_process(delta):
	#var bodies = get_overlapping_bodies()
	
	#for body in bodies:
		#if body.name == "Player":
			#body.contadorHuevos += 1
			#get_parent().remove_child(self)
			#print(body.contadorHuevos)

func _ready():
	$AnimationPlayer.play("Floating")
	#Conectamnos la señal de los puntos a la interfaz para el contador
	connect("puntos", get_parent().get_parent().get_node("InterfazJuego"), "punto_obtenido")
	connect("puntos", get_parent().get_parent(), "punto_obtenido")

#Detección de la colisión del jugador con él
func _on_Huevo_body_entered(body):
	if body.name == "Player":
		emit_signal("puntos") #Emitir la señal de puntos
		queue_free() #Elimina el objeto de la escena, ya que "Ya lo recoletó"

