extends Node

const enemy_kamikaze = preload("res://Escenas/enemigo.tscn")

func _ready():
	_spawn()
	pass

func _spawn():
	while true:
	
		var enemy = enemy_kamikaze.instance()
		var position = Vector2()
		position.x = 0-16
		position.y = rand_range(150-200, get_viewport().get_visible_rect().size.x-200)
		enemy.set_position(position)
		get_node("cantainer").add_child(enemy)
		yield(get_tree().create_timer(rand_range(0.5, 1.25)), "timeout") 
		
	
	pass