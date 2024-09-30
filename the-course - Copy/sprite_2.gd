extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var speed = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_W):
		translate(Vector2(0, - speed * delta))
	if Input.is_key_pressed(KEY_S):
		translate(Vector2(0, speed * delta))
	if Input.is_key_pressed(KEY_A):
		translate(Vector2(- speed * delta, 0))
	if Input.is_key_pressed(KEY_D):
		translate(Vector2(speed * delta, 0))
	var s = speed
	if Input.is_key_pressed(KEY_SHIFT):
		speed = 200
	pass
