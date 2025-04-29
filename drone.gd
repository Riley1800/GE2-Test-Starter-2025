extends RigidBody3D

@export var target:Node3D
@export var upward_force:Vector3
@export var forward_force:Vector3
@export var backward_force:Vector3

@export var speed = 10
@export var max_speed = 10


@export var example_enabled = false

@export var relative:Vector2 = Vector2.ZERO
@export var rot_speed = 1000



func _ready():
	pass # Replace with function body.

func _process(delta):
	
	rotate(Vector3.DOWN, deg_to_rad(relative.x * deg_to_rad(rot_speed) * delta))
	rotate(transform.basis.x,deg_to_rad(- relative.y * deg_to_rad(rot_speed) * delta))
	relative = Vector2.ZERO

	var up = Input.get_axis("up", "down")
	if abs(up) > 0:     
		upward_force * speed * up *  delta

	var move = Input.get_axis("forward", "reverse")
	if abs(move) > 0:   
		position = position + global_transform.basis.z * speed * move *  delta

	var turn = Input.get_axis("left", "right")
	if abs(turn) > 0:   
		position = position + global_transform.basis.x * speed * turn *  delta
