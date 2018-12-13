extends Control

var frameLugar = 0
var Lugares = ["Vicunia","Rio_claro","Rio_turbio","Paihuano","Monte_grande","Museo","Viniedos"]

func _ready():
	set_process_input(true)
	$CenterContainer/AnimatedSprite.hide()
	$Intro.play()

func _process(delta):
	if Input.is_action_just_pressed("ui_focus_next"):
		$CenterContainer/AnimatedSprite.show()
		$CenterContainer/AnimatedSprite.frame = frameLugar
		descripcion_lugar(Lugares[frameLugar])
		frameLugar += 1
		if frameLugar > 5:
			frameLugar = 0 #Debe ser el final de la actividad 1
		if frameLugar == 6:
			get_tree().change_scene("res://escenas/MenuPrincipal.tscn")

#Para describir el lugar segun el frame del sprite asociado
func descripcion_lugar(lugar):
	get_node(lugar).play()

#Para salirse de la actividad
func _input(ev): 
	if ev is InputEventKey and ev.scancode == KEY_ESCAPE: 
		get_tree().change_scene("res://escenas/MenuPrincipal.tscn")


func _on_AnimatedSprite_frame_changed():
	if frameLugar == 1:
		$rio_1.play()
	else:
		$rio_1.stop()
	
	if frameLugar == 2:
		$rio_2.play()
	else:
		$rio_2.stop()
