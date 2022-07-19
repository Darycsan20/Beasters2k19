extends Node

# Declare member variables here. Examples:
const spawnerG = preload("res://Escenas/spawner2.tscn")
var stop 

# Called when the node enters the scene tree for the first time.
func _ready():
	stop = get_node("spawner2/cantainer")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	
	
	pass # Replace with function body.


