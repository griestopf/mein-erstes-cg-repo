extends Node3D

@export var upper_arm_speed : float = 720

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hallo, ich bin ready!")

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("upper_arm_up"):
		$Base/UpperArm.rotate_x(deg_to_rad(upper_arm_speed) * delta)
	if Input.is_action_pressed("upper_arm_down"):
		$Base/UpperArm.rotate_x(deg_to_rad(-upper_arm_speed) * delta)
