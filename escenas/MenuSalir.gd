extends Control


func _ready():
	$CenterContainer/VBoxContainer/Titulo.grab_focus()
	$Pregunta.play()


func _on_SiBtn_pressed():
	get_tree().quit()


func _on_NoBtn_pressed():
	get_tree().change_scene("res://escenas/MenuPrincipal.tscn")


func _on_SiBtn_focus_entered():
	$No.stop()
	$Si.play()


func _on_NoBtn_focus_entered():
	$Si.stop()
	$No.play()
