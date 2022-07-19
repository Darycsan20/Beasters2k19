extends Node

var animacion

func _ready():
	animacion = get_node("AnimationPlayer")
	animacion.play("Eescape")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://Escenas/Menu principal.tscn")
	pass # Replace with function body.


func _on_Timer_timeout():
	get_tree().change_scene("res://Escenas/Mundo de pruebas.tscn")
	pass # Replace with function body.
