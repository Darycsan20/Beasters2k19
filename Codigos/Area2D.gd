extends Area2D

export var velocity = Vector2()
export var armor = 1 setget set_armor
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	add_to_group("enemy")
	connect("area_entered", self,"_on_area_entered")
	pass # Replace with function body.


func _process(delta):
	translate(velocity * delta)
	
	if get_position().x-16 >= get_viewport_rect().size.x:
		queue_free()
	pass

func set_armor(new_value):
	armor = new_value
	if armor <= 0:
		queue_free()
	pass

func _on_area_entered(other):
	if other.is_in_group("bestia"):
		other.armor -= 1
		queue_free()
