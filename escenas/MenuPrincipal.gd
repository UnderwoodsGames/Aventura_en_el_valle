extends Control

var activar = false

func _ready():
	$CenterContainer/VBoxContainer/Titulo.grab_focus()
	$Explicacion.play()
	$Musica.play()
	activar = true

func _on_IniciarAventuraBtn_pressed():
	get_tree().change_scene("res://escenas/IniciarAventura.tscn")
	

func _on_SelecActBtn_pressed():
	get_tree().change_scene("res://escenas/SelecAct.tscn")
	

func _on_SalirBtn_pressed():
	get_tree().change_scene("res://escenas/MenuSalir.tscn")
	

func _on_IniciarAventuraBtn_focus_entered():
	$Explicacion.stop()
	$Opcion2.stop()
	$Opcion1.play()


func _on_SelecActBtn_focus_entered():
	$Opcion1.stop()
	$Opcion3.stop()
	$Opcion2.play()


func _on_SalirBtn_focus_entered():
	$Opcion2.stop()
	$Opcion3.play()


func _on_Titulo_focus_entered():
	if activar:
		$Pregunta.play()
	$Opcion1.stop()
