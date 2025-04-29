extends CSGCombiner3D

@export var rot_speed = 100

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass # Replace with function body.
	if Input.is_action_pressed("up"):
		rotate_y(- deg_to_rad(rot_speed) * delta)
