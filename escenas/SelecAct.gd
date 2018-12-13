extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process_input(true)
	get_tree().change_scene("res://escenas/Actividad_1/Actividad1.tscn")

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _input(ev):
    if ev is InputEventKey and ev.scancode == KEY_ESCAPE:
        get_tree().change_scene("res://escenas/MenuPrincipal.tscn")