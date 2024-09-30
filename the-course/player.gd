extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawnpoint:Node2D

var SPEED = 300.0
const VELOCITY = -750.0
const TURN_RATE = 180

func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("turn_left", "turn_right")
	var rot = deg_to_rad(r * TURN_RATE * delta)
	
	var f = Input.get_axis("move_forward", "move_backward")
	var dir = transform.y * f * SPEED
	
	if Input.is_key_pressed(KEY_SHIFT):
		SPEED = 500
	elif Input.is_key_pressed(KEY_W):
		SPEED = 300
	elif Input.is_key_pressed(KEY_S):
		SPEED = 300
	
	velocity = dir
	
	rotate(rot)
	move_and_slide()
	
	
	if Input.is_action_just_pressed("we_need_more_bullets"):
		var b = bullet_scene.instantiate()
		add_child(b)
