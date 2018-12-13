extends Control


func _ready():
	$timer.start()
	$titulo_juego.play()

func _on_timer_timeout():
	get_tree().change_scene("res://escenas/MenuPrincipal.tscn")
