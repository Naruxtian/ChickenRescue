extends Node

onready var total_huevos = $HuevosTotales
onready var GWebo = $GoldenHuevo
onready var GWeboColision = $GoldenHuevo/CollisionShape2D

#func _process(delta):
	#if Webos == 1:
		#GWebo.show()
		#GWeboColision.set_deferred("disabled", false)
	#else:
		#GWebo.hide()
		#GWeboColision.set_deferred("disabled", true)

func _physics_process(delta):
	if Input.is_action_just_pressed("Reiniciar"):
		get_tree().reload_current_scene()

func _ready():
	$MusicaLvl.play()
	$Victory/Fondo.hide()
	$Victory/Text.hide()
	MusicaMenu.stop()
	GWebo.hide()
	GWeboColision.set_deferred("disabled", true)
	print(total_huevos)
	
func punto_obtenido():
	print(total_huevos.get_child_count())
	if total_huevos.get_child_count() == 1:
		GWebo.show()
		GWeboColision.set_deferred("disabled", false)

func finalizar_nivel():
	print("FIN")
	$InterfazJuego/Cronometro.stop()
	$Player.ACCELERATION = 0
	$Player.MAX_SPEED = 0
	$Player.JUMP_H = 1
	$Victory/Fondo.show()
	$Victory/Text.show()
	$VictoryTimer.start()
	yield($VictoryTimer, "timeout")
	get_tree().change_scene("res://Nivel2.tscn")

func Game_over():
	get_tree().change_scene("res://Game Over.tscn")
