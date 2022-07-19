extends Area2D

var armor = 4 setget set_armor

export var speed = 400

signal armor_changed

func _ready():
	add_to_group("bestia")
#warning-ignore:return_value_discarded
	connect("area_entered", self,"_on_area_entered")
	pass

#warning-ignore:unused_argument
func _process(delta):
	var velocity = Vector2()  # The player's movement vector.
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	
	position += velocity * delta
	
func set_armor(new_value):
	armor = new_value
	emit_signal("armor_changed", armor)
	if armor <= 0:
		queue_free()
	pass

func _on_area_entered(other):
	if other.is_in_group("enemy"):
		other.armor -= 1






