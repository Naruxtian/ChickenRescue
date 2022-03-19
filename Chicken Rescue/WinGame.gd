extends CanvasLayer

func _ready():
	MusicaMenu.stop()
	$WinMusic.play()
	$BackTimer.start()
	
func _on_BackTimer_timeout():
	MusicaMenu.play()
	get_tree().change_scene("res://MenuPrincipal.tscn")
	
