extends Node

func _on_Volver_pressed():
	$Timer.start()
	$SelecButton.play()
	yield($Timer, "timeout")
	get_tree().change_scene("res://MenuPrincipal.tscn")

func _on_Nivel1_pressed():
	$Timer.start()
	$SelecButton.play()
	yield($Timer, "timeout")
	get_tree().change_scene("res://Nivel1.tscn")


func _on_Nivel2_pressed():
	$Timer.start()
	$SelecButton.play()
	yield($Timer, "timeout")
	get_tree().change_scene("res://Nivel2.tscn")


func _on_Nivel3_pressed():
	$Timer.start()
	$SelecButton.play()
	yield($Timer, "timeout")
	get_tree().change_scene("res://Nivel3.tscn")

func _on_Nivel4_pressed():
	$Timer.start()
	$SelecButton.play()
	yield($Timer, "timeout")
	get_tree().change_scene("res://Nivel4.tscn")

func _on_Nivel5_pressed():
	$Timer.start()
	$SelecButton.play()
	yield($Timer, "timeout")
	get_tree().change_scene("res://Nivel5.tscn")
