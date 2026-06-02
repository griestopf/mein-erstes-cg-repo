extends Node3D

@export var upper_arm_speed : float = 720

var upper_arm_vel : float = 0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hallo, ich bin ready!")

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("upper_arm_up"):
		upper_arm_vel = upper_arm_speed	
	if Input.is_action_pressed("upper_arm_down"):
		upper_arm_vel = -upper_arm_speed
	$Base/UpperArm.rotate_x(deg_to_rad(upper_arm_vel) * delta)
	upper_arm_vel = 0

func _on_button_up_down() -> void:
	upper_arm_vel = upper_arm_speed


func _on_button_down_down() -> void:
	upper_arm_vel = -upper_arm_speed
