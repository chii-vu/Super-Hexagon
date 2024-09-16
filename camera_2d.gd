extends Camera2D

# Rotation speed in radians per second
var rotation_speed: float = 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Initialize any settings if needed
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Rotate the camera by adding the rotation speed multiplied by delta
	rotation += rotation_speed * delta
