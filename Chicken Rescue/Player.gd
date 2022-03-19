extends KinematicBody2D

var ACCELERATION = 40
var MAX_SPEED = 250
var JUMP_H = -750
const UP = Vector2(0, -1)
var gravity = 40
var Limite

onready var sprite = $Sprite
onready var animacion = $AnimationPlayer

var motion = Vector2()

func _ready():
	Limite = get_viewport_rect().size

func _physics_process(delta):
	motion.y += gravity
	var friction = false
	
	if ACCELERATION == 0:
		animacion.play("Empolleishon")
	
	if Input.is_action_pressed("ui_right"):
		gravity = 40
		sprite.flip_h = true
		animacion.play("Walk")
		motion.x = min(motion.x + ACCELERATION, MAX_SPEED)
	elif Input.is_action_pressed("ui_left"):
		gravity = 40
		animacion.play("Walk")
		sprite.flip_h = false
		motion.x = max(motion.x - ACCELERATION, -MAX_SPEED)
	elif ACCELERATION == 40:
		gravity = 40
		animacion.play("Idle")
		friction = true
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			$Jump.play()
			gravity = 40
			animacion.play("Jump")
			motion.y = JUMP_H
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.5)
			
	if motion.y > 0 && Input.is_action_pressed("ui_accept"):
		gravity = 8
		#animacion.play("Floating")
		
	motion = move_and_slide(motion, UP)
	
	#Limitar para que no se salga de la pantalla
	position.x = clamp(position.x, 20, Limite.x)
	position.y = clamp(position.y, 20, Limite.y)
