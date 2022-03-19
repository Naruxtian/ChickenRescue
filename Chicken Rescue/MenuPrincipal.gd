extends Node

func _on_Jugar_pressed():
	$Timer.start()
	$Select.play()
	yield($Timer, "timeout")
	get_tree().change_scene("res://SelectLvl.tscn")
	
