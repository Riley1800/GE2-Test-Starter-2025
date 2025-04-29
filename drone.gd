extends RigidBody3D

@export var target:Node3D
@export var uprward_force:Vector3
@export var forward_force:Vector3
@export var backward_force:Vector3

@export var max_speed = 10

@export var example_enabled = false

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	pass # Replace with function body.

func _process(delta):

	var turn = Input.get_axis("left", "right") - v.x	
			if abs(turn) > 0:   
				position = position + global_transform.basis.x * speed * turn * mult * delta
				# global_translate(global_transform.basis.x * speed * turn * mult * delta)
