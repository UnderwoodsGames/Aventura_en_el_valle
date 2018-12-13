extends Control

func _ready():
	set_process_input(true)
	$Intro_video.start()
	$VideoPlayer.play()

func _input(ev): 
    if ev is InputEventKey and ev.scancode == KEY_ESCAPE: 
	     get_tree().change_scene("res://escenas/MenuPrincipal.tscn") 


func _on_Intro_video_timeout():
	get_tree().change_scene("res://escenas/Actividad_1/Actividad1.tscn")
