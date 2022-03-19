extends CanvasLayer

func _ready():
	MusicaMenu.stop()
	$GameOverOst.play()
	$Back.start()

func _on_Back_timeout():
	MusicaMenu.play()
	get_tree().change_scene("res://SelectLvl.tscn")
