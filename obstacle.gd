extends AnimatableBody2D
class_name Obstacle

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CollisionPolygon2D.scale = Vector2.ONE*10.0

func _process(delta: float) -> void:
	pass
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	
	var shrink_speed: float = 3.0
	$CollisionPolygon2D.scale -= Vector2.ONE * shrink_speed*delta
	
	# once tiny, delete
	if $CollisionPolygon2D.scale.x < .05:
		self.queue_free()
	
